prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
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
 p_id=>90
,p_name=>'View Application'
,p_alias=>'VIEW-APPLICATION'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'View Application'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'400'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19103040599907799)
,p_plug_name=>'Apply for Premium Blank Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P90_APPLICANT_ACCOUNT_NO'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25179286429810101)
,p_plug_name=>'L'
,p_parent_plug_id=>wwv_flow_imp.id(19103040599907799)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19103099987907800)
,p_plug_name=>'Personal Details'
,p_parent_plug_id=>wwv_flow_imp.id(25179286429810101)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19103218207907801)
,p_plug_name=>'Education/Occupation Details'
,p_parent_plug_id=>wwv_flow_imp.id(25179286429810101)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19103285697907802)
,p_plug_name=>'Contact Details'
,p_parent_plug_id=>wwv_flow_imp.id(25179286429810101)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41759327297674447)
,p_name=>'Uploaded Files'
,p_parent_plug_id=>wwv_flow_imp.id(25179286429810101)
,p_template=>wwv_flow_imp.id(62117175029085013)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID","EMAIL","FILE_NAME","FILE_TYPE",sys.dbms_lob.getlength("FILE_CONTENT")"FILE_CONTENT","GENDATE"from "USER_PROFILE_BC"',
'where upper(email) = upper(:P90_EMAIL)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P90_EMAIL'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62221958113085074)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8324393310337509)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8322422158337501)
,p_query_column_id=>2
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8322794803337503)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8323283392337504)
,p_query_column_id=>4
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'File Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8323643798337506)
,p_query_column_id=>5
,p_column_alias=>'FILE_CONTENT'
,p_column_display_sequence=>50
,p_column_heading=>'Image'
,p_column_format=>'IMAGE:USER_PROFILE_BC:FILE_CONTENT:ID::::::::'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8324080273337508)
,p_query_column_id=>6
,p_column_alias=>'GENDATE'
,p_column_display_sequence=>70
,p_column_heading=>'Gendate'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8305274831337401)
,p_button_sequence=>50
,p_button_name=>'Please'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Please update your profile'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P90_CNAME'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-user'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8313577471337455)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19103040599907799)
,p_button_name=>'Submit_Application'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Application'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P90_CNT'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-forms'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8313158778337454)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19103040599907799)
,p_button_name=>'Already_Applied'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'You have already applied'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P90_CNT'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_css_classes=>'fa-warning-bg'
,p_icon_css_classes=>'fa-assistive-listening-systems'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8312748213337452)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19103040599907799)
,p_button_name=>'Update_Basic_Profile'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Profile'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-user'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8327574668337538)
,p_branch_name=>'Go To Page 59'
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_ACCOUNT_NUMBER,P59_CUSTOMER_NAME,P59_CUST_ID:&P90_ACCOUNT_NUMBER.,&P90_CUSTOMER_NAME.,&P90_CUST_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(8327991392337541)
,p_branch_name=>'Go To Page 58'
,p_branch_action=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.::P90_MY_CUST_ID:&P90_CUST_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7882925313408275)
,p_name=>'P90_APPLICANT_ACCOUNT_NO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19113983039907891)
,p_name=>'P90_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19103099987907800)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19114066518907892)
,p_name=>'P90_DOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19103099987907800)
,p_prompt=>'Date of Birth'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19114100535907893)
,p_name=>'P90_GENDER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19103099987907800)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC2:Male;M,Female;F,Other;O'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19116118650907905)
,p_name=>'P90_OCCUPATION_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19103218207907801)
,p_prompt=>'Occupation Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC2:State Govt.;State Govt.,Central Govt.;Central Govt.,Public Sector;Public Sector,Private Sector;Private Sector,Defence;Defence,Own Business;Own Business,Startup;Startup,Housewife;Housewife,Student;Student,Others;Others'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19116179746907906)
,p_name=>'P90_EDUCATIONAL_QUALIFICATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19103218207907801)
,p_prompt=>'Educational Qualiftication'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:Upto 10th;Upto 10th,Graduate;Graduate,Post Graduate;Post Graduate,Doctor;Doctor,Engineer;Engineer,Lawyer;Lawyer,Others;Others'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19116286019907907)
,p_name=>'P90_CUST_INCOME_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19103218207907801)
,p_prompt=>'Income Level'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC(,):A: Below 1000500B: Above 10002000C: 1,000 to 1,00,000100000D: 1,00,000 to 5,00,000500000E: Above 5,00,0001000000'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19117291174907917)
,p_name=>'P90_BANK_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19103218207907801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19117935983907913)
,p_name=>'P90_MARITAL_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19103285697907802)
,p_prompt=>'Martial Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC2:Married;Married,UnMarried;UnMarried,Single;Single,Divorced;Divorced,Widow/Widower;Widow/Widower'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19118534071907919)
,p_name=>'P90_STREET_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19103285697907802)
,p_prompt=>'Street Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19118626820907920)
,p_name=>'P90_POSTAL_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19103285697907802)
,p_prompt=>'Post Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19118672611907921)
,p_name=>'P90_CITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19103285697907802)
,p_prompt=>'City'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19118807407907922)
,p_name=>'P90_STATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19103285697907802)
,p_prompt=>'State'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19118865477907923)
,p_name=>'P90_COUNTRY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19103285697907802)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24146918447142215)
,p_name=>'P90_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19103099987907800)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24707484851745479)
,p_name=>'P90_CNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19103040599907799)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25188884128810185)
,p_name=>'P90_MY_CUST_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19103040599907799)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25191485764810198)
,p_name=>'P90_ACCOUNT_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19103218207907801)
,p_prompt=>'Application Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25191557077810199)
,p_name=>'P90_CUST_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19103218207907801)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25199784009810247)
,p_name=>'P90_CNT'
,p_item_sequence=>20
,p_item_default=>'select count(*) as cnt from BANK_CUSTOMERS where upper(email) = upper(v(''APP_USER''));'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8326143761337529)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialization Profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select ',
'      gender, marital_status, cust_postal_code, ',
'      city, state_province, cust_income_level, ',
'      customer_name, dob, country, OCCUPATION_TYPE,',
'      educational_qualification,  ACCOUNT_NUMBER,',
'      email',
'  into  ',
'       :P90_GENDER, :P90_MARITAL_STATUS, :P90_POSTAL_CODE,',
'       :P90_CITY,   :P90_STATE, :P90_CUST_INCOME_LEVEL,',
'       :P90_CUSTOMER_NAME, :P90_DOB, :P90_COUNTRY,',
'       :P90_EDUCATIONAL_QUALIFICATION,  :P90_OCCUPATION_TYPE, :P90_ACCOUNT_NUMBER,',
'       :P90_EMAIL',
'from bank_customers ',
'--where account_number = 850321;',
'where account_number = :P90_APPLICANT_ACCOUNT_NO;',
' ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17318252203401983
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8325292592337524)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveNewCustomerData_Task'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'l_bank_customer BANK_CUSTOMERS.CUSTOMER_NAME%TYPE := :P90_CUSTOMER_NAME;',
'l_dob BANK_CUSTOMERS.DOB%TYPE := :P90_DOB;',
'l_account_number BANK_CUSTOMERS.ACCOUNT_NUMBER%TYPE := round(DBMS_Random.Value(1,990000),0);  ',
'l_gender BANK_CUSTOMERS.GENDER%TYPE := :P90_GENDER;',
'l_martial_status BANK_CUSTOMERS.MARITAL_STATUS%TYPE := :P90_MARITAL_STATUS;',
'l_relation_ref BANK_CUSTOMERS.REFERENCE_RELATION%TYPE := :P90_REFERENCE_RELATION;',
'l_ref_name BANK_CUSTOMERS.REFERENCE_NAME%TYPE := :P90_REFERENCE_NAME; ',
'l_edu_qualif BANK_CUSTOMERS.EDUCATIONAL_QUALIFICATION%TYPE := :P90_EDUCATIONAL_QUALIFICATION;',
'l_occ_type BANK_CUSTOMERS.OCCUPATION_TYPE%TYPE := :P90_OCCUPATION_TYPE;',
'l_income_level BANK_CUSTOMERS.CUST_INCOME_LEVEL%TYPE := :P90_CUST_INCOME_LEVEL;',
'l_street BANK_CUSTOMERS.STREET_ADDRESS%TYPE := :P90_STREET_ADDRESS;',
'l_city BANK_CUSTOMERS.CITY%TYPE := :P90_CITY;',
'l_state BANK_CUSTOMERS.STATE_PROVINCE%TYPE := :P90_STATE; ',
'l_postcode BANK_CUSTOMERS.CUST_POSTAL_CODE%TYPE := :P90_POSTAL_CODE;',
'l_phone BANK_CUSTOMERS.PHONE_NUMBER%TYPE := :P90_MOBILE_NUMBER;',
'l_country BANK_CUSTOMERS.COUNTRY%TYPE := :P90_COUNTRY; ',
'l_bank BANK_CUSTOMERS.BANK_NAME%TYPE := :P90_BANK_NAME; ',
'o_cust_id BANK_CUSTOMERS.ID%TYPE;',
'',
'l_task_id number;',
'l_workflow_id number;',
'l_user varchar2(100) := v(''APP_USER'');',
'',
'begin',
'    insert into BANK_CUSTOMERS (CUSTOMER_NAME, DOB, ACCOUNT_TYPE, ACCOUNT_NUMBER, GENDER, MARITAL_STATUS, REFERENCE_RELATION, REFERENCE_NAME,',
'    EDUCATIONAL_QUALIFICATION, OCCUPATION_TYPE, CUST_INCOME_LEVEL, STREET_ADDRESS, CITY, STATE_PROVINCE, CUST_POSTAL_CODE, PHONE_NUMBER, COUNTRY,',
'    CURRENT_BALANCE, BANK_NAME ) ',
'    values ',
'    (l_bank_customer, l_dob, ''Savings Bank'', l_account_number, l_gender, l_martial_status, l_relation_ref, l_ref_name, l_edu_qualif, l_occ_type, l_income_level,',
'    l_street, l_city, l_state, l_postcode, l_phone, l_country, 10000, l_bank)',
'    RETURNING ID INTO o_cust_id;  ',
'',
'    commit;',
'',
'    -- Invoke Task Definition Human Task',
'    ',
'    l_task_id := apex_approval.create_task(',
'                 p_application_id => 114,',
'                 p_task_def_static_id => ''NEW_CUSTOMER_ONBOARDING'',',
'                 p_subject => ''New Customer Approval for Customer '' || l_bank_customer || '' Account No: '' || l_account_number,',
'                 p_initiator => l_user,',
'                 p_parameters => apex_approval.t_task_parameters(',
'                     1 => apex_approval.t_task_parameter(static_id => ''P_ACCOUNT_NUMBER'', string_value => l_account_number),',
'                     2 => apex_approval.t_task_parameter(static_id => ''P_CUSTOMER_NAME'', string_value => l_bank_customer)),',
'                 p_detail_pk => o_cust_id); ',
' ',
'    :P90_ACCOUNT_NUMBER := l_account_number;',
'    :P90_CUST_ID := o_cust_id;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8313577471337455)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>17317401034401978
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8325740426337527)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveData_InvokeWorkflow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'l_bank_customer BANK_CUSTOMERS.CUSTOMER_NAME%TYPE := :P90_CUSTOMER_NAME;',
'l_dob BANK_CUSTOMERS.DOB%TYPE := :P90_DOB;',
'l_account_number BANK_CUSTOMERS.ACCOUNT_NUMBER%TYPE := round(DBMS_Random.Value(1,990000),0);  ',
'l_gender BANK_CUSTOMERS.GENDER%TYPE := :P90_GENDER;',
'l_martial_status BANK_CUSTOMERS.MARITAL_STATUS%TYPE := :P90_MARITAL_STATUS;',
'l_relation_ref BANK_CUSTOMERS.REFERENCE_RELATION%TYPE := :P90_REFERENCE_RELATION;',
'l_ref_name BANK_CUSTOMERS.REFERENCE_NAME%TYPE := :P90_REFERENCE_NAME; ',
'l_edu_qualif BANK_CUSTOMERS.EDUCATIONAL_QUALIFICATION%TYPE := :P90_EDUCATIONAL_QUALIFICATION;',
'l_occ_type BANK_CUSTOMERS.OCCUPATION_TYPE%TYPE := :P90_OCCUPATION_TYPE;',
'l_income_level BANK_CUSTOMERS.CUST_INCOME_LEVEL%TYPE := :P90_CUST_INCOME_LEVEL;',
'l_street BANK_CUSTOMERS.STREET_ADDRESS%TYPE := :P90_STREET_ADDRESS;',
'l_city BANK_CUSTOMERS.CITY%TYPE := :P90_CITY;',
'l_state BANK_CUSTOMERS.STATE_PROVINCE%TYPE := :P90_STATE; ',
'l_postcode BANK_CUSTOMERS.CUST_POSTAL_CODE%TYPE := :P90_POSTAL_CODE;',
'l_phone BANK_CUSTOMERS.PHONE_NUMBER%TYPE := :P90_MOBILE_NUMBER;',
'l_country BANK_CUSTOMERS.COUNTRY%TYPE := :P90_COUNTRY; ',
'l_bank BANK_CUSTOMERS.BANK_NAME%TYPE := :P90_BANK_NAME; ',
'l_email BANK_CUSTOMERS.EMAIL%TYPE := :P90_EMAIL; ',
'',
'o_cust_id BANK_CUSTOMERS.ID%TYPE;',
'',
'l_task_id number;',
'l_user varchar2(100) := v(''APP_USER'');',
'l_workflow_id number;',
'',
'begin',
'    insert into BANK_CUSTOMERS (CUSTOMER_NAME, DOB, ACCOUNT_TYPE, ACCOUNT_NUMBER, GENDER, MARITAL_STATUS, REFERENCE_RELATION, REFERENCE_NAME,',
'    EDUCATIONAL_QUALIFICATION, OCCUPATION_TYPE, CUST_INCOME_LEVEL, STREET_ADDRESS, CITY, STATE_PROVINCE, CUST_POSTAL_CODE, PHONE_NUMBER, COUNTRY,',
'    CURRENT_BALANCE, BANK_NAME, EMAIL  ) ',
'    values ',
'    (l_bank_customer, l_dob, ''Savings Bank'', l_account_number, l_gender, l_martial_status, l_relation_ref, l_ref_name, l_edu_qualif, l_occ_type, l_income_level,',
'    l_street, l_city, l_state, l_postcode, l_phone, l_country, 10000, l_bank , l_email)',
'    RETURNING ID INTO o_cust_id;  ',
'',
'    commit;',
' ',
'   --- Invoke Workflow -------------------',
'    ',
'   l_workflow_id := ',
'    apex_workflow.start_workflow ',
'      (p_static_id      => ''MYBANKWF1'',',
'       p_detail_pk      => o_cust_id,',
'       p_initiator      => UPPER(l_user),',
'       p_parameters     => apex_workflow.t_workflow_parameters',
'                            (1 => apex_workflow.t_workflow_parameter(static_id => ''P_ACCOUNT_NUMBER'', string_value => l_account_number),',
'                             2 => apex_workflow.t_workflow_parameter(static_id => ''P_CUSTOMER_ID'', string_value => o_cust_id),',
'                             3 => apex_workflow.t_workflow_parameter(static_id => ''P_CUSTOMER_NAME'', string_value => l_bank_customer),',
'                             4 => apex_workflow.t_workflow_parameter(static_id => ''P_INCOME_LEVEL'', string_value => l_income_level)),',
'       p_debug_level => apex_debug.c_log_level_info);',
'     ',
'',
'     :P90_ACCOUNT_NUMBER := l_account_number;',
'     :P90_CUST_ID := o_cust_id;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(8313577471337455)
,p_internal_uid=>17317848868401981
);
wwv_flow_imp.component_end;
end;
/
