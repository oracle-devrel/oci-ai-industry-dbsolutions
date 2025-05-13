prompt --application/shared_components/navigation/lists/finserv_nav
begin
--   Manifest
--     LIST: FinServ Nav
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
 p_id=>wwv_flow_imp.id(62722399245879119)
,p_name=>'FinServ Nav'
,p_list_status=>'PUBLIC'
,p_version_scn=>42208362020131
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(88398401865196676)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(104558459500981423)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Real-time Fraud Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(103990997352490672)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Money Laundering'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(91392661315854281)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Anomaly Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(103990997352490672)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(104643196745655543)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Money Mules'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(103990997352490672)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(91252173205977699)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'Customer Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(90631119214283593)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Facial Recognition'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(91252173205977699)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(295056024335547)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'AI Search'
,p_list_item_link_target=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(104802398953012585)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Transaction Search'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-one'
,p_parent_list_item_id=>wwv_flow_imp.id(295056024335547)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(372172215413571)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'Customer Search'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-one'
,p_parent_list_item_id=>wwv_flow_imp.id(295056024335547)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(318695800698875)
,p_list_item_display_sequence=>19
,p_list_item_link_text=>'Manage Vectors'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-accessor-one'
,p_parent_list_item_id=>wwv_flow_imp.id(295056024335547)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(76583076524865209)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(89777008318504605)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>'Manage Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_parent_list_item_id=>wwv_flow_imp.id(76583076524865209)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(93309461729679518)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(76583076524865209)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(106434623559037280)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'Manage Content'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(76583076524865209)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
