# Leveraging Open Neural Network Exchangemodels to vectorize content in PDFs

While searching for large external language models to get answers to questions will solve one type of problem, the requirements might also differ slightly from searching for Corporate internal knowledge repositories and datasets.

Imagine an organization is working on internal research and has several internal PDFs that should be searched by an AI Search engine rather than going and looking for public LLMs for relevant questions. There's also the possibility of traditional RDBMS queries along with Gen AI queries to make it more powerful.

This solution will demonstrate how to use Open Neural Network Exchange (ONNX) concepts, create our own ONNX models, and use these models to read PDFs and vectorize content, ultimately developing an Oracle APEX Vector-based search engine that can query internal knowledge repositories (or sometimes also query external large language models).


###  About Retrieval augmented generation (RAG)

RAG uses the results of **similarity search to improve the accuracy and contextual relevance of large language model responses to questions about business data**. RAG helps identify contextually relevant private data that the LLM may not have been trained on and then uses it to augment user prompts so LLMs can respond with greater accuracy. RAG helps organizations provide customized answers to business questions without the high cost of retraining or fine-tuning the LLMs.

The desire to get higher quality answers from LLMs is universal, spanning many industries. Some examples of using RAG for improved accuracy include the following:

- **Chatbots for internal and external users**
- **Document searches and summaries**
- Language to code synthesis
- Answers to questions that require specialized, **domain-specific knowledge**

In this article, we will cover the following:

1. Open Neural Network Exchange (ONNX) - concepts
2. Stages of Data Transformations
3. Short demo video of what we plan to achieve
4. Upgrade the Python version and Install the OML4py Client
5. Convert Pretrained Models to ONNX Format using OML4py
6. Download Knowledge PDF files to our Oracle Database 23ai Server directory
7. Convert File to Text to Chunks
8. Convert File to Embeddings
9. Create Oracle APEX workspace with docuser Schema
10. Create a Vector AI Search Application to Search PDF documents
11. Getting OCI User Authentication Parameters
12. Create RAG Search Function search PDFs and External Oracle Gen AI LLMs
13. Create an Oracle APEX page for AI Vector search
14. Reference Architecture

###  1. What is Open Neural Network Exchange?

ONNX, or Open Neural Network Exchange, is an open-source format for representing machine learning models. It defines a common file format and set of operators for building machine learning and deep learning models. ONNX aims to break down the barriers between different deep learning frameworks, allowing developers to use the strengths of different libraries without getting locked into a single ecosystem. [read more at onnx.ai][1]


[1]: https://onnx.ai/about.html

![][2]


[2]: images/1715344779151.png

Open Neural Network Exchange or ONNX is an open standard format of machine learning models. By using the Oracle Machine Learning Services REST API, you can deploy and score your ONNX format models. The REST API is exposed as part of the Oracle Machine Learning Services on Oracle Autonomous Database cloud service.

_Note: Oracle Machine Learning Services supports ONNX Runtime 1.11.1._

**Supported Machine Learning Models**

The Oracle Machine Learning Services REST API supports ONNX format model deployment through REST endpoints for:

- Classification models (both non-image models and image models)
- Clustering models (non-image models)
- Feature Extraction models (image models)
- Regression models (non-image models)

[Read more at: Work with Oracle Machine Learning ONNX Format Models][3]


[3]: https://docs.oracle.com/en/database/oracle/machine-learning/omlss/omlss/omls-example-onnx-ml.html

###  2. Stages of Data Transformations

![][4]


[4]: images/1715417391489.png

To prepare large unstructured textual data (for example, a PDF or Word document), you first transform the data into plain text and then pass the resulting text through _Chunker_. The Chunker then splits the text into smaller chunks using a process known as **chunking**. A single document may be split into many chunks, each transformed into a vector.

**Chunks** are pieces of words (to capture specific words or word pieces), sentences (to capture a specific meaning), or paragraphs (to capture broader themes). Later, you will learn about several chunking parameters and techniques to define so that each chunk contains a relevant and meaningful context.

![][5]


[5]: images/1715417730257.png

###  3. Short Demo Video for this article

Based on this article, this video shows what we plan to achieve.

###  4. Upgrade Python version and Install OML4py Client

**VECTOR_EMBEDDING**: The VECTOR_EMBEDDING function enables you to generate embedding for different data types according to an embedding ONNX model.

