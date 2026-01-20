import streamlit as st
import cx_Oracle
import oracledb 
import pandas as pd

# Oracle database connection settings
username = 'DEMOUSER'
password = 'Welcome123456#'
dsn = '(description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.ap-mumbai-1.oraclecloud.com))(connect_data=(service_name=r9nv7ixxxxhn_indeducation_high.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))'
tns_name = "indeducation_high"
wall_config_dir = "/Wallets_welcome1/Wallet_IndEducation" 
wall_pwd = "<Your-Password>"

# Create a connection to the Oracle database
def create_connection():
    try: 
        connection = oracledb.connect(user=username, 
                              password=password,
                              dsn=tns_name,
                              config_dir=wall_config_dir,
                              wallet_location=wall_config_dir,
                              wallet_password=wall_pwd)
        return connection
    except cx_Oracle.Error as e:
        st.error(f"Error connecting to database: {e}")
        return None

# View all records from the BANK_CUSTOMERS table
def view_records():
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            query = "SELECT * FROM BANK_CUSTOMERS"
            cursor.execute(query)
            records = cursor.fetchall()
            column_names = [desc[0] for desc in cursor.description]
            return records, column_names
        except cx_Oracle.Error as e:
            st.error(f"Error fetching records: {e}")
        finally:
            connection.close()

# Insert a record into the BANK_CUSTOMERS table
def insert_record(customer_name, gender, marital_status, street_address, city, state, phone_number, email):
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            query = """
                INSERT INTO BANK_CUSTOMERS (CUSTOMER_NAME, GENDER, MARITAL_STATUS, STREET_ADDRESS, CITY, STATE, PHONE_NUMBER, EMAIL)
                VALUES (:customer_name, :gender, :marital_status, :street_address, :city, :state, :phone_number, :email)
            """
            cursor.execute(query, {
                'customer_name': customer_name,
                'gender': gender,
                'marital_status': marital_status,
                'street_address': street_address,
                'city': city,
                'state': state,
                'phone_number': phone_number,
                'email': email
            })
            connection.commit()
            st.success("Record inserted successfully!")
        except cx_Oracle.Error as e:
            st.error(f"Error inserting record: {e}")
        finally:
            connection.close()

# Update a record in the BANK_CUSTOMERS table
def update_record(id, customer_name, gender, marital_status, street_address, city, state, phone_number, email):
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            query = """
                UPDATE BANK_CUSTOMERS
                SET CUSTOMER_NAME = :customer_name,
                    GENDER = :gender,
                    MARITAL_STATUS = :marital_status,
                    STREET_ADDRESS = :street_address,
                    CITY = :city,
                    STATE = :state,
                    PHONE_NUMBER = :phone_number,
                    EMAIL = :email
                WHERE ID = :id
            """
            cursor.execute(query, {
                'id': id,
                'customer_name': customer_name,
                'gender': gender,
                'marital_status': marital_status,
                'street_address': street_address,
                'city': city,
                'state': state,
                'phone_number': phone_number,
                'email': email
            })
            connection.commit()
            st.success("Record updated successfully!")
        except cx_Oracle.Error as e:
            st.error(f"Error updating record: {e}")
        finally:
            connection.close()

# Delete a record from the BANK_CUSTOMERS table
def delete_record(id):
    connection = create_connection()
    if connection:
        try:
            cursor = connection.cursor()
            query = "DELETE FROM BANK_CUSTOMERS WHERE ID = :id"
            cursor.execute(query, {'id': id})
            connection.commit()
            st.success("Record deleted successfully!")
        except cx_Oracle.Error as e:
            st.error(f"Error deleting record: {e}")
        finally:
            connection.close()

# Streamlit application
def main():
    page = st.sidebar.selectbox("Choose a page", ["View Records", "Insert Record", "Update Record", "Delete Record"])

    if page == "View Records":
        st.title("View Records")
        records, column_names = view_records()
        if records:
            data = []
            for record in records:
                data.append(record)
            df = pd.DataFrame(data, columns=column_names)
            st.table(df)
        else:
            st.info("No records found.")

    elif page == "Insert Record":
        st.title("Insert Record")
        with st.form("insert_form"):
            customer_name = st.text_input("Customer Name")
            gender = st.selectbox("Gender", ["Male", "Female", "Other"])
            marital_status = st.selectbox("Marital Status", ["Single", "Married", "Divorced", "Widowed"])
            street_address = st.text_input("The Street Address")
            city = st.text_input("City")
            state = st.text_input("State")
            phone_number = st.text_input("Phone Number")
            email = st.text_input("Email")
            submit_button = st.form_submit_button("Insert Record")
            if submit_button:
                insert_record(customer_name, gender, marital_status, street_address, city, state, phone_number, email)

    elif page == "Update Record":
        st.title("Update Record")
        with st.form("update_form"):
            id = st.text_input("ID")
            customer_name = st.text_input("Customer Name")
            gender = st.selectbox("Gender", ["Male", "Female", "Other"])
            marital_status = st.selectbox("Marital Status", ["Single", "Married", "Divorced", "Widowed"])
            street_address = st.text_input("The Street Address")
            city = st.text_input("City")
            state = st.text_input("State")
            phone_number = st.text_input("Phone Number")
            email = st.text_input("Email")
            update_button = st.form_submit_button("Update Record")
            if update_button:
                update_record(int(id), customer_name, gender, marital_status, street_address, city, state, phone_number, email)

    elif page == "Delete Record":
        st.title("Delete Record")
        with st.form("delete_form"):
            id = st.text_input("ID")
            delete_button = st.form_submit_button("Delete Record")
            if delete_button:
                delete_record(int(id))

if __name__ == "__main__":
    main()
