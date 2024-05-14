-- PL/SQL code block to Generate AI Text from Oracle Generative AI service
-- Author: Madhusudhan Rao

DECLARE
 
  l_genai_rest_url    VARCHAR2(4000) := 'https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/generateText'; 
  l_web_cred        CONSTANT VARCHAR2(50)   := '<Your Web Credentials>';   
  l_input varchar2(4000) := :P91_AI_INPUT; -- Change Input page number as per your page number in APEX page.
  l_response_json CLOB;
  l_text varchar2(4000);
   
    l_ocigabody varchar2(1000) := '{ 
            "inferenceRequest": {
                    "runtimeType": "COHERE",
                     "prompt": "'||l_input||'",
                     "maxTokens": 500,
                     "numGenerations": 1,
                     "returnLikelihoods": "GENERATION",
                     "isStream": false
            }, 
            "servingMode": { 
                "servingType": "ON_DEMAND",
                "modelId": "cohere.command-light"
            }, 
            "compartmentId": "<Your compartment OCID>"
    }';
 
  CURSOR C1  IS 
            SELECT jt.* 
            FROM   JSON_TABLE(l_response_json, '$' 
                     COLUMNS (text VARCHAR2(4000)  PATH '$.inferenceResponse[0].generatedTexts[0].text' )) jt; 

BEGIN

  if l_input is not null then

        apex_web_service.g_request_headers.DELETE; 
        apex_web_service.g_request_headers(1).name  := 'Content-Type'; 
        apex_web_service.g_request_headers(1).value := 'application/json';  

         l_response_json := apex_web_service.make_rest_request 
           (p_url                  => l_genai_rest_url, 
            p_http_method          => 'POST', 
            p_body                 => l_ocigabody, 
            p_credential_static_id => l_web_cred); 

    For row_1 In C1 Loop
           l_text := row_1.text; 
            :P91_AI_OUTPUT := l_text;
     End Loop;

    end if;

END;