You can use VECTOR_EMBEDDING in SELECT clauses, in predicates, and as an operand for SQL operations accepting a VECTOR type.

**VECTOR_CHUNKS**: The VECTOR_CHUNKS function enables you to split plain text into chunks (pieces of words, sentences, or paragraphs) in preparation for the generation of embeddings, to be used with a vector index.

OML4Py enables the use of text transformers from Hugging Face by converting them into ONNX format models. OML4Py also adds the necessary tokenization and post-processing. The resulting ONNX pipeline is then imported into the database and can be used to generate embeddings for AI Vector Search.

_Note: This feature will _**_only _**_work on OML4Py client. It is not supported on the OML4Py server._

We will create a cloud compute Instance of **Oracle Enterprise Linux 9** and SSH into compute instance, if you are not sure how to create a compute instance [please refer my previous article on this][6]. The goal here is to install OML4Py client on OEL 9 machine with few python upgrades.


[6]: https://www.linkedin.com/pulse/how-install-oracle-database-23ai-ords-apex-cloud-oel-instance-rao-smr5f

**Download and Extract the OML4Py Client Installation File**

To download and extract the OML4Py client installation file, do the following:

1. Download the client installation zip file.
2. Go to the [Oracle Machine Learning for Python Downloads][7] page on the Oracle Technology Network.Accept the license agreement and select **Oracle Machine Learning for Python Downloads (v1.0)**.
3. Select **Oracle Machine Learning for Python Client Install for Oracle Database on Linux 64 **save the zip file to an accessible directory.
4. These instructions use a directory named oml4py, but you can download the zip file to any location accessible to the user installing the oml4py client.


[7]: https://www.oracle.com/technetwork/database/database-technologies/python/machine-learning-for-python/downloads/index.html

![][8]


[8]: images/1715346700078.png

![][9]


[9]: images/1715347038280.png

You will have to download this locally and then upload it to cloud machine using SCP, [please refer my previous article][10] on SCP if required.


[10]: https://www.linkedin.com/pulse/how-install-oracle-database-23ai-ords-apex-cloud-oel-instance-rao-smr5f


    [root@devdb23aiml ~]# python3 --version
    Python 3.9.18

    -- We would need Python 3.12.0

    wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz

    mkdir -p /home/opc/python

    tar -xvzf Python-3.12.0.tgz --strip-components=1 -C /home/opc/python

    cd /home/opc/python

    --  some additional libraries will be required to run oml4py

    $ rpm -qa perl-Env
    $ rpm -qa libffi-devel
    $ rpm -qa openssl
    $ rpm -qa openssl-devel
    $ rpm -qa tk-devel
    $ rpm -qa xz-devel
    $ rpm -qa zlib-devel
    $ rpm -qa bzip2-devel
    $ rpm -qa readline-devel
    $ rpm -qa libuuid-devel
    $ rpm -qa ncurses-devel
    $ rpm -qa matplotlib
    $ rpm -qa sklearn


    sudo yum install perl-Env libffi-devel openssl openssl-devel tk-devel xz-devel zlib-devel bzip2-devel readline-devel libuuid-devel ncurses-devel


    $ cd /home/opc/python
    ./configure --enable-shared --prefix=/home/opc/python

    make clean; make
    make altinstall

    export PYTHONHOME=/home/opc/python
    export PATH=$PYTHONHOME/bin:$PATH
    export LD_LIBRARY_PATH=$PYTHONHOME/lib:$LD_LIBRARY_PATH

    python3 -m pip install --upgrade pip

    cd /home/opc/python/bin
    ln -s python3.12 python3

    [opc@devdb23aiml bin]$ python3.12 --version
    Python 3.12.0

    pip3.12 install pandas==2.1.1
    pip3.12 install --upgrade pip
    Successfully installed pip-24.0

    pip3.12 install setuptools==68.0.0
    pip3.12 install oracledb==1.4.2
    pip3.12 install joblib==1.2.0
    pip3.12 install scikit-learn==1.2.1
    pip3.12 install numpy==1.26.4
    pip3.12 install onnxruntime==1.17.0
    pip3.12 install onnxruntime-extensions==0.10.1
    pip3.12 install onnx==1.16.0
    pip3.12 install --extra-index-url "https://download.pytorch.org/whl/cpu" torch==2.2.0+cpu
    pip3.12 install transformers==4.38.1
    pip3.12 install sentencepiece==0.2.0
    pip install -U scikit-learn scipy matplotlib

    -- if there are version issues do this for example
    pip uninstall pandas
    pip install pandas

