"""
Python Version: 3.11

Description:
    This module provides some utilities.
"""

import logging
import oci
from config import (
    EMBED_MODEL_TYPE,
    EMBED_MODEL,
    GEN_MODEL,
    TOP_K,
    ADD_RERANKER,
    RERANKER_MODEL,
    TOP_N,
    ADD_PHX_TRACING,
)

# Configure logger
logger = logging.getLogger("ConsoleLogger")

# Function to load OCI configuration
def load_oci_config():
    """
    Load the OCI configuration to connect to OCI using an API key.

    Returns:
        dict: The OCI configuration.
    """
    # Are you using default profile?
    oci_config = oci.config.from_file("~/.oci/config", "DEFAULT")
    return oci_config

# Function to print the current configuration
def print_configuration():
    """
    Print the current configuration settings.
    """
    logger.info("------------------------")
    logger.info("Configuration used:")
    logger.info(f"{EMBED_MODEL_TYPE} {EMBED_MODEL} for embeddings...")
    logger.info("Using Oracle AI Vector Search...")
    logger.info(f"Using {GEN_MODEL} as LLM...")
    logger.info("Retrieval parameters:")
    logger.info(f"TOP_K: {TOP_K}")

    if ADD_RERANKER:
        logger.info(f"Using {RERANKER_MODEL} as reranker...")
        logger.info(f"TOP_N: {TOP_N}")
    if ADD_PHX_TRACING:
        logger.info(f"Enabled observability with Phoenix tracing...")

    logger.info("------------------------")
    logger.info("")

# Function to pretty print documents
def pretty_print_docs(docs):
    """
    Pretty print the contents of the documents.

    Args:
        docs (list): A list of documents to print.
    """
    print(
        f"\n{'-' * 100}\n".join(
            [f"Document {i+1}:\n\n" + d.page_content for i, d in enumerate(docs)]
        )
    )

# Function to format documents as a single string
def format_docs(docs):
    """
    Format the documents as a single string.

    Args:
        docs (list): A list of documents to format.

    Returns:
        str: The formatted string containing all document contents.
    """
    return "\n\n".join(doc.page_content for doc in docs)
