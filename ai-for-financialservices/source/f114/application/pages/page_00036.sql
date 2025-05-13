prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>'Money Laundering'
,p_alias=>'MONEY-LAUNDERING'
,p_step_title=>'Money Laundering'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  /* #t_Body_content { ',
'    background: url(#APP_FILES#OCPC-2k.jpg) no-repeat center center fixed;  ',
'    background-size: cover !important; ',
'}',
'.u-Processing { ',
'    display:none !important; ',
'}  */',
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
'/* Graph Fix -----------------*/',
'.t-Region-body {',
'  padding-block-end: var(--ut-region-body-padding-y,1rem);',
'  padding-block-start: var(--ut-region-body-padding-y,1rem);',
'  padding-inline-end: var(--ut-region-body-padding-x,1rem);',
'  padding-inline-start: var(--ut-region-body-padding-x,1rem);',
'  position: relative;',
'  background-color: white;',
'}',
'/*----- New Template --------*/',
'.u-Processing { ',
'display:none !important; ',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'    background-color: #5883A7; ',
'}',
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
'} ',
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
'',
'.t-Footer {',
'  display: none',
'}',
'/*----- -----*/'))
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
 p_id=>wwv_flow_imp.id(15848817360767586)
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
'   l_response := getData(36);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203903583284581421)
,p_plug_name=>'Transaction Locations'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(103985086345253387)
,p_region_id=>wwv_flow_imp.id(203903583284581421)
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
 p_id=>wwv_flow_imp.id(103985622750253389)
,p_map_region_id=>wwv_flow_imp.id(103985086345253387)
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
'where merchant_state = ''United States of America''  AND TX_TYPE = ''ML''',
'--transaction_status = ''OnHold'' ',
'order by id  desc'))
,p_has_spatial_index=>false
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
 p_id=>wwv_flow_imp.id(258162016202433475)
,p_plug_name=>'Money laundering '
,p_region_name=>'static_5'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select txn_id,  id,',
'(select first_name||'' ''||last_name from finbank_accounts where id=src_acct_id) as Customer_Name,  ',
'(select first_name||'' ''||last_name from finbank_accounts where id=dst_acct_id) as Merchant_Name,',
' ''$'' ||amount as amount,',
' inv_no, LATITUDE, LONGITUDE, MERCHANT_REGION, MERCHANT_STATE, MERCHANT_PLACE',
'--(select LATITUDE from RETAIL_SHOPPING_FD where inv_no = inv_no ) as  LATITUDE',
'from ',
'(',
'        select bt.txn_id, bt.src_acct_id, bt.dst_acct_id, bt.description, bt.amount, bt.inv_no, rs.ID, ',
'        rs.LATITUDE, rs.LONGITUDE, rs.MERCHANT_REGION, rs.MERCHANT_STATE, rs.MERCHANT_PLACE',
'        from BANK_TRANSFERS bt , RETAIL_SHOPPING_FD rs',
'        where ',
'        bt.DESCRIPTION = ''ML'' AND rs.INV_NO = bt.INV_NO AND rs.merchant_state = ''United States of America''',
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
,p_prn_page_header=>'Money laundering '
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
 p_id=>wwv_flow_imp.id(93776067249232684)
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
,p_internal_uid=>55475429526446834
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776146770232685)
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
 p_id=>wwv_flow_imp.id(111816619106745275)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'M'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776758868232691)
