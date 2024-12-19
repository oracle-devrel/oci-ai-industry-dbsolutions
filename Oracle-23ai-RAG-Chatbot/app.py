"""
Python Version: 3.11

Description:
    This module provides UI for Oracle 23ai based chatbot to communicate with documents.
"""

import os
import time
import logging
from llama_index.llms.oci_genai import OCIGenAI
import subprocess
import streamlit as st
from pathlib import Path
import chat_engine
from llama_index.core.llms import ChatMessage
import oracledb
from config import (
    VERBOSE, 
    EMBED_MODEL_TYPE, 
    EMBED_MODEL, 
    TOKENIZER,
    ADD_REFERENCES, 
    GEN_MODEL, 
    ADD_RERANKER,
    RERANKER_MODEL, 
    CHAT_MODE, 
    MEMORY_TOKEN_LIMIT, 
    ADD_PHX_TRACING, 
    PHX_PORT, 
    PHX_HOST, 
    COMPARTMENT_OCID, 
    ENDPOINT, 
    COHERE_API_KEY, 
    LA2_ENABLE_INDEX, 
    PROFILE_NAME,
    STREAM_CHAT,
    DB_USER,
    DB_PWD,
    DSN,
    CONFIG_DIR,
    WALLET_LOCATION,
    WALLET_PASSWORD
)

from config import (
    DB_HOST_IP,
    DB_SERVICE,
    EMBEDDINGS_BITS,
    ADD_PHX_TRACING
)

# Configure logger
logger = logging.getLogger("ConsoleLogger")
logger.setLevel(logging.INFO)

if not logger.handlers:
    handler = logging.StreamHandler()
    handler.setLevel(logging.INFO)
    formatter = logging.Formatter("%(asctime)s - %(message)s")
    handler.setFormatter(formatter)
    logger.addHandler(handler)

logger.propagate = False

# Initialize session state
def initialize_session_state():
    defaults = {
        "max_tokens": 600,
        "temperature": 0.10,
        "top_k": 3,
        "top_n": 3,
        "messages": [],
        "question_count": 0,
        "similarity": 0.5,
        "select_model": None,
        "chat_history": [],
        "selected_mode": "Enable RAG"
    }
    for key, value in defaults.items():
        if key not in st.session_state:
            st.session_state[key] = value

initialize_session_state()

# Set the configuration for the Streamlit app
st.set_page_config(page_title="Oracle 23ai Vector Search Assistant", layout="wide")

# Initialize directories for file uploads and processed files
upload_dir = Path("data/unprocessed")
processed_dir = Path("data/processed")
upload_dir.mkdir(parents=True, exist_ok=True)
processed_dir.mkdir(parents=True, exist_ok=True)

# Title for the main page
st.markdown("<h1 style='text-align: center;'>Oracle 23ai Vector Search Assistant</h1>", unsafe_allow_html=True)

# Check unique files present in the database
def get_existing_book_names():
    try:
        connection = oracledb.connect(
            user=DB_USER,
            password=DB_PWD,
            config_dir=CONFIG_DIR,
            dsn=DSN,
            wallet_location=WALLET_LOCATION,
            wallet_password=WALLET_PASSWORD
        )
        cursor = connection.cursor()
        cursor.execute("SELECT DISTINCT name FROM books")
        book_names_set = {name[0] for name in cursor.fetchall()}
    except oracledb.Error as e:
        logger.error(f"Database connection failed: {e}")
        book_names_set = set()
    finally:
        try:
            cursor.close()
            connection.close()
        except:
            pass
    return book_names_set

book_names_set = get_existing_book_names()

# Cache the chat engine creation to improve performance
@st.cache_resource
def create_chat_engine():
    return chat_engine.create_chat_engine(
        verbose=VERBOSE,
        **{key: st.session_state[key] for key in ["top_k", "max_tokens", "temperature", "top_n"]}
    )

# Define the reset_conversation function
def reset_conversation():
    st.session_state.messages = []
    st.session_state.chat_history = []
    st.session_state.question_count = 0
    if st.session_state.enable_rag:
        st.session_state.chat_engine, st.session_state.token_counter = create_chat_engine()
        st.session_state.chat_engine.reset()

