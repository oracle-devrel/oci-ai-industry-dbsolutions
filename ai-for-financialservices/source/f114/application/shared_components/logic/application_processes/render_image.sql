prompt --application/shared_components/logic/application_processes/render_image
begin
--   Manifest
--     APPLICATION PROCESS: RENDER_IMAGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(91236701680874317)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RENDER_IMAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IMAGE_AI_PK.render_document (x_document_id => V(''P23_DOCUMENT_ID''));',
'  --RENDER_IMAGE',
'  --IMAGE_AI_PK.render_document (x_document_id => V(''P47_DOCUMENT_ID''));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>42235037986630
);
wwv_flow_imp.component_end;
end;
/