,p_db_column_name=>'INV_NO'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Invoice Number'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_ID:#ID#'
,p_column_linktext=>'#INV_NO#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776335920232686)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776437676232687)
,p_db_column_name=>'MERCHANT_NAME'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Merchant Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776701272232690)
,p_db_column_name=>'AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776891382232692)
,p_db_column_name=>'LATITUDE'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93776965777232693)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93777108304232694)
,p_db_column_name=>'MERCHANT_REGION'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Merchant Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93777180396232695)
,p_db_column_name=>'MERCHANT_STATE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Merchant State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93777311819232696)
,p_db_column_name=>'MERCHANT_PLACE'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Merchant Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(103981235992235126)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656806'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXN_ID:CUSTOMER_NAME:MERCHANT_NAME:INV_NO:MERCHANT_PLACE:MERCHANT_REGION:MERCHANT_STATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17969435859721451017)
,p_plug_name=>'circular_payments'
,p_title=>'Money Laundering'
,p_region_name=>'graph'
,p_icon_css_classes=>'openbankacc'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--showIcon:i-h640:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH query as (',
'    -- source and target constitutes the edge direction  ',
'    select ',
'    SRC_ACCT_ID as source , ',
'    DST_ACCT_ID as target  ',
'    from bank_transfers where DESCRIPTION = ''ML''  ',
'),',
'page AS (',
'    -- pagination',
'    SELECT',
'        *',
'    FROM',
'        query',
'    ORDER BY',
'        source,',
'        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY ',
'),',
'vertices AS (',
'    -- fetch customer details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            --''id'' VALUE FINBANK_ACCOUNTS.ID,',
'            ''id'' VALUE FINBANK_ACCOUNTS.ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE FINBANK_ACCOUNTS.FIRST_NAME,',
'                ''LastName'' VALUE FINBANK_ACCOUNTS.LAST_NAME, ',
'                ''Department'' VALUE FINBANK_ACCOUNTS.DEPARTMENT_ID,',
'                ''HireDate'' VALUE FINBANK_ACCOUNTS.ACC_DATE,',
'                ''TID'' VALUE FINBANK_ACCOUNTS.JOB_ID,',
'                ''Title'' VALUE jobs.JOB_TITLE,',
'                ''Amount'' VALUE bank_transfers.Amount ',
'            )',
'        ) AS vertex',
'    FROM ',
'        FINBANK_ACCOUNTS finbank_accounts ',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID   ',
'    WHERE ',
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
'edges AS ( ',
'    SELECT',
'        JSON_OBJECT(''source'' VALUE source, ''target'' VALUE target) AS edge',
'    FROM',
'        page',
')',
'SELECT ',
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
' '))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "evolution": {',
    '        "granularity": 500,',
    '        "vertex": "properties.Amount"',
    '    }',
    '}')),
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.FirstName} ${properties.LastName}",  ',
    '        "color": "${interpolate.discrete(''properties.TID'', ''blue'', ''green'', ''red'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",  ',
    '        "icon": "fa-user",',
    '        "legend": "${properties.Title}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Amount'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "green"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[properties.Country]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.Country === ''UK'' ? ''GB'' : properties.Country).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                },',
    '                "color": "red"',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''VP'', ''SWISS BANK'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.TID) >= 0]": {',
    '        "icon": "fa-university",',
    '        "color": "red"',
    '    }',
    '}')),
  'attribute_04', 'circle',
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(205003856988019480)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15848900055767587)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15848817360767586)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:36'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103947839075960585)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Create_Transactions'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Transactions'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-table-arrow-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104670799977291959)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Clear_Dashboard'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104677972358533768)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Refresh_Page'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103939633178659396)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Force'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Force'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103942005255659397)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Grid'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Grid'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103942403131659398)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Hierarchical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Hierarchical'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103939978926659396)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Radial'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Radial'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Radial - Display graph with outer vertices in a circle encompassing inner vertices and ultimately the root vertex centered in the middle"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103940405510659397)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'GroupEdges'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256310145085102)
,p_button_image_alt=>'Group Edges'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-object-group'
,p_button_cattributes=>'title="Group edges"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103940745138659397)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'UnGroupEdges'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256310145085102)
,p_button_image_alt=>'Ungroup Edges'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-object-ungroup'
,p_button_cattributes=>'title="Ungroup edges"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103939162729659394)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'First'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'First Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103941592903659397)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Last'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Last Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(103941195806659397)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_button_name=>'Full'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Full Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-align-left'
,p_button_cattributes=>'title="Change vertices'' labels to display full name"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93773846370232662)
,p_name=>'P36_RECORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17969435859721451017)
,p_item_default=>'15'
,p_prompt=>'Records'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103944564053777251)
,p_name=>'Force'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103939633178659396)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103945005837777257)
,p_event_id=>wwv_flow_imp.id(103944564053777251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''force'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103945362812779520)
,p_name=>'Grid'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103942005255659397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103945772525779521)
,p_event_id=>wwv_flow_imp.id(103945362812779520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''grid'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103946143637781254)
,p_name=>'Hierarchical'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103942403131659398)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103946558986781255)
,p_event_id=>wwv_flow_imp.id(103946143637781254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''hierarchical'' };',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103947035868785170)
,p_name=>'Redial'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103939978926659396)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103947421212785171)
,p_event_id=>wwv_flow_imp.id(103947035868785170)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''radial'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103948044579963650)
,p_name=>'createDA'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103947839075960585)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103948471634963651)
,p_event_id=>wwv_flow_imp.id(103948044579963650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare   ',
'--v_records number := :P36_RECORDS;',
'v_records number := 25;',
'v_MERCHANT_REGION RETAIL_SHOPPING_FD.MERCHANT_REGION%TYPE := ''Europe and North America'';',
'v_MERCHANT_STATE RETAIL_SHOPPING_FD.MERCHANT_STATE%TYPE := ''United States of America'';',
'',
'v2_MERCHANT_REGION   RETAIL_SHOPPING_FD.MERCHANT_REGION%TYPE;',
'v2_MERCHANT_STATE   RETAIL_SHOPPING_FD.MERCHANT_STATE%TYPE;  ',
'',
'begin ',
'',
'   if v_records > 0 then ',
'   ------- clean data before insert --------',
'    delete from BANK_TRANSFERS WHERE DESCRIPTION = ''ML''; ',
'    delete from RETAIL_SHOPPING_FD WHERE TX_TYPE = ''ML'';',
'    ------ clean data before insert --------',
'   ',
'    FOR a in 1 .. v_records LOOP  ',
'      FD_TX_INSERTS_ML (v_MERCHANT_REGION,  v_MERCHANT_STATE);',
'    END LOOP; ',
'  ',
'     FOR a in 1 .. 5 LOOP   ',
'      select    REGION_EN, STATES_NAME_EN into   v2_MERCHANT_REGION, v2_MERCHANT_STATE',
'        from (select ID, NAME_EN, LONGITUDE, LATITUDE,  REGION_EN, STATES_NAME_EN  from UNESCO_SITES   ORDER BY DBMS_RANDOM.RANDOM) WHERE  rownum < 2;  ',
'      FD_TX_INSERTS_ML (v2_MERCHANT_REGION,  v2_MERCHANT_STATE);',
'    END LOOP;',
'',
'   end if;',
'end;',
' '))
,p_attribute_02=>'P36_RECORDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103949016432963652)
,p_event_id=>wwv_flow_imp.id(103948044579963650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Transactions Generated!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93774586569232669)
,p_event_id=>wwv_flow_imp.id(103948044579963650)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''force'' };'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103949443541963653)
,p_event_id=>wwv_flow_imp.id(103948044579963650)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(258162016202433475)
,p_attribute_01=>'N'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14338420086257975)
,p_event_id=>wwv_flow_imp.id(103948044579963650)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103960302542103151)
,p_name=>'GroupEdges'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103940405510659397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103960736024103154)
,p_event_id=>wwv_flow_imp.id(103960302542103151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, groupEdges: true };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103961120703106333)
,p_name=>'UnGroupEdges'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103940745138659397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103961529771106337)
,p_event_id=>wwv_flow_imp.id(103961120703106333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, groupEdges: false };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103961868976109540)
,p_name=>'First'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103939162729659394)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103962258803109540)
,p_event_id=>wwv_flow_imp.id(103961868976109540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.FirstName}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103962642840115628)
,p_name=>'Last'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103941592903659397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103963130403115629)
,p_event_id=>wwv_flow_imp.id(103962642840115628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.LastName}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103963475857118175)
,p_name=>'Full'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(103941195806659397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(103963913023118175)
,p_event_id=>wwv_flow_imp.id(103963475857118175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.FirstName} ${properties.LastName}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104670963791310250)
,p_name=>'ClearDA'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104670799977291959)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104671904376310253)
,p_event_id=>wwv_flow_imp.id(104670963791310250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'        --delete from RETAIL_SHOPPING_FD;',
'        --delete from BANK_TRANSFERS; ',
'       -- UPDATE CC_FD SET STATUS = ''Active'';',
'       delete from BANK_TRANSFERS WHERE DESCRIPTION = ''ML''; ',
'       delete from RETAIL_SHOPPING_FD WHERE TX_TYPE = ''ML'';',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14338532408257976)
,p_event_id=>wwv_flow_imp.id(104670963791310250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Transactions cleared!'
,p_attribute_02=>'Transactions cleared'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104672363564310253)
,p_event_id=>wwv_flow_imp.id(104670963791310250)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16983442513144363)
,p_name=>'ref'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15848817360767586)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16983541596144364)
,p_event_id=>wwv_flow_imp.id(16983442513144363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104641855572636908)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>66341217849851058
);
wwv_flow_imp.component_end;
end;
/
