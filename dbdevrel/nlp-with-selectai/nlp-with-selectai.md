# Natural Language Processing with Oracle Select AI and Google Colab Notebook

## Introduction

This tutorial demonstrates how to use [Oracle Autonomous AI Database Select AI](https://www.oracle.com/in/autonomous-database/select-ai/) with the Cohere AI provider to generate SQL queries from natural language prompts. SelectAI enables you to ask questions about your database in plain English, and the AI generates the corresponding SQL queries automatically. This tutorial takes approximately 10 minutes to complete.

With Select AI use natural language to analyze your data and get quick insights about your business—no matter where the data is stored.

![Select AI](images/selai.jpeg)

Estimated Time: 10 mins.  

###Prerequisites  
- Oracle Autonomous AI Database is running
- Download [Google Colab Code](https://github.com/madhusudhanrao-ppm/dbdevrel/blob/main/source-codes/colab-code/selectai-colab.ipynb) 
- Admin access to Database and Cohere API key is generated  

### Objectives 
- Grant necessary privileges for SelectAI
- Configure Cohere credentials
- Create AI profiles
- Generate SQL queries from natural language prompts
 

## Task 1: Grant Required Privileges to Database User

Log in as the ADMIN user and grant the necessary privileges to your database user (in this example, `DEMOUSER`).

```sql
GRANT execute ON DBMS_CLOUD TO DEMOUSER;
GRANT execute ON DBMS_CLOUD_AI TO DEMOUSER;
COMMIT;
```

These grants enable the user to:
- Use DBMS_CLOUD for cloud services operations
- Use DBMS\_CLOUD\_AI for AI-powered features like SelectAI

---

## Task 2: Configure Network Access for Cohere API

Set up network access control to allow database connections to the Cohere API endpoint. As the ADMIN user, execute the following procedure to append a host ACE (Access Control Entry):

```sql
BEGIN  
    DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
         host => 'api.cohere.ai',
         ace  => xs$ace_type(privilege_list => xs$name_list('http'),
                             principal_name => 'DEMOUSER',
                             principal_type => xs_acl.ptype_db)
   );
END;
/
COMMIT;
```

This allows `DEMOUSER` to make HTTP requests to the Cohere API.

---

## Task 3: Obtain and Store Cohere API Key

Before proceeding, obtain your Cohere API key by logging into [Cohere Dashboard](https://cohere.ai/) with your GitHub credentials.

**Note**: Replace `<Your-Cohere-API-Key>` with your actual API key in all subsequent steps.

---

## Task 4: Create a Sample Table

Log in as `DEMOUSER` and create a copy of the sample `SH.CUSTOMERS` table for this tutorial:

```sql
CREATE TABLE DEMOUSER.CUSTOMERS AS
SELECT * FROM SH.CUSTOMERS;
```

This creates a local copy of the customers table that SelectAI will use to generate queries.

---

## Task 5: Create AI Credential

Generate Cohere keys from [Cohere Dashboard](https://dashboard.cohere.com/api-keys). Create a credential object to securely store your Cohere API key:

```sql
BEGIN
    DBMS_CLOUD.create_credential(
        'COHERE_CRED', 
        'COHERE', 
        '<\Your-Cohere-API-Key\>'
    );
END;
/
```

Verify the credential was created:

```sql
SELECT * FROM USER_CREDENTIALS;
```

---

## Task 6: Create AI Profile

Create an AI profile that defines which tables SelectAI should have access to:

```sql
BEGIN
  DBMS_CLOUD_AI.create_profile(
      'COHERE',
      '{"provider": "COHERE",
        "credential_name": "COHERE_CRED",
        "object_list": [{"owner": "DEMOUSER", "name": "CUSTOMERS"}]
       }');
END;
/  
```

This profile configures SelectAI to use:
- Cohere as the AI provider
- The credential created in Task 5
- The CUSTOMERS table owned by DEMOUSER

---

## Task 7: Set the Active AI Profile

Activate the Cohere profile as the default AI profile:

```sql
EXEC DBMS_CLOUD_AI.set_profile('COHERE');
```

---

## Task 8: Generate SQL Query from Natural Language

Use the `GENERATE` function with the `showsql` action to convert a natural language question into SQL:

```sql
SELECT DBMS_CLOUD_AI.GENERATE(
    prompt       => 'what is the total number of customers',
    profile_name => 'COHERE',
    action       => 'showsql'
) as query
FROM dual;
```

**Expected Output**:
```sql
SELECT COUNT(*) AS total_customers 
FROM "DEMOUSER"."CUSTOMERS" c
WHERE c."CUST_VALID" = 'Y'
```

---

## Task 9: Generate Natural Language Explanation

Use the `narrate` action to generate an explanation of the query in natural language:

```sql
SELECT DBMS_CLOUD_AI.GENERATE(
    prompt       => 'what is the total number of customers',
    profile_name => 'COHERE',
    action       => 'narrate'
) as query
FROM dual;
```

**Expected Output**:
```
The total number of customers is obtained by counting all records in the CUSTOMERS 
table where the CUST_VALID column is marked as 'Y', indicating valid customers.
```

---

## Task 10: Generate Query for Complex Questions

Try asking more complex questions. For example, to find how many customers are married:

```sql
SELECT DBMS_CLOUD_AI.GENERATE(
    prompt       => 'How many customers are married?',
    profile_name => 'COHERE',
    action       => 'showsql'
) as showsql
FROM dual;
```

**Expected Output**:
```sql
SELECT COUNT(*) AS married_customers
FROM "DEMOUSER"."CUSTOMERS" c
WHERE UPPER(c."CUST_MARITAL_STATUS") = 'MARRIED'
```

Get the narrative explanation:

```sql
SELECT DBMS_CLOUD_AI.GENERATE(
    prompt       => 'How many customers are married?',
    profile_name => 'COHERE',
    action       => 'narrate'
) as query
FROM dual;
```

---

## Learn More

- [Oracle SelectAI Documentation](https://docs.oracle.com/en/cloud/paas/autonomous-database/index.html)
- [Cohere API Documentation](https://docs.cohere.ai/)
- [Oracle DBMS\_CLOUD\_AI Package Reference](https://docs.oracle.com/en/database/oracle/oracle-database/23/arpls/dbms_cloud_ai.html)
- This tutorial is based on the LinkedIn article: [How to Use Oracle SelectAI with Cohere and OpenAI to Generate SQLs from Natural Language](https://www.linkedin.com/pulse/how-use-oracle-select-ai-cohere-openai-generate-sqls-from-rao-zabjf/)
- [Google Colab Code](https://github.com/madhusudhanrao-ppm/dbdevrel/blob/main/source-codes/colab-code/selectai-colab.ipynb)

---

## Acknowledgements

* **Author** - Madhusudhan Rao, Principal Product Manager, Oracle Database DevRel 
* **Last Updated By/Date** - December 18th, 2025
 