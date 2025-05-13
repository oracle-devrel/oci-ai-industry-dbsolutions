prompt --application/shared_components/data_loads/ddl6
begin
--   Manifest
--     DATA LOAD: ddl6
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(88250243746597289)
,p_name=>'ddl6'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(88250623504597309)
,p_data_profile_id=>wwv_flow_imp.id(88250243746597289)
,p_name=>'TEST_TIMESTAMP'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_has_time_zone=>true
,p_selector_type=>'NAME'
,p_selector=>'TEST_TIMESTAMPX'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(88250786534597309)
,p_name=>'ddl6'
,p_static_id=>'ddl6'
,p_target_type=>'TABLE'
,p_table_name=>'TEST_APEX_LOAD_INTO_TIMESTAMP'
,p_data_profile_id=>wwv_flow_imp.id(88250243746597289)
,p_loading_method=>'APPEND'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