[Please refer this OML4Py Installation guide if required][11].


[11]: https://docs.oracle.com/en/database/oracle/machine-learning/oml4py/2/mlugp/install-oml4py-premises-database.html

Load the packages below to ensure they have been installed successfully. Start Python and run the following commands:


    $ python3
    Python 3.12.0 (main, May  8 2024, 14:21:08)
    [GCC 4.8.5 20150623 (Red Hat 4.8.5-44.0.3)] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> import numpy
    >>> import pandas
    >>> import scipy
    >>> import matplotlib
    >>> import oracledb
    >>> import sklearn

![][12]


[12]: images/1715349973247.png

**Run the OML4Py Client Installation Script**


    unzip oml4py-client-linux-x86_64-2.0.zip

    $ perl -Iclient client/client.pl

    Oracle Machine Learning for Python 2.0 Client.

    Copyright (c) 2018, 2022 Oracle and/or its affiliates. All rights reserved.
    Checking platform .................. Pass
    Checking Python .................... Pass
    Checking dependencies .............. Pass
    Checking OML4P version ............. Pass
    Current configuration
      Python Version ................... 3.12.0
      PYTHONHOME ....................... /opt/Python-3.12.0
      Existing OML4P module version .... None
      Operation ........................ Install/Upgrade

    Proceed? [yes]

    Processing ./client/oml-2.0-cp311-cp311-linux_x86_64.whl
    Installing collected packages: oml
    Successfully installed oml-2.0

![][13]


[13]: images/1715499456328.png

###  5. Convert Pretrained Models to ONNX Format

Generate an ONNX file from the pre-configured model "[sentence-transformers/all-MiniLM-L6-v2][14]"


[14]: https://huggingface.co/sentence-transformers/all-MiniLM-L6-v2


    sentence-transformers/all-MiniLM-L6-v2

    This is a sentence-transformers model: It maps sentences & paragraphs to a 384 dimensional dense vector space and can be used for tasks like clustering or semantic search.

    Source: https://huggingface.co/sentence-transformers/all-MiniLM-L6-v2

[Convert Pretrained Models to ONNX Format][15]


[15]: https://docs.oracle.com/en/database/oracle/oracle-database/23/vecse/convert-trained-models-onnx-format.html


    [opc@devdb23aiml oml4py]$ python3
    Python 3.12.0 (main, May 10 2024, 14:16:05) [GCC 11.4.1 20231218 (Red Hat 11.4.1-3.0.1)] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> import sys
    >>> print(sys.executable)
    /home/opc/python/bin/python3

    -- Import EmbeddingModel, EmbeddingModelConfig

    from oml.utils import EmbeddingModel, EmbeddingModelConfig
    EmbeddingModelConfig.show_preconfigured()
    EmbeddingModelConfig.show_templates()

    -- generate from preconfigureded model "sentence-transformers/all-MiniLM-L6-v2"
    -- My model file name is "indmodel1file", you can use any other name --

    em = EmbeddingModel(model_name="sentence-transformers/all-MiniLM-L6-v2")
    em.export2file("indmodel1file",output_dir=".")

This will now create following files.


    # ls

    indmodel1.onnx		post_indmodel1model.onnx
    indmodel1file.onnx		tok_indmodel1model.onnx
    indmodel1model.onnx

Please Note 1: Python, Pip and Python Libraries versions may change frequently, [please check OML4Py installation guide][16]


[16]: https://docs.oracle.com/en/database/oracle/machine-learning/oml4py/2/mlugp/install-oml4py-premises-database.html

Please Note 2: Download these ONNX files from OML4Py server machine and upload it to Oracle Database 23ai Cloud compute machine, assuming that they both are physically different machines, if they are on same machine - that is OML4Py and Oracle Database 23ai - then you need not download ONNX files and Upload it. You can use SCP to download and upload files from one server to another.

_Alternatively you can upload these ONNX files to OCI Object storage and download it from there. _

###  6. Download Knowledge PDFs files to our Oracle Database 23ai Server directory

