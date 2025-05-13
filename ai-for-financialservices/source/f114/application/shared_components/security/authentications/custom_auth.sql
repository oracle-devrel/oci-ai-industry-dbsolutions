prompt --application/shared_components/security/authentications/custom_auth
begin
--   Manifest
--     AUTHENTICATION: custom_auth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(6872457322509919)
,p_name=>'custom_auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'COM_COMMON_AUTH_PKG.custom_authenticate'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>44545826506570
);
wwv_flow_imp.component_end;
end;
/
