prompt --application/shared_components/logic/application_processes/sendpushnotification
begin
--   Manifest
--     APPLICATION PROCESS: SendPushNotification
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
 p_id=>wwv_flow_imp.id(93613832299787943)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SendPushNotification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' ',
'BEGIN',
'    ',
'            HTP.P(''Notification Sent'');    ',
'           -- :P32_START := ''After Process'';',
'',
'             apex_pwa.send_push_notification (',
'            p_application_id => 114,',
'            p_user_name      => ''BANKER'',',
'            p_title          => ''Your card has been blocked'',',
'            p_body           => ''Card has been blocked due to multiple wrong PIN entries'' );',
'          ',
'END  ;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>44483614564999
);
wwv_flow_imp.component_end;
end;
/
