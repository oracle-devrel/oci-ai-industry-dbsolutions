# How to Translate text using OCI AI Language and Oracle APEX

### AI Language

OCI Language is a cloud-based AI service for performing sophisticated text analysis at scale. Use this service to build intelligent applications by leveraging REST APIs and SDKs to process unstructured text for sentiment analysis, entity recognition, translation, and more. 

### Text Translation

Use state-of-the-art neural machine translation to translate text across languages. 

In this article, we will learn how to translate text from one language to another using the AI-Language Translate service and Oracle APEX for front-end user interface applications. We can also translate the output of an AI service (Cohere, OpenAI or Oracle Generative AI) into any desired language supported by the AI service. 

**Assumption/Requirements** : You have already installed Oracle APEX workspace and have access to OCI language REST APIs. 

We will look at two options to translate. 

**Option 1:** Log in to Oracle Cloud at [cloud.oracle.com][1] , use the language interface and translate the text as shown below. 


[1]: http://cloud.oracle.com/

Under left navigation select **Analytics and AI** , under **AI Services** select**Language**

![][2]


[2]: images/1706266385612.png

Provide any input text, select the Target language, and click on the **Translate** button. The source text is translated under the target text box. 

![][3]


[3]: images/1706266396034.png

**Option 2** is to use Language REST API and build a custom application. Let us get started. 

### Step 1: Create Web Credentials.

Oracle APEX Web Credentials provides a convenient and secure mechanism for storing the following types of credentials: 

- Basic Authentication (Username & password) 
- OAuth2 Client Credentials (Client ID & Client Secret) 
- OCI Native Authentication (Access Oracle Cloud Resources, e.g., Object Storage) 
- HTTP Header (The credential is added to the REST request as an HTTP Header) 
- URL Query String (The credential is added to the URL of the REST request as a Query String Parameter). 

In the APEX top navigation, Select **App Builder** , Click on **Workspace Utilities**

![][4]


[4]: images/1706266890462.png

Select **Web Credentials**

![][5]


[5]: images/1706266986363.png

Click on **Create**

![][6]


[6]: images/1706267020597.png

Provide **User OCID** , **Tenancy OCID** , **Fingerprint** , **Private Key** and Authentication type as **Oracle Cloud Infrastructure**

![][7]


[7]: images/1706267038395.png

_Note: If you are new to OCI CLI (Command Line Interface) and would like to explore it further, please check my [AI for Healthcare][8] (Lab 3)_


[8]: https://bit.ly/O_AI_healthcare

### Step 2: Create an Oracle APEX page.

This page will have the following elements 

- INPUT -> **Text area** to accept user's input text 
- TARGET_LANG -> A **Select list** to display target languages with static list of values ( display label **Arabic** and value **ar** , display label **Brazilian Portuguese** and value **pt-BR** - see the complete list below) 
- Button to Translate 
- OUTPUT -> Type **Display Only** display translated output. 
- SOURCE_LANG -> Type **Display Only** to display detected source language. 

    At the time of this article, the following languages are supported:
    
    Arabic (ar)
    Brazilian Portuguese (pt-BR)
    Czech (cs)
    Danish (da)
    Dutch (nl)
    English (en)
    Finnish (fi)
    French (fr)
    Canadian French (fr-CA)
    German (de)
    Italian (it)
    Japanese (ja)
    Korean (ko)
    Norwegian (no)
    Polish (pl)
    Romanian (ro)
    Simplified Chinese(zh-CN)
    Spanish (es-ww)
    Swedish (sv)
    Traditional Chinese (zh-TW)
    Turkish (tr)
      
      
      

![][9]


[9]: images/1706267279902.png

Input Items with Button 

Static list of values to select Target Language 

![][10]


[10]: images/1706272343311.png

Static List of Values 

### Step 3: Create a process to handle submit in a PL/SQL code block.

![][11]


[11]: images/1706267975868.png

Process with PL/SQL code block 

Select **When Button Pressed** and select **Translate** button 

![][12]


[12]: images/1706268022035.png

Process on button click 

Write the **PL/SQL code** block to invoke Language REST API service. Unless if you want to explicitly mention input language we can let the service auto detect input language with **auto** as **language code** . 

    --REST API for OCI Language Translation Service, your selected region can vary from us-phoenix-1 to some other region.  
    
    https://language.aiservice.us-phoenix-1.oci.oraclecloud.com/20221001/actions/batchLanguageTranslation
    
    --Input Payload format, if we want to translate to Simplified Chinese(zh-CN). key is just an unique id 
    
    { 
                    
        "documents": [  { 
           "key": "1x",
           "text": "Hello beautiful world",
           "languageCode": "auto"  
         } ],
         "targetLanguageCode": "zh-CN" ,
          "compartmentId": "<Your-Compartment-Id>"
                     
    } 
    
    --Output JSON format 
    
    {
        "documents": [
            {
                "key": "1x",
                "translatedText": "你好，美丽的世界",
                "sourceLanguageCode": "en",
                "targetLanguageCode": "zh-CN"
            }
        ],
        "errors": []
    }
      
      
      