I would like to download 2 PDFs, one related to [Breast cancer facts and figures][17]


[17]: https://www.cancer.org/content/dam/cancer-org/research/cancer-facts-and-statistics/breast-cancer-facts-and-figures/breast-cancer-facts-and-figures-2019-2020.pdf

![][18]


[18]: images/1715498322584.png

and the other related to [COVID-19][19]


[19]: https://customsitesmedia.usc.edu/wp-content/uploads/sites/110/2020/03/16232716/Coronavirus-FAQ.pdf

![][20]


[20]: images/1715498408860.png

_Please Note: You can use any other PDFs as required to train. And I don't own any of these PDF files or content in it. This is just for demonstration purposes only._


    -- SSH into Oracle Database 23ai Machine --

    [opc@devdb23ai pdfs]$ sudo su -

    [root@devdb23ai ~]# cd /tmp/my_local_dir/pdfs/

    # wget https://www.cancer.org/content/dam/cancer-org/research/cancer-facts-and-statistics/breast-cancer-facts-and-figures/breast-cancer-facts-and-figures-2019-2020.pdf

    # wget https://customsitesmedia.usc.edu/wp-content/uploads/sites/110/2020/03/16232716/Coronavirus-FAQ.pdf
    # mv 03092020-covid-19-faqs-508.pdf covid-19.pdf

    # ls *.pdf
    breast-cancer-facts-and-figures-2019-2020.pdf
    covid-19.pdf

###  7. Convert File to Text to Chunks to Embeddings

Connect as SYS user and create DOCUSER


    # sqlplus sys/<Your-Password>@localhost:1521/FREEPDB1 as sysdba


    SQL> CREATE TABLESPACE tbs1
    DATAFILE 'tbs5.dbf' SIZE 20G AUTOEXTEND ON
    EXTENT MANAGEMENT LOCAL
    SEGMENT SPACE MANAGEMENT AUTO;

    -- create docuser and grant role

    create user docuser identified by docuser DEFAULT TABLESPACE tbs1 quota unlimited on tbs1;

    grant DB_DEVELOPER_ROLE to docuser;

    -- directory where our PDFs have been stored

    create or replace directory VEC_DUMP as '/tmp/my_local_dir/pdfs';

    grant read, write on directory VEC_DUMP to docuser;

    commit;

Connect as DOCUSER


    SQL> SET ECHO ON
    SQL> SET FEEDBACK 1
    SQL> SET NUMWIDTH 10
    SQL> SET LINESIZE 80
    SQL> SET TRIMSPOOL ON
    SQL> SET TAB OFF
    SQL> SET PAGESIZE 10000
    SQL> SET LONG 10000

    SQL> drop table documentation_tab purge;

    SQL> CREATE TABLE documentation_tab (id number, data blob);

    SQL> INSERT INTO documentation_tab values(1, to_blob(bfilename('VEC_DUMP', 'breast-cancer-facts-and-figures-2019-2020.pdf')));
    SQL> INSERT INTO documentation_tab values(1, to_blob(bfilename('VEC_DUMP', 'covid-19.pdf')));

    SQL> commit;

    SQL> SELECT dbms_lob.getlength(t.data) from documentation_tab t;

    DBMS_LOB.GETLENGTH(T.DATA)
    --------------------------
    		   1393563
    		    107457

![][21]


[21]: images/1715361732305.png

Run UTL_TO_TEXT to convert the PDF document into text format:


    SELECT ct.*
      from documentation_tab dt,
      dbms_vector_chain.utl_to_chunks(dbms_vector_chain.utl_to_text(dt.data)) ct;

![][22]


[22]: images/1715358256114.png

