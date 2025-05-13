prompt --application/shared_components/navigation/lists/finserv_nav_home
begin
--   Manifest
--     LIST: FinServ Nav Home
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
 p_id=>wwv_flow_imp.id(501822730801075)
,p_name=>'FinServ Nav Home'
,p_list_status=>'PUBLIC'
,p_version_scn=>44680749214797
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(502796964801107)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'- Bankers'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'bankers'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER'')) AND ',
'(role_id = 1 OR role_id = 6);'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(503231543801109)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'Fraud Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fraud'
,p_parent_list_item_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(503991855801111)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>'Money Laundering'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'moneylaund'
,p_parent_list_item_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(504488040801113)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>'Money Mules'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'moneymule'
,p_parent_list_item_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(503659811801110)
,p_list_item_display_sequence=>34
,p_list_item_link_text=>'Anomaly Detection'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'anmdetect'
,p_parent_list_item_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(504814572801114)
,p_list_item_display_sequence=>46
,p_list_item_link_text=>'Customer Analysis'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'custanalysis'
,p_parent_list_item_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(985298375416936)
,p_list_item_display_sequence=>67
,p_list_item_link_text=>'AI Search'
,p_list_item_link_target=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'aisearch'
,p_parent_list_item_id=>wwv_flow_imp.id(514746199811291)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(505600900801117)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Transaction Search'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'transactionsearch'
,p_parent_list_item_id=>wwv_flow_imp.id(985298375416936)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(502060717801100)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'Customer Search'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'customersearch'
,p_parent_list_item_id=>wwv_flow_imp.id(985298375416936)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(514398863811289)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'- Bank Customer'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'bankcustomers'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from common_users where upper(email) = upper(v(''APP_USER''))  ',
'AND ',
'(role_id = 2 OR role_id = 6);',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2280226027804155)
,p_list_item_display_sequence=>7
,p_list_item_link_text=>'Open Bank Account'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'bankaccount'
,p_parent_list_item_id=>wwv_flow_imp.id(514398863811289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7012858701963001)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Update My Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'updateprofile'
,p_parent_list_item_id=>wwv_flow_imp.id(2280226027804155)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8656453317145381)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>'Apply for Card'
,p_list_item_link_target=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'applyforcard'
,p_parent_list_item_id=>wwv_flow_imp.id(2280226027804155)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14110129525684556)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Application History'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'applicationhistory'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER'')) AND role_id = 2;'
,p_parent_list_item_id=>wwv_flow_imp.id(2280226027804155)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(776536197796190)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Online Shopping'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'shopping'
,p_parent_list_item_id=>wwv_flow_imp.id(514398863811289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8637448360529823)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'Make Payment'
,p_list_item_link_target=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'makepayment'
,p_parent_list_item_id=>wwv_flow_imp.id(776536197796190)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3720697243251667)
,p_list_item_display_sequence=>39
,p_list_item_link_text=>'Funds Transfer'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fundtransfer'
,p_parent_list_item_id=>wwv_flow_imp.id(514398863811289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5345246716046371)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Generate Bank Statement'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'bankstatement'
,p_parent_list_item_id=>wwv_flow_imp.id(514398863811289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14343779970297168)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'Home Loan EMI'
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'loanemi'
,p_parent_list_item_id=>wwv_flow_imp.id(514398863811289)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7237331188071628)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'- ATM'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'atm'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from common_users where upper(email) = upper(v(''APP_USER'')) AND   ',
'(role_id = 2 OR role_id = 6);'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(509233364801135)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Cash Withdrawal'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'cashwithdrawal'
,p_parent_list_item_id=>wwv_flow_imp.id(7237331188071628)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(502421101801106)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Cheque Deposit'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'chequedeposit'
,p_parent_list_item_id=>wwv_flow_imp.id(7237331188071628)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2554980402572785)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'- My Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'mytasks'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_id from COMMON_USERS where upper(email) = upper(v(''APP_USER'')) AND ',
'(role_id = 1 OR role_id = 6);'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4695530276087455)
,p_list_item_display_sequence=>68
,p_list_item_link_text=>'- Workflow Console'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'wfconsole'
,p_parent_list_item_id=>wwv_flow_imp.id(2554980402572785)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(506022645801119)
,p_list_item_display_sequence=>69
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'administration'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'return (APEX_UTIL.CURRENT_USER_IN_GROUP(p_group_name=>''BANKER_GROUP''));',
'',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(506425059801120)
,p_list_item_display_sequence=>14
,p_list_item_link_text=>'Manage Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(506022645801119)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16954566638873809)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Data Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(506022645801119)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(506824325801121)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(506022645801119)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2992743842956131)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'Bank Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(506022645801119)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14866600080397281)
,p_list_item_display_sequence=>18
,p_list_item_link_text=>'Data Exporter'
,p_list_item_link_target=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server'
,p_parent_list_item_id=>wwv_flow_imp.id(506022645801119)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13357537777646790)
,p_list_item_display_sequence=>88
,p_list_item_link_text=>'References'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'references'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
