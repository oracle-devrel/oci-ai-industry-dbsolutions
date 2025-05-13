prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'Money Mules'
,p_alias=>'5-SELECTION'
,p_step_title=>'Money Mules'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Graph Fix -----------------*/',
'.t-Region-body {',
'  padding-block-end: var(--ut-region-body-padding-y,1rem);',
'  padding-block-start: var(--ut-region-body-padding-y,1rem);',
'  padding-inline-end: var(--ut-region-body-padding-x,1rem);',
'  padding-inline-start: var(--ut-region-body-padding-x,1rem);',
'  position: relative;',
'  background-color: white;',
'}',
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #171E23; ',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'    background-color: #5883A7; ',
'}',
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
'/* .t-Region-bodyWrap {',
'	background-color: #171E23; ',
'} */',
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
'/*------------*/',
' /* ----------- developer style ---------------------- */',
'.home:before {',
'content : url(#APP_FILES#icons/home24.png);',
'}  ',
'',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch24.png);',
'} ',
'',
'.bankers:before{',
'content : url(#APP_FILES#icons/bankers24.png);',
'} ',
' .anmdetect:before{',
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
'}   ',
'.applicationhistory:before{',
'content : url(#APP_FILES#icons/applicationhistory.png);',
'}  ',
'.applyforcard:before{',
'content : url(#APP_FILES#icons/applyforcard.png);',
'}  ',
'.bankaccount:before{',
'content : url(#APP_FILES#icons/bankaccount.png);',
'}  ',
'.bankcustomers:before{',
'content : url(#APP_FILES#icons/bankcustomers.png);',
'}  ',
'.bankstatement:before{',
'content : url(#APP_FILES#icons/bankstatement.png);',
'}  ',
'.cart:before{',
'content : url(#APP_FILES#icons/Cart.png);',
'}  ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/fundtransfer.png);',
'} ',
'.loanemi:before{',
'content : url(#APP_FILES#icons/loanemi.png);',
'} ',
'.shopping:before{',
'content : url(#APP_FILES#icons/shopping.png);',
'} ',
'.updateprofile:before{',
'content : url(#APP_FILES#icons/updateprofile.png);',
'} ',
'.references:before{',
'content : url(#APP_FILES#icons/reference24.png);',
'} ',
'.cashwithdrawal:before{',
'content : url(#APP_FILES#icons/cashwithdrawal.png);',
'} ',
'.atm:before{',
'content : url(#APP_FILES#icons/atm.png);',
'} ',
'.chequedeposit:before{',
'content : url(#APP_FILES#icons/chequedeposit.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/makepayment24.png);',
'} ',
' /* ----------- developer style ---------------------- */',
'',
'',
'.t-Footer {',
'  display: none',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14339545032257986)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <style>',
'.video-container {',
'  position: relative;',
'  padding-bottom: 56.25%; /* 16:9 */',
'  height: 0;',
'}',
'.video-container iframe {',
'  position: absolute;',
'  top: 0;',
'  left: 0;',
'  width: 100%;',
'  height: 100%;',
'}',
'</style>',
'<table>',
'<tr>',
'    <td>',
'    <iframe width="560" height="315" src="https://www.youtube.com/embed/-gMVgWjgMxw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" ',
'    allowfullscreen></iframe>',
'    </td>',
'</tr>',
'<tr>',
'    <td>',
'    <a href=''https://madhusudhanrao-ppm.github.io/developer/ai-for-financialservices/workshops/tenancy/index.html?lab=ai-fs-anti-money-laundering'' target=''_new''>',
'    Anti-Money Laundering and Money Mule Detection</a>',
'    </td> ',
'</tr>',
'</table>'))
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23685449437125218)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_response VARCHAR2(32000); ',
'begin ',
'   l_response := getData(41);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(236722042718232447)
,p_plug_name=>'Transaction Locations'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(104695927880701104)
,p_region_id=>wwv_flow_imp.id(236722042718232447)
,p_height=>640
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'world-map'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:CIRCLE_TOOL:DISTANCE_TOOL'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(104696433191701106)
,p_map_region_id=>wwv_flow_imp.id(104695927880701104)
,p_name=>'Tx Locations'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, t.total_pay, trans_status, comments, latitude, longitude, customer_fullname, merchant_fullname, merchant_place, merchant_state, merchant_region, ',
'CREDIT_CARD_NO this_credit_card, ',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'FROM RETAIL_SHOPPING_FD t ',
'where merchant_state != ''United States of America'' AND TX_TYPE = ''ML''',
'order by id  desc'))
,p_has_spatial_index=>false
,p_pk_column=>'ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Merchant Name: &MERCHANT_PLACE. <br/>',
'Customer Name: &CUSTOMER_FULLNAME. <br/> ',
'Mall: &THIS_MALL. <br/>',
'State: &MERCHANT_STATE. <br/>',
'Region: &MERCHANT_REGION. <br/>',
'Total Pay: &TOTAL_PAY. <br/>',
'Invoice No: &INV_NO. <br/>'))
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(236725089019235314)
,p_plug_name=>'Detecting money mules and mule fraud '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select txn_id,  id,',
'(select first_name||'' ''||last_name from finbank_accounts where id=src_acct_id) as Customer_Name,  ',
'(select first_name||'' ''||last_name from finbank_accounts where id=dst_acct_id) as Merchant_Name,',
' ''$'' ||amount as amount,',
' inv_no, LATITUDE, LONGITUDE, MERCHANT_REGION, MERCHANT_STATE, MERCHANT_PLACE, CATEGORY',
'--(select LATITUDE from RETAIL_SHOPPING_FD where inv_no = inv_no ) as  LATITUDE',
'from ',
'(',
'        select bt.txn_id, bt.src_acct_id, bt.dst_acct_id, bt.description, bt.amount, bt.inv_no, rs.id, ',
'        rs.LATITUDE, rs.LONGITUDE, rs.MERCHANT_REGION, rs.MERCHANT_STATE, rs.MERCHANT_PLACE, rs.CATEGORY',
'        from BANK_TRANSFERS bt , RETAIL_SHOPPING_FD rs',
'        where ',
'        bt.DESCRIPTION = ''ML'' AND rs.INV_NO = bt.INV_NO AND rs.merchant_state != ''United States of America''',
')',
'',
'',
'',
'/*',
'select txn_id,  ',
'(select first_name||'' ''||last_name from finbank_accounts where id=src_acct_id) as Customer_Name, ',
'--(select last_name from finbank_accounts where id=src_acct_id) as Customer_Last_Name ,',
'(select first_name||'' ''||last_name from finbank_accounts where id=dst_acct_id) as Merchant_Name,',
' ''$'' ||amount as amount',
'--(select last_name from finbank_accounts where id=dst_acct_id) as Merchant_Last_Name',
'from ',
'(',
'        select txn_id, src_acct_id, dst_acct_id, description, amount   from BANK_TRANSFERS where DESCRIPTION = ''ML''',
')',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14339825466257989)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPSADMIN'
,p_internal_uid=>23331933908322443
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14339920991257990)
,p_db_column_name=>'TXN_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Txn Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14340069231257991)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14340105809257992)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14340233842257993)
,p_db_column_name=>'MERCHANT_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Merchant Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14340359077257994)
,p_db_column_name=>'AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14340463139257995)
,p_db_column_name=>'INV_NO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Inv No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14340579475257996)
,p_db_column_name=>'LATITUDE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15844953020767547)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15844993470767548)
,p_db_column_name=>'MERCHANT_REGION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Merchant Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15845103362767549)
,p_db_column_name=>'MERCHANT_STATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Merchant State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15845274841767550)
,p_db_column_name=>'MERCHANT_PLACE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Merchant Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15845292355767551)
,p_db_column_name=>'CATEGORY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15859361138765791)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'248515'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXN_ID:ID:CUSTOMER_NAME:MERCHANT_NAME:AMOUNT:INV_NO:LATITUDE:LONGITUDE:MERCHANT_REGION:MERCHANT_STATE:MERCHANT_PLACE:CATEGORY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17869326133862990922)
,p_plug_name=>'Selection Target'
,p_title=>'Selection Target'
,p_region_name=>'graph2'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:i-h640:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*  This query retrieves empty data to show an empty graph initially,',
'    that gets overridden by Dynamic actions, when the user makes selection ',
'    in the first graph.*/',
'SELECT',
'    JSON_OBJECT(',
'        ''vertices'' VALUE JSON_ARRAY(),',
'        ''edges'' VALUE JSON_ARRAY(),',
'        ''numResults'' VALUE 0',
'    ) json',
'FROM',
'    SYS.DUAL'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.FirstName} ${properties.LastName}",',
    '        "color": "${interpolate.discrete(''properties.JobId'', ''blue'', ''red'', ''green'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Amount'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "black"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[!!properties.Country]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.Country === ''UK'' ? ''GB'' : properties.Country).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''SWISS BANK'', ''AD_VP'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.JobId) >= 0]": {',
    '        "icon": "fa-user-secret"',
    '    }',
    '}')),
  'attribute_04', 'concentric',
  'attribute_05', 'N',
  'attribute_12', 'return [];',
  'attribute_14', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17869545316457436231)
