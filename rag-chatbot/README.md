# Oracle Database 23ai - How to create a RAG-based chatbot with internal PDFs and Oracle Database Tables and train the AI model.

In part 6 of the Oracle Database 23ai series, we will take an example of an organization with a rich knowledge base of several documents, PDF files, and data stored in Database tables. It would be cool if the chatbot could learn from every bit of knowledge source available internally and answer users' chat questions using natural language processing. 

This article covers the following topics: Getting Access to Generative AI Agents, Creating an OCI Object Storage Bucket and uploading a Knowledge Repository, Creating a Knowledge Base and its Data Source, Starting the Data Ingestion Job, Creating a Generative AI Agent, Training PDFs, using the default AI Chat Interface, and answering questions about how we get data from the Oracle database, generate a PDF, and train the RAG AI model based chatbot. 

**Updated 17th July:** The part 6 article has been updated to include the Generative AI Agents (Beta) Web User Interface (powered by **#Streamlit** server & hashtag#Python) in Article Section 12. This application would help if you want your Internal PDF/Document search hashtag#RAG application to be accessed without logging into cloud tenancy, especially for end users inside your organization who want to search the internal hashtag#Knowledge Repository without requiring access to log in into the cloud tenancy. or simply create your own end user experience for RAG Search (light theme/dark theme) 👩🎨 🤴 

* * *

### Table of contents

1. Getting Access to Generative AI Agents
2. Create an OCI Object Storage Bucket and Knowledge Repository.
3. Create Knowledge Base
4. Create Data Source
5. Start Ingestion Job
6. Create Generative AI Agent
7. Training PDFs and Chat Interface 
8. How do we get data from the Oracle database, generate a PDF and train it?
9. Uploading the PDF into OCI Object storage
10. Training new documents in the knowledge repository
11. How to upload .CSV file to object storage using **dbms_cloud.export_data**
12. Creating Web User interface with Streamlit & Python
13. Combining Internal Knowledge Base search with Oracle Generative AI LLM and Oracle Database
14. Conclusion 

* * *

### 01. Getting Access to Generative AI Agents

You can get access to Generative AI Agents resources with OCI Identity and Access Management (IAM) policies. 

By default, only users in the Administrators group have access to all OCI resources, including Generative AI Agents resources. If you're a member of another group, ask your administrator to assign you the least privileges that are required to perform your responsibilities by reviewing the following sections. 

For this, we would need our tenancy to subscribe to Oracle Generative AI Agents (Beta). If you do not find it in the other cloud areas, please check the Chicago region. 

Architecture 

![][1]


[1]: images/1721154435550.png
Architecture 

* * *

### Demo Video for this Article

[![Demo Video](http://img.youtube.com/vi/DyxUFEBop08/0.jpg)](http://www.youtube.com/watch?v=DyxUFEBop08 "Demo Video")

* * *

### 02. Create an OCI Object Storage Bucket and Knowledge Repository.

Login to [cloud.oracle.com][2] and from the top navigation, Under the top left navigation, select Storage and Buckets 


[2]: http://cloud.oracle.com

![][3]


[3]: images/1720712806392.png
Click on **Create Bucket**

![][4]


[4]: images/1720712968608.png
Provide **Bucket Name** **Standard** tier storage, let other options be default and click on **Create**. 

![][5]


[5]: images/1720712907355.png
Upload PDF files to this object storage bucket. 

![][6]


[6]: images/1720712938381.png
* * *

Under the Top Navigation Menu, select Analytics and AI > AI Services > Generative AI Agents (new Beta) 

![][7]


[7]: images/1720709879135.png
* * *

Click on **Knowledge Bases** and **Create a Knowledge Base**

![][8]


[8]: images/1720710096541.png
* * *

### 03. Create Knowledge Base

Under Create knowledge base, provide name, select compartment and select Object storage. You can also choose OCI OpenSearch. However, we are covering Object storage in this article 

![][9]


[9]: images/1720710185731.png
* * *

### 04. Create Data Source

Click on the create Data Source button 

![][10]


[10]: images/1720712292231.png
Provide Data source name, and type will be Object storage, Select the bucket name in the compartment, select all in the bucket or you can select only the required PDFs in the OCI Object storage bucket. 

![][11]


[11]: images/1720712419964.png
### 05. Start Ingestion Job

Check on automatically starting the ingestion job for the above data sources. Please note you can add multiple data sources here. Click on create button. 

![][12]


[12]: images/1720713807477.png
* * *

### 06. Create Generative AI Agent

From the left navigation, click on Create agent 

![][13]


[13]: images/1720713886385.png
Provide the agent name, select the knowledge base, and provide a chat welcome message. 

![][14]


[14]: images/1720713715640.png
Click on the Create button 

Now, our chat agent is ready and trained on internal PDF data from OCI object storage. 

* * *

### 07. Training PDFs and Chat Interface

From the left navigation, click on the chat button, and now you are all set to ask questions or have a conversation with the chatbot. 

I have trained my chatbot on the following PDFs [Breast cancer facts & figures][15]


[15]: https://www.cancer.org/content/dam/cancer-org/research/cancer-facts-and-statistics/breast-cancer-facts-and-figures/breast-cancer-facts-and-figures-2019-2020.pdf

![][16]


[16]: images/1720714220876.png
and lets ask questions, we will be greeted by a welcome message 
    
    
    Chatbot: Hi user, I am your friend Ask AI how can i help you today?
    
    User: what is Breast cancer?

![][17]


[17]: images/1720714352469.png
* * *
    
    
    User: How is breast cancer diagnosed?

![][18]


[18]: images/1720714328080.png
Let us now check another PDF on COVID-19 [Corona Virus FAQs][19]


[19]: https://customsitesmedia.usc.edu/wp-content/uploads/sites/110/2020/03/16232716/Coronavirus-FAQ.pdf

![][20]


[20]: images/1720714425142.png
> Disclaimer: I have provided the source to download these PDFs, and I don't own the content on any of these PDF files. They are just used for demonstration and training purposes only for this article. 
    
    
    User: What is coronavirus and COVID-19?

![][21]


[21]: images/1720714650543.png
You can click on View citation, if you would like to know which PDF has been referred to answer this chat. 
    
    
    User: How to prevent covid-19 infection?

![][22]


[22]: images/1720714779574.png
* * *

### 08. Data from the Oracle Database, Generate a PDF and train it?

We can quickly spin up an Oracle APEX instance. or use your existing Oracle APEX instance 

Please refer to my part 1 article if you do not have an Oracle APEX instance. 

Create a Oracle APEX page and create a report using the example SQL query shown below. 
    
    
    select ID, CATEGORY, STATES_NAME_EN,
    REGION_EN,   NAME_EN, SHORT_DESCRIPTION_EN 
    from UNESCO_SITES where rownum < 100

You can download the UNESCO CSV file to create table from my [GitHub Repo][23]. ([PDF file][24]) 


[23]: https://github.com/madhusudhanrao-ppm/code-assets/tree/main/AI-for-Travel
[24]: https://github.com/madhusudhanrao-ppm/code-assets/blob/main/AI-for-Travel/UnescoPDF.pdf

![][25]


[25]: images/1720715219214.png
Run the Oracle APEX page with Interactive report as shown below. 

![][26]


[26]: images/1720715336109.png
Download the PDF report as shown, alternatively you write PL/SQL procedure to do the same that is to create a PDF and upload it an Object storage 

![][27]


[27]: images/1720715302442.png
The PDF will be as shown below 

![][28]


[28]: images/1720715408075.png
* * *

### 09. Uploading the PDF into OCI Object storage

You can use Oracle APEX to create a connection to OCI and Upload PDF directly to OCI Object storage, this is not covered in this article. 

Please refer to my LiveLabs on [AI for Healthcare][29] on how to upload PDF files into Object storage using PL/SQL procedure. 


[29]: https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?p210_wid=3707

* * *

### 10. Training new documents in the knowledge repository

Upload our new PDFs into the Object storage bucket (_of the Data source that has been selected_) 

Click on our Data source and create a new Ingestion Jobs 

![][30]


[30]: images/1720714878581.png
Provide the job name and click on create button. 

![][31]


[31]: images/1720714895922.png
So now we should be good with our chatbot training. with a new PDF and search again 
    
    
    User: describe Kakadu National Park

![][32]
    
    
[32]: images/1720715573723.png
    User: please tell me about Monasteries of Haghpat and Sanahin

![][33]
    
    
[33]: images/1720715625673.png
    user: where is Quebrada de Humachuaca 

![][34]


[34]: images/1720715789935.png
This looks great with all the search results scanning our repositories, which consist of scanned PDF files and data coming from Oracle Database tables exported using Oracle APEX. 

* * *

**Important Note ([****reference**][35]**)**


[35]: https://docs.oracle.com/en-us/iaas/Content/generative-ai-agents/create-data-source.htm#create-data-source

- PDF and txt files are the only supported bucket objects in Generative AI Agents.
- If your data is not ready, you can point the data source to empty folders in a bucket and later, populate the folders with data. After you populate the folders with data, you can ingest the data into the data source.

* * *

### 11. (Optional) How to upload .CSV file to object storage using dbms_cloud.export_data

This is purely optional; you can skip this section as well. 

What if you want to create a .CSV file from a SQL query and directly upload the file into OCI Object storage using PL/SQL? 

For example, If we want to create a file with following SQL 
    
    
    select NAME_EN, SHORT_DESCRIPTION_EN, CATEGORY from DEMOUSER.UNESCO_SITES where rownum < 100

DBMS_CLOUD.EXPORT_DATA is a handy package to know and can be very helpful. 

* * *

Login SQL Web Developer as an ADMIN user and Grant the following privileges, assuming <DEMOUSER> owns the table from where you want to create .csv files 
    
    
    -- Login as ADMIN User 
    
    grant execute on DBMS_CLOUD to DEMOUSER;
    grant execute on DBMS_CLOUD_AI to DEMOUSER;

Create Credential with OCI API key using DBMS_CLOUD.CREATE_CREDENTIAL 
    
    
    -- replace the values based on your OCI cloud tenancy and User settings
    
    BEGIN                                                                         
      DBMS_CLOUD.CREATE_CREDENTIAL(                                               
        credential_name => '<credential-name>',                                          
        user_ocid       => '<replace with your OCI user OCID>',
        tenancy_ocid    => '<replace with your OCI tenancy OCID>',
        private_key     => '<replace with your OCI private key>',
        fingerprint     => '<replace with your fingerprint>''      
      );                                                                          
    END;                                                                         
    /

From PL/SQL, create a .csv and directly upload the file to OCI Object storage using DBMS_CLOUD.EXPORT_DATA 
    
    
    -- Replace tenancy namespace, bucket name and file name as per your requirements
    
    BEGIN
      DBMS_CLOUD.EXPORT_DATA (
        credential_name => '<credential-name>',
        file_uri_list => 'https://objectstorage.<region-identifier>.oraclecloud.com/n/<tenancy-namespace>/b/<bucket-name>/o/<file-name>.csv',
        format => '{"type":"CSV","delimiter":",","maxfilesize":536870912,"header":true,"compression":null,"escape":"true","quote":"\""}',
        query => 'select NAME_EN, SHORT_DESCRIPTION_EN,CATEGORY from DEMOUSER.UNESCO_SITES where rownum < 100');
    END;
    /

So, this will not only create a <file-name>.csv file but also will upload to OCI object storage bucket <bucket-name> 

* * *

### 12. Creating Web User interface with Streamlit

Download source code zip from Oracle [Generative AI Playground][36]


[36]: https://github.com/cgpavlakos/genai_playground/tree/main

and extract the [genai_playground-main.zip][37] file 


[37]: https://github.com/cgpavlakos/genai_playground/tree/main

Edit secrets.toml, it should be as shown below, please change according to your tenancy 

![][38]
    
    
[38]: images/1721194289009.png
    -- secrets.toml file
    
    endpoint = "https://agent-runtime.generativeai.us-chicago-1.oci.oraclecloud.com"  
    agent_endpoint_id = "ocid1.genaiagentendpoint.oc1.us-chicago-1.<your-agent-ocid>"  
    llm_endpoint = "https://inference.generativeai.us-chicago-1.oci.oraclecloud.com"  
    compartment_id = "<your-compartment-ocid>"  
    logo = "Oracle.png"  
    user_avatar =  ":material/record_voice_over:"  
    assisstant_avatar =  "o.png" 

Upgrade PIP if required (I am running MacOS) with python3.10 
    
    
    [notice] A new release of pip is available: 24.1.1 -> 24.1.2
    [notice] To update, run: pip install --upgrade pip
    madhusudhanrao@MadhuMac genai_playground-main % pip install --upgrade pip

Run the requirements.txt 
    
    
    pip install -r requirements.txt

Install OCI Command Line Interface - OIC CLI ([Official Guide][39]) 


[39]: https://docs.oracle.com/en-us/iaas/Content/API/Concepts/cliconcepts.htm

You will also need to complete the OCI CLI configuration task, please refer this article if required 

Run the application 
    
    
    madhusudhanrao@MadhuMac genai_playground-main % streamlit run Home.py

![][40]


[40]: images/1721194018188.png
Open the network ports 8501, if you are running this on an external cloud server 
    
    
    sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 8501 -j ACCEPT

![][41]


[41]: images/1721194226631.png
Another example 

![][42]


[42]: images/1721195815464.png
Creating Dark Theme UI, Update Config.toml 
    
    
    [theme]
    primaryColor="white" #ocean #2C5967
    backgroundColor="black" #neutral 1 #F5F4F2
    secondaryBackgroundColor="#DFDCD8" #neutral 2
    textColor="white" #obark #312D2A
    font="sans serif"

and run the server again 
    
    
    streamlit run Home.py

![][43]


[43]: images/1721196637249.png
* * *

### 13. Combining Internal Knowledge Base search with Oracle Generative AI LLM and Oracle Database

Updated on July 19th, I have enhanced this code to search Oracle Generative AI Public LLM and use Oracle Database as required (for example, user background, sessions, contexts, etc.), which can help further fine-tune these search results, as shown below. 

For example, we may not have an Internal Knowledge repository assets on _how to make mixed fruit jam _or answer a question on _where is Tirupati_, but Oracle Gen AI LLM can answer (almost) everything. 

![][44]


[44]: images/1721372189930.png
![][45]


[45]: images/1721372204674.png
* * *

### Conclusion:

My articles have provided several options for searching and conversing with internal knowledge repositories and external Generative AI LLMs such as Oracle GenAI, Cohere, Open AI etc. 

We can use **Oracle Database 23ai Vector search**. Easily bring the power of similarity search to your business data without managing and integrating multiple databases. AI Vector Search enables you to search structured and unstructured data based on its semantics or meaning, in addition to its values. Native vector capabilities can help large language models (LLMs) deliver more accurate and contextually relevant results with retrieval-augmented generation (RAG), 

**OCI Generative AI Agents** is a fully managed service that combines the power of large language models (LLMs) with an intelligent retrieval system to create contextually relevant answers by searching your knowledge base, making your AI applications smart and efficient. 

OCI Generative AI Agents support several ways to onboard your data and then allow you and your customers to interact with your data using a chat interface or API. 

Use **Select AI for Natural Language Interaction with your Database Oracle Autonomous Database. **Select AI enables you to query your data using natural language. The Select AI feature allows Autonomous Database to use generative AI with Large Language Models (LLMs) to convert user's input text into Oracle SQL. Select AI processes the natural language prompt, supplements the prompt with metadata, and then generates and runs a SQL query.
