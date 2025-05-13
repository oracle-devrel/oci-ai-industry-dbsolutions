prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_page.create_page(
 p_id=>93
,p_name=>'META-LLAMA'
,p_alias=>'META-LLAMA'
,p_step_title=>'META-LLAMA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8360731323674794)
,p_plug_name=>'Debug'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  p_image_url VARCHAR2(4000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/SampleData/smallapple.png'';  -- Replace with your image URL',
'  p_prompt    VARCHAR2(4000) := ''Describe this image''; --Your prompt',
'  p_response  VARCHAR2(4000);',
'  l_api_url varchar2(2000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';',
'    l_compartment_id varchar2(1000) := ''ocid1.compartment.oc1..replace-this'';',
'    l_blob_content blob;',
'    l_mime_type varchar2(200);',
'    l_file_name varchar2(200);',
'    l_base64_content clob;',
'    l_response_text clob;',
'    l_request_body clob;',
'',
'BEGIN',
'  -- Call the OCI Generative AI service function (replace with the correct function name)',
'--    p_response := oci_generative_ai.chat_completion(',
'--     p_model_name        => ''meta.llama-3.2-90b-vision-instruct'',',
'--     p_messages => ',
'--     ''{"role": "user", ',
'--     "content": [{"type": "text", "text": "'' || p_prompt || ''"}, ',
'--     {"type": "image_url", "image_url": "'' || p_image_url || ''"}]})''',
'--     -- Other arguments required by the OCI service function',
'--   );',
'',
'   -- dbms_lob.createtemporary(l_base64_content, true); ',
'  ',
'    -- SELECT',
'    --     REPLACE(REPLACE(APEX_WEB_SERVICE.BLOB2CLOBBASE64(l_blob_content),',
'    --                     CHR(10),',
'    --                     ''''),',
'    --             CHR(13),',
'    --             '''')',
'    -- into l_base64_content',
'    --     from dual;',
'    --ocid1.generativeaimodel.oc1.us-chicago-1.amaaaaaask7dceya2xrydihzvu5pk6vlvfhtbnfapcvwhhugzo7jez4zcnaa',
'    l_request_body := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "meta.llama-3.2-90b-vision-instruct"',
'        },',
'        "chatRequest": {',
'           "messages": [',
'            {',
'                "role": "USER",',
'                   "content": [',
'                    {',
'                        "type": "TEXT",',
'                        "text": "how many fruits are there"',
'                    },',
'                     {',
'                        "type": "IMAGE",',
'                        "imageUrl":  ''||p_image_url||''',
'                     }   ',
'                 ]',
'',
'            }',
'        ],',
'            "maxTokens": 2500,',
'            "isStream": false,',
'            "apiFormat": "GENERIC",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }'';',
'',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'',
'',
'    l_response_text := apex_web_service.make_rest_request(',
'        p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'        p_http_method => ''POST'',',
'        p_body => l_request_body,',
'        p_credential_static_id => ''replace-this'' ',
'    );',
'',
'',
'    Htp.p(''Response: '' || l_response_text);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        Htp.p(''Error: '' || SQLERRM);',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P93_IMAGE_UPLOAD'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8469317606056449)
,p_plug_name=>'DebugOld'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_blob_content blob;',
'    l_mime_type varchar2(200);',
'    l_file_name varchar2(200);',
'    l_base64_content clob;',
'    l_response_text clob;',
'    l_request_body clob;',
'    --l_text clob;',
'    l_text varchar2(32000);',
'   -- l_web_credential apex_web_service.t_credential;',
'    l_api_url varchar2(2000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';',
'    l_compartment_id varchar2(1000) := ''ocid1.compartment.oc1..replace-this'';',
'    l_model_id varchar2(100) := ''meta.llama-3.2-90b-vision-instruct'';',
'    l_id number;',
'    l_cardno number;',
'    l_first_name varchar2(50);',
'    l_status varchar2(20);',
'    l_filename varchar2(50);',
'',
'    l_clob  CLOB;',
'    l_blob  BLOB;',
'',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P93_IMAGE_UPLOAD;',
'    ',
'    -- show the filename of uploaded image',
'    :P93_FILE_NAME := l_file_name;',
' ',
'    --:P48_ID := l_id;',
' ',
'   dbms_lob.createtemporary(l_base64_content, true); ',
'  ',
'    SELECT',
'        REPLACE(REPLACE(APEX_WEB_SERVICE.BLOB2CLOBBASE64(l_blob_content),',
'                        CHR(10),',
'                        ''''),',
'                CHR(13),',
'                '''')',
'    into l_base64_content',
'        from dual;',
'',
'   -- l_clob := BLOB_TO_BASE64(l_blob_content);',
'',
'    -- Build JSON request body',
'   l_request_body := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "''||l_model_id||''"',
'        },',
'        "chatRequest": {',
'           "messages": [',
'            {',
'                "role": "USER",',
'                   "content": [',
'                    {',
'                        "type": "TEXT",',
'                        "text": "How many apples are there"',
'                    },',
'                    {',
'                        "type": "IMAGE",',
'                        "imageUrl": {',
'                            "url": "data:image/png;base64,''||l_base64_content||''"',
'                        }',
'                     }   ',
'                 ]',
'',
'            }',
'        ],',
'            "maxTokens": 2500,',
'            "isStream": false,',
'            "apiFormat": "GENERIC",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }'';',
'',
'--    -- Htp.p (''l_file_name ''||l_file_name );',
'--    -- Htp.p (''l_request_body ''||l_request_body );',
'--    --  :P93_LOG := l_request_body;',
' ',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'',
'    --Make the API call',
'    l_response_text := apex_web_service.make_rest_request(',
'        p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'        p_http_method => ''POST'',',
'        p_body => l_request_body,',
'        p_credential_static_id => ''replace-this'' ',
'    );',
'',
'   Htp.p (''l_response_text ''||l_response_text );',
' ',
'',
'--  SELECT jt.text INTO l_text',
'--     FROM dual,',
'--          JSON_TABLE(',
'--              l_response_text,',
'--              ''$.chatResponse.choices[*].message.content[*]''',
'--              COLUMNS (',
'--                  text CLOB PATH ''$.text''',
'--              )',
'--          ) jt;',
'',
'--     -- get card number',
'--     --select regexp_replace(l_text, ''[^[:digit:]]'', '''') into l_cardno from dual;',
'',
'     ',
'--     Htp.p(''l_text ''||l_text);',
'',
'--     -- Add success message',
'--     apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P93_IMAGE_UPLOAD'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8360872364674795)
,p_button_sequence=>30
,p_button_name=>'Upload'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Upload'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8360690326674793)
,p_name=>'P93_IMAGE_UPLOAD'
,p_item_sequence=>10
,p_prompt=>'Image Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8469177495056447)
,p_name=>'P93_FILE_NAME'
,p_item_sequence=>20
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8469208887056448)
,p_name=>'P93_LOG'
,p_item_sequence=>70
,p_prompt=>'Log'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8360941909674796)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CallLama'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_blob_content blob;',
'    l_mime_type varchar2(200);',
'    l_file_name varchar2(200);',
'    l_base64_content clob;',
'    l_response_text clob;',
'    l_request_body clob;',
'    --l_text clob;',
'    l_text varchar2(32000);',
'   -- l_web_credential apex_web_service.t_credential;',
'    l_api_url varchar2(2000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';',
'    l_compartment_id varchar2(1000) := ''ocid1.compartment.oc1..replace-this'';',
'    l_model_id varchar2(100) := ''meta.llama-3.2-90b-vision-instruct'';',
'    l_id number;',
'    l_cardno number;',
'    l_first_name varchar2(50);',
'    l_status varchar2(20);',
'    l_filename varchar2(50);',
'',
'begin',
'   ',
'    select blob_content, mime_type, filename, id',
'    into l_blob_content,l_mime_type, l_file_name, l_id',
'    from apex_application_temp_files',
'    where name = :P93_IMAGE_UPLOAD;',
'',
'    :P93_FILE_NAME := l_file_name;',
' ',
'    --:P48_ID := l_id;',
' ',
'   dbms_lob.createtemporary(l_base64_content, true); ',
'  ',
'    -- SELECT',
'    --     REPLACE(REPLACE(APEX_WEB_SERVICE.BLOB2CLOBBASE64(l_blob_content),',
'    --                     CHR(10),',
'    --                     ''''),',
'    --             CHR(13),',
'    --             '''')',
'    -- into l_base64_content',
'    --     from dual;',
'',
'    -- Htp.p (''l_base64_content ''||l_base64_content );',
'',
'    -- Build JSON request body',
'--    l_request_body := '' ',
'--     {',
'--         "compartmentId": "ocid1.compartment.oc1..replace-this",',
'--         "servingMode": {',
'--             "servingType": "ON_DEMAND",',
'--             "modelId": "meta.llama-3.2-90b-vision-instruct"',
'--         },',
'--         "chatRequest": {',
'--            "messages": [',
'--             {',
'--                 "role": "USER",',
'--                    "content": [',
'--                     {',
'--                         "type": "TEXT",',
'--                         "text": "what is written in the image"',
'--                     },',
'--                      {',
'--                         "type": "IMAGE",',
'--                         "imageUrl": {',
'--                             "url": "data:image/png;base64, ''||l_base64_content||''"',
'--                         }',
'--                      }   ',
'--                  ]',
'',
'--             }',
'--         ],',
'--             "maxTokens": 2500,',
'--             "isStream": false,',
'--             "apiFormat": "GENERIC",',
'--             "temperature": 0.75,',
'--             "frequencyPenalty": 1,',
'--             "presencePenalty": 0,',
'--             "topP": 0.7,',
'--             "topK": 1',
'--         }',
'--     }'';',
'',
'   -- Htp.p (''l_file_name ''||l_file_name );',
'   -- Htp.p (''l_request_body ''||l_request_body );',
'   --  :P93_LOG := l_request_body;',
' ',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'',
'    --Make the API call',
'    l_response_text := apex_web_service.make_rest_request(',
'        p_url => ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'',',
'        p_http_method => ''POST'',',
'        p_body => l_request_body,',
'        p_credential_static_id => ''replace-this'' ',
'    );',
'',
'  Htp.p (''l_response_text ''||l_response_text );',
' ',
'',
'--  SELECT jt.text INTO l_text',
'--     FROM dual,',
'--          JSON_TABLE(',
'--              l_response_text,',
'--              ''$.chatResponse.choices[*].message.content[*]''',
'--              COLUMNS (',
'--                  text CLOB PATH ''$.text''',
'--              )',
'--          ) jt;',
'',
'    -- get card number',
'    --select regexp_replace(l_text, ''[^[:digit:]]'', '''') into l_cardno from dual;',
'',
'     ',
'  --  Htp.p(''l_text ''||l_text);',
'',
'    -- Add success message',
'    apex_application.g_notification := ''API called successfully!'';',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8360872364674795)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>17353050351739250
);
wwv_flow_imp.component_end;
end;
/
