"""
Python Version: 3.11

Description:
    This module provides the class to integrate Oracle Vector DB 
    as Vector Store in llama-index.
"""

import time
from tqdm import tqdm
import array
from typing import List, Any, Dict
from contextlib import contextmanager
import streamlit as st
from llama_index.core.vector_stores.types import (
    VectorStore,
    VectorStoreQuery,
    VectorStoreQueryResult,
)

from llama_index.core.schema import TextNode, BaseNode

import oracledb
import logging

# Load configurations from the config module
from config import (
    DB_USER,
    DB_PWD,
    DB_HOST_IP,
    DB_SERVICE,
    EMBEDDINGS_BITS,
    ADD_PHX_TRACING,
    DSN,
    WALLET_LOCATION,
    WALLET_PASSWORD,
    CONFIG_DIR
)

# Phoenix tracing setup if enabled
if ADD_PHX_TRACING:
    from opentelemetry import trace as trace_api
    from opentelemetry.exporter.otlp.proto.http.trace_exporter import OTLPSpanExporter
    from opentelemetry.sdk import trace as trace_sdk
    from opentelemetry.sdk.trace.export import SimpleSpanProcessor
    from openinference.semconv.trace import SpanAttributes
    from opentelemetry.trace import Status, StatusCode

logger = logging.getLogger("ConsoleLogger")

# Initialize Phoenix tracer if tracing is enabled
tracer = None
if ADD_PHX_TRACING:
    endpoint = "http://127.0.0.1:7777/v1/traces"
    tracer_provider = trace_sdk.TracerProvider()
    trace_api.set_tracer_provider(tracer_provider)
    tracer_provider.add_span_processor(SimpleSpanProcessor(OTLPSpanExporter(endpoint)))
    tracer = trace_api.get_tracer(__name__)
    OPENINFERENCE_SPAN_KIND = "openinference.span.kind"

@contextmanager
def optional_tracing(span_name):
    """
    Context manager for optional Phoenix tracing.
    
    Args:
        span_name (str): The name of the tracing span.
    
    Yields:
        span: The tracing span context if tracing is enabled, otherwise None.
    """
    if ADD_PHX_TRACING:
        with tracer.start_as_current_span(name=span_name) as span:
            span.set_attribute(OPENINFERENCE_SPAN_KIND, "Retriever")
            span.set_attribute(SpanAttributes.TOOL_NAME, "oracle_vector_store")
            span.set_attribute(SpanAttributes.TOOL_DESCRIPTION, "Oracle DB 23ai")
            span.set_status(Status(StatusCode.OK))
            yield span
    else:
        yield None

def oracle_query(embed_query: List[float], top_k: int, verbose=True, approximate=False):
    """
    Executes a query against an Oracle database to find the top_k closest vectors to the given embedding.

    Args:
        embed_query (List[float]): A list of floats representing the query vector embedding.
        top_k (int): The number of closest vectors to retrieve.
        verbose (bool, optional): If set to True, additional information about the query and execution time will be printed. Defaults to True.
        approximate (bool, optional): If set to True, use approximate (index-based) query for faster results. Defaults to False.

    Returns:
        VectorStoreQueryResult: Object containing the query results, including nodes, similarities, and ids.
    """
    start_time = time.time()  # Record the start time of the query execution for performance monitoring

    # Define the Data Source Name (DSN) for connecting to the Oracle database.
    # DSN = f"{DB_HOST_IP}/{DB_SERVICE}"

    try:
        # Establish a connection to the Oracle database using credentials and connection parameters.
        with oracledb.connect(user=DB_USER, password=DB_PWD, dsn=DSN,
                              wallet_location=WALLET_LOCATION, config_dir=CONFIG_DIR,
                              wallet_password=WALLET_PASSWORD) as connection:
            print("Successfully connected to the database in oracle query.")
            # Open a cursor object to execute the SQL query.
            with connection.cursor() as cursor:
                print("Cursor created successfully.")

                # Determine the array type based on the precision of the embedding values.
                array_type = "d" if EMBEDDINGS_BITS == 64 else "f"

                # Convert the query embedding into a binary array format.
                array_query = array.array(array_type, embed_query)

                # Define the clause to use approximate search if `approximate` is set to True.
                approx_clause = "APPROXIMATE" if approximate else ""

                # Construct the SQL query to retrieve the top_k closest vectors.
                select = f"""
                    SELECT C.ID,
                           C.CHUNK,
                           C.PAGE_NUM,
                           VECTOR_DISTANCE(C.VEC,:1, COSINE) as d,
                           B.NAME
                    FROM CHUNKS C, BOOKS B
                    WHERE C.BOOK_ID = B.ID
                    ORDER BY 4
                    FETCH {approx_clause} FIRST {top_k} ROWS ONLY
                """

                # If verbose is True, log the constructed SQL query.
               
                # Execute the SQL query using the array_query as the parameter.
                cursor.execute(select, [array_query])
                print("SQL query executed successfully.")

                # Fetch all rows returned by the query.
                rows = cursor.fetchall()

                # Lists to store the results: nodes, node ids, and similarities.
                result_nodes, node_ids, similarities = [], [], []

                # Iterate over each row to process and filter the results based on similarity score.
                for row in rows:
                    print(f"Processing row: {row}")
                    # Check if the similarity score meets a threshold stored in the session state.
                    if 1 - (row[3]) >= st.session_state['similarity']:
                        print(f"Row passed similarity threshold: {row}")
                        full_clob_data = row[1].read()  # Read the CLOB data (text content) from the database.
                        result_nodes.append(
                            TextNode(
                                id_=row[0],
                                text=full_clob_data,
                                metadata={"file_name": row[4], "page#": row[2], "Similarity Score": 1 - (row[3])},
                            )
                        )
                        node_ids.append(row[0])
                        similarities.append(row[3])
                        print(f"Added node with ID: {row[0]}, Similarity: {1 - (row[3])}")
                    else:
                        print(f"Row did not meet similarity threshold: {row}")

    except Exception as e:
        # Log and print any errors that occur during the database operations.
        print(f"Error occurred in oracle_query: {e}")
        logger.error(f"Error occurred in oracle_query: {e}")
        return None

    # Create the result object to return the query results.
    q_result = VectorStoreQueryResult(
        nodes=result_nodes, similarities=similarities, ids=node_ids
    )

    # Calculate and log the elapsed time for the query execution.
    elapsed_time = time.time() - start_time
    print(f"Query execution completed in {elapsed_time:.2f} seconds.")

    if verbose:
        print(f"Verbose mode: Query duration was {round(elapsed_time, 1)} seconds.")

    return q_result


