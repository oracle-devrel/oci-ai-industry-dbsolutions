prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_name=>'Transaction Dashboard'
,p_alias=>'TRANSACTION-DASHBOARD'
,p_step_title=>'Transaction Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'setInterval("jQuery(''#static_1'').trigger(''apexrefresh'');", 20000);',
'setInterval("jQuery(''#static_5'').trigger(''apexrefresh'');", 20000); ',
'*/',
''))
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
 p_id=>wwv_flow_imp.id(200859326966052900)
,p_plug_name=>'Fraud Detection and Prevention'
,p_region_name=>'static_1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203428763411634210)
,p_plug_name=>'Status Count'
,p_parent_plug_id=>wwv_flow_imp.id(200859326966052900)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(104846327817446526)
,p_region_id=>wwv_flow_imp.id(203428763411634210)
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
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
,p_automatic_refresh_interval=>20
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(104848032114446527)
,p_chart_id=>wwv_flow_imp.id(104846327817446526)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT from RETAIL_SHOPPING_FD group by TRANSACTION_STATUS',
' '))
,p_items_value_column_name=>'TRANSACTION_COUNT'
,p_items_label_column_name=>'TRANSACTION_STATUS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(104846784621446526)
,p_chart_id=>wwv_flow_imp.id(104846327817446526)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
 p_id=>wwv_flow_imp.id(104847360151446527)
,p_chart_id=>wwv_flow_imp.id(104846327817446526)
,p_axis=>'y'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(203429411215634216)
,p_plug_name=>'Total Transaction Value'
,p_parent_plug_id=>wwv_flow_imp.id(200859326966052900)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(104843571763446521)
,p_region_id=>wwv_flow_imp.id(203429411215634216)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
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
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
,p_automatic_refresh_interval=>20
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(104845277793446524)
,p_chart_id=>wwv_flow_imp.id(104843571763446521)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD group by TRANSACTION_STATUS'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'TRANSACTION_STATUS'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(104844651931446523)
,p_chart_id=>wwv_flow_imp.id(104843571763446521)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(104844102159446521)
,p_chart_id=>wwv_flow_imp.id(104843571763446521)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204747909557774500)
,p_plug_name=>'Transaction Locations'
,p_parent_plug_id=>wwv_flow_imp.id(200859326966052900)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(104842075842446517)
,p_region_id=>wwv_flow_imp.id(204747909557774500)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(104842576165446519)
,p_map_region_id=>wwv_flow_imp.id(104842075842446517)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(202764849688414207)
,p_plug_name=>'Business Rules'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <b>Rule 1 (Based on Transaction Value)</b> <br/>',
'If Transaction Amount < 2000 -> It is auto Approved  <br/>',
'If Transaction Amount >= 2000 and < 10,000 -> It is OnHold - Under Human Review <br/>',
'If Transaction Amount >= 10000 -> Transaction is Rejected, the card is Blocked from Further Transactions   <br/>',
'<b>Rule 2 (Based on Location)</b> <br/>',
'If the same credit card is used in less than 15 seconds in different locations, then that transaction will be rejected.  <br/>',
'<b>Rule 3</b> <br/>',
'If the same credit card is used in more than 15 seconds in the same locations, then that card will not be blocked. But the transaction is on hold. <br/>',
'<b>Rule 4 (Based on Time)</b> <br/>',
'The same credit card has been used in less than 15, and then the card is blocked. '))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204125571417936810)
,p_plug_name=>'Dashboard'
,p_region_name=>'static_1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, ''$ ''||t.total_pay as total_pay, trans_status, comments, transaction_status,category,time_difference_number,',
'CREDIT_CARD_NO this_credit_card, ',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS Prev_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS Prev_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') Curr_Timestamp,   ',
'LAG(to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'')) OVER (ORDER BY id)  Prev_Timestamp, ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference, ',
'abs(LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY id)  - to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') ) AS  time_diff_number  ',
'FROM RETAIL_SHOPPING_FD t ',
'WHERE TX_TYPE = ''FDTX''',
'--where transaction_status = ''OnHold'' ',
'order by id desc',
'',
'/*',
'abs(num)',
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
,p_prn_page_header=>'Dashboard'
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
 p_id=>wwv_flow_imp.id(204125649616936811)
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
,p_internal_uid=>165825011894150961
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204125746810936812)
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
 p_id=>wwv_flow_imp.id(204125912574936813)
,p_db_column_name=>'INV_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Inv No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204126915559936823)
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
 p_id=>wwv_flow_imp.id(204126935978936824)
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
 p_id=>wwv_flow_imp.id(204127360011936828)
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
 p_id=>wwv_flow_imp.id(204127558673936830)
