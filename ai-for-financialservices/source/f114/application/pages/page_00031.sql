prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_name=>'Anomaly Detection in Transactions'
,p_alias=>'ANOMALY-DETECTION-IN-TRANSACTIONS'
,p_step_title=>'Anomaly Detection in Transactions'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'setInterval("jQuery(''#static_1'').trigger(''apexrefresh'');", 4000); ',
'*/'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'.t-Footer {',
'  display: none',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23665787001864140)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_response VARCHAR2(32000); ',
'begin ',
'   l_response := getData(31);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103996392390502300)
,p_plug_name=>'left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>30
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14339682283257987)
,p_plug_name=>'Technologies / More Information OLD'
,p_parent_plug_id=>wwv_flow_imp.id(103996392390502300)
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
'    <iframe width="560" height="315" src="https://www.youtube.com/embed/yZLq5UoFMtU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" ',
'    allowfullscreen></iframe>',
'    </td>',
'</tr>',
'<tr>',
'    <td>',
'    <a href=''https://madhusudhanrao-ppm.github.io/developer/ai-for-financialservices/workshops/tenancy/index.html?lab=ai-fs-suspected-transactions'' target=''_new''>Anomaly Detection Workshop</a>',
'    </td> ',
'</tr>',
'</table>'))
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148738393011589705)
,p_plug_name=>'Anomaly Detection'
,p_title=>'Anomaly Detection'
,p_region_name=>'static_1'
,p_parent_plug_id=>wwv_flow_imp.id(103996392390502300)
,p_icon_css_classes=>'anmdetect'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,',
'       ''$ ''||TOTAL_PAY as TOTAL_PAY,',
'       IS_ANOMALY,',
'       INV_NO,',
'       CATEGORY,',
'       CUST_ID,',
'       CREDIT_CARD_NO, ',
'       MERCHANT_ID,',
'       MERCHANT_CITY,',
'       MERCHANT_REGION,',
'       MERCHANT_STATE,',
'       MERCHANT_PLACE, ',
'       MERCHANT_PLACE_ID,',
'       CUSTOMER_FULLNAME,',
'       MERCHANT_FULLNAME,',
'       MALL',
'  from FD_TX_HISTORIC_DATA   order by IS_ANOMALY '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transaction Anomalies'
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
 p_id=>wwv_flow_imp.id(93659487702726869)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMOUSER'
,p_internal_uid=>55358849979941019
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(105215553147711764)
,p_db_column_name=>'TOTAL_PAY'
,p_display_order=>10
,p_column_identifier=>'W'
,p_column_label=>'Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93662241484726897)
,p_db_column_name=>'TX_TIMESTAMP'
,p_display_order=>20
,p_column_identifier=>'V'
,p_column_label=>'Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93659758788726872)
,p_db_column_name=>'IS_ANOMALY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Is Anomaly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93660432389726878)
,p_db_column_name=>'ID'
,p_display_order=>40
,p_is_primary_key=>'Y'
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93660582479726880)
,p_db_column_name=>'INV_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Inv No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93660696121726881)
,p_db_column_name=>'CATEGORY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93660777911726882)
,p_db_column_name=>'CUST_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cust Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93660854503726883)
,p_db_column_name=>'CREDIT_CARD_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Credit Card No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661147677726886)
,p_db_column_name=>'MERCHANT_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Merchant Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661245857726887)
,p_db_column_name=>'MERCHANT_CITY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Merchant City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661401281726888)
,p_db_column_name=>'MERCHANT_REGION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Merchant Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661487465726889)
,p_db_column_name=>'MERCHANT_STATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Merchant State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661588976726890)
,p_db_column_name=>'MERCHANT_PLACE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Merchant Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661874655726893)
,p_db_column_name=>'MERCHANT_PLACE_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Merchant Place Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93661950569726894)
,p_db_column_name=>'CUSTOMER_FULLNAME'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Customer Fullname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93662100609726895)
,p_db_column_name=>'MERCHANT_FULLNAME'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Merchant Fullname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93662217029726896)
,p_db_column_name=>'MALL'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Mall'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(93701804298570080)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'554012'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IS_ANOMALY:TOTAL_PAY:CATEGORY:CUSTOMER_FULLNAME:MALL:MERCHANT_FULLNAME:MERCHANT_PLACE:MERCHANT_STATE:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(14524343689146029)
,p_report_id=>wwv_flow_imp.id(93701804298570080)
,p_name=>'IsAnomaly'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'IS_ANOMALY'
,p_operator=>'='
,p_expr=>'YES'
,p_condition_sql=>' (case when ("IS_ANOMALY" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''YES''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f07d80'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104618000908702151)
,p_plug_name=>'Map and Charts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93777369125232697)
,p_plug_name=>'Transaction Amount Chart'
,p_parent_plug_id=>wwv_flow_imp.id(104618000908702151)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(93777533636232698)
,p_region_id=>wwv_flow_imp.id(93777369125232697)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(93777567414232699)
,p_chart_id=>wwv_flow_imp.id(93777533636232698)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,',
'       TOTAL_PAY,',
'       IS_ANOMALY,',
'       INV_NO,',
'       CATEGORY,',
'       CUST_ID,',
'       CREDIT_CARD_NO,',
'       TRANS_STATUS,',
'       TRANSACTION_STATUS,',
'       MERCHANT_ID,',
'       MERCHANT_CITY,',
'       MERCHANT_REGION,',
'       MERCHANT_STATE,',
'       MERCHANT_PLACE,',
'       LONGITUDE,',
'       LATITUDE,',
'       MERCHANT_PLACE_ID,',
'       CUSTOMER_FULLNAME,',
'       MERCHANT_FULLNAME,',
'       MALL',
'  from FD_TX_HISTORIC_DATA   order by TX_TIMESTAMP '))
,p_items_value_column_name=>'TOTAL_PAY'
,p_items_label_column_name=>'TX_TIMESTAMP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(93777670790232700)
,p_chart_id=>wwv_flow_imp.id(93777533636232698)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(103991438036502251)
,p_chart_id=>wwv_flow_imp.id(93777533636232698)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(193657693131933637)
,p_plug_name=>'Transaction Locations'
,p_parent_plug_id=>wwv_flow_imp.id(104618000908702151)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(93739322477605620)
,p_region_id=>wwv_flow_imp.id(193657693131933637)
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
 p_id=>wwv_flow_imp.id(93739771850605628)
