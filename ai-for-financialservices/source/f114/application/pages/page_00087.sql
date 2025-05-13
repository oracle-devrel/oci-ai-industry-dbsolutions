prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_name=>'Balance Chart'
,p_alias=>'BALANCE-CHART'
,p_step_title=>'Balance Chart'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5332068107963063)
,p_plug_name=>'Account Balance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5332293289963066)
,p_region_id=>wwv_flow_imp.id(5332068107963063)
,p_chart_type=>'lineWithArea'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5332457318963067)
,p_chart_id=>wwv_flow_imp.id(5332293289963066)
,p_seq=>10
,p_name=>'Min Balance'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'to_char(TXDATE,''DD MON YYYY'') Dt ,  ',
'to_char(TXDATE,''YYYYMMDD'') Dt2 ,   ',
'min(BALANCE)  "Min Balance" ,',
'concat( unistr(''\20B9''), TO_CHAR (min(BALANCE), ''9G99G99G999'')) as "Min Balance Show",  ',
'''Debit'' Debit ',
'FROM ',
' (',
'     select  ',
'       TXDATE,  ',
'       BALANCE  ',
'       from FD_BANK_TRANSACTIONS  ',
'    --     WHERE   (TXNDATE BETWEEN TO_DATE (:P1_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P1_TODT, ''mm/dd/yyyy'')  )',
'    --    OR ',
'    --    (:P1_FROMDT IS NULL AND :P1_TODT IS NULL)',
'       ORDER BY to_char(TXDATE,''YYYYMMDD'')    ',
' )',
'GROUP BY to_char(TXDATE,''DD MON YYYY''), ',
'to_char(TXDATE,''YYYYMMDD'')',
'ORDER BY to_char(TXDATE,''YYYYMMDD'')  '))
,p_items_value_column_name=>'Min Balance'
,p_items_label_column_name=>'DT'
,p_items_short_desc_column_name=>'Min Balance Show'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5332632057963069)
,p_chart_id=>wwv_flow_imp.id(5332293289963066)
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5332556488963068)
,p_chart_id=>wwv_flow_imp.id(5332293289963066)
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5332752686963070)
,p_plug_name=>'Debit'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5332867854963071)
,p_region_id=>wwv_flow_imp.id(5332752686963070)
,p_chart_type=>'area'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5332958860963072)
,p_chart_id=>wwv_flow_imp.id(5332867854963071)
,p_seq=>10
,p_name=>'Debits'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'to_char(TXDATE,''DD MON YYYY'') Dt , ',
'to_char(TXDATE,''YYYYMMDD'') Dt2 ,  ',
'sum(DEBIT)  "Total Debits" , ',
'concat( unistr(''\20B9''), TO_CHAR (sum(DEBIT), ''9G99G99G999'')) as "Total Debits Show",   ',
'''Debit'' Debit ',
'FROM ',
' (',
'     select  ',
'       TXDATE,   ',
'       DEBIT ',
'       from FD_BANK_TRANSACTIONS     ',
'       ORDER BY to_char(TXDATE,''YYYYMM'')    ',
' )',
'GROUP BY to_char(TXDATE,''DD MON YYYY''), ',
'to_char(TXDATE,''YYYYMMDD'')',
'ORDER BY to_char(TXDATE,''YYYYMMDD'')    '))
,p_items_value_column_name=>'Total Debits'
,p_items_label_column_name=>'DT'
,p_items_short_desc_column_name=>'Total Debits Show'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5332991716963073)
,p_chart_id=>wwv_flow_imp.id(5332867854963071)
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5333135869963074)
,p_chart_id=>wwv_flow_imp.id(5332867854963071)
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5333284953963075)
,p_plug_name=>'Credit'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5333345577963076)
,p_region_id=>wwv_flow_imp.id(5333284953963075)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5333449961963077)
,p_chart_id=>wwv_flow_imp.id(5333345577963076)
,p_seq=>10
,p_name=>'Credits'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'to_char(TXDATE,''DD MON YYYY'') Dt , ',
'to_char(TXDATE,''YYYYMMDD'') Dt2 ,  ',
'sum(CREDIT)  "Total Credits" , ',
'concat( unistr(''\20B9''), TO_CHAR (sum(CREDIT), ''9G99G99G999'')) as "Total CREDIT Show",   ',
'''Debit'' Debit ',
'FROM ',
' (',
'     select  ',
'       TXDATE,  ',
'       --DEBIT * -1 as DEBIT',
'       CREDIT ',
'       from FD_BANK_TRANSACTIONS    ',
'    --    WHERE ',
'    --    TO_NUMBER(DEBIT) > 1 AND ',
'    --    (TXNDATE BETWEEN TO_DATE (:P1_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P1_TODT, ''mm/dd/yyyy'')  )',
'    --    OR ',
'    --    (:P1_FROMDT IS NULL AND :P1_TODT IS NULL)',
'       ORDER BY to_char(TXDATE,''YYYYMM'')    ',
' )',
'GROUP BY to_char(TXDATE,''DD MON YYYY''), ',
'to_char(TXDATE,''YYYYMMDD'')',
'ORDER BY to_char(TXDATE,''YYYYMMDD'')    '))
,p_items_value_column_name=>'Total Credits'
,p_items_label_column_name=>'DT'
,p_items_short_desc_column_name=>'Total CREDIT Show'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5333530247963078)
,p_chart_id=>wwv_flow_imp.id(5333345577963076)
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5333642935963079)
,p_chart_id=>wwv_flow_imp.id(5333345577963076)
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
);
wwv_flow_imp.component_end;
end;
/
