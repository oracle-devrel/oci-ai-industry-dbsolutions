import os
import streamlit as st
from langchain.embeddings.huggingface import HuggingFaceEmbeddings
from langchain.vectorstores import FAISS
from langchain.schema import Document
import oracledb

# pip install streamlit langchain langchain-community sentence-transformers faiss-cpu oracledb
# Page config
st.set_page_config(page_title="Semantic Similarity Search", layout="wide")
st.title("🔍 Semantic Similarity Search with LangChain & Streamlit")

# Initialize session state
if "embeddings_model" not in st.session_state:
    st.session_state.embeddings_model = HuggingFaceEmbeddings(
        model_name="sentence-transformers/all-MiniLM-L6-v2"
    )
if "vector_store" not in st.session_state:
    st.session_state.vector_store = None
if "documents" not in st.session_state:
    st.session_state.documents = []

# Helper: Fetch sentences from Oracle DB
@st.cache_resource
def fetch_from_oracle(
    table_name: str = None,
    column_name: str = None,
    max_rows: int = 1000
) -> list:
    user = "DBUserHere"
    pwd = "YourPasswordHere"
    tns_name = "dbnameadw_high"   
    wall_config_dir = "/Users/Wallet-folder"
    wall_pwd = "WalletPasswordHere" 
    table = "MYNOTES"
    col = "NOTES"

    if not (user and pwd and tns_name):
        st.warning("Oracle credentials not set. Using sample data.")
        return None

    conn = None
    try:
        conn = oracledb.connect(user=user, 
                              password=pwd,
                              dsn=tns_name,
                              config_dir=wall_config_dir,
                              wallet_location=wall_config_dir,
                              wallet_password=wall_pwd)
        cur = conn.cursor()
        sql = f"SELECT {col} FROM {table} WHERE {col} IS NOT NULL AND ROWNUM <= :maxrows"
        cur.execute(sql, [max_rows])
        rows = cur.fetchall()
        return [r[0] for r in rows if r and r[0] is not None]
    except Exception as e:
        st.error(f"DB Error: {e}")
        return None
    finally:
        if conn:
            conn.close()

# Sidebar: Load data source
st.sidebar.header("⚙️ Configuration")
data_source = st.sidebar.radio("Select Data Source", ["Sample Data", "Oracle Database"])

documents_list = []
if data_source == "Oracle Database":
    st.sidebar.info("Loading from Oracle DB...")
    sentences = fetch_from_oracle()
    if sentences:
        documents_list = [Document(page_content=s, metadata={"source": "oracle"}) for s in sentences]
        st.sidebar.success(f"Loaded {len(documents_list)} documents from Oracle")
else:
    # Sample data fallback
    sample_sentences = [
        "I want to open a account.",
        "I want a credit card.",
        "I need to update my address.",
        "I want to apply for a loan.",
        "How do I check my balance?",
        "I lost my debit card."
    ]
    documents_list = [
        Document(page_content=s, metadata={"source": "sample"}) 
        for s in sample_sentences
    ]
    st.sidebar.success(f"Loaded {len(documents_list)} sample documents")

# Build vector store
if st.sidebar.button("🔄 Build Vector Store"):
    with st.spinner("Building vector store..."):
        st.session_state.vector_store = FAISS.from_documents(
            documents_list,
            st.session_state.embeddings_model
        )
        st.session_state.documents = documents_list
        st.sidebar.success("✅ Vector store built!")

# Main search interface
st.header("Search Documents")

if st.session_state.vector_store is None:
    st.info("👈 Click 'Build Vector Store' in the sidebar to get started")
else:
    col1, col2 = st.columns([3, 1])
    
    with col1:
        query = st.text_input(
            "Enter your search query:",
            placeholder="e.g., open an account"
        )
    
    with col2:
        k_results = st.number_input("Top K results", min_value=1, max_value=10, value=3)

    if query:
        with st.spinner("Searching..."):
            docs = st.session_state.vector_store.similarity_search(query, k=k_results)
            # Compute similarity scores manually
            query_embedding = st.session_state.embeddings_model.embed_query(query)
            results = []
            for doc in docs:
                doc_embedding = st.session_state.embeddings_model.embed_query(doc.page_content)
                score = 1 - (sum(a*b for a, b in zip(query_embedding, doc_embedding)) / 
                            (sum(a**2 for a in query_embedding)**0.5 * sum(b**2 for b in doc_embedding)**0.5))
                results.append((doc, score))

        st.subheader(f"Top {len(results)} Results")
        
        for i, (doc, score) in enumerate(results, 1):
            with st.container():
                col_rank, col_content, col_score = st.columns([0.5, 3, 1])
                
                with col_rank:
                    st.metric("Rank", i)
                
                with col_content:
                    st.write(f"**{doc.page_content}**")
                    if doc.metadata:
                        st.caption(f"Source: {doc.metadata.get('source', 'unknown')}")
                
                with col_score:
                    st.metric("Similarity", f"{(1 - score):.3f}")
            
            st.divider()

# Sidebar: Show loaded documents
with st.sidebar.expander("📄 View Loaded Documents"):
    if st.session_state.documents:
        for i, doc in enumerate(st.session_state.documents, 1):
            st.write(f"{i}. {doc.page_content[:80]}...")
    else:
        st.write("No documents loaded yet")

# Footer
st.sidebar.divider()
st.sidebar.markdown("**Setup Instructions:**")
st.sidebar.markdown("Select Datasource as 'Oracle Database'")
st.sidebar.markdown("Click on 'Build Vector Store' to load data from Oracle DB.")
 