# Function to handle form submission
def handle_form_submission():
    st.session_state.update({
        "max_tokens": st.session_state.max_tokens,
        "temperature": st.session_state.temperature,
        "top_k": st.session_state.top_k,
        "top_n": st.session_state.top_n,
        "similarity": st.session_state.similarity,
        "select_model": st.session_state.select_model,
    })
    reset_conversation()

# Function to save uploaded files to the specified directory
def save_uploaded_file(uploaded_file, upload_dir):
    file_path = upload_dir / uploaded_file.name
    with open(file_path, "wb") as f:
        f.write(uploaded_file.getbuffer())
    return file_path

# Define the enable_select_ai function
def enable_select_ai(question):
    output = ""
    try:
        connection = oracledb.connect(
            user=DB_USER,
            password=DB_PWD,
            config_dir=CONFIG_DIR,
            dsn=DSN,
            wallet_location=WALLET_LOCATION,
            wallet_password=WALLET_PASSWORD
        )
        cursor = connection.cursor()

        cursor.execute("BEGIN DBMS_OUTPUT.ENABLE(NULL); END;")
        # Substitute your select ai profile here instead of 'regularprofile'
        cursor.execute("BEGIN DBMS_CLOUD_AI.set_profile('regulaprofile'); END;")

        normalized_question = question.strip().lower()

        # Check if the query already starts with 'select ai'
        if not normalized_question.startswith("select ai "):
            # Prepend 'SELECT AI ' to the original query
            select_query = "SELECT AI " + question
            print("Modified Query:", select_query)
        else:
            # Use the original query as it already starts with 'SELECT AI'
            select_query = question
            print("Original Query is already properly formatted.")

        cursor.execute(select_query)
        results = cursor.fetchall()

        for row in results:
            output += f"{row}\n"

        line = cursor.var(str)
        status = cursor.var(int)

        while True:
            cursor.callproc("DBMS_OUTPUT.GET_LINE", (line, status))
            if status.getvalue() != 0:
                break
            output += f"{line.getvalue()}\n"

    except oracledb.Error as e:
        output += f"An error occurred:\n{e}\n"
    finally:
        try:
            cursor.close()
            connection.close()
        except:
            pass

    st.session_state.messages.append({"role": "assistant", "content": output})
    return output

# Define the enable_rag function
def enable_rag(question):
    try:
        logger.info("Calling RAG chain..")
        logger.info(
            f"top_k= {st.session_state.top_k}, max_tokens= {st.session_state.max_tokens}, "
            f"temperature= {st.session_state.temperature}, top_n= {st.session_state.top_n}, "
            f"enable_rag= {st.session_state.enable_rag}, similarity = {st.session_state.similarity}"
        )

        with st.spinner("Generating response..."):
            time_start = time.time()
            st.session_state.question_count += 1
            logger.info("")
            logger.info(f"Question no. {st.session_state.question_count} is {question}")

            if st.session_state.enable_rag:
                if STREAM_CHAT:
                    response = st.session_state.chat_engine.stream_chat(question, st.session_state.chat_history)
                    print("inside st.session_state.chat_engine.stream_chat(question, st.session_state.chat_history)")

                else:
                    response = st.session_state.chat_engine.chat(question, st.session_state.chat_history)
                    print("response is ", response)
                    print("response = st.session_state.chat_engine.chat(question, st.session_state.chat_history)")

            else:
                print("calling the chat_engine.llm_chat from enable rag ")
                response = chat_engine.llm_chat(question)

            time_elapsed = time.time() - time_start
            logger.info(f"Elapsed time: {round(time_elapsed, 1)} sec.")

            str_token1 = f"LLM Prompt Tokens: {st.session_state.token_counter.prompt_llm_token_count if st.session_state.enable_rag else 'N/A'}"
            str_token2 = f"LLM Completion Tokens: {st.session_state.token_counter.completion_llm_token_count if st.session_state.enable_rag else 'N/A'}"
            logger.info(str_token1)
            logger.info(str_token2)

            output = no_stream_output(response)
            st.session_state.messages.append({"role": "assistant", "content": output})
            #with st.chat_message("assistant"):
            #    st.markdown(output)

    except Exception as e:
        logger.error("An error occurred: " + str(e))
        st.error("An error occurred: " + str(e))

