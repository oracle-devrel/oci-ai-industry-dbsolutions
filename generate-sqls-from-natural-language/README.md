# How to use Oracle Select AI with Cohere or OpenAI to Generate SQLs from Natural Language

In this article, we will learn how to generate SQLs or chat using **#Cohere** AI or **#OpenAI** with Oracle # **SelectAI** to respond to users' input prompts. DBMS_CLOUD_AI package facilitates and configures the translation of natural language prompts to SQL statements. Oracle **#APEX** helps create a user interface for accepting user inputs and displaying AI results. Use Oracle Machine Learning #OML notebooks to run some of the Select AI SQLs. 

This article is a continuation of my [previous article][1] . We discussed Retrieval Augmented generation ( **#RAG** ), which is a **#NaturalLanguage** Processing ( **#NLP** ) technique that combines information retrieval and natural language understanding with the content generation or, in simple words, an intelligent chatbot that can talk to database - generate SQL, run queries and display results on user's chat window. we will take an example of using Cohere AI with Oracle Autonomous Database with customer info and US Hospitals data tables; you can download these table data from [my GitHub repo][2] . 


[1]: https://www.linkedin.com/pulse/retrieval-augmented-generation-chatbots-aimlnlp-based-madhusudhan-rao-pgodf
[2]: https://github.com/madhusudhanrao-ppm/code-assets/tree/main/AI-for-Financial-Services

### Assumptions:

You have access to the following: 

1. Oracle Autonomous Database with ADMIN user access. 
2. API Keys from Cohere or OpenAI - please check their terms and conditions for usage. [Cohere - Developer Guide][3]
3. Oracle APEX workspace (Optional) or any non-ADMIN Database USER 
4. APEX username (<APEX_USERNAME>) is the same as schema name (Optional) 


[3]: https://docs.cohere.com/docs/the-cohere-platform

### Step 1: Sign up, Sign in and get your Cohere API keys

[https://dashboard.cohere.com/][4]


[4]: https://dashboard.cohere.com/

![][5]


[5]: images/1705676714757.png

### Step 2: Login to Oracle Cloud Infrastructure.

Access Autonomous Database and Setup Grants by running the following commands 

![][6]
    
    
[6]: images/1705675502235.png


      
      
      -- Login as ADMIN User 
    
    grant execute on DBMS_CLOUD to <APEX_USERNAME>;
    grant execute on DBMS_CLOUD_AI to <APEX_USERNAME>;
    
    -- replace <APEX_USERNAME> with your APEX Workspace Schema USERNAME for example
    -- grant execute on DBMS_CLOUD to DEMOUSER;
      
      
      

![][7]


[7]: images/1705676108035.png

**_ Important _**_ : Ensure that you select High as a connection Consumer group. You might have issues if you select other Consumer groups. _

![][8]


[8]: images/1705676944092.png

Click on the green run button to execute these commands. 

### Step 3: Set up Network ACL.

We would need this to be done so that the Database can communicate with [api.cohere.ai][9]
    
    
[9]: http://api.cohere.ai/


      
      
      BEGIN  
        DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
             host => 'api.cohere.ai',
             ace  => xs$ace_type(privilege_list => xs$name_list('http'),
                                 principal_name => '<APEX_USERNAME>',
                                 principal_type => xs_acl.ptype_db)
       );
    END;
    /
    
    -- replace <APEX_USERNAME> with your APEX Workspace Schema USERNAME
      
      
      

Step 4: Create credentials 
    
    
      
      
      BEGIN
        DBMS_CLOUD.create_credential('COHERE_CRED', 'COHERE', '<Key>');
    END;
    
    -- replace <Key> with your Cohere API key
      
      
      

Step 5: Create profile from the credentials 
    
    
      
      
      BEGIN
      DBMS_CLOUD_AI.create_profile(
          'COHERE',
          '{"provider": "cohere",
            "credential_name": "COHERE_CRED",
            "object_list": [{"owner": "<APEX_USERNAME>", "name": "<USER_TABLE1>"},
                            {"owner": "<APEX_USERNAME>", "name": "<USER_TABLE2>"} ]
           }');
    end;
    /
    
    -- for example in the below create profile, we have two tables 
    -- RBANK_CUSTOMERS and US_HOSPITALS
    -- DEMOUSER is APEX_USERNAME
    
    BEGIN
      DBMS_CLOUD_AI.create_profile(
          'COHERE',
          '{"provider": "cohere",
            "credential_name": "COHERE_CRED",
            "object_list": [{"owner": "DEMOUSER", "name": "RBANK_CUSTOMERS"},
                            {"owner": "DEMOUSER", "name": "US_HOSPITALS"} ]
           }');
    end;
    / 

### Step 6: Set Cohere profile

As an ADMIN user, set a profile, log out as ADMIN and back in as DEMOUSER ( the APEX USER in SQL Developer), and set your profile there. 

![][10]


[10]: images/1705677774241.png

Ensure that Consume group HIGH is selected 
    
    
      
      
      EXEC DBMS_CLOUD_AI.set_profile('COHERE');
      
      
      

Step 7: Reality check if everything is working as expected 
    
    
      
      
      SELECT DBMS_CLOUD_AI.GENERATE(prompt       => 'what is the total number of customers',
                                  profile_name => 'COHERE',
                                  action       => 'showsql') as query
    FROM dual;
      
      
      

![][11]
    
    
[11]: images/1705677940573.png


      
      
      SELECT DBMS_CLOUD_AI.GENERATE(prompt       => 'show the customers who are buying Shoes',
                                  profile_name => 'COHERE',
                                  action       => 'showsql') as query
    FROM dual;
      
      
      

![][12]


[12]: images/1705678122932.png

At this stage, it is important to note that action **showsql** will just return SQL after natural language processing of the prompt. 

Our application logic should process iteration through the SQL to display the result set. Low Code Oracle APEX makes it easy to build such applications. 

What about other actions supported by DBMS_CLOUD_AI.GENERATE? 

We can use chat or narrate. 

### Chat example:

If we pass the action as chat, then there is no need for a corresponding database table in our profile. 
    
    
      
      
      SELECT DBMS_CLOUD_AI.GENERATE(prompt       => 'what is breast cancer?',
                                  profile_name => 'COHERE',
                                  action       => 'chat') as chat
    FROM dual;
      
      
      

![][13]
    
    
[13]: images/1705678447784.png


      
      
      -- chat output
    
    Breast cancer is a type of cancer that occurs in the cells of the breasts. It can affect both men and women, although it is much more common in women. 
    
    Breast cancer happens when cells in the breast begin to grow out of control. These cells usually form a tumor that can often be seen on an x-ray or felt as a lump. Breast cancer tumors can spread to other parts of the body through the blood and lymph systems. This is why it is important to get medical attention as soon as possible. 
    
    There are many factors that can increase the risk of developing breast cancer, including genetics, gender, and age. Additionally, certain lifestyle factors such as smoking, heavy alcohol consumption, and being overweight or obese can also increase the risk of developing breast cancer. 
    
    Breast cancer is the most common cancer among women in the United States, after skin cancer. It is important to note that while breast cancer can be fatal, it is often treatable with surgery, radiation therapy, chemotherapy, or hormone therapy. There are also many ways to lower your risk of developing breast cancer, including avoiding harmful lifestyle habits, staying at a healthy weight, getting regular exercise, and eating a balanced diet. 
    
    If you have any concerns or notice any changes in your breasts, such as lumps or discoloration, it is important to consult with a healthcare professional as soon as possible. 
    
    Would you like me to go into more detail about breast cancer?
      
      
      

**Narrate example:** The Narrate option provides the SQL and AI narration around the generated SQL, for example. 
    
    
      
      
      SELECT DBMS_CLOUD_AI.GENERATE
    (prompt       => 'name the customers who are married',
                      profile_name => 'COHERE',
                      action       => 'narrate') as narrate
    FROM dual;
      
      
      

This would generate following output. 
    
    
      
      
      To name the customers who are married in the "DEMOUSER"."RBANK_CUSTOMERS" table, 
    
    you can use the following SQL query:
    ```sql
    SELECT NAME
    FROM DEMOUSER.RBANK_CUSTOMERS
    WHERE MARITAL_STATUS = 'Married';
    ```
    
    This query will select the names of customers from the `"RBANK_CUSTOMERS"` table whose `"MARITAL_STATUS"` column value is equal to 'Married'. The results will include the names of married customers stored in the `"NAME"` column. 
    
    Would you like to know more about the query or anything specific?
      
      
      

### Oracle APEX User Interface:

How do we create a simple user interface for this chat interface in Oracle APEX? 

Step 1: Create a table to save user prompts and corresponding SQLs or Chat that is generated from Cohere AI 

![][14]
    
    
[14]: images/1705679214254.png


      
      
      -- DDL output
    
      CREATE TABLE "SQLS" 
       (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
    	"QUERY" VARCHAR2(4000), 
    	"PROMPT" VARCHAR2(400), 
    	"ACTION" VARCHAR2(20), 
    	"IS_VALID" VARCHAR2(1), 
    	 PRIMARY KEY ("ID")
      USING INDEX  ENABLE
       ) ; 

Now, create an APEX page item and PL/SQL region on an APEX page to save these into the above table. 
    
    
      
      
      DECLARE
      
      l_input varchar2(4000) := :P59_INPUT;
      l_action varchar2(4000) := :P59_ACTION; 
      l_qry varchar2(4000);
       
      CURSOR C1  IS 
        SELECT DBMS_CLOUD_AI.GENERATE(prompt  => l_input,
                                  profile_name => 'COHERE',
                                  action       => l_action ) as qry
        FROM dual;  
     
    BEGIN
    
        if l_input is not null then 
            For row_1 In C1 Loop
                l_qry := row_1.qry; 
            End Loop; 
             insert into SQLS (QUERY, PROMPT, ACTION) 
             values (l_qry, l_input, l_action);
        end if;  
    
    END;
      
      
      

Create and Interactive Grid from SQLs table and once you click on a menu item run the SQL or show narration. 

![][15]


[15]: images/1705679568936.png

Create a popup page that takes a prompt id and, based on the select query generated it, displays the table data. 

My PL/SQL Dynamic Content code in a popup region to run the Dynamic SQL and display results 
    
    
      
      
      -- PL/SQL Dynamic Content
    -- prompt id :P60_PROMPTID is passed from main page to popup window
    -- feel free to update this code block. 
    -- Author Madhusudhan Rao
    
    DECLARE
     l_qry varchar2(4000);
     l_prompt varchar2(4000);
     l_action varchar2(400);  
     cur1 SYS_REFCURSOR;
    
     cursor c1 is select query, action, prompt from sqls where id = :P60_PROMPTID;
    
    TYPE myrec IS RECORD 
     (
       v_name VARCHAR(100)
     );
    
    myrecord myrec;
     
    
    BEGIN 
            For row_1 In C1 Loop
                l_qry := row_1.query; 
                l_action := row_1.action; 
                l_prompt := row_1.prompt;
            End Loop; 
    
            Htp.p('<b>action: </b>' || l_action);
            Htp.p('<br/>');
            Htp.p('<b>Prompt: </b>' || l_prompt);
            Htp.p('<br/>');
            Htp.p('<b>SQL: </b>' || l_qry);
            
    
            if l_action = 'showsql' AND l_qry like 'SELECT%' then
                    Htp.p('<br/><br/>');  
                    OPEN cur1 FOR l_qry;
                        Htp.p('<table>');    
                        LOOP
                          FETCH cur1 INTO myrecord; 
                            Htp.p('<tr><td>  '||myrecord.v_name||'   <td><tr>');
                          EXIT WHEN cur1%NOTFOUND; 
                        END LOOP;
                         Htp.p('</table>');       
                      CLOSE cur1; 
            end if; 
    
    END;
      
      
      

![][16]


[16]: images/1705680192016.png

![][17]


[17]: images/1705681069824.png

Another input prompt 
    
    
      
      
      ...
    CURSOR C1  IS 
        SELECT DBMS_CLOUD_AI.GENERATE
               (prompt  => 'show address of hospitals in OREM',
                            profile_name => 'COHERE',
                            action  => showsql ) as qry
        FROM dual; 
    ..
      
      
      

![][18]


[18]: images/1705680254026.png

![][19]
    
    
[19]: images/1705680407229.png


      
      
      ...
    CURSOR C1  IS 
        SELECT DBMS_CLOUD_AI.GENERATE
             (prompt  => 'list the benefits of fruit and vegetables',
              profile_name => 'COHERE',
              action       => 'chat' ) as qry
        FROM dual; 
    ..
      
      
      
    
    
      
      
      prompt: list the benefits of fruit and vegetables
    action: chat
      
      
      

![][20]


[20]: images/1705681809102.png

![][21]


[21]: images/1705681820739.png

Alternatively, you can use Oracle APEX Interactive Grid layout from a PL/SQL function returning an SQL Query 

### Use AI Keyword to Enter Prompts

**Note:** _ You cannot run PL/SQL statements, DDL statements, or [__ DML statements using the AI keyword _][22]_ . _
    
    
[22]: https://docs.oracle.com/en/cloud/paas/autonomous-database/serverless/adbsb/sql-generation-ai-autonomous.html


      
      
      Important:  The AI keyword in a SELECT statement instructs the SQL execution engine to use the LLM identified in the active AI profile to process natural language and to generate SQL.
    
    You can use the AI keyword in a query with Oracle clients such as 
    SQL Developer, OML Notebooks, and third-party tools, to interact with database in natural language.
    
    You cannot run PL/SQL statements, DDL statements, or DML statements using the AI keyword. 

**Running Select AI in Oracle Machine Learning Notebooks**

Step 1: Login to Oracle Machine Learning (from Oracle Autonomous Database Tools Configuration Tab), Click on Notebooks 

![][23]


[23]: images/1705689542488.png

Step 2: Create a Notebook 

![][24]


[24]: images/1705689575604.png

Step 3: Run script 
    
    
      
      
      %script
    
    EXEC DBMS_CLOUD_AI.set_profile('COHERE');
      
      
      

Step4: Run Select AI sql 
    
    
      
      
      %sql
    
    Select AI show the customers who are buying Shoes
      
      
      

![][25]
    
    
[25]: images/1705689677529.png


      
      
      %sql
    
    Select AI list all the customers who are married
      
      
      

![][26]
    
    
[26]: images/1705725156993.png


      
      
      %sql
    
    Select AI list all the customers, what they are buying and price 

![][27]


[27]: images/1705725138017.png

Click on various chart icons to change visualisation 

![][28]


[28]: images/1705725297935.png

![][29]


[29]: images/1705725307491.png

![][30]


[30]: images/1705725331624.png

![][31]


[31]: images/1705725354738.png

If you plan to use [OpenAI][32] , then it would need a few setup changes listed below and the OpenAI API Keys. 


[32]: https://openai.com/

To get API Keys Sign up and Sign in at [https://platform.openai.com/api-keys][33]


[33]: https://platform.openai.com/api-keys

![][34]


[34]: images/1705727388220.png

and run these commands from Oracle Autonomous Database SQL Developer under Database Actions 
    
    
      
      
      BEGIN
        DBMS_CLOUD.create_credential('OPENAI_CRED', 'OPENAI', 'YourOpenAIKey');
    END;
    
    BEGIN
        DBMS_CLOUD_AI.CREATE_PROFILE(
            profile_name => 'OPENAI',
            attributes => '{ "provider": "openai",
                             "credential_name": "OPENAI_CRED",
                             "object_list": [{"owner": "<APEX_SCHEMA_USER>", "name": "<DB_TABLE>"}]
                           }' 
        );
    END;
    
    BEGIN
        DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
              HOST => 'api.openai.com',
              ACE => XS$ACE_TYPE(PRIVILEGE_LIST => XS$NAME_LIST('http'), 
                                 PRINCIPAL_NAME => '<APEX_SCHEMA_USER>',
                                 PRINCIPAL_TYPE => XS_ACL.PTYPE_DB)
    );
    END;
    
    EXEC DBMS_CLOUD_AI.set_profile('OPENAI');
      
      
      

