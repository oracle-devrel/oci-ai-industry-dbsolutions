prompt --application/shared_components/workflow/task_definitions/new_customer_onboarding_task
begin
--   Manifest
--     TASK_DEF: New Customer Onboarding Task
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_task_def(
 p_id=>wwv_flow_imp.id(2495354177213523)
,p_name=>'New Customer Onboarding Task'
,p_static_id=>'NEW_CUSTOMER_ONBOARDING'
,p_subject=>'Approval for customer &CUSTOMER_NAME. Account number &ACCOUNT_NUMBER.'
,p_task_type=>'APPROVAL'
,p_priority=>3
,p_expiration_policy=>'NONE'
,p_max_renewal_count=>3
,p_details_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP,65:P65_TASK_ID:&TASK_ID.'
,p_actions_sql_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMER_NAME, GENDER, STREET_ADDRESS, CUST_POSTAL_CODE, CITY, STATE_PROVINCE, ACCOUNT_STATUS, ACCOUNT_NUMBER',
'FROM',
'BANK_CUSTOMERS WHERE ID = :APEX$TASK_PK'))
,p_initiator_can_complete=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(2550937177251492)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_label=>'Account Number'
,p_static_id=>'P_ACCOUNT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_param(
 p_id=>wwv_flow_imp.id(2560480341757734)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_label=>'Customer Name'
,p_static_id=>'P_CUSTOMER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_visible=>true
);
wwv_flow_imp_shared.create_task_def_action(
 p_id=>wwv_flow_imp.id(2551192186281505)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_name=>'On Approve'
,p_execution_sequence=>10
,p_outcome=>'APPROVED'
,p_on_event=>'COMPLETE'
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>'update BANK_CUSTOMERS set ACCOUNT_STATUS = ''Approved'' WHERE ID = :APEX$TASK_PK;'
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_success_message=>'Bank Account has been Approved'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_shared.create_task_def_action(
 p_id=>wwv_flow_imp.id(2558336682648571)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_name=>'On Reject'
,p_execution_sequence=>20
,p_outcome=>'REJECTED'
,p_on_event=>'COMPLETE'
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>'update BANK_CUSTOMERS set ACCOUNT_STATUS = ''Rejected'' WHERE ID = :APEX$TASK_PK;'
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_success_message=>'Application has been Rejected'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(2549825150251485)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'Appsadmin,BANKER,BANKCUSTOMER,MADHU'
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(2550102266251487)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_participant_type=>'BUSINESS_ADMIN'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>'Appsadmin,BANKER,BANKCUSTOMER,MADHU'
);
wwv_flow_imp_shared.create_task_def_participant(
 p_id=>wwv_flow_imp.id(4213296910481465)
,p_task_def_id=>wwv_flow_imp.id(2495354177213523)
,p_participant_type=>'POTENTIAL_OWNER'
,p_identity_type=>'USER'
,p_value_type=>'STATIC'
,p_value=>':APEX$TASK_INITIATOR'
);
wwv_flow_imp.component_end;
end;
/