,p_map_region_id=>wwv_flow_imp.id(93739322477605620)
,p_name=>'Tx Locations'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, t.total_pay, trans_status,  latitude, longitude, customer_fullname, merchant_fullname, merchant_place, merchant_state, merchant_region, ',
'CREDIT_CARD_NO this_credit_card, ',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'FROM FD_TX_HISTORIC_DATA t ',
'--where transaction_status = ''OnHold'' ',
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93659908607726873)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(103996392390502300)
,p_button_name=>'GenerateNewData'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Transaction Data'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103995695116502293)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(103996392390502300)
,p_button_name=>'Clear_Data'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Transaction Data'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1174758864967923)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(23665787001864140)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:31'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93658710913726861)
,p_name=>'P31_ANM_OCID'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93660028684726874)
,p_name=>'DAGenNewData'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93659908607726873)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93660095413726875)
,p_event_id=>wwv_flow_imp.id(93660028684726874)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare   ',
' ',
'begin',
'  ',
'      FD_TX_ANM_INSERTS ( );',
'   ',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93662432206726898)
,p_event_id=>wwv_flow_imp.id(93660028684726874)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Transactions Created!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93660216147726876)
,p_event_id=>wwv_flow_imp.id(93660028684726874)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148738393011589705)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103991575204502252)
,p_event_id=>wwv_flow_imp.id(93660028684726874)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93777369125232697)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93662498431726899)
,p_event_id=>wwv_flow_imp.id(93660028684726874)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(193657693131933637)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103995820857502294)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103995695116502293)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103996274813502299)
,p_event_id=>wwv_flow_imp.id(103995820857502294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Historic Transaction Data Cleared'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103995903635502295)
,p_event_id=>wwv_flow_imp.id(103995820857502294)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'delete from FD_TX_HISTORIC_DATA;',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103996002688502296)
,p_event_id=>wwv_flow_imp.id(103995820857502294)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(148738393011589705)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103996136345502297)
,p_event_id=>wwv_flow_imp.id(103995820857502294)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93777369125232697)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103996212656502298)
,p_event_id=>wwv_flow_imp.id(103995820857502294)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(193657693131933637)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16984459204144373)
,p_name=>'ref'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(23665787001864140)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16984503877144374)
,p_event_id=>wwv_flow_imp.id(16984459204144373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(93658909272726863)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'GC_OCI_DOC_AI_URL          CONSTANT VARCHAR2(500)  := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/detectAnomalyJobs''; ',
'BASE_URL CONSTANT VARCHAR2(500) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101'';',
'compartmentId CONSTANT VARCHAR2(500) := ''ocid1.compartment.oc1..replace-this'';',
'projectId CONSTANT VARCHAR2(500) := ''ocid1.aianomalydetectionproject.oc1.phx.amaaaaaaknuwtjiapvs2awb56mryemubr4qrcfcso55y2ecjpe5cvohzlnlq'';',
'AI_URL CONSTANT VARCHAR2(500) := BASE_URL||''/models?compartmentId=''||compartmentId||''&projectId=''||projectId||''&limit=10&sortOrder=ASC&sortBy=timeCreated'';',
'json_input_str3 varchar2(4000) ;',
' ',
' ',
'',
'request_payload_small_ds   varchar2(32000)   ;',
'',
'l_request_json        VARCHAR2(32000); ',
'l_response_json       CLOB; ',
'  v_id varchar(100);',
'  v_filename varchar(100);',
'  l_obj_name varchar2(500);',
'  l_base_path varchar2(500) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/'';',
'  l_docjob_json_url varchar2(4000) ;',
'  l_json                CLOB;',
'  v_time_diff number := 1; ',
'  v_tx_timestamp FD_TX_HISTORIC_DATA.TX_TIMESTAMP%TYPE;',
'  v_total_pay FD_TX_HISTORIC_DATA.TOTAL_PAY%TYPE;',
'',
'  cursor c1 is ',
'      SELECT  JSON_ARRAYAGG(',
'                 JSON_OBJECT',
'                 (',
'                        ''timestamp'' VALUE TO_CHAR((  TX_TIMESTAMP  ), ''YYYY-MM-DD"T"HH24:MI:SS".000Z"'' ), ',
'                        ''values'' VALUE json_array(TOTAL_PAY)   ',
'                ) ORDER BY TX_TIMESTAMP   )  as TX_DATA  ',
'FROM FD_TX_HISTORIC_DATA  ;',
'',
'cursor c2 is ',
'      SELECT   TX_TIMESTAMP,  TOTAL_PAY ',
'        FROM FD_TX_HISTORIC_DATA order by TX_TIMESTAMP ;',
'  ',
'begin  ',
'   ',
'',
'  delete from FD_TX_HISTORIC_DATA;',
'',
'  FOR Lcntr IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,12000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'   FOR Lcntr2 IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,55000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'    --Htp.p(''<table border=1>'');',
'    For row_2 In C2 Loop',
'       v_tx_timestamp := row_2.TX_TIMESTAMP; ',
'       v_total_pay := row_2.TOTAL_PAY; ',
'      -- Htp.p(''<tr><td>''||v_tx_timestamp||''</td><td>''||v_total_pay||''</td></tr>'');',
'    End Loop;',
'    --Htp.p(''</table>'');',
'',
'    For row_1 In C1 Loop',
'       json_input_str3 := row_1.TX_DATA; ',
'    End Loop;',
'',
'    request_payload_small_ds   := ''',
'                        {',
'                          "compartmentId": "ocid1.compartment.oc1..replace-this",',
'                          "description": "AD",',
'                          "displayName": "AD",',
'                          "modelId": "ocid1.aianomalydetectionmodel.oc1.phx.amaaaaaaknuwtjiaapusfv6pxavfbxm546pan2phqh54j2p64j2ys7inkofq",',
'                          "inputDetails": {',
'                              "inputType": "INLINE",',
'                                "signalNames":["TOTAL_PAY"],',
'                                    "data":   ''||json_input_str3||''',
'                                  },',
'                         "outputDetails": {',
'                               "namespaceName": "replace-this",',
'                            "bucketName": "replace-this",',
'                            "outputType": "OBJECT_STORAGE",',
'                            "prefix": "AA"',
'                            } ',
'                        }',
'                        '';',
'  ',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'        l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => GC_OCI_DOC_AI_URL, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => request_payload_small_ds, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        Htp.p(l_response_json);',
'',
'        apex_json.parse (l_response_json);',
'        v_id := apex_json.get_varchar2 (''id'');',
'        --v_tx_timestamp := apex_json.get_varchar2 (''timeAccepted''); ',
'',
'        l_docjob_json_url   := l_base_path||''AA/''||v_id||''/''||v_id||''-result.json'';',
'',
'       ',
'        --Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
' ',
'         INSERT INTO FD_ANM (ANOMALY_OCID, TX_TIMESTAMP, JSON_URL) VALUES (v_id, current_timestamp, l_docjob_json_url);',
'       -- Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
'',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>55358271549941013
);
wwv_flow_imp.component_end;
end;
/