**Troubleshooting -**

1. _ ORA-20000: ORA-24247: Network access denied by access control list (ACL) _
    
    
      
      
      ORA-20000: ORA-24247: Network access denied by access control list (ACL)
    
    ORA-06512: at "C##CLOUD$SERVICE.DBMS_CLOUD", line 1890
    
    ORA-06512: at "C##CLOUD$SERVICE.DBMS_CLOUD_AI", line 3387
    
    ORA-06512: at line 2
    
    Error at Line: 7 Column: 0
      
      
      

**Solution:**_ _ ensure that **DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE** has been run as an ADMIN user 
    
    
      
      
      BEGIN  
        DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE(
             host => 'api.cohere.ai',
             ace  => xs$ace_type(privilege_list => xs$name_list('http'),
                                 principal_name => '<APEX_USERNAME>',
                                 principal_type => xs_acl.ptype_db)
       );
    END;
    /
      
      
      

2. Prompts are not returning SQL query 
    
    
      
      
      SELECT DBMS_CLOUD_AI.GENERATE
    (prompt  => 'list the benefits of fruit and vegetables',
     profile_name => 'COHERE',
     action       => 'showsql' ) as qry
     FROM dual; 
    
    -- returns just "list the benefits of fruit and vegetables" and no SQL
      
      
      

