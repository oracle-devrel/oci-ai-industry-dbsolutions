declare
 
        l_rest_url    VARCHAR2(4000) := 'https://language.aiservice.us-phoenix-1.oci.oraclecloud.com/20221001/actions/batchLanguageTranslation';  
        l_web_cred        CONSTANT VARCHAR2(50)   := 'Your Web Cred';   
        l_input varchar2(4000) := :P87_INPUT;
        l_target_lang varchar2(20) := :P87_TRG_LANG;
        l_src_lang varchar2(10);  
        l_response_json CLOB;
        l_text varchar2(4000);  
        l_body varchar2(1000) :='{ 
                
                         "documents": [  { 
                            "key": "1x",
                            "text": "'||l_input||'",
                            "languageCode": "auto"  
                          } ],
                          "targetLanguageCode": "'||l_target_lang||'" ,
                           "compartmentId": "ocid1.compartment.oc1..YourCompartmentId"
                 
        }';    
         
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
                       
begin 
        

        apex_web_service.g_request_headers.DELETE; 
        apex_web_service.g_request_headers(1).name  := 'Content-Type'; 
        apex_web_service.g_request_headers(1).value := 'application/json'; 

        l_response_json := apex_web_service.make_rest_request 
           (p_url                  => l_rest_url, 
            p_http_method          => 'POST', 
            p_body                 => l_body, 
            p_credential_static_id => l_web_cred);

         --:P87_OUTPUT := l_response_json;

         For row_1 In C1 Loop
                   l_text := row_1.text;
                   l_src_lang := row_1.src_lang;
                   l_target_lang := row_1.target_lang; 
                    :P87_SRC_LANG := l_src_lang;
                    :P87_TRG_LANG := l_target_lang;
                    :P87_OUTPUT := l_text;
         End Loop; 
         
end;
