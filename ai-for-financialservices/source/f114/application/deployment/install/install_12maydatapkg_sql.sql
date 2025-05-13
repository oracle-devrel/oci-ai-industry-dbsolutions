prompt --application/deployment/install/install_12maydatapkg_sql
begin
--   Manifest
--     INSTALL: INSTALL-12MayDataPkg.sql
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(284527250499105)
,p_install_id=>wwv_flow_imp.id(76582507129861619)
,p_name=>'12MayDataPkg.sql'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --AICHAT: 71/10000 rows exported, APEX$DATA$PKG/AICHAT$295348',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AICHAT'', p_delete_after_install => true );',
'    --ANNUAL_DEATH_CAUSE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''ANNUAL_DEATH_CAUSE'', p_delete_after_install => true );',
'    --APPUSERS: 3/10000 rows exported, APEX$DATA$PKG/APPUSERS$154405',
'    apex_data_install.load_supporting_object_data(p_table_name => ''APPUSERS'', p_delete_after_install => true );',
'    --AQ$_FUNDSTRANSFER_QUEUE_TABLE_H: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AQ$_FUNDSTRANSFER_QUEUE_TABLE_H'', p_delete_after_install => true );',
'    --AUDIO_STORAGE: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AUDIO_STORAGE'', p_delete_after_install => true );',
'    --AUDIO_T: 4/10000 rows exported, APEX$DATA$PKG/AUDIO_T$542850',
'    apex_data_install.load_supporting_object_data(p_table_name => ''AUDIO_T'', p_delete_after_install => true );',
'    --BANK_ACCOUNTS: 1000/10000 rows exported, APEX$DATA$PKG/BANK_ACCOUNTS$155475',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_ACCOUNTS'', p_delete_after_install => true );',
'    --BANK_CUSTOMERS: 3581/10000 rows exported, APEX$DATA$PKG/BANK_CUSTOMERS$240998',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_CUSTOMERS'', p_delete_after_install => true );',
'    --BANK_CUSTOMERS_BENEFICIARIES: 14/10000 rows exported, APEX$DATA$PKG/BANK_CUSTOMERS_BENEFICIA$415285',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_CUSTOMERS_BENEFICIARIES'', p_delete_after_install => true );',
'    --BANK_LEDGER: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_LEDGER'', p_delete_after_install => true );',
'    --BANK_TRANSFERS: 10/10000 rows exported, APEX$DATA$PKG/BANK_TRANSFERS$89118',
'    apex_data_install.load_supporting_object_data(p_table_name => ''BANK_TRANSFERS'', p_delete_after_install => true );',
'    --CC_FD: 72/10000 rows exported, APEX$DATA$PKG/CC_FD$416360',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CC_FD'', p_delete_after_install => true );',
'    --CC_FD_SECURE: 2/10000 rows exported, APEX$DATA$PKG/CC_FD_SECURE$193520',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CC_FD_SECURE'', p_delete_after_install => true );',
'    --CNDEMO_DOCUMENT_AI_DOCS: 120/10000 rows exported, APEX$DATA$PKG/CNDEMO_DOCUMENT_AI_DOCS$356878',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CNDEMO_DOCUMENT_AI_DOCS'', p_delete_after_install => true );',
'    --CNDEMO_DOCUMENT_AI_FIELDS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CNDEMO_DOCUMENT_AI_FIELDS'', p_delete_after_install => true );',
'    --COMMON_ROLE: 6/10000 rows exported, APEX$DATA$PKG/COMMON_ROLE$550443',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COMMON_ROLE'', p_delete_after_install => true );',
'    --COMMON_USERS: 20/10000 rows exported, APEX$DATA$PKG/COMMON_USERS$20024',
'    apex_data_install.load_supporting_object_data(p_table_name => ''COMMON_USERS'', p_delete_after_install => true );',
'    --CUSTOMERS: 3563/10000 rows exported, APEX$DATA$PKG/CUSTOMERS$408445',
'    apex_data_install.load_supporting_object_data(p_table_name => ''CUSTOMERS'', p_delete_after_install => true );',
'    --DEPT: 4/10000 rows exported, APEX$DATA$PKG/DEPT$209411',
'    apex_data_install.load_supporting_object_data(p_table_name => ''DEPT'', p_delete_after_install => true );',
'    --EMP: 14/10000 rows exported, APEX$DATA$PKG/EMP$679256',
'    apex_data_install.load_supporting_object_data(p_table_name => ''EMP'', p_delete_after_install => true );',
'    --FD_ANM: 10/10000 rows exported, APEX$DATA$PKG/FD_ANM$633769',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_ANM'', p_delete_after_install => true );',
'    --FD_BANK_NAMES: 8/10000 rows exported, APEX$DATA$PKG/FD_BANK_NAMES$579875',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_BANK_NAMES'', p_delete_after_install => true );',
'    --FD_BANK_TRANSACTIONS: 169/10000 rows exported, APEX$DATA$PKG/FD_BANK_TRANSACTIONS$917126',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_BANK_TRANSACTIONS'', p_delete_after_install => true );',
'    --FD_BUSINESS_RULES: 3/10000 rows exported, APEX$DATA$PKG/FD_BUSINESS_RULES$78700',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_BUSINESS_RULES'', p_delete_after_install => true );',
'    --FD_TRANSACTIONS_LOG: 21/10000 rows exported, APEX$DATA$PKG/FD_TRANSACTIONS_LOG$761291',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_TRANSACTIONS_LOG'', p_delete_after_install => true );',
'    --FD_TX_HISTORIC_DATA: 25/10000 rows exported, APEX$DATA$PKG/FD_TX_HISTORIC_DATA$446441',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FD_TX_HISTORIC_DATA'', p_delete_after_install => true );',
'    --FINBANK_ACCOUNTS: 50/10000 rows exported, APEX$DATA$PKG/FINBANK_ACCOUNTS$616597',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FINBANK_ACCOUNTS'', p_delete_after_install => true );',
'    --FSCUSTOMERS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FSCUSTOMERS'', p_delete_after_install => true );',
'    --FUNDSTRANSFER_QUEUE_TABLE: 1/10000 rows exported, APEX$DATA$PKG/FUNDSTRANSFER_QUEUE_TABL$983177',
'    apex_data_install.load_supporting_object_data(p_table_name => ''FUNDSTRANSFER_QUEUE_TABLE'', p_delete_after_install => true );',
'    --HLTERM: 2/10000 rows exported, APEX$DATA$PKG/HLTERM$899199',
'    apex_data_install.load_supporting_object_data(p_table_name => ''HLTERM'', p_delete_after_install => true );',
'    --HOSPITALS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''HOSPITALS'', p_delete_after_install => true );',
'    --JS_PROCEDURES: 1/10000 rows exported, APEX$DATA$PKG/JS_PROCEDURES$117090',
'    apex_data_install.load_supporting_object_data(p_table_name => ''JS_PROCEDURES'', p_delete_after_install => true );',
'    --MACHINE_LEARNING_CONFIGS: 8/10000 rows exported, APEX$DATA$PKG/MACHINE_LEARNING_CONFIGS$864043',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MACHINE_LEARNING_CONFIGS'', p_delete_after_install => true );',
'    --MSGLOGS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MSGLOGS'', p_delete_after_install => true );',
'    --MYAUDIODATA: 4/10000 rows exported, APEX$DATA$PKG/MYAUDIODATA$891592',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MYAUDIODATA'', p_delete_after_install => true );',
'    --MY_BOOKS: 5/10000 rows exported, APEX$DATA$PKG/MY_BOOKS$75981',
'    apex_data_install.load_supporting_object_data(p_table_name => ''MY_BOOKS'', p_delete_after_install => true );',
'    --PASSENGER_LIST: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PASSENGER_LIST'', p_delete_after_install => true );',
'    --PIZZASHOPS: 3487/10000 rows exported, APEX$DATA$PKG/PIZZASHOPS$333685',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZASHOPS'', p_delete_after_install => true );',
'    --PIZZA_DELIVERY_MODE: 10/10000 rows exported, APEX$DATA$PKG/PIZZA_DELIVERY_MODE$929426',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZA_DELIVERY_MODE'', p_delete_after_install => true );',
'    --PIZZA_ORDER: 19/10000 rows exported, APEX$DATA$PKG/PIZZA_ORDER$132001',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZA_ORDER'', p_delete_after_install => true );',
'    --PIZZA_ORDER_DETAILS: 29/10000 rows exported, APEX$DATA$PKG/PIZZA_ORDER_DETAILS$83104',
'    apex_data_install.load_supporting_object_data(p_table_name => ''PIZZA_ORDER_DETAILS'', p_delete_after_install => true );',
'    --RELATED_LABELS: 36/10000 rows exported, APEX$DATA$PKG/RELATED_LABELS$315113',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RELATED_LABELS'', p_delete_after_install => true );',
'    --RETAIL_SHOPPING: 10000/10000 rows exported, APEX$DATA$PKG/RETAIL_SHOPPING$636951',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RETAIL_SHOPPING'', p_delete_after_install => true );',
'    --RETAIL_SHOPPING_FD: 60/10000 rows exported, APEX$DATA$PKG/RETAIL_SHOPPING_FD$73523',
'    apex_data_install.load_supporting_object_data(p_table_name => ''RETAIL_SHOPPING_FD'', p_delete_after_install => true );',
'    --SHOPS: 1/10000 rows exported, APEX$DATA$PKG/SHOPS$659222',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SHOPS'', p_delete_after_install => true );',
'    --SHOP_ITEMS: 1/10000 rows exported, APEX$DATA$PKG/SHOP_ITEMS$493938',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SHOP_ITEMS'', p_delete_after_install => true );',
'    --SQLS: 0/10000 rows exported, no file generated',
'    apex_data_install.load_supporting_object_data(p_table_name => ''SQLS'', p_delete_after_install => true );',
'    --UNESCO_SITES: 1113/10000 rows exported, APEX$DATA$PKG/UNESCO_SITES$303523',
'    apex_data_install.load_supporting_object_data(p_table_name => ''UNESCO_SITES'', p_delete_after_install => true );',
'    --USER_PROFILE_BC: 17/10000 rows exported, APEX$DATA$PKG/USER_PROFILE_BC$328083',
'    apex_data_install.load_supporting_object_data(p_table_name => ''USER_PROFILE_BC'', p_delete_after_install => true );',
'    --US_HOSPITALS: 7563/10000 rows exported, APEX$DATA$PKG/US_HOSPITALS$936822',
'    apex_data_install.load_supporting_object_data(p_table_name => ''US_HOSPITALS'', p_delete_after_install => true );',
'    --VECTOR_STORE: 535/10000 rows exported, APEX$DATA$PKG/VECTOR_STORE$166934',
'    apex_data_install.load_supporting_object_data(p_table_name => ''VECTOR_STORE'', p_delete_after_install => true );',
'end;'))
);
wwv_flow_imp.component_end;
end;
/
