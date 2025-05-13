prompt --application/shared_components/security/app_access_control/bank_customer_role
begin
--   Manifest
--     ACL ROLE: Bank Customer Role
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
 p_id=>wwv_flow_imp.id(3348292511807401)
,p_static_id=>'BANK_CUSTOMER_ROLE'
,p_name=>'Bank Customer Role'
,p_version_scn=>42294622768374
);
wwv_flow_imp.component_end;
end;
/