JSON parameters to use normalization and some of the custom chunking specifications:


     SELECT ct.*
      from documentation_tab dt,
      dbms_vector_chain.utl_to_chunks(dbms_vector_chain.utl_to_text(
        dt.data),
        JSON('{
               "by" : "words",
               "max" : "100",
               "overlap" : "0",
               "split" : "recursively",
               "language" : "american",
               "normalize" : "all"
              }')) ct;

![][23]


[23]: images/1715358954759.png

Convert chunks to embeddings:


     EXECUTE dbms_vector.drop_onnx_model(model_name => 'doc_model', force => true);

    EXECUTE dbms_vector.load_onnx_model('VEC_DUMP', 'indmodel1model.onnx', 'doc_model', JSON('{"function" : "embedding", "embeddingOutput" : "embedding" , "input": {"input": ["DATA"]}}'));

    commit;

Displaying VECTOR_EMBEDDING for Hello world


    SELECT TO_VECTOR(VECTOR_EMBEDDING(doc_model USING 'Hello world' as data)) AS embedding;

    -- showing truncated output --

    '[-3.44773084E-002,3.10231932E-002,6.7349216E-003,2.61089411E-002,-3.93620469E-002,-1.60302475E-001,6.69240132E-002,-6.44139526E-003,-4.7450535E-002,1.47588924E-002,5.15955947E-002,4.81240302E-002,-3.31475399E-003,-5.82791269E-002, --- * --- ,-4.0871527E-002,-7.5788565E-002,2.75276173E-002,7.46254623E-002,1.77173186E-002,9.12184492E-002,1.10220097E-001,5.69862779E-004,5.1463306E-002,-1.45512791E-002,3.32320258E-002,2.3792224E-002,-2.28898171E-002,3.89375351E-002,3.02068312E-002]'

###  8. Convert File to Embeddings

You can directly extract vector embeddings from a PDF document, using a single-step statement.

This statement creates a relational table (doc_chunks) from unstructured text chunks and the corresponding vector embeddings:


    drop table doc_chunks;

    CREATE TABLE doc_chunks as
    (select dt.id doc_id, et.embed_id, et.embed_data, to_vector(et.embed_vector) embed_vector
     from
       documentation_tab dt,
       dbms_vector_chain.utl_to_embeddings(
           dbms_vector_chain.utl_to_chunks(dbms_vector_chain.utl_to_text(dt.data), json('{"normalize":"all"}')),
           json('{"provider":"database", "model":"doc_model"}')) t,
       JSON_TABLE(t.column_value, '$[*]' COLUMNS (embed_id NUMBER PATH '$.embed_id', embed_data VARCHAR2(4000) PATH '$.embed_data', embed_vector CLOB PATH '$.embed_vector')) et
    );

    commit;

This creates a doc_chunks table lets check this table:


    desc doc_chunks;

![][24]


[24]: images/1715359808238.png


     Select EMBED_DATA, EMBED_VECTOR from doc_chunks where rownum < 4;

![][25]


[25]: images/1715359583739.png


    select count(*) from doc_chunks;

    -- returns 367 rows --

###  9. Create Oracle APEX workspace with docuser Schema

Let us use docuser that we had created earlier and create an Oracle APEX workspace for this user.

Login to Oracle APEX INTERNAL workspace as ADMIN user and create a new workspace as shown below

![][26]


[26]: images/1715360729372.png

Re-use existing schema -

![][27]


[27]: images/1715360772535.png

Click on Create Workspace -

![][28]


[28]: images/1715360813529.png

###  10. Create Vector AI Search Application to Search PDF documents

Access Oracle APEX Navigation > SQL Commands > Create a function with following PL/SQL code - we can name this function as rag_function

![][29]


[29]: images/1715361311977.png

[Download code from my git repo][30]


[30]: https://github.com/madhusudhanrao-ppm/code-assets/blob/main/GenAI/RAG/rag_function.sql

Now, lets create a simple Oracle APEX page in any application have an input text, submit button and a PL/SQL region

![][31]


[31]: images/1715362104559.png

Where the PL/SQL Response Block will call rag_function as shown below.


    DECLARE
        v_input varchar2(400) := :P1_INPUT;
        v_n number;
    BEGIN
        v_n := rag_function ( v_input );
    END;

Just to ensure that we dont call the function without any data, lets add server side condition

![][32]


[32]: images/1715362253715.png

Run the page with various inputs - this will basically query the uploaded PDF files using Oracle AI Vector Search

![][33]


[33]: images/1715360071118.png

![][34]


[34]: images/1715360143219.png

![][35]


[35]: images/1715360333435.png

![][36]


[36]: images/1715360411760.png

![][37]


[37]: images/1715360531314.png

Let us extend this application. What we would like to do is not only search internal PDFs (specific to an Organisation) but also search over external LLMs using Oracle Generative AI,

for that we need fulfil two requirements

1. Your tenancy should be whitelisted for Oracle Generative AI or the service should be available in the subscribed region.
2. You should have required policies set by your OCI tenancy administrator to make calls to Oracle Generative AI or you should have administrative privileges in your tenancy. ( [Please check Oracle Generative AI IAM Policies][38] )


[38]: https://docs.oracle.com/en-us/iaas/Content/generative-ai/iam-policies.htm

###  11. Getting OCI User Authentication Parameters

Login to [cloud.oracle.com][39] we would need few parameters, to authenticate with Oracle Generative AI. on top right navigation click on user icon, select **User Settings**.


[39]: http://cloud.oracle.com

![][40]


[40]: images/1715492621349.png

Add a new API Key or re-use an API Key if it has already been created

![][41]


[41]: images/1715408798709.png

Next to API Key you can find **configuration** details as shown below.

![][42]


[42]: images/1715408842001.png

We would need to copy the following and save it in a notepad for later use:

1. User OCID
2. User Fingerprint
3. Tenancy OCID
4. Private key file
5. Compartment OCID (You can get this from Compartment Page)

Connect to Database as SYS user


    -- Setup Network ACL

    BEGIN
      DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
        host => '*',
        ace => xs$ace_type(privilege_list => xs$name_list('connect'),
                           principal_name => 'docuser',
                           principal_type => xs_acl.ptype_db));
    END;
    /