# Define the handle_chat function
def handle_chat(question):
    try:
        with st.spinner("Generating chat response..."):
            time_start = time.time()
            st.session_state.question_count += 1
            logger.info("")
            logger.info(f"Question no. {st.session_state.question_count} is {question}")
            model_name = st.session_state['select_model']
            print("model_name is", model_name)
            llm = OCIGenAI(
                model=model_name,
                service_endpoint=ENDPOINT,
                compartment_id=COMPARTMENT_OCID,
                auth_profile=PROFILE_NAME,  # replace with your profile name
            )
            print("selected llm is ", llm)
            output = chat_engine.llm_chat(question)
            #response = chat_engine.llm_chat(question)
            #output = llm.chat([ChatMessage(role="user", content=question)])
            #logger.info(f"Question is: {question}")
            st.session_state.messages.append({"role": "assistant", "content": output})
            with st.chat_message("assistant"):
                st.markdown(output)

    except Exception as e:
        logger.error("An error occurred: " + str(e))
        st.error("An error occurred: " + str(e))

# Placeholder function for 'Browse' feature
def browse():
    return "Feature coming soon"

# Placeholder function for 'Chat with Image' feature
def chat_with_image():
    return "Feature coming soon"

# Function to handle non-streaming output
def no_stream_output(response):
    if st.session_state.enable_rag:
        output = response.response
        source_nodes = response.source_nodes
        if ADD_REFERENCES and len(source_nodes) > 0:
            similarity_scores = [
                float(node.node.metadata.get("Similarity Score", 0)) for node in source_nodes
            ]
            if any(
                similarity_score >= st.session_state.similarity
                for similarity_score in similarity_scores
            ):
                output += "\n\nRef.:\n\n"
                for node in source_nodes:
                    similarity_score = float(node.node.metadata.get("Similarity Score", 0))
                    if similarity_score >= st.session_state.similarity:
                        output += str(node.node.metadata).replace("{", "").replace("}", "") + "  \n"
            else:
                output = "No reference document with such similarity score found."
        else:
            output = "No reference document with such similarity score found."
        st.markdown(output)
    else:
        output = response

    return output

# Streamlit sidebar form for selecting mode and adjusting model parameters
def render_sidebar_forms():
    with st.sidebar.form(key="input-form"):
        mode = st.selectbox(
            "Select Mode",
            ("Enable RAG", "Enable Select AI", "Chat", "Browse", "Chat with Image"),  # Added new options
            index=0
        )
        st.session_state.selected_mode = mode

        if mode == "Enable RAG":
            st.session_state.enable_rag = True
        else:
            st.session_state.enable_rag = False

        st.session_state.select_model = st.selectbox(
            "Select Chat Model",
            ("cohere.command-r-16k", "cohere.command-r-plus",
             "meta.llama-3.1-405b-instruct", "meta.llama-3.1-70b-instruct"),
            index=1
        )
        st.session_state.max_tokens = st.number_input(
            'Maximum Tokens', min_value=512, max_value=1024, step=25,
            value=st.session_state.get('max_tokens', 600)
        )
        st.session_state.temperature = st.number_input(
            'Temperature', min_value=0.0, max_value=1.0, step=0.1,
            value=st.session_state.get('temperature', 0.10)
        )
        st.session_state.similarity = st.number_input(
            'Similarity Score', min_value=0.0, max_value=1.0, step=0.05,
            value=st.session_state.get('similarity', 0.5)
        )
        st.session_state.top_k = st.slider(
            "TOP_K", 1, 10, step=1, value=st.session_state.get('top_k', 3)
        )
        st.session_state.top_n = st.slider(
            "TOP_N", 1, 10, step=1, value=st.session_state.get('top_n', 3)
        )
        st.form_submit_button(
            "Submit", type="primary", on_click=handle_form_submission, use_container_width=True
        )

# Display chat messages in the Streamlit app
def display_chat_messages():
    for message in st.session_state.messages:
        with st.chat_message(message["role"]):
            st.markdown(message["content"])

