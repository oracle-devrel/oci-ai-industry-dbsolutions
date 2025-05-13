prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>' Receipt Analysis'
,p_alias=>'RECEIPT-ANALYSIS'
,p_step_title=>' Receipt Analysis'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-itemWrapper .a-Button, .t-Form-itemWrapper .oj-inputdatetime-input-trigger !important {',
'    /* --a-button-padding-y: .25rem; */',
'    /* --a-button-padding-x: .5rem; */',
'}',
'.t-Header-nav .a-MenuBar-item.a-Menu--current {',
'    --a-menubar-item-font-weight: var(--a-base-font-weight-bold,700);',
'    background-color: #0572ce;',
'    color: var(--a-menubar-item-current-text-color);',
'}',
'.a-Button--hot, .a-CardView-button--hot, .apex-button-group input:checked+label, .t-Button--hot, .t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input:checked+label, .ui-button--hot {',
'    --a-button-background-color: #0572ce !important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(62722399245879119)
,p_navigation_list_template_id=>wwv_flow_imp.id(62250142950085095)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(189927907241783057)
,p_plug_name=>'Retail Transaction Dashboard'
,p_region_name=>'static_1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, t.total_pay, trans_status, comments, transaction_status,category,time_difference_number,',
'CREDIT_CARD_NO this_credit_card, merchant_fullname,merchant_place,',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS Prev_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS Prev_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') Curr_Timestamp,   ',
'LAG(to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'')) OVER (ORDER BY id)  Prev_Timestamp, ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'--to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'(LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY id)  - to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') ) AS time_diff_number ',
'FROM RETAIL_SHOPPING_FD t ',
'where category = ''RETAIL'' ',
'order by id desc',
'',
'/*',
'SELECT t.id, t.inv_no, t.total_pay, CREDIT_CARD_NO, MALL,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,     ',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') TX_TIMESTAMP_number,  ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'FROM RETAIL_SHOPPING_FD t where transaction_status = ''OnHold'' ',
'order by id  desc',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Retail Transaction Dashboard'
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
 p_id=>wwv_flow_imp.id(189927985440783058)
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
,p_internal_uid=>151627347717997208
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189928082634783059)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_ID:#ID#'
,p_column_linktext=>'#ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189928248398783060)
,p_db_column_name=>'INV_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Inv No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189928431376783062)
,p_db_column_name=>'TOTAL_PAY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189929251383783070)
,p_db_column_name=>'TIME_DIFFERENCE'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Time Difference'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189929271802783071)
,p_db_column_name=>'TIME_DIFF_NUMBER'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Time Diff Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189929695835783075)
,p_db_column_name=>'THIS_CREDIT_CARD'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'This Credit Card'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(189929894497783077)
,p_db_column_name=>'THIS_MALL'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'This Mall'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190153564476698129)
,p_db_column_name=>'TRANS_STATUS'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Human Review'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(140604805463774844)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>150
,p_column_identifier=>'V'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(190153666393698130)
,p_db_column_name=>'COMMENTS'
,p_display_order=>160
,p_column_identifier=>'U'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141145802705349554)
,p_db_column_name=>'PREV_CARD'
,p_display_order=>170
,p_column_identifier=>'W'
,p_column_label=>'Prev Card'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141145956197349555)
,p_db_column_name=>'PREV_MALL'
,p_display_order=>180
,p_column_identifier=>'X'
,p_column_label=>'Prev Mall'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141146042009349556)
,p_db_column_name=>'CURR_TIMESTAMP'
,p_display_order=>190
,p_column_identifier=>'Y'
,p_column_label=>'Curr Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141146126153349557)
,p_db_column_name=>'PREV_TIMESTAMP'
,p_display_order=>200
,p_column_identifier=>'Z'
,p_column_label=>'Prev Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141146205955349558)
,p_db_column_name=>'CATEGORY'
,p_display_order=>210
,p_column_identifier=>'AA'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(141146372473349559)
,p_db_column_name=>'TIME_DIFFERENCE_NUMBER'
,p_display_order=>220
,p_column_identifier=>'AB'
,p_column_label=>'Time Difference Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89213084008042499)
,p_db_column_name=>'MERCHANT_FULLNAME'
,p_display_order=>230
,p_column_identifier=>'AC'
,p_column_label=>'Merchant Fullname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(89213184809042500)
,p_db_column_name=>'MERCHANT_PLACE'
,p_display_order=>240
,p_column_identifier=>'AD'
,p_column_label=>'Merchant Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(189968012864194000)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'493129'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INV_NO:TOTAL_PAY:TRANSACTION_STATUS:TRANS_STATUS:THIS_CREDIT_CARD:THIS_MALL:TIME_DIFF_NUMBER:COMMENTS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(90636886748292736)
,p_report_id=>wwv_flow_imp.id(189968012864194000)
,p_name=>'Suspected Transactions'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TIME_DIFF_NUMBER'
,p_operator=>'>='
,p_expr=>'60'
,p_condition_sql=>' (case when ("TIME_DIFF_NUMBER" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#f9bf12'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(90637248316292738)
,p_report_id=>wwv_flow_imp.id(189968012864194000)
,p_name=>'Approved Tx'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TRANSACTION_STATUS'
,p_operator=>'='
,p_expr=>'APPROVED'
,p_condition_sql=>' (case when ("TRANSACTION_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''APPROVED''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#069506'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(90637660031292738)
,p_report_id=>wwv_flow_imp.id(189968012864194000)
,p_name=>'Blocked Transactions'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'TIME_DIFF_NUMBER'
,p_operator=>'<='
,p_expr=>'60'
,p_condition_sql=>' (case when ("TIME_DIFF_NUMBER" <= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# <= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ff0000'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675667210827673036)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675667246393673037)
,p_plug_name=>'Left Side'
,p_parent_plug_id=>wwv_flow_imp.id(675667210827673036)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675666831477673033)
,p_plug_name=>'Receipt'
,p_parent_plug_id=>wwv_flow_imp.id(675667246393673037)
,p_icon_css_classes=>'fa-file-text-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:i-h640:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=RENDER_DOCUMENT:NO::" frameborder="0" border="0" cellspacing="0" style="border-style: none; width: 100%; height: 700px;">',
'</iframe>',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675667332516673038)
,p_plug_name=>'Right Side'
,p_parent_plug_id=>wwv_flow_imp.id(675667210827673036)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89212853457042497)
,p_plug_name=>'Transaction'
,p_parent_plug_id=>wwv_flow_imp.id(675667332516673038)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'v_fl varchar(100);',
'v_fv varchar(100);',
'v_mn varchar(100) := ''Retail Shop'';',
'v_total varchar(100);',
'v_sql varchar(500);',
'v_doctype varchar(100) := ''DOCUMENT'';',
'v_txdt varchar(100);',
'v_a varchar(100) := '''';',
'v_ph varchar(100) := '''';',
'',
'CURSOR C1 IS ',
'        SELECT field_label , field_value',
'        FROM   cndemo_document_ai_fields',
'        WHERE  document_id = :P21_DOCUMENT_ID',
'        ORDER BY field_label;',
'BEGIN ',
'        For row_1 In C1 Loop',
'        v_fl := row_1.field_label;',
'        v_fv := row_1.field_value; ',
'       --  Htp.p(  ''<br/> Label ''||v_fl||'' value -> ''||v_fv);',
'',
'',
'        if (v_fl = ''MerchantName'') then ',
'          --   Htp.p(  ''<br/> ''||v_fl);',
'            v_mn := v_fv;',
'        end if;',
'',
'        if (v_fl = ''Total'') then ',
'            v_total := v_fv;',
'        end if;',
'',
'        if (v_fl = ''TransactionDate'') then ',
'            v_txdt := v_fv;',
'        end if;',
'',
'        if (v_fl = ''MerchantAddress'') then ',
'            v_a := v_fv;',
'        end if;',
'',
'        if (v_fl = ''MerchantPhoneNumber'') then ',
'            v_ph := ''Ph: ''||v_fv;',
'        end if;',
'',
'        --MerchantPhoneNumber  v_ph',
'        ',
'',
'        ',
'',
'        ',
'',
'        End Loop;',
'',
'        if (v_mn is not null AND v_total is not null) then ',
'',
'            --Htp.p(  ''<br/>Before MerchantName ''||v_mn||'' v_total -> ''||v_total||'' --> Address''||v_a);',
'            v_total := regexp_replace(v_total,''[^1,2,3,4,5,6,7,8,9,0,.,]'');',
'           -- Htp.p(  ''<br/>After MerchantName ''||v_mn||'' v_total -> ''||v_total||'' --> Address''||v_a);',
'           /*',
'            v_sql := '' INSERT INTO RETAIL_SHOPPING_FD ',
'                (ID, MERCHANT_FULLNAME, CATEGORY, TOTAL_PAY, TX_TYPE, CREDIT_CARD_NO, MALL, ',
'                TX_TIMESTAMP,MERCHANT_ID, MERCHANT_REGION, MERCHANT_STATE  , MERCHANT_PLACE, COMMENTS) ',
'                VALUES ',
'                (NULL, ''''''||v_mn||'''''',''''RETAIL SHOPPING'''', ''||v_total||'',''''''||v_doctype||'''''',''''55523854300101110'''',''''Metropol AVM'''', ',
'                ''''8-NOV-23 04.31.55.000000000 AM'''', 22, ''''Arab States'''', ''''Egypt'''', ''''Abu Mena'''',  NULL) ''; ',
'                Htp.p( v_sql );',
'                */',
'            ',
'             ',
'                 ',
'                INSERT INTO RETAIL_SHOPPING_FD ',
'                (  ',
'                        MERCHANT_FULLNAME,   CATEGORY, TOTAL_PAY, TX_TYPE, CREDIT_CARD_NO, ',
'                        MALL,  ',
'                        MERCHANT_ID, MERCHANT_REGION, MERCHANT_STATE , MERCHANT_PLACE, MERCHANT_PLACE_ID,',
'                        COMMENTS) ',
'                VALUES (  ',
'                        v_mn, ''RETAIL'',  v_total,''DOCUMENT'',55523854300101110,',
'                        ''Metropol AVM'',   ',
'                        22, ''Arab States'', ''Egypt'', v_a||'' ''||v_ph ,22,',
'                         NULL);',
'                       ',
'                         Htp.p(''Transaction Initated!'');',
'                       --v_total',
'           else ',
'                 ',
'                    Htp.p(''Insufficient Data - Transaction Ignored'');',
'        end if;',
'',
'        ',
'',
'        /*',
'         INSERT INTO RETAIL_SHOPPING_FD ',
'(ID, MERCHANT_FULLNAME, CATEGORY, TOTAL_PAY, TX_TYPE, CREDIT_CARD_NO, MALL, TX_TIMESTAMP,MERCHANT_ID, MERCHANT_REGION, MERCHANT_STATE  , MERCHANT_PLACE, COMMENTS) ',
'VALUES ',
'(1010, ''SHOP'',''RETAIL SHOPPING'', 752.85,''DOCUMENT'',''55523854300101110'',''Metropol AVM'', ''8-NOV-23 04.31.55.000000000 AM'', 22, ''Arab States'', ''Egypt'', ''Abu Mena'',  NULL)',
'        */',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(106552472443106332)
,p_plug_name=>'submit'
,p_parent_plug_id=>wwv_flow_imp.id(675667332516673038)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(111800218857052024)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(106552472443106332)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'Please note: The uploaded <b>Document Type</b> should be <b>Receipt</b> to create an expense. Previous expenses in the workflow can be found under <b>Manage Expenses</b> under the <b>Administration Menu</b> in the top navigation. <br/><br/>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(675665164747673016)
,p_name=>'Receipt Attributes'
,p_parent_plug_id=>wwv_flow_imp.id(675667332516673038)
,p_template=>wwv_flow_imp.id(62183755337085053)
,p_display_sequence=>30
,p_icon_css_classes=>'fa-file-code-o'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT file_name',
',      mime_type',
',      language_code',
',      TO_CHAR(ROUND(language_score * 100 ,1),''fm999.0'') || ''%'' language_score',
',      INITCAP(document_type_code) document_type',
',      TO_CHAR(ROUND(document_type_score * 100,1),''fm999.0'') || ''%'' document_type_score',
',      page_count',
'FROM   cndemo_document_ai_docs',
'WHERE  document_id = :P21_DOCUMENT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62225019772085076)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90613783373776610)
,p_query_column_id=>1
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'File Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90613431168776610)
,p_query_column_id=>2
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Mime Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90612966897776610)
,p_query_column_id=>3
,p_column_alias=>'LANGUAGE_CODE'
,p_column_display_sequence=>40
,p_column_heading=>'Language'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:English;ENG,Dutch;NLD,French;FRA,Spanish;SPA'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90612604312776609)
,p_query_column_id=>4
,p_column_alias=>'LANGUAGE_SCORE'
,p_column_display_sequence=>50
,p_column_heading=>'Language Confidence'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90612205961776609)
,p_query_column_id=>5
,p_column_alias=>'DOCUMENT_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'Document Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90611750086776608)
,p_query_column_id=>6
,p_column_alias=>'DOCUMENT_TYPE_SCORE'
,p_column_display_sequence=>70
,p_column_heading=>'Document Type Confidence'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90611397762776608)
,p_query_column_id=>7
,p_column_alias=>'PAGE_COUNT'
,p_column_display_sequence=>30
,p_column_heading=>'Page Count'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(675666421811673028)
,p_name=>'Field Labels'
,p_parent_plug_id=>wwv_flow_imp.id(675667332516673038)
,p_template=>wwv_flow_imp.id(62183755337085053)
,p_display_sequence=>40
,p_icon_css_classes=>'fa-file-text-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT field_label',
',      ROUND(label_score * 100,0) label_score',
',      field_value',
'FROM   cndemo_document_ai_fields',
'WHERE  document_id = :P21_DOCUMENT_ID',
'ORDER BY field_label'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P21_DOCUMENT_ID'
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
 p_id=>wwv_flow_imp.id(90610600827776607)
,p_query_column_id=>1
,p_column_alias=>'FIELD_LABEL'
,p_column_display_sequence=>10
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90610153529776607)
,p_query_column_id=>2
,p_column_alias=>'LABEL_SCORE'
,p_column_display_sequence=>30
,p_column_heading=>'Label Confidence (%)'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(90609792535776606)
,p_query_column_id=>3
,p_column_alias=>'FIELD_VALUE'
,p_column_display_sequence=>20
,p_column_heading=>'Field Value'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(90608286294776604)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(106552472443106332)
,p_button_name=>'Create_Expense'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Expense'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P21_TY'
,p_button_condition2=>'RECEIPT'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111802151435052029)
,p_name=>'P21_TY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(106552472443106332)
,p_source=>'SELECT DOCUMENT_TYPE_CODE FROM   cndemo_document_ai_docs  where DOCUMENT_ID=:P21_DOCUMENT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(675673250913673026)
,p_name=>'P21_DOCUMENT_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90615442427776612)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(90608286294776604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90616512374776615)
,p_event_id=>wwv_flow_imp.id(90615442427776612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'create_expense'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_dummy   CHAR (1);',
'BEGIN',
'   UPDATE CNDEMO_DOCUMENT_AI_FIELDS SET EXPENSE = ''PENDING'' WHERE  document_id = :P21_DOCUMENT_ID AND FIELD_LABEL=''MerchantName'';   ',
'END;',
'',
''))
,p_attribute_02=>'P21_DOCUMENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90616020658776614)
,p_event_id=>wwv_flow_imp.id(90615442427776612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'An expense item has been created!'
);
wwv_flow_imp.component_end;
end;
/
