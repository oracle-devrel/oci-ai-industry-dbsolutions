prompt --application/shared_components/security/app_access_control/reader
begin
--   Manifest
--     ACL ROLE: Reader
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(62369909023085300)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