,p_db_column_name=>'THIS_MALL'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'This Mall'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204351228652851882)
,p_db_column_name=>'TRANS_STATUS'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Human Review'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(154802469639928597)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>150
,p_column_identifier=>'V'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(204351330569851883)
,p_db_column_name=>'COMMENTS'
,p_display_order=>160
,p_column_identifier=>'U'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155343466881503307)
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
 p_id=>wwv_flow_imp.id(155343620373503308)
,p_db_column_name=>'PREV_MALL'
,p_display_order=>180
,p_column_identifier=>'X'
,p_column_label=>'Prev Mall'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155343706185503309)
,p_db_column_name=>'CURR_TIMESTAMP'
,p_display_order=>190
,p_column_identifier=>'Y'
,p_column_label=>'Curr Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155343790329503310)
,p_db_column_name=>'PREV_TIMESTAMP'
,p_display_order=>200
,p_column_identifier=>'Z'
,p_column_label=>'Prev Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155343870131503311)
,p_db_column_name=>'CATEGORY'
,p_display_order=>210
,p_column_identifier=>'AA'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(155344036649503312)
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
 p_id=>wwv_flow_imp.id(171149671699362796)
,p_db_column_name=>'TOTAL_PAY'
,p_display_order=>230
,p_column_identifier=>'AC'
,p_column_label=>'Total Pay'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(204165677040347753)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'493129'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:INV_NO:TRANSACTION_STATUS:TRANS_STATUS:THIS_CREDIT_CARD:THIS_MALL:TIME_DIFF_NUMBER:COMMENTS'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(104854009092446535)
,p_report_id=>wwv_flow_imp.id(204165677040347753)
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
 p_id=>wwv_flow_imp.id(104854401854446536)
,p_report_id=>wwv_flow_imp.id(204165677040347753)
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
 p_id=>wwv_flow_imp.id(104854753929446536)
,p_report_id=>wwv_flow_imp.id(204165677040347753)
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
 p_id=>wwv_flow_imp.id(205342899436724829)
,p_plug_name=>'Customer and Merchant TXs'
,p_region_name=>'static_5'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select txn_id,src_acct_id Customer_id, dst_acct_id Merchant_Id,  amount, ',
'(select first_name from finbank_accounts where id=src_acct_id) as Customer_First_Name, ',
'(select last_name from finbank_accounts where id=src_acct_id) as Customer_Last_Name ,',
'(select first_name from finbank_accounts where id=dst_acct_id) as Merchant_First_Name, ',
'(select last_name from finbank_accounts where id=dst_acct_id) as Merchant_Last_Name',
'from ',
'(',
'        select txn_id, src_acct_id, dst_acct_id, description, amount   from BANK_TRANSFERS where DESCRIPTION = ''FDTX''',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_imp.id(205343021793724830)
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
,p_internal_uid=>167042384070938980
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205343109878724831)
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
 p_id=>wwv_flow_imp.id(205343484380724835)
