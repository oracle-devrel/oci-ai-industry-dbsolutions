prompt --application/shared_components/navigation/lists/customers_nav
begin
--   Manifest
--     LIST: Customers Nav
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(561696134004801)
,p_name=>'Customers Nav'
,p_list_status=>'PUBLIC'
,p_version_scn=>42279623566978
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(562718055004806)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(569177670004831)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'ATM'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(562348109004805)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Cheque Deposit'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2836538262511820)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Open Bank Account'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(888143836248019)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Retail'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(569511523004832)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'AI Search'
,p_list_item_link_target=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