Solution: Check if Consumer Group is set to HIGH and the profile is set active 
    
    
      
      
      EXEC DBMS_CLOUD_AI.set_profile('COHERE');
      
      
      

3. DBMS_CLOUD_AI.GENERATE are giving errors 

**Solution:** Check if USER has grants provided by ADMIN and API Key has not expired 
    
    
      
      
      grant execute on DBMS_CLOUD to DEMOUSER;
    
    grant execute on DBMS_CLOUD_AI to DEMOUSER;
    
    EXEC DBMS_CLOUD.create_credential
    ('COHERE_CRED', 'COHERE', 'YourKey');
      
      
      

4. [ORA-00923][35] : FROM keyword not found where expected 00923. 00000 - 
    
    
[35]: https://docs.oracle.com/en/error-help/db/ora-00923/


      
      
      "FROM keyword not found where expected" Cause: In a SELECT or REVOKE statement, the keyword FROM was either missing, misplaced, or misspelled. The keyword FROM must follow the last selected item in a SELECT statement or the privileges in a REVOKE statement. Action: Correct the syntax. Insert the keyword FROM where appropriate. The SELECT list itself also may be in error. If quotation marks were used in an alias, check that double quotation marks enclose the alias. Also, check to see if a reserved word was used as an alias. Error at Line: 1 Column: 14
      
      
      