,p_plug_name=>'Money Mules'
,p_title=>'Money Mules'
,p_region_name=>'graph'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:i-h640:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' WITH query as ( ',
'    select ',
'    SRC_ACCT_ID as source , ',
'    DST_ACCT_ID as target  ',
'    from bank_transfers where DESCRIPTION = ''ML''',
'    AND MERCHANT_STATE != ''United States of America''',
'),',
'page AS (',
'    -- pagination',
'    SELECT',
'        *',
'    FROM',
'        query',
'    ORDER BY',
'        source,',
'        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY',
'        --target OFFSET 1 ROWS FETCH NEXT 100 ROWS ONLY',
'),',
'vertices AS (',
'    -- fetch employee details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            --''id'' VALUE employees.EMPLOYEE_ID,',
'            ''id'' VALUE FINBANK_ACCOUNTS.ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE FINBANK_ACCOUNTS.FIRST_NAME,',
'                ''LastName'' VALUE FINBANK_ACCOUNTS.LAST_NAME, ',
'                ''Department'' VALUE FINBANK_ACCOUNTS.DEPARTMENT_ID,',
'                ''HireDate'' VALUE FINBANK_ACCOUNTS.ACC_DATE,',
'                ''JobId'' VALUE FINBANK_ACCOUNTS.JOB_ID,',
'                ''JobTitle'' VALUE jobs.JOB_TITLE,',
'                ''MERCHANT_STATE'' VALUE bank_transfers.MERCHANT_STATE,',
'                ''Amount'' VALUE bank_transfers.Amount',
'               ',
'            )',
'        ) AS vertex',
'    FROM',
'        ',
'        FINBANK_ACCOUNTS finbank_accounts ',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID  ',
'    WHERE',
'        ',
'        bank_transfers.SRC_ACCT_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or bank_transfers.DST_ACCT_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'',
'),',
'edges AS (',
'   ',
'    SELECT',
'        JSON_OBJECT(''source'' VALUE source, ''target'' VALUE target) AS edge',
'    FROM',
'        page',
')',
'SELECT',
'    -- construct the final JSON that GVT accepts.',
'    JSON_OBJECT(',
'        ''vertices'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(vertex returning clob)',
'            FROM',
'                vertices',
'        ),',
'        ''edges'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(edge returning clob)',
'            FROM',
'                edges',
'        ),',
'        ''numResults'' VALUE (',
'            SELECT',
'                COUNT(*)',
'            FROM',
'                query',
'        ) returning clob',
'    ) json',
'FROM',
'    SYS.DUAL',
'  '))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.MERCHANT_STATE}",',
    '       "color": "${interpolate.discrete(''properties.JobId'', ''blue'', ''red'', ''green'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Amount'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "black"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[!!properties.Country]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.Country === ''UK'' ? ''GB'' : properties.Country).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''SWISS BANK'', ''AD_VP'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.JobId) >= 0]": {',
    '        "icon": "fa-university"',
    '    }',
    '}')),
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(104619791179702169)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1155178822706858)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23685449437125218)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:41'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(113815519231846745)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17869545316457436231)
,p_button_name=>'Refresh_Page'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Page'
,p_button_position=>'EDIT'
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104689662798640267)
,p_name=>'Selection'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17869545316457436231)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_GRAPHVIZ|REGION TYPE|selection'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104690190095640267)
,p_event_id=>wwv_flow_imp.id(104689662798640267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''graph2'').self.data = this.data;'
);
wwv_flow_imp.component_end;
end;
/