# Main function to run the Streamlit app
def main():
    render_sidebar_forms()

    # Clear Chat History Button
    _, c1 = st.columns([5, 1])
    c1.button("Clear Chat History", type="primary", on_click=reset_conversation)

    if "messages" not in st.session_state:
        reset_conversation()

    with st.spinner("Initializing..."):
        if st.session_state.selected_mode == "Enable Select AI":
            pass
        elif st.session_state.enable_rag:
            st.session_state.chat_engine, st.session_state.token_counter = create_chat_engine()

    display_chat_messages()

    # File Uploader
    with st.sidebar.form(key="file-uploader-form", clear_on_submit=True):
        file = st.file_uploader(
            "Document Uploader",
            accept_multiple_files=True,
            type=['txt', 'csv', 'pdf'],
            label_visibility="collapsed"
        )
        submitted = st.form_submit_button(
            "Upload",
            type="primary",
            use_container_width=True,
            on_click=reset_conversation
        )

    if submitted and file:
        if not isinstance(file, list):
            file = [file]
        logging.info("Uploading file")
        uploaded_file_paths = []
        for uploaded_file in file:
            if uploaded_file.name in book_names_set:
                st.error(
                    f"Document {uploaded_file.name} already exists in database. Please try another document or begin asking questions.")
            else:
                file_path = save_uploaded_file(uploaded_file, Path(upload_dir))
                uploaded_file_paths.append(file_path)
                logging.info(f"Uploaded document: {uploaded_file.name}")

        if uploaded_file_paths:
            progress_bar = st.progress(0)
            progress_text = st.empty()

            try:
                with st.spinner(f"Processing document {uploaded_file.name}..."):
                    logging.info("Document processing started..")
                    process = subprocess.Popen(
                        ["python", "process_documents.py"],
                        stdout=subprocess.PIPE,
                        stderr=subprocess.PIPE,
                        text=True,
                        bufsize=1
                    )

                    total_steps = 100
                    current_step = 0

                    while process.poll() is None:
                        output = process.stdout.readline()
                        if output:
                            current_step += 1
                            progress_percentage = min(current_step / total_steps, 1.0)
                            progress_bar.progress(progress_percentage)
                            progress_text.text(output.strip())
                            time.sleep(0.1)

                    for output in process.stdout:
                        if output:
                            current_step += 1
                            progress_percentage = min(current_step / total_steps, 1.0)
                            progress_bar.progress(progress_percentage)
                            progress_text.text(output.strip())
                            time.sleep(0.1)

                    stdout, stderr = process.communicate()
                    return_code = process.returncode
                    if return_code == 0:
                        progress_bar.progress(1.0)
                        progress_text.text("Assistant is now ready to answer questions.")
                    else:
                        st.error(f"Document processing failed with return code {return_code}")
                        st.error(stderr)

            except subprocess.CalledProcessError as e:
                st.error(f"An error occurred while processing the document: {e}")

    # Render the chat input at the bottom of the app
    question = st.chat_input("Hello, how can I help you?")

    if question:
        st.chat_message("user").markdown(question)
        st.session_state.messages.append({"role": "user", "content": question})
        user_message = ChatMessage(role="user", content=question)
        st.session_state.chat_history.append(user_message)

        if st.session_state.selected_mode == "Enable Select AI":
            with st.spinner("Processing with Select AI..."):
                ai_output = enable_select_ai(question)
                with st.chat_message("assistant"):
                    st.markdown(ai_output)
                
        elif st.session_state.selected_mode == "Enable RAG":
            enable_rag(question)
        elif st.session_state.selected_mode == "Chat":
            logger.info("Processing Chat mode.")
            handle_chat(question)
        elif st.session_state.selected_mode == "Browse":
            with st.spinner("Processing Browse..."):
                browse_output = browse()
                st.session_state.messages.append({"role": "assistant", "content": browse_output})
                with st.chat_message("assistant"):
                    st.markdown(browse_output)
        elif st.session_state.selected_mode == "Chat with Image":
            with st.spinner("Processing Chat with Image..."):
                chat_image_output = chat_with_image()
                st.session_state.messages.append({"role": "assistant", "content": chat_image_output})
                with st.chat_message("assistant"):
                    st.markdown(chat_image_output)
        else:
            st.error("Invalid mode selected.")

# Entry point for the script
if __name__ == "__main__":
    main()
