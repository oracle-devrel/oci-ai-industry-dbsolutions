prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7477895910065199
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DEMOUSER'
);
wwv_flow_imp_page.create_page(
 p_id=>81
,p_name=>'Sample Comments'
,p_alias=>'SAMPLE-COMMENTS'
,p_step_title=>'Sample Comments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5284912855900194)
,p_plug_name=>'Sample Comments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 as "ID",',
'       ''Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. '
||'Nunc sed gravida urna. Fusce at ligula sed erat consequat pharetra.'' as "COMMENT_TEXT",',
'       ''Joel'' as "USER_NAME",',
'       ''5 minutes ago'' as "COMMENT_DATE",',
'       ''JK'' as "AVATAR_INITIALS"',
'  from sys.dual',
'union all',
'select 2 as "ID",',
'       ''Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. '
||'Nunc sed gravida urna. Fusce at ligula sed erat consequat pharetra.'' as "COMMENT_TEXT",',
'       ''Joel'' as "USER_NAME",',
'       ''5 minutes ago'' as "COMMENT_DATE",',
'       ''JK'' as "AVATAR_INITIALS"',
'  from sys.dual',
'union all',
'select 3 as "ID",',
'       ''Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. '
||'Nunc sed gravida urna. Fusce at ligula sed erat consequat pharetra.'' as "COMMENT_TEXT",',
'       ''Joel'' as "USER_NAME",',
'       ''5 minutes ago'' as "COMMENT_DATE",',
'       ''JK'' as "AVATAR_INITIALS"',
'  from sys.dual'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P81_ORDER_BY", "orderBys": [{"key":"COMMENT_TEXT","expr":"2 asc"},{"key":"USER_NAME","expr":"3 asc"}]}'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_INITIALS', 'AVATAR_INITIALS',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'initials',
  'COMMENT_DATE', 'COMMENT_DATE',
  'COMMENT_TEXT', 'COMMENT_TEXT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--basic',
  'USER_NAME', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5285408792900212)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5285921462900217)
,p_name=>'COMMENT_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5286399444900219)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5286945765900221)
,p_name=>'COMMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5287460108900223)
,p_name=>'AVATAR_INITIALS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVATAR_INITIALS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5287957546900235)
,p_name=>'P81_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5284912855900194)
,p_item_default=>'COMMENT_TEXT'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Comment Text;COMMENT_TEXT,User Name;USER_NAME'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