Connect to Database as DOCUSER


    -- Drop Credentials OCI_CRED

    BEGIN
      DBMS_VECTOR_CHAIN.DROP_CREDENTIAL(credential_name => 'OCI_CRED');
    EXCEPTION
      WHEN OTHERS THEN NULL;
    END;

Create OCI Credentials


    declare
      jo json_object_t;
    begin

      -- create an OCI credential
      jo := json_object_t();
      jo.put('user_ocid','ocid1.user.oc1..aabbalbbXXXX1111bb');
      jo.put('tenancy_ocid','ocid1.tenancy.oc1..aaaaXXX11a');
      jo.put('compartment_ocid','ocid1.compartment.oc1..ababXXXaba11ab');
      jo.put('private_key','AAAaaaBBB11112222333...AAA111AAABBB222aaa1a/+');
      jo.put('fingerprint','01:1a:a1:aa:12:a1:12:1a:ab:12:01:ab:a1:12:ab:1a');
      dbms_output.put_line(jo.to_string);
      dbms_vector_chain.create_credential(
        credential_name   => 'OCI_CRED',
        params            => json(jo.to_string));
    end;
    /

###  12. Create RAG Search Function search PDFs and External Oracle Generative AI LLMs

Let us now extend our PL/SQL code to not only search PDF documents (Internal PDF documents) but also look for answers from external Oracle Generative AI Large Language Models

From Oracle APEX > SQL Workshop > SQL Commands

Create a new function **RAG_WITH_GENAI_FUNCTION**

Create functional declaration with any required variables -

![][43]


[43]: images/1715409746505.png

Search Internal PDFs

![][44]


[44]: images/1715409803724.png

Create Search Parameters and Search Oracle Generative AI, Append both the search results and return the output back to calling function.

![][45]


[45]: images/1715409940189.png

You can [download the complete code here.][46]


[46]: assets/RAG_WITH_GENAI_FUNCTION.sql

###  13. Create Oracle APEX page for AI Vector Search

Our Oracle APEX page will have Input text box, Submit button and an Output rich text item as shown.

![][47]


[47]: images/1715410305544.png

We will need a process handle submit button

![][48]


[48]: images/1715410408885.png

The PL/SQL code to call the function will be as shown below -

![][49]


[49]: images/1715410489617.png

Thats all we would need, just run the page now

![][50]


[50]: images/1715410651913.png

![][51]


[51]: images/1715410924914.png


    Input How is breast cancer staged?

    Internal PDF Search:

    ... How is breast cancer staged? The extent of the cancer and its spread at the time of diagnosis determines its stage, which is essential for guiding treatment options and prognosis (prediction of disease outcome). The two main staging systems for cancer are the American Joint Committee on Cancer (AJCC) staging system, typically used in clinical settings, and the Surveillance, Epidemiology, and End Results (SEER) summary staging system, used for descriptive and

    Generative AI Response:

    Breast cancer is staged using the TNM system, which stands for tumor, nodes, and metastasis. This system is used to describe the size and extent of the primary tumor, the involvement of nearby lymph nodes, and any metastasis (spread) of the cancer to distant organs. The TNM system helps determine the overall stage of the cancer, which is essential for selecting the most appropriate treatment and predicting the prognosis. The tumor stage (T) is determined by the size of the primary tumor and any growth into nearby tissues. It is categorized as follows: TX: Tumor cannot be measured correctly,  ...

