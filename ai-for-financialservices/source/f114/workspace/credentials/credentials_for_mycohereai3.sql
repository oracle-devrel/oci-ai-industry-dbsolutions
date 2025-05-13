prompt --workspace/credentials/credentials_for_mycohereai3
begin
--   Manifest
--     CREDENTIAL: Credentials for mycohereai3
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(91583852783373705)
,p_name=>'Credentials for mycohereai3'
,p_static_id=>'credentials_for_mycohereai3'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.cohere.ai/v1',
''))
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
