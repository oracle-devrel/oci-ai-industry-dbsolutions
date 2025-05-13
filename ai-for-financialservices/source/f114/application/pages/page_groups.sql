prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 114
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(62371589288085307)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(62571685369086776)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