![][52]


[52]: images/1715411555406.png


    Input: What is the risk of being diagnosed with breast cancer?

    Internal PDF Search:

    the absolute risk of breast cancer increases with age: 12 out of 10,000 women ages 40-44 versus 23 out of 10,000 women ages 50-54 will be diagnosed with breast cancer in the next year. 8 Lifetime risk is the absolute risk of being diagnosed with cancer anytime between birth and death. Lifetime risk of breast cancer reflects the average probability of a female being diagnosed with breast cancer in the US. A woman living in the US has a 13% chance of being diagnosed with invasive

    Generative AI Response:

    Several factors can influence a person's risk of developing breast cancer, including genetic, lifestyle, and environmental factors. Some common risk factors for breast cancer include: - Age: The risk of breast cancer increases as a person ages, with the majority of cases occurring after age 50. However, it is important to note that breast cancer can occur at any age. - Gender: Women are more likely to develop breast cancer than men. This is due in part to the presence of hormones such as estrogen, which stimulate the growth of breast tissue and can promote the development of cancerous cells. - .. ..

![][53]


[53]: images/1715412314340.png


    Input: what are the symptoms of covid-19

    Internal PDF Search:

    person-to-person through a cough, sneeze, or kiss. However, since COVID-19 is a new disease, scientists around the globe are racing to learn more about it. What are the symptoms? The most common early symptoms appear between 2 and 14 days after being infected. Symptoms can be mild to severe. They include fever, cough, and shortness of breath. Prevention and treatment How to prevent infection The best way to prevent infection is to avoid being exposed to

    Generative AI Response:

    COVID-19 is a disease caused by a virus that can infect the nose, throat, and lungs. The most common symptoms of COVID-19 include: 1. Fever or chills: Feeling warmer than usual or shivering may be a sign that your body is fighting off an infection. 2. Dry cough: A dry cough is a common symptom of COVID-19 and other respiratory infections. Hacking, wheezing, or shortness of breath may occur with the cough. 3. Tiredness: Feeling extremely tired can be a sign of COVID-19 or other infections. Fatigue may be extreme and hinder your daily activities. 4. Body aches: Pain or discomfort in the muscles or joints is another symptom associated with COVID-19. 5. Headache:  ....

###  14. Reference Architecture

![][54]


[54]: images/1715584271093.png

![][55]


[55]: images/1715583595019.png

Reference Architecture

Architecture diagram from the left side towards the right

1. Users access the Oracle APEX application to search the knowledge repository. We will use Oracle APEX for accepting user input Prompts.
2. Knowledge officers upload PDFs to the server and create ONNX models.
3. Oracle APEX application serves as a front-end application for users to interact or search and also make Database calls and Oracle Generative AI invocation.
4. Oracle Database is Installed on Cloud compute instance (OEL 8 or OEL 9)
5. Oracle Database 23ai is Installed on the Oracle Enterprise Linux machine.
6. Another OEL 9 Machine is created where OML4Py is installed.
7. Alternatively, you can install this on local computing if OML4Py supports the operating system.
8. ONNX Objects are generated by OML4Py using Embedding AI models
9. ONNX Objects can be stored in OCI Object Storage
10. Access to Oracle Generative AI is governed by OCI IAM Policies and setting up Database OCI credentials.
11. ONNX Objects help vectorize PDF content and split large amounts of data into chunks.
12. APEX application PL/SQL procedure invokes Oracle Generative AI (Get Text) API using OCI Credentials
13. In this article, we download ONNX files into the local filesystem and upload them to the Database Machine, where Oracle Database 23ai is installed using SCP.
14. Innovation: Integrate with text to voice APIs

[![Short demo](http://img.youtube.com/vi/kMoBJpr4Gt8/0.jpg)](http://www.youtube.com/watch?v=kMoBJpr4Gt8 "Short Demo")
