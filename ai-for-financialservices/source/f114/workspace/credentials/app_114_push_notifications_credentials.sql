prompt --workspace/credentials/app_114_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 114 Push Notifications Credentials
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
 p_id=>wwv_flow_imp.id(3004138263329992)
,p_name=>'App 114 Push Notifications Credentials'
,p_static_id=>'App_114_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
