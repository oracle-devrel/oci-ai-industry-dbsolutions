# Database connection details
DB_USER = ""
DB_PWD = ""
DB_HOST_IP = ""
DB_SERVICE = ""

# GenAI configurations
COMPARTMENT_OCID = ""
ENDPOINT = "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com"
COHERE_API_KEY = ""

# Verbosity setting
VERBOSE = False

# Whether to stream chat messages or not
STREAM_CHAT = False

# Embedding model type
EMBED_MODEL_TYPE = "OCI"

# Embedding model for generating embeddings
EMBED_MODEL = "cohere.embed-english-v3.0"

# Tokenizer for token counting
TOKENIZER = "Cohere/Cohere-embed-multilingual-v3.0"

# Chunking settings
ENABLE_CHUNKING = True
MAX_CHUNK_SIZE = 1000
CHUNK_OVERLAP = 100

# Generation model
GEN_MODEL = "OCI"

# Retrieval and reranker settings
TOP_K = 3
TOP_N = 3
MAX_TOKENS = 1024
TEMPERATURE = 0.1
ADD_RERANKER = False
RERANKER_MODEL = "COHERE"
RERANKER_ID = ""

# Chat engine settings
CHAT_MODE = "condense_plus_context"
MEMORY_TOKEN_LIMIT = 3000

# Bits used to store embeddings
EMBEDDINGS_BITS = 64

# ID generation method
ID_GEN_METHOD = "HASH"

# Tracing settings
ADD_PHX_TRACING = False
PHX_PORT = "7777"
PHX_HOST = "0.0.0.0"

# Enable approximate query
LA2_ENABLE_INDEX = False

# UI settings
ADD_REFERENCES = True