,p_db_column_name=>'AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205344208801724842)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205344296070724843)
,p_db_column_name=>'MERCHANT_ID'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Merchant Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205344426625724844)
,p_db_column_name=>'CUSTOMER_FIRST_NAME'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Customer First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205344483960724845)
,p_db_column_name=>'CUSTOMER_LAST_NAME'
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Customer Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205344553780724846)
,p_db_column_name=>'MERCHANT_FIRST_NAME'
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'Merchant First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(205344712766724847)
,p_db_column_name=>'MERCHANT_LAST_NAME'
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>'Merchant Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205390707947689849)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'502044'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXN_ID:AMOUNT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(216879161766293780)
,p_plug_name=>'Blocked Credit Cards (Fraud Prevention)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'CC_FD'
,p_query_where=>'STATUS = ''Blocked'''
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170521711925162881)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>false
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170521767727162882)
,p_name=>'CUST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>false
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170521937869162883)
,p_name=>'CC_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Credit Card Number'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170521991146162884)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170522160655162885)
,p_name=>'VALIDITY'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>false
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170522259946162886)
,p_name=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170522278222162887)
,p_name=>'LAST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170522436944162888)
,p_name=>'BANK_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Bank Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170522521126162889)
,p_name=>'COMMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Comments'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970326485798238107)
,p_plug_name=>'graph'
,p_region_name=>'graph'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH query as (',
'   ',
'    select ',
'    SRC_ACCT_ID as source , ',
'    DST_ACCT_ID as target  ',
'    from bank_transfers where DESCRIPTION = ''FDTX''',
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
'                ''Amount'' VALUE bank_transfers.Amount',
'                --''JobTitle'' VALUE jobs.JOB_TITLE',
'                --''HireDate'' VALUE employees.HIRE_DATE,',
'                --''JobId'' VALUE jobs.JOB_ID,',
'                --''JobTitle'' VALUE jobs.JOB_TITLE ',
'                --''Country'' VALUE locations.COUNTRY_ID',
'            )',
'        ) AS vertex',
'    FROM',
'        /*',
'        EBA_GRAPHVIZ_EMPLOYEES employees',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON employees.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_DEPARTMENTS departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_LOCATIONS locations ON departments.LOCATION_ID = locations.LOCATION_ID',
'        */',
'        FINBANK_ACCOUNTS finbank_accounts ',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID ',
'        --LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.DST_ACCT_ID  ',
'    WHERE',
'        /*',
'        employees.EMPLOYEE_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or employees.EMPLOYEE_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'        */',
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
'    -- source (employee) and target (manager) constitutes the directed edge',
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
'',
'/*    ',
'WITH query as (',
'    -- source and target constitutes the edge direction and thus',
'    -- represents the reporting structure of employee to their managers.',
'    SELECT',
'        EMPLOYEE_ID as source,',
'        MANAGER_ID as target',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES',
'    WHERE',
'        MANAGER_ID IS NOT NULL',
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
'),',
'vertices AS (',
'    -- fetch employee details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            ''id'' VALUE employees.EMPLOYEE_ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE employees.FIRST_NAME,',
'                ''LastName'' VALUE employees.LAST_NAME,',
'                ''Salary'' VALUE employees.SALARY,',
'                ''Department'' VALUE employees.DEPARTMENT_ID,',
'                ''HireDate'' VALUE employees.HIRE_DATE,',
'                ''JobId'' VALUE jobs.JOB_ID,',
'                ''JobTitle'' VALUE jobs.JOB_TITLE,',
'                ''Country'' VALUE locations.COUNTRY_ID',
'            )',
'        ) AS vertex',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES employees',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON employees.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_DEPARTMENTS departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_LOCATIONS locations ON departments.LOCATION_ID = locations.LOCATION_ID',
'    WHERE',
'        employees.EMPLOYEE_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or employees.EMPLOYEE_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'),',
'edges AS (',
'    -- source (employee) and target (manager) constitutes the directed edge',
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
'    */'))
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
    '        "label": "${properties.FirstName} ${properties.LastName}",',
    '        "color": "${interpolate.discrete(''properties.JobId'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Salary'', ''white'', ''#FB8500'')}",',
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
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(205894483064806570)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104858339249446540)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Refresh_Comments'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Comments'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104856411909446538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Random_Data'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Random Data Generator'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-stock-chart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104857187595446538)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Upload'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104856023218446537)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Create_Transactions'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Transactions'
,p_button_position=>'ORDER_BY_ITEM'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-table-arrow-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104858015677446540)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Refresh_Dashboard'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Dashboard'
,p_button_position=>'ORDER_BY_ITEM'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104856808531446538)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Refresh_Page'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Page'
,p_button_position=>'ORDER_BY_ITEM'
,p_button_css_classes=>'u-success-bg'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104857602743446539)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Review_Process'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Review Process'
,p_button_position=>'ORDER_BY_ITEM'
,p_button_redirect_url=>'javascript:window.open(''https://opa-oic-indintg3-1698906834835-replace-this-phx.process.oci.oraclecloud.com/process/workspace/?root=myApps'')'
,p_icon_css_classes=>'fa-workflow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104855236980446537)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Clear_Dashboard'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Dashboard'
,p_button_position=>'ORDER_BY_ITEM'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-warning'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104855628666446537)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_button_name=>'Clear_Graph'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Graph'
,p_button_position=>'ORDER_BY_ITEM'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'u-danger-bg'
,p_icon_css_classes=>'fa-warning'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104830566106446491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(104833029397446493)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(104833397537446494)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(104830968435446492)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(104831380663446492)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(104831739377446492)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(104830169063446490)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
,p_button_name=>'First'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'First Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104832540839446493)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
,p_button_name=>'Last'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Last Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104832162432446492)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(17970326485798238107)
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
 p_id=>wwv_flow_imp.id(159810057545211972)
