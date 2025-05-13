prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'Customer Details'
,p_alias=>'CUSTOMER-DETAILS'
,p_step_title=>'Customer Details'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  /*----- New Template Bank Customer-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #222326; ',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'    background-color: #1C1D20; ',
'}',
'.t-Region-header {',
'    align-items: center;',
'    background-color: #1C1D20;',
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
'	background-color: #222326; ',
'}',
'.t-Header-branding {',
'    align-items: center;',
'    background-color: #1C1D20;',
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
'    background-color: #161A1D;',
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
' ',
' '))
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
 p_id=>wwv_flow_imp.id(69946692135755887)
,p_plug_name=>'RgTop'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>100
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38947458808371001)
,p_plug_name=>'Order Details (Payment Pending)'
,p_title=>'Order Details (Payment Pending)'
,p_parent_plug_id=>wwv_flow_imp.id(69946692135755887)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PIZZA_ORDER_ID,',
'       SESSID,',
'       PIZZA_NAME,',
'       SHOP_NAME,',
'       SHOP_ADDRESS,',
'       TOPPINGS,',
'       TOPPINGS_COST,',
'       CRUST_TYPE,',
'       CUST_COST,',
'       GIFT_WRAP,',
'       GIFT_WRAP_COST,',
'       QUANTITY,',
'       DELIVERY_MODE,',
'       DISCOUNT_COUPON,',
'       DISCOUNT_AMOUNT,',
'       LINE_TOTAL,',
'       "SIZE"',
'  from PIZZA_ORDER_DETAILS',
' where SESSID = V(''SESSION'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P77_ORDER_STATUS'
,p_plug_display_when_cond2=>'Payment-Pending'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Order Details (Payment Pending)'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1133185576023668)
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
,p_internal_uid=>10125294018088122
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133268707023669)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133387060023670)
,p_db_column_name=>'PIZZA_ORDER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pizza Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133412994023671)
,p_db_column_name=>'SESSID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sessid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133543841023672)
,p_db_column_name=>'PIZZA_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Pizza Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133668413023673)
,p_db_column_name=>'SHOP_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Shop Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133721274023674)
,p_db_column_name=>'SHOP_ADDRESS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Shop Address'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133883576023675)
,p_db_column_name=>'TOPPINGS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Toppings'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133963479023676)
,p_db_column_name=>'TOPPINGS_COST'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Toppings Cost'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133997480023677)
,p_db_column_name=>'CRUST_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Crust Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134105999023678)
,p_db_column_name=>'CUST_COST'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cust Cost'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134262737023679)
,p_db_column_name=>'GIFT_WRAP'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Gift Wrap'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134335837023680)
,p_db_column_name=>'GIFT_WRAP_COST'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Gift Wrap Cost'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134445705023681)
,p_db_column_name=>'QUANTITY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134591434023682)
,p_db_column_name=>'DELIVERY_MODE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Delivery Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134622040023683)
,p_db_column_name=>'DISCOUNT_COUPON'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Discount Coupon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134770477023684)
,p_db_column_name=>'DISCOUNT_AMOUNT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Discount Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134872726023685)
,p_db_column_name=>'LINE_TOTAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Line Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1134976928023686)
,p_db_column_name=>'SIZE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1214831322347893)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102070'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:PIZZA_ORDER_ID:SESSID:PIZZA_NAME:SHOP_NAME:SHOP_ADDRESS:TOPPINGS:TOPPINGS_COST:CRUST_TYPE:CUST_COST:GIFT_WRAP:GIFT_WRAP_COST:QUANTITY:DELIVERY_MODE:DISCOUNT_COUPON:DISCOUNT_AMOUNT:LINE_TOTAL:SIZE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45357212056155263)
,p_plug_name=>'Customer Details  (Payment Pending)'
,p_title=>'Customer Details (Payment Pending)'
,p_parent_plug_id=>wwv_flow_imp.id(69946692135755887)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       SESSID,',
'       CUSTOMER_NAME,',
'       CUSTOMER_ADDRESS,',
'       CUSTOMER_INSTRUCTIONS,',
'       ORDER_TOTAL, ',
'       "MODE",',
'       ORDER_STATUS, DELIVERY_CHARGES ',
'  from PIZZA_ORDER',
'  where SESSID = V(''SESSION'') '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P77_DEL_CHARGES'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P77_ORDER_STATUS'
,p_plug_display_when_cond2=>'Payment-Pending'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Customer Details (Payment Pending)'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1132180291023658)
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
,p_internal_uid=>10124288733088112
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132284994023659)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132365288023660)
,p_db_column_name=>'SESSID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Sessid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132416437023661)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132524341023662)
,p_db_column_name=>'CUSTOMER_ADDRESS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Customer Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132892503023666)
,p_db_column_name=>'ORDER_STATUS'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Order Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132687385023663)
,p_db_column_name=>'CUSTOMER_INSTRUCTIONS'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Customer Instructions'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132730109023664)
,p_db_column_name=>'ORDER_TOTAL'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Order Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1132885965023665)
,p_db_column_name=>'MODE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1133056865023667)
,p_db_column_name=>'DELIVERY_CHARGES'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Delivery Charges'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1191007114343419)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'101832'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_STATUS:ORDER_TOTAL:DELIVERY_CHARGES:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1131919038023656)
,p_plug_name=>'Rg11'
,p_parent_plug_id=>wwv_flow_imp.id(45357212056155263)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(50756999051804724)
,p_name=>'Order Details (Paid)'
,p_title=>'Order Details (Paid)'
,p_parent_plug_id=>wwv_flow_imp.id(69946692135755887)
,p_template=>wwv_flow_imp.id(62117175029085013)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       PIZZA_ORDER_ID,',
'       SESSID,',
'       PIZZA_NAME,',
'       SHOP_NAME,',
'       SHOP_ADDRESS,',
'       TOPPINGS,',
'       TOPPINGS_COST,',
'       CRUST_TYPE,',
'       CUST_COST,',
'       GIFT_WRAP,',
'       GIFT_WRAP_COST,',
'       QUANTITY,',
'       DELIVERY_MODE,',
'       DISCOUNT_COUPON,',
'       DISCOUNT_AMOUNT,',
'       LINE_TOTAL, (select  ''<img src=#APP_FILES#pizzanames/''||image||'' width=250 height=250>'' from pizzashops where id=PIZZASHOPS_ID) as image,',
'       "SIZE"',
'  from PIZZA_ORDER_DETAILS',
' where SESSID = V(''SESSION'')',
'',
' --<img src=''#APP_FILES#pizzanames/&IMAGE.'' width=700px height=700px/>',
' -- ''<img src='' || URL || ''>'' url'))
,p_display_when_condition=>'P77_ORDER_STATUS'
,p_display_when_cond2=>'Paid:Delivered'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(21104860232882872)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(812568202610322)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(812912393610324)
,p_query_column_id=>2
,p_column_alias=>'PIZZA_ORDER_ID'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(813378199610326)
,p_query_column_id=>3
,p_column_alias=>'SESSID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(813695319610328)
,p_query_column_id=>4
,p_column_alias=>'PIZZA_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Pizza Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(814122028610329)
,p_query_column_id=>5
,p_column_alias=>'SHOP_NAME'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(814579006610330)
,p_query_column_id=>6
,p_column_alias=>'SHOP_ADDRESS'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(814969751610332)
,p_query_column_id=>7
,p_column_alias=>'TOPPINGS'
,p_column_display_sequence=>30
,p_column_heading=>'Extras'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(815308716610333)
,p_query_column_id=>8
,p_column_alias=>'TOPPINGS_COST'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(815703484610334)
,p_query_column_id=>9
,p_column_alias=>'CRUST_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(816101052610336)
,p_query_column_id=>10
,p_column_alias=>'CUST_COST'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(816549699610337)
,p_query_column_id=>11
,p_column_alias=>'GIFT_WRAP'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(816920901610339)
,p_query_column_id=>12
,p_column_alias=>'GIFT_WRAP_COST'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(817342076610340)
,p_query_column_id=>13
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>50
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(817785289610341)
,p_query_column_id=>14
,p_column_alias=>'DELIVERY_MODE'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(818189115610343)
,p_query_column_id=>15
,p_column_alias=>'DISCOUNT_COUPON'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(818551579610344)
,p_query_column_id=>16
,p_column_alias=>'DISCOUNT_AMOUNT'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(818915666610345)
,p_query_column_id=>17
,p_column_alias=>'LINE_TOTAL'
,p_column_display_sequence=>70
,p_column_heading=>'Item Total ($)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(819387675610347)
,p_query_column_id=>18
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>80
,p_column_heading=>'Cart Item'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(819720406610348)
,p_query_column_id=>19
,p_column_alias=>'SIZE'
,p_column_display_sequence=>20
,p_column_heading=>'Size'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(63747877908066100)
,p_name=>'Customer Details (Paid)'
,p_title=>'Customer Details (Paid)'
,p_parent_plug_id=>wwv_flow_imp.id(69946692135755887)
,p_template=>wwv_flow_imp.id(62117175029085013)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       SESSID,',
'       CUSTOMER_NAME,',
'       CUSTOMER_ADDRESS,',
'       CUSTOMER_INSTRUCTIONS,',
'       ORDER_TOTAL, ',
'       "MODE",',
'       ORDER_STATUS,DELIVERY_CHARGES ',
'  from PIZZA_ORDER',
'  where SESSID = V(''SESSION'') '))
,p_display_when_condition=>'P77_ORDER_STATUS'
,p_display_when_cond2=>'Paid:Delivered'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(21104860232882872)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
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
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(820531648610351)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(820919043610353)
,p_query_column_id=>2
,p_column_alias=>'SESSID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(821359771610354)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Customer Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(821742539610356)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER_ADDRESS'
,p_column_display_sequence=>40
,p_column_heading=>'Customer Address'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(822168769610357)
,p_query_column_id=>5
,p_column_alias=>'CUSTOMER_INSTRUCTIONS'
,p_column_display_sequence=>50
,p_column_heading=>'Customer Instructions'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(822492646610358)
,p_query_column_id=>6
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>60
,p_column_heading=>'Order Total'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(822895436610360)
,p_query_column_id=>7
,p_column_alias=>'MODE'
,p_column_display_sequence=>70
,p_column_heading=>'Mode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(823381913610361)
,p_query_column_id=>8
,p_column_alias=>'ORDER_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'Order Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(823751816610362)
,p_query_column_id=>9
,p_column_alias=>'DELIVERY_CHARGES'
,p_column_display_sequence=>90
,p_column_heading=>'Delivery Charges'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102332332575801101)
,p_plug_name=>'No items added in your cart'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>110
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P77_ORDER_STATUS'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(795201649610209)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(69946692135755887)
,p_button_name=>'Speed_Delivery'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upgrade to Speed Delivery'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-car'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(810498084610310)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45357212056155263)
,p_button_name=>'Confirm_Payment'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirm & Make Payment'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::P62_AMOUNT,P62_ORDER_ID:&P77_TOTAL_PAY.,&P77_ORDER_ID.'
,p_button_condition=>'P77_ORDER_STATUS'
,p_button_condition2=>'Payment-Pending'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-money-withdrawal'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8470761222056463)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(45357212056155263)
,p_button_name=>'Change_Delivery'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Delivery Mode'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P77_ORDER_STATUS'
,p_button_condition2=>'Payment-Pending'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-bicycle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(810913933610312)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(45357212056155263)
,p_button_name=>'Paid'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Paid'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P77_ORDER_STATUS'
,p_button_condition2=>'Paid'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-success'
,p_icon_css_classes=>'fa-money-withdrawal'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(811292230610313)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45357212056155263)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8::'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(718954852087357)
,p_name=>'P77_ORDER_ID'
,p_item_sequence=>30
,p_source=>'select ID from PIZZA_ORDER where  SESSID = V(''SESSION'')'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(719162339087359)
,p_name=>'P77_AMOUNT'
,p_item_sequence=>70
,p_source=>'select ORDER_TOTAL from PIZZA_ORDER where  SESSID = V(''SESSION'')'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1132024900023657)
,p_name=>'P77_TOTAL_PAY'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   total number;',
'begin',
'   ',
'    total := :P77_AMOUNT + :P77_DEL_CHARGES;',
'   ',
'   return total;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38980490122371228)
,p_name=>'P77_SESSION'
,p_item_sequence=>10
,p_item_default=>'select V(''SESSION'') from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50787257040804924)
,p_name=>'P77_ORDER_STATUS'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_source=>'select ORDER_STATUS from PIZZA_ORDER where  SESSID = V(''SESSION'')'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69978394856756101)
,p_name=>'P77_DEL_MODE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69979507198756112)
,p_name=>'P77_DEL_CHARGES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45357212056155263)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(827428452610419)
,p_name=>'Speed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(795201649610209)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(827931672610423)
,p_event_id=>wwv_flow_imp.id(827428452610419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update PIZZA_ORDER set "MODE" = ''Speed Delivery'', DELIVERY_CHARGES = 10 where SESSID = V(''SESSION'');',
'    commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(828472915610425)
,p_event_id=>wwv_flow_imp.id(827428452610419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(828870376610426)
,p_name=>'UpdCharges'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P77_DEL_CHARGES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(829365830610428)
,p_event_id=>wwv_flow_imp.id(828870376610426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update PIZZA_ORDER set DELIVERY_CHARGES = :P77_DEL_CHARGES where SESSID = V(''SESSION'');'
,p_attribute_02=>'P77_DEL_CHARGES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(829860786610431)
,p_event_id=>wwv_flow_imp.id(828870376610426)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45357212056155263)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(830195215610432)
,p_name=>'UpdDelCharges'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(830693050610434)
,p_event_id=>wwv_flow_imp.id(830195215610432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'--update PIZZA_ORDER set DELIVERY_CHARGES = :P77_DEL_CHARGES, "MODE" = :P77_DEL_MODE where SESSID = V(''SESSION'');'
,p_attribute_02=>'P77_DEL_CHARGES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(831272360610435)
,p_event_id=>wwv_flow_imp.id(830195215610432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45357212056155263)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(827016260610418)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SavePayment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update PIZZA_ORDER set ORDER_STATUS = ''Paid'' where SESSID = V(''SESSION'');',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(810498084610310)
,p_internal_uid=>9819124702674872
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8470602146056462)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Delivery Charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P77_DEL_CHARGES is not null then',
'',
'update PIZZA_ORDER set DELIVERY_CHARGES = :P77_DEL_CHARGES WHERE SESSID = V(''SESSION'');',
'',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17462710588120916
);
wwv_flow_imp.component_end;
end;
/
