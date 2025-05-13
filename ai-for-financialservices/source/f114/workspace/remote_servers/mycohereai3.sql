prompt --workspace/remote_servers/mycohereai3
begin
--   Manifest
--     REMOTE SERVER: mycohereai3
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(19450264014113012)
,p_name=>'mycohereai3'
,p_static_id=>'mycohereai3'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('mycohereai3'),'https://api.cohere.ai/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('mycohereai3'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('mycohereai3'),'')
,p_credential_id=>wwv_flow_imp.id(91583852783373705)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('mycohereai3'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('mycohereai3'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'COHERE'
,p_ai_is_builder_service=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('mycohereai3'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('mycohereai3'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('mycohereai3'),'{'||wwv_flow.LF||
'    "chat_history": ['||wwv_flow.LF||
'        {'||wwv_flow.LF||
'            "role": "CHATBOT",'||wwv_flow.LF||
'            "message": "Test"'||wwv_flow.LF||
'        }'||wwv_flow.LF||
'    ]'||wwv_flow.LF||
'}	')
);
wwv_flow_imp.component_end;
end;
/