,p_name=>'P43_RECORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(204125571417936810)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'20'
,p_prompt=>'No of Records'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104876259456446576)
,p_name=>'UpdateComments'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104876807478446576)
,p_event_id=>wwv_flow_imp.id(104876259456446576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'v_id number;',
'v_this_credit_card varchar2(50);',
'v_previous_card  varchar2(50);',
'v_this_mall varchar2(50);',
'v_previous_mall varchar2(50);',
'v_time_diff_number number;',
'v_comment varchar2(500);',
'v_credit_card_no varchar2(50);',
'',
'Cursor C1 IS   ',
'    SELECT t.id, t.inv_no, t.total_pay, trans_status, comments,',
'    CREDIT_CARD_NO this_credit_card, ',
'    LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'    MALL this_mall, ',
'    LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'    to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
'    t.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'    to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'    FROM RETAIL_SHOPPING_FD t where transaction_status = ''OnHold'' ',
'    order by id  desc;  ',
'',
'Cursor C2 IS ',
'     select credit_card_no from RETAIL_SHOPPING_FD where trans_status = ''BLOCK CARD'';',
' ',
'BEGIN',
'',
'    For row_1 In C1 Loop',
'       v_id := row_1.id; ',
'       v_this_credit_card := row_1.this_credit_card; ',
'       v_previous_card := row_1.previous_card; ',
'       v_this_mall := row_1.this_mall;',
'       v_previous_mall := row_1.previous_mall;',
'       v_time_diff_number := row_1.time_diff_number;',
'      -- Htp.p(''<br/> ''||v_id||'' this_credit_card ''||v_this_credit_card||'' previous_card ',
'      -- ''||v_previous_card||'' v_this_mall ''||v_this_mall||'' v_previous_mall ''||v_previous_mall);',
'',
'       ',
'        if   (v_time_diff_number <= 120) AND (v_time_diff_number > 60) AND',
'             (v_this_credit_card = v_previous_card) AND  ',
'             (v_this_mall != v_previous_mall) ',
'             then ',
'            v_comment := ''The same credit card has been reused in less than 120 seconds under different locations, ',
'                        so that card has been blocked''; ',
'            UPDATE RETAIL_SHOPPING_FD SET COMMENTS = v_comment WHERE ID = v_id;',
'        elsif   (v_time_diff_number <= 120) AND (v_time_diff_number > 60) AND',
'             (v_this_credit_card = v_previous_card) AND  ',
'             (v_this_mall = v_previous_mall) ',
'             then ',
'            v_comment := ''The same credit card has been reused in less than 120 seconds in same location, ',
'                        please verify''; ',
'            UPDATE RETAIL_SHOPPING_FD SET COMMENTS = v_comment WHERE ID = v_id;',
'        elsif (v_time_diff_number <= 60)    then',
'            v_comment := ''The same credit card has been reused in less than 60 seconds, so that card has been blocked''; ',
'            UPDATE RETAIL_SHOPPING_FD SET COMMENTS = v_comment WHERE ID = v_id;  ',
'       end if;',
'',
'    End Loop; ',
'',
'    For row_2 In C2 Loop',
'        v_credit_card_no := row_2.credit_card_no; ',
'        UPDATE CC_FD SET STATUS=''Blocked'', COMMENTS=''Blocked by Human Review'' WHERE CC_NO = v_credit_card_no;',
'    End Loop; ',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104874459797446574)
,p_name=>'Force'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104830566106446491)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104874978671446575)
,p_event_id=>wwv_flow_imp.id(104874459797446574)
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
 p_id=>wwv_flow_imp.id(104866324826446570)
,p_name=>'Redial'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104830968435446492)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104866808904446570)
,p_event_id=>wwv_flow_imp.id(104866324826446570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''radial'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104869882159446572)
,p_name=>'GroupEdges'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104831380663446492)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104870403221446572)
,p_event_id=>wwv_flow_imp.id(104869882159446572)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, groupEdges: true };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104867186246446570)
,p_name=>'UnGroupEdges'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104831739377446492)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104867655791446571)
,p_event_id=>wwv_flow_imp.id(104867186246446570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, groupEdges: false };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104868076149446571)
,p_name=>'Full'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104832162432446492)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104868620254446571)
,p_event_id=>wwv_flow_imp.id(104868076149446571)
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
 p_id=>wwv_flow_imp.id(104870807422446572)
,p_name=>'First'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104830169063446490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104871260794446572)
,p_event_id=>wwv_flow_imp.id(104870807422446572)
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
 p_id=>wwv_flow_imp.id(104869002253446571)
,p_name=>'Last'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104832540839446493)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104869471036446571)
,p_event_id=>wwv_flow_imp.id(104869002253446571)
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
 p_id=>wwv_flow_imp.id(104875426863446575)
,p_name=>'Grid'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104833029397446493)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104875856377446575)
,p_event_id=>wwv_flow_imp.id(104875426863446575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''grid'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104877161252446576)
,p_name=>'Hierarchical'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104833397537446494)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104877638316446577)
,p_event_id=>wwv_flow_imp.id(104877161252446576)
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
 p_id=>wwv_flow_imp.id(104871652533446573)
