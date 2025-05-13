prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'FraudDetect'
,p_alias=>'FRAUDDETECT'
,p_step_title=>'Fraud Detection and Prevention'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(62722399245879119)
,p_navigation_list_template_id=>wwv_flow_imp.id(62250142950085095)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85774571396039611)
,p_plug_name=>'Fraud Detection and Prevention'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RETAIL_SHOPPING_FD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(88459427795048290)
,p_plug_name=>'Buyer and Sellers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_1, ID, FIRST_NAME, LAST_NAME, PROFILE, JOB_ID  from FINBANK_ACCOUNTS ',
'--WHERE rownum < 9 '))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Buyer and Sellers'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88459800812048294)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'JOB_ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:BUYER;BUYER,SELLER;SELLER,BUY-AND-SELL;BUY-AND-SELL'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88459886031048295)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88459995804048296)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88460181319048298)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88460324830048299)
,p_name=>'ID_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88460426190048300)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88810687466842651)
,p_name=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(88459471567048291)
,p_internal_uid=>50158833844262441
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(88800219378807494)
,p_interactive_grid_id=>wwv_flow_imp.id(88459471567048291)
,p_static_id=>'504996'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(88800386734807495)
,p_report_id=>wwv_flow_imp.id(88800219378807494)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(88802673410807512)
,p_view_id=>wwv_flow_imp.id(88800386734807495)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(88459800812048294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(88803586720807514)
,p_view_id=>wwv_flow_imp.id(88800386734807495)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(88459886031048295)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>107.79700000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(88805708838814450)
,p_view_id=>wwv_flow_imp.id(88800386734807495)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(88460181319048298)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.79700000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(88809047662835309)
,p_view_id=>wwv_flow_imp.id(88800386734807495)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(88460324830048299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(88816658742842935)
,p_view_id=>wwv_flow_imp.id(88800386734807495)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(88460426190048300)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>288.797
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(88817555116842939)
,p_view_id=>wwv_flow_imp.id(88800386734807495)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(88810687466842651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>199.79700000000003
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85790451327039642)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85789521963039639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85790926560039642)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Transaction'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85790101162039641)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(85791228496039642)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85774900878039614)
,p_name=>'P4_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85775241402039624)
,p_name=>'P4_INV_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_default=>'SELECT ''INVCC_''||round(DBMS_RANDOM.value(9999999,101010099)) as r from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Inv No'
,p_source=>'INV_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85776402361039627)
,p_name=>'P4_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct category as v, category as d from RETAIL_SHOPPING order by category'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85777547563039629)
,p_name=>'P4_TOTAL_PAY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_prompt=>'Total Pay'
,p_source=>'TOTAL_PAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85778820873039631)
,p_name=>'P4_MALL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_default=>'Metrocity'
,p_prompt=>'Mall'
,p_source=>'MALL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct mall as v, mall as d from RETAIL_SHOPPING order by mall'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85780406446039632)
,p_name=>'P4_CREDIT_CARD_NO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_prompt=>'Credit Card No'
,p_source=>'CREDIT_CARD_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select cc_no||'' - ''||first_name||'' ''||last_name||'' - ''||bank_name as v, cc_no as d from CC_FD WHERE STATUS = ''Active'''
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85782015649039633)
,p_name=>'P4_TRANSACTION_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_default=>'Initated'
,p_source=>'TRANSACTION_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87800133216847761)
,p_name=>'P4_MERCHANT_PLACE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_default=>'1046'
,p_prompt=>'Merchant Place'
,p_source=>'MERCHANT_PLACE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name_en d, ID v  from unesco_sites ',
'where STATES_NAME_EN = :P4_MERCHANT_STATE',
'order by name_en'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P4_MERCHANT_STATE'
,p_ajax_items_to_submit=>'P4_MERCHANT_PLACE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87800168387847762)
,p_name=>'P4_MERCHANT_REGION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_default=>'Europe and North America'
,p_prompt=>'Merchant Region'
,p_source=>'MERCHANT_REGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct REGION_EN d, REGION_EN v from UNESCO_SITES'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87800383106847764)
,p_name=>'P4_MERCHANT_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_default=>'United States of America'
,p_prompt=>'Merchant State'
,p_source=>'MERCHANT_STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct STATES_NAME_EN d, STATES_NAME_EN v  from unesco_sites ',
'where REGION_EN = :P4_MERCHANT_REGION',
'order by STATES_NAME_EN'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P4_MERCHANT_REGION'
,p_ajax_items_to_submit=>'P4_MERCHANT_STATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87800793559847768)
,p_name=>'P4_MERCHANT_FULLNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_source=>'MERCHANT_FULLNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(87800922804847769)
,p_name=>'P4_CUSTOMER_FULLNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_source=>'CUSTOMER_FULLNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88455977206048256)
,p_name=>'P4_MERCHANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_prompt=>'Merchant Id'
,p_source=>'MERCHANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct FIRST_NAME||'' ''||LAST_NAME as v, ID as d  from FINBANK_ACCOUNTS ',
'--WHERE rownum < 9 order by v'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(88456041983048257)
,p_name=>'P4_CUST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_item_source_plug_id=>wwv_flow_imp.id(85774571396039611)
,p_prompt=>'CUST_ID'
,p_source=>'CUST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct FIRST_NAME||'' ''||LAST_NAME as v, ID as d  from FINBANK_ACCOUNTS ',
'--WHERE rownum < 9 order by v'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88456162938048258)
,p_name=>'sv1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_CUST_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88456458879048261)
,p_event_id=>wwv_flow_imp.id(88456162938048258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_CUSTOMER_FULLNAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (first_name||'' ''||last_name) as v from finbank_accounts  where id = :P4_CUST_ID',
'--select distinct first_name||'' ''||last_name as v, first_name||'' ''||last_name as d from customers_info order by v'))
,p_attribute_07=>'P4_CUST_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88456574416048262)
,p_name=>'sv2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_MERCHANT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88456687189048263)
,p_event_id=>wwv_flow_imp.id(88456574416048262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_MERCHANT_FULLNAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (first_name||'' ''||last_name) as v from finbank_accounts  where id = :P4_MERCHANT_ID',
'--select distinct first_name||'' ''||last_name as v, first_name||'' ''||last_name as d from customers_info order by v'))
,p_attribute_07=>'P4_MERCHANT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85792106140039645)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(85774571396039611)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form FraudDetect'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Transaction Initiated'
,p_internal_uid=>47491468417253795
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(84307311040048771)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HandleTrans'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'vid varchar2(30) := :P4_INV_NO;  ',
'v_total_pay number := :P4_TOTAL_PAY;',
'vcc varchar2(30) := :P4_CREDIT_CARD_NO; ',
'v_place varchar2(200) ;',
'v_lat number ;',
'v_long number ;',
'm_id varchar2(20) := :P4_MERCHANT_PLACE;',
'v_customer_id varchar2(20) := :P4_CUST_ID;',
'v_merchant_id varchar2(20) := :P4_MERCHANT_ID;  ',
'--v_total_pay number := :P4_TOTAL_PAY ;',
'/*',
'',
'v_cust_fullname varchar2(50);',
'v_merchant_fullname varchar2(50);',
'',
'CURSOR C2 IS SELECT * FROM CUSTOMERS_INFO WHERE ID = v_customer_id;',
'CURSOR C3 IS SELECT * FROM CUSTOMERS_INFO WHERE ID = v_merchant_id;',
'*/',
'',
'',
'CURSOR C1 IS select * from unesco_sites where ID = m_id;',
'',
'Begin',
'',
'For row_1 In C1 Loop',
'        v_place := row_1.NAME_EN; ',
'        v_lat := row_1.LATITUDE; ',
'        v_long := row_1.LONGITUDE; ',
'End Loop;',
'/*',
'For row_2 In C2 Loop',
'        v_cust_fullname := row_2.first_name||'' ''||row_2.last_name;  ',
'End Loop;',
'',
'For row_3 In C3 Loop',
'        v_merchant_fullname := row_2.first_name||'' ''||row_2.last_name;  ',
'End Loop;',
' */',
'if v_total_pay < 2000 then',
'	Update RETAIL_SHOPPING_FD set TRANSACTION_STATUS = ''APPROVED'', ',
'        INV_DATE = (systimestamp + interval ''0.001'' second * 1) , TX_TIMESTAMP = current_timestamp,',
'        MERCHANT_PLACE = v_place, LATITUDE = v_lat, LONGITUDE = v_long',
'        where INV_NO = vid;',
'         ',
'elsif v_total_pay >= 2000 AND v_total_pay < 10000 then',
'        Update RETAIL_SHOPPING_FD set TRANSACTION_STATUS = ''OnHold'', TRANS_STATUS = ''UNREAD'', ',
'        INV_DATE = (systimestamp + interval ''0.001'' second * 1),',
'        TX_TIMESTAMP = current_timestamp   ,',
'        MERCHANT_PLACE = v_place, LATITUDE = v_lat, LONGITUDE = v_long',
'        where INV_NO = vid;  ',
'else ',
'        Update RETAIL_SHOPPING_FD set TRANSACTION_STATUS = ''REJECTED'', ',
'        INV_DATE = (systimestamp + interval ''0.001'' second * 1),',
'        TX_TIMESTAMP = current_timestamp   ,',
'        MERCHANT_PLACE = v_place, LATITUDE = v_lat, LONGITUDE = v_long ',
'        where INV_NO = vid;  ',
'        Update CC_FD set STATUS = ''Blocked'' WHERE CC_NO = vcc;',
'end if;',
'',
'-- time to update transaction table ------',
'insert into BANK_TRANSFERS (TXN_ID, SRC_ACCT_ID, DST_ACCT_ID, AMOUNT, DESCRIPTION) ',
'values ( EMP_SEQ.NEXTVAL , v_customer_id, v_merchant_id, v_total_pay, ''FDTX'');',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(85790926560039642)
,p_internal_uid=>46006673317262921
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(88460058168048297)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(88459427795048290)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'PROFILES - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50159420445262447
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85791654980039644)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(85774571396039611)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form FraudDetect'
,p_internal_uid=>47491017257253794
);
wwv_flow_imp.component_end;
end;
/