![][36]


[36]: images/1705724106015.png

Error at line 1/16: ORA-00923: FROM keyword not found where expected 

![][37]


[37]: images/1705724094860.png

**Solution:** To run **Select AI** SQL commands, use Oracle Machine Learning Notebook or SQL Developer Desktop client. **Select AI** will not work in SQL Database Actions or in Oracle APEX SQL Commands. 

###  Demo video 

Thanks for reading, liking, and sharing - have a great day. 

Thanks & Regards, 

[Madhusudhan Rao][38]


[38]: https://www.linkedin.com/in/madhusudhanraobm/

Links to my other related articles and LiveLabs 

- [How to build intelligent applications using Oracle Generative AI and Oracle APEX][39]
- [How to Translate text using OCI AI Language and Oracle APEX][40]
- [How to use Oracle Select AI with Cohere or OpenAI to Generate SQLs from Natural Language][41]
- [Retrieval Augmented Generation (Database Chatbots)][42]
- [How to create dynamic websites on an always-free Oracle Cloud Instance][43]
- [Working with Oracle APEX and Oracle Analytics Cloud platform][44]
- [Working with JSON-Relational Duality Views and Oracle APEX][45]
- [How to Integrate Google Cloud YouTube APIs with Oracle APEX][46]
- [AI for Healthcare][47]


[39]: https://www.linkedin.com/pulse/how-build-intelligent-apps-oracle-generative-ai-apex-madhusudhan-rao-z423f/
[40]: https://www.linkedin.com/pulse/how-translate-text-using-oci-ai-language-oracle-apex-madhusudhan-rao-seq0f
[41]: https://www.linkedin.com/pulse/how-use-oracle-select-ai-cohere-openai-generate-sqls-from-rao-zabjf
[42]: https://www.linkedin.com/pulse/retrieval-augmented-generation-chatbots-aimlnlp-based-madhusudhan-rao-pgodf
[43]: https://www.linkedin.com/pulse/how-create-enterprise-grade-dynamic-website-always-free-rao-9hgmf/
[44]: https://www.linkedin.com/pulse/working-oracle-apex-analytics-platform-madhusudhan-rao-tfwvf
[45]: https://www.linkedin.com/pulse/working-json-relational-duality-views-oracle-apex-madhusudhan-rao-a2izf
[46]: https://www.linkedin.com/pulse/how-integrate-google-cloud-youtube-apis-oracle-apex-madhusudhan-rao
[47]: https://bit.ly/O_AI_healthcare