,p_name=>'ref'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104858015677446540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104872229755446573)
,p_event_id=>wwv_flow_imp.id(104871652533446573)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204125571417936810)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104872689950446573)
,p_event_id=>wwv_flow_imp.id(104871652533446573)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(205342899436724829)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104873174239446573)
,p_event_id=>wwv_flow_imp.id(104871652533446573)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17970326485798238107)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104873558308446574)
,p_name=>'dn3'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104858339249446540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104874071196446574)
,p_event_id=>wwv_flow_imp.id(104873558308446574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_myname varchar2(20) := ''Madhu'';',
'    v_n number;',
'BEGIN',
'    --update RETAIL_SHOPPING_FD set comments = null;',
'    v_n := my_dashboard ( v_myname );',
'    --DBMS_OUTPUT.PUT_LINE(''Sales 2017: '' || l_sales_2017);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104861618566446566)
,p_name=>'clearTx'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104855236980446537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104862595501446568)
,p_event_id=>wwv_flow_imp.id(104861618566446566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'        delete from RETAIL_SHOPPING_FD;',
'        delete from BANK_TRANSFERS; ',
'        UPDATE CC_FD SET STATUS = ''Active'';',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104862086652446567)
,p_event_id=>wwv_flow_imp.id(104861618566446566)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204125571417936810)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104863131591446568)
,p_event_id=>wwv_flow_imp.id(104861618566446566)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(216879161766293780)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104863515839446568)
,p_name=>'New_2'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104855628666446537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104864016324446568)
,p_event_id=>wwv_flow_imp.id(104863515839446568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'        delete from BANK_TRANSFERS;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104864440732446569)
,p_event_id=>wwv_flow_imp.id(104863515839446568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Graph cleared refresh page.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104864969116446569)
,p_event_id=>wwv_flow_imp.id(104863515839446568)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104865368873446569)
,p_name=>'New_1'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104856411909446538)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104865903365446569)
,p_event_id=>wwv_flow_imp.id(104865368873446569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'v_cust_id number;',
'v_rand_no number;',
'v_inv_no varchar2(50);',
'begin',
'   SELECT id into v_cust_id FROM ( select   ID   from FINBANK_ACCOUNTS  ORDER BY DBMS_RANDOM.RANDOM) WHERE  rownum < 2 ;',
'   dbms_output.put_line(v_cust_id); ',
'   v_rand_no := round(DBMS_Random.Value(1,11000),0);',
'   v_inv_no := ''INVBULK_''||v_rand_no;  ',
'    FD_TX_INSERTS (v_inv_no,''Technology'', v_rand_no,''Metropol AVM'', v_cust_id ,5523854300101220,''08-Nov-23 04.31.55.00 AM'',22,''Arab States'',''Egypt'',''Abu Mena'',29.66666667,30.83583333,276,''Cody Hooper'',''Kristen Hanson'');',
'    SELECT id into v_cust_id FROM ( select   ID   from FINBANK_ACCOUNTS  ORDER BY DBMS_RANDOM.RANDOM) WHERE  rownum < 2 ;',
'   v_rand_no := round(DBMS_Random.Value(1,11000),0);',
'   v_inv_no := ''INVBULK_''||v_rand_no;  ',
'    FD_TX_INSERTS (v_inv_no,''Technology'', v_rand_no,''Metropol AVM'',v_cust_id,5523854300101220,''08-Nov-23 04.31.55.00 AM'',22,''Arab States'',''Egypt'',''Abu Mena'',29.66666667,30.83583333,276,''Cody Hooper'',''Kristen Hanson'');',
'end;',
' '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104859736518446563)
,p_name=>'cr'
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104856023218446537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104860234883446565)
,p_event_id=>wwv_flow_imp.id(104859736518446563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare   ',
'v_records number := :P43_RECORDS;',
' ',
'begin',
'',
'   if v_records > 0 then',
'   ',
'    FOR a in 1 .. v_records LOOP ',
'      FD_TX_INSERTS ( );',
'   END LOOP; ',
'',
'   end if;',
'end;',
''))
,p_attribute_02=>'P43_RECORDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104860653923446565)
,p_event_id=>wwv_flow_imp.id(104859736518446563)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Transactions Auto Generated!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104861160660446566)
,p_event_id=>wwv_flow_imp.id(104859736518446563)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204125571417936810)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104859264386446562)
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
,p_internal_uid=>66558626663660712
);
wwv_flow_imp.component_end;
end;
/