Couple of changes that you would need to make in this code, replace your web credentials in the variable **l_web_cred** , compartment id in the JSON payload **l_body** and page numbers for example :P87_INPUT will be different as per your APEX page item. 

    -- Complete code for Text translation 
    -- Author: Madhusudhan Rao
    
    DECLARE
     
            l_rest_url    VARCHAR2(4000) := 'https://language.aiservice.us-phoenix-1.oci.oraclecloud.com/20221001/actions/batchLanguageTranslation';  
            l_web_cred        CONSTANT VARCHAR2(50)   := '<Your-Web-Credential-Name>';   
            l_input varchar2(4000) := :P87_INPUT;
            l_target_lang varchar2(20) := :P87_TRG_LANG;
            l_src_lang varchar2(10);  
            l_response_json CLOB;
            l_text varchar2(4000);  
    -- Input payload to OCI Translation REST API
            l_body varchar2(1000) :='{ 
                    
                             "documents": [  { 
                                "key": "1x",
                                "text": "'||l_input||'",
                                "languageCode": "auto"  
                              } ],
                              "targetLanguageCode": "'||l_target_lang||'" ,
                               "compartmentId": "<Your-Compartment-Id>"
                     
            }';    
    -- Create cursor from Response payload of OCI language API 
            CURSOR C1  IS 
                SELECT jt.* 
                FROM   JSON_TABLE(l_response_json, '$' 
                         COLUMNS (
                                    text VARCHAR2(4000)  
                                    PATH '$.documents[0].translatedText',
                                    src_lang VARCHAR2(20)  
                                    PATH '$.documents[0].sourceLanguageCode', 
                                    target_lang VARCHAR2(20)  
                                    PATH '$.documents[0].targetLanguageCode'
                                 )) jt; 
                           
    BEGIN 
            
    
            apex_web_service.g_request_headers.DELETE; 
            apex_web_service.g_request_headers(1).name  := 'Content-Type'; 
            apex_web_service.g_request_headers(1).value := 'application/json'; 
    
    -- Make webservice call to OCI AI Language REST Service
            l_response_json := apex_web_service.make_rest_request 
               (p_url                  => l_rest_url, 
                p_http_method          => 'POST', 
                p_body                 => l_body, 
                p_credential_static_id => l_web_cred);
    
    -- Get the Output text from Cursor mapped to Response payload
             For row_1 In C1 Loop
                       l_text := row_1.text;
                       l_src_lang := row_1.src_lang;
                       l_target_lang := row_1.target_lang; 
                        :P87_SRC_LANG := l_src_lang;
                        :P87_TRG_LANG := l_target_lang;
                        :P87_OUTPUT := l_text;
             End Loop; 
             
    END;


You can download [the source here](langai.sql)

Now we are all set to translate our text content by running the page. click on **run** green button. 

![][14]


[14]: images/1706289423938.png

Running the APEX page 

    Input: Hello beautiful world
    Target: Simplified Chinese
    Output: 你好，美丽的世界

![][15]

[15]: images/1706269487347.png


    Input: Good morning have a great day
    Italian: Buongiorno buona giornata

![][16]

[16]: images/1706269657080.png

    Input: Buongiorno buona giornata
    Japanese: おはようございます 

![][17]

[17]: images/1706269748424.png

    Input: good morning have a great day
    Arabic: صباح الخير لديك يوم عظيم

![][18]


[18]: images/1706270083128.png

### Troubleshooting :-

1. BadRequest 

        {
            "code" : "BadRequest",
            "message" : "Bad request body format. See the documentation for details."
        }
      
      
      

    **Solution** : Please ensure that the request payload contains documents and not document, as shown below 
         
         {               
             "documents": [  { 
                "key": "1x",
                "text": "'||l_input||'",
                "languageCode": "auto"  
              } ],
              "targetLanguageCode": "en" ,
               "compartmentId": "Your-CompartmentId"
        
         } 

2. Authentication Issues 

          ora_sqlerrm: ORA-01403: no data found ORA-06512: at "APEX_230200.WWV_FLOW_PROCESS_NATIVE", line 55 ORA-06512: at "APEX_230200.WWV_FLOW_CODE_EXEC_PLSQL", line 126 ORA-06512: at "APEX_230200.WWV_FLOW_DYNAMIC_EXEC", line 2647 ORA-06512: at "APEX_230200.WWV_FLOW_CREDENTIAL", line 116 ORA-06512: at "APEX_230200.WWV_FLOW_CREDENTIAL", line 107 ORA-06512: at 

    **Solution** : Please ensure that the web credentials supplied is correct. 


References:[_AI for Healthcare_][20] and [_AI for Healthcare_][21]


[20]: https://docs.public.oneportal.content.oci.oraclecloud.com/en-us/iaas/tools/oci-cli/3.37.6/oci_cli_docs/cmdref/ai/language/batch-language-translation.html
[21]: https://docs.oracle.com/en-us/iaas/api/#/en/language/20221001/