def save_chunks_with_embeddings_in_db(pages_id,pages_text, pages_num,embeddings, book_id, connection):
    """
    Save chunk texts and their embeddings into the database.
    
    :param pages_text: List of text chunks.
    :param pages_id: List of IDs for the chunks.
    :param pages_num: List of page numbers corresponding to the chunks.
    :param embeddings: List of tuples (id, embedding_vector) for the embeddings.
    :param book_id: The ID of the book to which the chunks belong.
    :param connection: Database connection object.
    """
    tot_errors = 0
    try:
        with connection.cursor() as cursor:
            logging.info("Saving texts and embeddings to DB...")
            cursor.setinputsizes(None, oracledb.DB_TYPE_CLOB)

            for id, text, page_num, vector  in zip(tqdm(pages_id), pages_text,pages_num,embeddings):
                # Determine the type of array based on embeddings precision
                array_type = "d" if EMBEDDINGS_BITS == 64 else "f"
                input_array = array.array(array_type, vector)
                try:
                    cursor.execute(
                        "INSERT INTO CHUNKS (ID, CHUNK,VEC, PAGE_NUM, BOOK_ID) VALUES (:1, :2, :3, :4, :5)",
                        [id, text,input_array, page_num, book_id]
                    )
                except Exception as e:
                    logging.error(f"Error in save_chunks_with_embeddings: {e}")
                    tot_errors += 1

        logging.info(f"Total errors in save_chunks_with_embeddings: {tot_errors}")
    except Exception as e:
        logging.error(f"Critical error in save_chunks_with_embeddings_in_db: {e}")
        raise

class OracleVectorStore(VectorStore):
    """
    Class to interface with Oracle DB Vector Store.
    """

    stores_text: bool = True
    verbose: bool = False

    def __init__(self, verbose=False, enable_hnsw_indexes=False) -> None:
        """
        Initialize OracleVectorStore with optional verbosity and HNSW index support.
        
        Args:
            verbose (bool, optional): Enable verbose logging. Defaults to False.
            enable_hnsw_indexes (bool, optional): Enable HNSW indexes for approximate search. Defaults to False.
        """
        self.verbose = verbose
        self.enable_hnsw_indexes = enable_hnsw_indexes
        self.node_dict: Dict[str, BaseNode] = {}

    def add(self, nodes: List[BaseNode]) -> List[str]:
        """
        Add nodes to the index.

        Args:
            nodes (List[BaseNode]): List of nodes to add.

        Returns:
            List[str]: List of node IDs added.
        """
        ids_list = []
        for node in nodes:
            self.node_dict[node.id_] = node
            ids_list.append(node.id_)

        return ids_list

    def delete(self, node_id: str, **delete_kwargs: Any) -> None:
        """
        Delete nodes from the index (not implemented).

        Args:
            node_id (str): The ID of the node to delete.
        """
        raise NotImplementedError("Delete not yet implemented for Oracle Vector Store.")

    def query(self, query: VectorStoreQuery, **kwargs: Any) -> VectorStoreQueryResult:
        """
        Query the Oracle DB Vector Store.

        Args:
            query (VectorStoreQuery): The query to execute.

        Returns:
            VectorStoreQueryResult: The query result.
        """
        similarity_top_k = st.session_state['top_k']

        if self.verbose:
            logging.info("---> Calling query on DB with top_k={}".format(similarity_top_k))

        with optional_tracing("oracle_vector_db"):
            return oracle_query(
                query.query_embedding,
                top_k=similarity_top_k,
                verbose=self.verbose,
                approximate=self.enable_hnsw_indexes,
            )

    def persist(self, persist_path=None, fs=None) -> None:
        """
        Persist the VectorStore to the Oracle database.
        """
        if self.node_dict:
            logging.info("Persisting to DB...")

            embeddings = []
            pages_id = []
            pages_text = []
            pages_num = []

            for key, node in self.node_dict.items():
                pages_id.append(node.id_)
                pages_text.append(node.text)
                embeddings.append(node.embedding)
                pages_num.append(node.metadata["page#"])

            with oracledb.connect(user=DB_USER, password=DB_PWD, dsn=self.DSN, config_dir=WALLET_LOCATION) as connection:
                save_chunks_with_embeddings_in_db(pages_id, pages_text,pages_num, embeddings, book_id=None, connection=connection)
                connection.commit()

            self.node_dict = {}
