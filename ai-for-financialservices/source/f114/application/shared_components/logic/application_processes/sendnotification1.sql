prompt --application/shared_components/logic/application_processes/sendnotification1
begin
--   Manifest
--     APPLICATION PROCESS: SendNotification1
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
 p_id=>wwv_flow_imp.id(7494012706259624)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SendNotification1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_pwa.send_push_notification (',
'        p_application_id => 114,',
'        p_user_name      => ''BANKER'',',
'        p_title          => ''Your card has been blocked'',',
'        p_body           => ''Card has been blocked due to multiple wrong PIN entries'' );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>44421291128578
);
wwv_flow_imp.component_end;
end;
/
