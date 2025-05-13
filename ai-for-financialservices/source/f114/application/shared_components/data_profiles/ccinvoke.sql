prompt --application/shared_components/data_profiles/ccinvoke
begin
--   Manifest
--     DATA PROFILE: CCInvoke
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
 p_id=>wwv_flow_imp.id(3241645831493323)
,p_name=>'CCInvoke'
,p_format=>'JSON'
,p_row_selector=>'items'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3241877446493336)
,p_data_profile_id=>wwv_flow_imp.id(3241645831493323)
,p_name=>'COLUMN_1_ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3242167258493338)
,p_data_profile_id=>wwv_flow_imp.id(3241645831493323)
,p_name=>'COLUMN_2_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>2000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(3242447144493338)
,p_data_profile_id=>wwv_flow_imp.id(3241645831493323)
,p_name=>'COLUMN_3_HIREDATE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SS'
,p_has_time_zone=>false
,p_selector=>'hire-date'
);
wwv_flow_imp.component_end;
end;
/
