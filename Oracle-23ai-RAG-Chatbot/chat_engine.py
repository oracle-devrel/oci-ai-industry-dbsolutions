"""
Python Version: 3.11

Description:
    This module provides the class to create chat engine and communicate with different LLMs, 
    Oracle vector store, and llama_index.
"""

import os
import logging
from tokenizers import Tokenizer
from llama_index.core import VectorStoreIndex, Settings
from llama_index.core.callbacks import CallbackManager, TokenCountingHandler
from llama_index.postprocessor.cohere_rerank import CohereRerank
from llama_index.core.memory import ChatMemoryBuffer
from llama_index.core.callbacks.global_handlers import set_global_handler
from llama_index.llms.oci_genai import OCIGenAI
from llama_index.embeddings.oci_genai import OCIGenAIEmbeddings
from oci_utils import load_oci_config, print_configuration
from llama_index.core.llms import ChatMessage
from config import (
    VERBOSE, 
    EMBED_MODEL_TYPE, 
    EMBED_MODEL, 
    TOKENIZER, 
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
    STREAM_CHAT
)
from oci_utils import load_oci_config, print_configuration
from oracle_vectorstore import OracleVectorStore
import streamlit as st
if ADD_PHX_TRACING:
    import phoenix as px

# Configure logger
logger = logging.getLogger("ConsoleLogger")

# Initialize Phoenix tracing if enabled
if ADD_PHX_TRACING:
    os.environ["PHOENIX_PORT"] = PHX_PORT
    os.environ["PHOENIX_HOST"] = PHX_HOST
    px.launch_app()
    set_global_handler("arize_phoenix")

# Function to create a large language model (LLM)
def create_llm(auth=None):
    model_list = ["OCI", "LLAMA"]

    # Validate model choice
    llm = None
    if GEN_MODEL in ["OCI", "LLAMA"]:
        model_name = st.session_state['select_model']
        # model definition
        print("model used is ",model_name)
        llm = OCIGenAI(
            model = model_name,
            service_endpoint=ENDPOINT,
            compartment_id=COMPARTMENT_OCID,
            auth_profile=PROFILE_NAME,  # replace with your profile name
        )

    assert llm is not None
    return llm

# Function to create a reranker model
def create_reranker(auth=None, verbose=VERBOSE, top_n=3):
    model_list = ["COHERE"]

    # Validate reranker model choice
    if RERANKER_MODEL not in model_list:
        raise ValueError(f"The value {RERANKER_MODEL} is not supported. Choose a value in {model_list} for the Reranker model.")

    reranker = None
    if RERANKER_MODEL == "COHERE":
        reranker = CohereRerank(api_key=COHERE_API_KEY, top_n=st.session_state['top_n'])

    return reranker

# Function to create an embedding model
def create_embedding_model(auth=None):
    model_list = ["OCI"]

    # Validate embedding model choice
    if EMBED_MODEL_TYPE not in model_list:
        raise ValueError(f"The value {EMBED_MODEL_TYPE} is not supported. Choose a value in {model_list} for the model.")

    embed_model = None
    if EMBED_MODEL_TYPE == "OCI":
        embed_model = OCIGenAIEmbeddings(
            auth_profile= PROFILE_NAME,
            compartment_id=COMPARTMENT_OCID,
            model_name=EMBED_MODEL,
            truncate="END",
            service_endpoint=ENDPOINT,
        )
    return embed_model

# Function to create the chat engine
def create_chat_engine(token_counter=None, verbose=VERBOSE, top_k=3, max_tokens=1024, temperature=0.2, top_n=3):
    logger.info("Calling create_chat_engine()...")
    print_configuration()

    # Initialize Phoenix tracing if enabled
    if ADD_PHX_TRACING:
        set_global_handler("arize_phoenix")

    # Load OCI configuration
    oci_config = load_oci_config()
    # TODO: change
    # api_keys_config = ads.auth.api_keys(oci_config)

    # Create embedding model
    embed_model = create_embedding_model()
    # Create vector store
    vector_store = OracleVectorStore(verbose=verbose, enable_hnsw_indexes=LA2_ENABLE_INDEX)
    # Create LLM
    llm = create_llm()

    # Initialize tokenizer and token counter
    cohere_tokenizer = Tokenizer.from_pretrained(TOKENIZER)
    token_counter = TokenCountingHandler(tokenizer=cohere_tokenizer.encode)

    # Configure settings for LLM and embedding model
    Settings.embed_model = embed_model
    Settings.llm = llm
    Settings.callback_manager = CallbackManager([token_counter])

    # Create vector store index and chat memory buffer
    index = VectorStoreIndex.from_vector_store(vector_store=vector_store)
    memory = ChatMemoryBuffer.from_defaults(token_limit=MEMORY_TOKEN_LIMIT, tokenizer_fn=cohere_tokenizer.encode)

    # Optionally add a reranker
    if ADD_RERANKER:
        reranker = create_reranker(top_n=st.session_state['top_n'])
        node_postprocessors = [reranker]
    else:
        node_postprocessors = None

    # Create the chat engine with specified configurations
    chat_engine = index.as_chat_engine(
        # chat_mode=CHAT_MODE,
        memory=memory,
        verbose=verbose,
        similarity_top_k=top_k,
        # llm=llm,
        node_postprocessors=node_postprocessors,
        streaming=STREAM_CHAT,
    )

    logger.info("")
    return chat_engine, token_counter

# LLM chat function


def llm_chat(question):
    logger.info("Calling llm_chat()...")
    
    # Load OCI configuration
    oci_config = load_oci_config()
    # TODO: change
    # api_keys_config = ads.auth.api_keys(oci_config)
    
    # Create LLM
    
    llm = create_llm()
    print("using the selected model and after create llm function call")
    response = llm.chat([ChatMessage(role="user", content=question)])
    
    logger.info("Response generated.")
    return response
