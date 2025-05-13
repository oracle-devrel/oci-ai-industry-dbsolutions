prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'test_page'
,p_alias=>'TEST-PAGE'
,p_step_title=>'test_page'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
,p_css_file_urls=>' '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #171E23; ',
'}  ',
'.t-Region-header {',
'    align-items: center;',
'    background-color: #1C2A35;',
'    border-block-end-color: var(--ut-region-header-border-color, var(--ut-region-border-color, rgba(0, 0, 0, .075)));',
'    border-block-end-style: solid;',
'    border-block-end-width: var(--ut-region-header-border-width, var(--ut-region-border-width, 1px));',
'    border-top-left-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    border-top-right-radius: var(--ut-region-border-radius, var(--ut-component-border-radius));',
'    color: var(--ut-region-header-text-color, var(--ut-region-text-color, var(--ut-component-text-default-color)));',
'    display: flex',
';',
'    font-size: var(--ut-region-header-font-size, 1rem);',
'    font-weight: var(--a-base-font-weight-semibold, 500);',
'    line-height: var(--ut-region-header-line-height, 1.5rem);',
'}',
'.t-Region-bodyWrap {',
'	background-color: #171E23; ',
'}',
'.t-Header-branding {',
'    align-items: center;',
'    background-color: #1C2A35;',
'    border-bottom: var(--ut-header-border-width, 1px) solid var(--ut-header-border-color);',
'    box-shadow: var(--ut-header-box-shadow);',
'    color: var(--ut-header-text-color);',
'    display: grid;',
'    gap: var(--ut-header-item-spacing, .5rem);',
'    grid-template-areas: "controls logo navbar";',
'    grid-template-columns: auto auto 1fr;',
'    min-height: var(--ut-header-height);',
'    padding-block-end: calc(var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem)) - var(--ut-header-border-width, 1px));',
'    padding-block-start: var(--ut-header-padding-y, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-end: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    padding-inline-start: var(--ut-header-padding-x, var(--ut-header-item-spacing, .5rem));',
'    position: relative;',
'}',
'.t-Body-nav {',
'    background-color: #1C2A35;',
'    box-shadow: inset calc(var(--ut-body-nav-border-width, 1px)*-1) 0 0 var(--ut-body-nav-border-color,var(--ut-component-border-color));',
'    color: var(--ut-body-nav-text-color);',
'    grid-area: nav;',
'    height: calc(100vh - var(--js-sticky-top, 0rem));',
'    min-height: unset;',
'    overflow: auto;',
'    overflow-x: hidden;',
'    position: sticky;',
'    top: var(--js-sticky-top,0);',
'    width: var(--ut-nav-initial-width,0);',
'    z-index: 500;',
'    -webkit-overflow-scrolling: touch;',
'    -ms-overflow-style: -ms-autohiding-scrollbar',
'}',
'.t-Footer {',
'  display: none',
'}',
'/* ------------ Color Icons ---------------------- */',
'.home:before {',
'content : url(#APP_FILES#icons/home24.png);',
'}  ',
'.bankcustomer:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.openbankacc:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apply:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apphistory:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.onlineshop:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.transactions:before{',
'content : url(#APP_FILES#icons/transactions24.png);',
'} ',
'.bankstmt:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.emi:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.bankers:before{',
'content : url(#APP_FILES#icons/bankers24.png);',
'} ',
'.atm:before{',
'content : url(#APP_FILES#icons/ATM24.png);',
'} ',
'.atmcash:before{',
'content : url(#APP_FILES#icons/cashwithdrawal24.png);',
'} ',
'.atmcheque:before{',
'content : url(#APP_FILES#icons/checkdeposit24.png);',
'} ',
'.arch:before{',
'content : url(#APP_FILES#icons/architecturepresentation.png);',
'} ',
'.admin:before{',
'content : url(#APP_FILES#icons/administration.png);',
'} ',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch24.png);',
'} ',
'.anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection24.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection24.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering24.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules24.png);',
'} ',
'.mytasks:before{',
'content : url(#APP_FILES#icons/mytasks24.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis24.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflow24.png);',
'}  ',
'.administration:before{',
'content : url(#APP_FILES#icons/administration24.png);',
'}',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'}',
'.customersearch:before{',
'content : url(#APP_FILES#icons/customersearch24.png);',
'} ',
'.transactionsearch:before{',
'content : url(#APP_FILES#icons/transactionsearch24.png);',
'} ',
'/* ------------ Color Icons ---------------------- */',
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'.u-Processing {',
'',
'display:none !important;',
'',
'}',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'27'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7401571393343569)
,p_plug_name=>'OLD'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(377614699464881)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'<audio id="soundHandle" style="display: none;"></audio>'))
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(378754530464892)
,p_plug_name=>'New2'
,p_parent_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  begin',
'  ',
'-- htp.p ('' <script>''); ',
'-- htp.p ('' soundHandle = document.getElementById("soundHandle");'' );',
'-- htp.p ('' soundHandle.src = "#APP_FILES#audio/contactsupport.mp3";'' );',
'-- htp.p ('' soundHandle.play();'' );',
'-- htp.p (''</script>''); ',
'',
'apex_javascript.add_inline_code (',
'    p_code => ''function initMySuperWidget(){''||chr(10)||',
'              ''  alert ("hi") ''||chr(10)||',
'              ''};'',',
'    p_key  => ''my_super_widget_function'' );',
'',
' end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1601174154963067)
,p_plug_name=>'New222'
,p_parent_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'',
'    htp.p(''<script type="text/javascript">'');  ',
'    htp.p('' alert(''''This value is in use'''');   ''); ',
'    htp.p(''</script>'');',
'',
' ',
'',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1804420423505951)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>'<audio id="soundHandle" style="display: none;"></audio>'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(14171656116427528)
,p_name=>'Pending Accounts'
,p_parent_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_template=>wwv_flow_imp.id(62183755337085053)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select * from BANK_CUSTOMERS where account_type = ''Savings Bank'''
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"ID","expr":"ID"}],"itemName":"P34_ORDER_BY"}'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62221958113085074)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2880226494128251)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2880687875128255)
,p_query_column_id=>2
,p_column_alias=>'GENDER'
,p_column_display_sequence=>2
,p_column_heading=>'Gender'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2881047449128257)
,p_query_column_id=>3
,p_column_alias=>'CUST_YEAR_OF_BIRTH'
,p_column_display_sequence=>3
,p_column_heading=>'Cust Year Of Birth'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2881416859128259)
,p_query_column_id=>4
,p_column_alias=>'MARITAL_STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Marital Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2881839485128260)
,p_query_column_id=>5
,p_column_alias=>'STREET_ADDRESS'
,p_column_display_sequence=>5
,p_column_heading=>'Street Address'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2882241401128261)
,p_query_column_id=>6
,p_column_alias=>'CUST_POSTAL_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'Cust Postal Code'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2882598403128263)
,p_query_column_id=>7
,p_column_alias=>'CITY'
,p_column_display_sequence=>7
,p_column_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2883088369128264)
,p_query_column_id=>8
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>8
,p_column_heading=>'State Province'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2883437752128265)
,p_query_column_id=>10
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>10
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2883862239128267)
,p_query_column_id=>11
,p_column_alias=>'CUST_INCOME_LEVEL'
,p_column_display_sequence=>11
,p_column_heading=>'Cust Income Level'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2884265252128268)
,p_query_column_id=>12
,p_column_alias=>'CREDIT_LIMIT'
,p_column_display_sequence=>12
,p_column_heading=>'Credit Limit'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2884668555128269)
,p_query_column_id=>14
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>14
,p_column_heading=>'Customer Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2885052124128271)
,p_query_column_id=>17
,p_column_alias=>'DOB'
,p_column_display_sequence=>17
,p_column_heading=>'Dob'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2885483963128272)
,p_query_column_id=>19
,p_column_alias=>'ACCOUNT_NUMBER'
,p_column_display_sequence=>19
,p_column_heading=>'Account Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2885881340128273)
,p_query_column_id=>20
,p_column_alias=>'ACCOUNT_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Account Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2886267200128274)
,p_query_column_id=>21
,p_column_alias=>'REFERENCE_RELATION'
,p_column_display_sequence=>21
,p_column_heading=>'Reference Relation'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2886604996128276)
,p_query_column_id=>22
,p_column_alias=>'REFERENCE_NAME'
,p_column_display_sequence=>22
,p_column_heading=>'Reference Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2887061577128277)
,p_query_column_id=>23
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>23
,p_column_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2887439440128278)
,p_query_column_id=>24
,p_column_alias=>'CITIZENSHIP'
,p_column_display_sequence=>24
,p_column_heading=>'Citizenship'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2887857422128280)
,p_query_column_id=>25
,p_column_alias=>'OCCUPATION_TYPE'
,p_column_display_sequence=>25
,p_column_heading=>'Occupation Type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2888201464128281)
,p_query_column_id=>26
,p_column_alias=>'INCOME_SOURCE'
,p_column_display_sequence=>26
,p_column_heading=>'Income Source'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2888671614128282)
,p_query_column_id=>28
,p_column_alias=>'EDUCATIONAL_QUALIFICATION'
,p_column_display_sequence=>28
,p_column_heading=>'Educational Qualification'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2889063208128283)
,p_query_column_id=>29
,p_column_alias=>'CURRENT_BALANCE'
,p_column_display_sequence=>29
,p_column_heading=>'Current Balance'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2889402591128285)
,p_query_column_id=>30
,p_column_alias=>'ACCOUNT_STATUS'
,p_column_display_sequence=>30
,p_column_heading=>'Account Status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2889822457128286)
,p_query_column_id=>31
,p_column_alias=>'BANK_NAME'
,p_column_display_sequence=>31
,p_column_heading=>'Bank Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105158856827865354)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'RETAIL_SHOPPING_FD'
,p_include_rowid_column=>false
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$TIMELINE'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--circle',
  'AVATAR_TYPE', 'icon',
  'BADGE_LABEL_DISPLAY', 'N',
  'DATE', 'TX_TIMESTAMP',
  'DESCRIPTION', 'TRANS_STATUS',
  'DISPLAY_AVATAR', 'N',
  'DISPLAY_BADGE', 'N',
  'TITLE', 'CATEGORY',
  'USER_NAME', 'CUSTOMER_FULLNAME')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159015766865355)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>10
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159125757865356)
,p_name=>'INV_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159199927865357)
,p_name=>'GENDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GENDER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>30
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159319940865358)
,p_name=>'AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>40
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159348988865359)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>50
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159508507865360)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>60
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159616049865361)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159734891865362)
,p_name=>'TOTAL_PAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PAY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>80
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159791512865363)
,p_name=>'METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159897384865364)
,p_name=>'INV_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_DATE'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105159979615865365)
,p_name=>'MALL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MALL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>110
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160128270865366)
,p_name=>'CUST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>120
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160142141865367)
,p_name=>'CUST_FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>130
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160328241865368)
,p_name=>'CUST_LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>140
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160368612865369)
,p_name=>'CREDIT_CARD_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREDIT_CARD_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>150
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160475673865370)
,p_name=>'TRANS_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANS_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>160
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160591147865371)
,p_name=>'CUST_CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_CITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>170
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160654822865372)
,p_name=>'CUST_STATE_PROVINCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUST_STATE_PROVINCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>180
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160798233865373)
,p_name=>'TRANSACTION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRANSACTION_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>190
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105160848107865374)
,p_name=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>200
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161009296865375)
,p_name=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>210
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161044046865376)
,p_name=>'TX_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TX_TIMESTAMP'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>220
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161219601865377)
,p_name=>'MERCHANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>230
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161243729865378)
,p_name=>'MERCHANT_CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_CITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>240
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161398736865379)
,p_name=>'MERCHANT_REGION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_REGION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>250
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161529760865380)
,p_name=>'MERCHANT_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>260
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161602233865381)
,p_name=>'MERCHANT_PLACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_PLACE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>270
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161668130865382)
,p_name=>'LONGITUDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LONGITUDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>280
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161781202865383)
,p_name=>'LATITUDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LATITUDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>290
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105161937702865384)
,p_name=>'MERCHANT_PLACE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_PLACE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>300
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105162017291865385)
,p_name=>'CUSTOMER_FULLNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_FULLNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>310
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105162065608865386)
,p_name=>'MERCHANT_FULLNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MERCHANT_FULLNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>320
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105162180785865387)
,p_name=>'INV_TIMESTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_TIMESTAMP'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>330
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105162329446865388)
,p_name=>'CC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>340
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105162380521865389)
,p_name=>'TIME_DIFFERENCE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIME_DIFFERENCE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>350
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(105162513652865390)
,p_name=>'TX_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TX_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_display_sequence=>360
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7674408854758680)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>'select prompt, voice, airesponse, audiourl from aichat where audiourl is not null'
,p_template_component_type=>'REPORT'
,p_lazy_loading=>false
,p_plug_source_type=>'TMPL_THEME_42$COMMENTS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_landmark_type=>'region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'APPLY_THEME_COLORS', 'Y',
  'ATTRIBUTES', wwv_flow_string.join(wwv_flow_t_varchar2(
    '&AIRESPONSE. <br/>  ',
    '<audio controls preload>  <source src="&AUDIOURL." type="audio/mpeg"> </audio>')),
  'AVATAR_ICON', 'fa-user',
  'AVATAR_SHAPE', 't-Avatar--rounded',
  'AVATAR_TYPE', 'icon',
  'COMMENT_TEXT', 'PROMPT',
  'DISPLAY_AVATAR', 'Y',
  'STYLE', 't-Comments--chat',
  'USER_NAME', 'VOICE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7880650797408252)
,p_name=>'PROMPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROMPT'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>20
,p_is_group=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7881190834408257)
,p_name=>'AIRESPONSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AIRESPONSE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>70
,p_is_group=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7881343324408259)
,p_name=>'VOICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VOICE'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>90
,p_is_group=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7881549922408261)
,p_name=>'AUDIOURL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIOURL'
,p_data_type=>'VARCHAR2'
,p_display_sequence=>100
,p_is_group=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14336140450257952)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--showBadge:t-LinksList--showArrow:t-LinksList--nowrap:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(501822730801075)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(62238395328085087)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_landmark_type=>'region'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59439735503366443)
,p_plug_name=>'DeveloperBoard'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 3 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Graphs'' title,',
''''' data,',
'''customersearch'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 42 ) as link',
'from dual',
'union all',
'Select 1 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''JSON Relational Duality Views'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(1, 100))) AS data,',
'''fa-users fa-fw fa-3x'' as icon_class,',
'''green'' as class1,',
'''green'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'union all',
'Select 2 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''New Applications'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(100, 200))) data,',
'''fa fa-newspaper-o fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual  ',
'union all',
'Select 4 as sort_order,',
'''#'' as LINK1,',
'''Services Offline'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(2, 10))) data,',
'''fa fa-server fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'''#'' as link',
'from dual',
'union all',
'Select 5 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''Review Tasks'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(10, 30))) data,',
'''fa fa-tasks fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'union all',
'Select 6 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Total Transactions'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(10000, 15000))) data,',
'''fa fa-usd fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 42 ) as link',
'from dual',
'union all',
'Select 7 as sort_order,',
'''#'' as LINK1,',
'''App Downloads'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(20000, 30000))) data,',
'''fa fa-download fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'''#'' as link',
'from dual',
'union all',
'Select 8 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''Support Request'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(50, 100))) data,',
'''fa fa-phone fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 )  as link',
'from dual'))
,p_plug_source_type=>'PLUGIN_COOL.DASHBOARD_V_2.0'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '{ "cardWidth": 1, "refresh": 0 ,"releaveHideIcon":"fa-long-arrow-down"}	')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(377713285464882)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(377614699464881)
,p_button_name=>'Sound'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Sound'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1804014885505947)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_button_name=>'SayHello'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Say hello'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7401645562343570)
,p_button_sequence=>40
,p_button_name=>'SendNotification'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Send Notification'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7402079219343574)
,p_button_sequence=>50
,p_button_name=>'InvokePLSQL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Invokeplsql'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3738424431083992)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_button_name=>'Test_Inv'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Test Inv'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3737773598083985)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_button_name=>'Invoke_Task'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Invoke Task'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2481932429537183)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_button_name=>'CALL_WF'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Call Wf'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1604058269963096)
,p_name=>'P34_CUSTOMER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_item_default=>'Jane'
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2481770237537181)
,p_name=>'P34_ACCOUNT_NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_item_default=>'55055'
,p_prompt=>'Account Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2481880008537182)
,p_name=>'P34_INCOME_LEVEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_item_default=>'500000'
,p_prompt=>'Income Level'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2482597516537190)
,p_name=>'P34_CUST_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_item_default=>'22252'
,p_prompt=>'Cust Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2483211661537196)
,p_name=>'P34_WF_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7401571393343569)
,p_prompt=>'Wf Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2731681875867094)
,p_name=>'P34_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14171656116427528)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'ID'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:ID;ID'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(377880203464883)
,p_name=>'showHi'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(377713285464882)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(377891680464884)
,p_event_id=>wwv_flow_imp.id(377880203464883)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'    htp.p(''<script type="text/javascript">'');  ',
'    htp.p('' alert(''''This value is in use'''');   ''); ',
'    htp.p(''</script>'');  ',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1804182246505948)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1804014885505947)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1804254000505949)
,p_event_id=>wwv_flow_imp.id(1804182246505948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'ctx DBMS_MLE.context_handle_t;',
'',
'user_code clob := q''~',
'    console.log(''Hello Chip!'');',
'    soundHandle = document.getElementById("soundHandle");',
'    soundHandle.src = "#APP_FILES#audio/chequedeposited.mp3";',
'    soundHandle.play();',
'~'';',
'',
'BEGIN',
'    ctx := DBMS_MLE.create_context();',
'    DBMS_MLE.eval(ctx, ''JAVASCRIPT'', user_code);',
'    DBMS_MLE.drop_context(ctx);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1804565646505952)
,p_event_id=>wwv_flow_imp.id(1804182246505948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'',
'soundHandle = document.getElementById("soundHandle");',
'soundHandle.src = "#APP_FILES#audio/chequedeposited.mp3";',
'soundHandle.play();'))
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7401771558343571)
,p_name=>'pn'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7401645562343570)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7401838286343572)
,p_event_id=>wwv_flow_imp.id(7401771558343571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_pwa.send_push_notification (',
'        p_application_id => 114,',
'        p_user_name      => ''BANKER'',',
'        p_title          => ''Temporarily Card Blocked'',',
'        p_body           => ''Your card has been blocked due to multiple wrong PIN enties'' );',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7401911663343573)
,p_event_id=>wwv_flow_imp.id(7401771558343571)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Message sent'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7402102909343575)
,p_name=>'pl'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7402079219343574)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7402202149343576)
,p_event_id=>wwv_flow_imp.id(7402102909343575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''Hi'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3738069068083988)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CREATE_TASK'
,p_process_name=>'Invoke_Task'
,p_attribute_01=>wwv_flow_imp.id(2495354177213523)
,p_attribute_04=>'P34_CUST_ID'
,p_attribute_05=>'P34_CUST_ID'
,p_attribute_06=>'P34_CUST_ID'
,p_process_error_message=>'Task Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3737773598083985)
,p_process_success_message=>'Task Initiated'
,p_internal_uid=>12730177510148442
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(3738833540083996)
,p_page_id=>34
,p_task_def_param_id=>wwv_flow_imp.id(2550937177251492)
,p_page_process_id=>wwv_flow_imp.id(3738069068083988)
,p_value_type=>'ITEM'
,p_value=>'P34_ACCOUNT_NUMBER'
);
wwv_flow_imp_shared.create_task_def_comp_param(
 p_id=>wwv_flow_imp.id(4293374406722647)
,p_page_id=>34
,p_task_def_param_id=>wwv_flow_imp.id(2560480341757734)
,p_page_process_id=>wwv_flow_imp.id(3738069068083988)
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1603990565963095)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SayHello'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'    htp.p(''<script type="text/javascript">'');  ',
'    htp.p('' alert(''''This value is in use'''');   ''); ',
'    htp.p(''</script>''); ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1804014885505947)
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>10596099008027549
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2482291132537186)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'InvWF'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(2338152491237078)
,p_attribute_03=>'P34_CUST_ID'
,p_attribute_04=>'P34_WF_ID'
,p_process_error_message=>'Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2481932429537183)
,p_process_success_message=>'Success'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>11474399574601640
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2727556509867053)
,p_page_process_id=>wwv_flow_imp.id(2482291132537186)
,p_workflow_variable_id=>wwv_flow_imp.id(2339262650237089)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_ACCOUNT_NUMBER'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2727643687867054)
,p_page_process_id=>wwv_flow_imp.id(2482291132537186)
,p_workflow_variable_id=>wwv_flow_imp.id(2339346506237090)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_NAME'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2727706301867055)
,p_page_process_id=>wwv_flow_imp.id(2482291132537186)
,p_workflow_variable_id=>wwv_flow_imp.id(2480416201537168)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_INCOME_LEVEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2728841520867066)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WORKFLOW'
,p_process_name=>'BankWF'
,p_attribute_01=>'START'
,p_attribute_02=>wwv_flow_imp.id(2727800675867056)
,p_attribute_03=>'P34_CUST_ID'
,p_attribute_04=>'P34_WF_ID'
,p_process_error_message=>'Fail'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Success'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>11720949962931520
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2728964557867067)
,p_page_process_id=>wwv_flow_imp.id(2728841520867066)
,p_workflow_variable_id=>wwv_flow_imp.id(2728535725867063)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_CUSTOMER_NAME'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2729645277867074)
,p_page_process_id=>wwv_flow_imp.id(2728841520867066)
,p_workflow_variable_id=>wwv_flow_imp.id(2729418785867072)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_ACCOUNT_NUMBER'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2729771864867075)
,p_page_process_id=>wwv_flow_imp.id(2728841520867066)
,p_workflow_variable_id=>wwv_flow_imp.id(2729319389867071)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_CUST_ID'
);
wwv_flow_imp_shared.create_workflow_comp_param(
 p_id=>wwv_flow_imp.id(2729803877867076)
,p_page_process_id=>wwv_flow_imp.id(2728841520867066)
,p_workflow_variable_id=>wwv_flow_imp.id(2729532784867073)
,p_page_id=>34
,p_value_type=>'ITEM'
,p_value=>'P34_INCOME_LEVEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3738374390083991)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Test_Inv'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' ',
'l_bank_customer BANK_CUSTOMERS.CUSTOMER_NAME%TYPE := ''A Ann'';',
'l_account_number BANK_CUSTOMERS.ACCOUNT_NUMBER%TYPE := round(DBMS_Random.Value(1,990000),0);  ',
'o_cust_id BANK_CUSTOMERS.ID%TYPE := ''218'';',
'',
'l_task_id number;',
'l_workflow_id number;',
'l_user varchar2(100) := v(''APP_USER'');',
'',
'begin',
'     ',
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
'    --Htp.p (''Task id is ''||l_task_id); ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Task Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3738424431083992)
,p_process_success_message=>'Task Success'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>12730482832148445
);
wwv_flow_imp.component_end;
end;
/
