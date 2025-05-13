prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Home'
,p_alias=>'HOME1'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>' '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-cell, .t-Report-colHead {',
'    border: 1px solid#47423D;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(105804930784434408)
,p_plug_name=>'Debit  Credit Chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P3_FROMDT,P3_TODT'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(62583299817327007)
,p_region_id=>wwv_flow_imp.id(105804930784434408)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(62585630507327012)
,p_chart_id=>wwv_flow_imp.id(62583299817327007)
,p_seq=>10
,p_name=>'Paid to Bank - Credit'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(txdate, ''YYYY-MM'') as YYYYMM , sum(CREDIT) as CREDIT',
'from SBIHL where CREDIT < 10000000',
'group by to_char(txdate, ''YYYY-MM'')',
'order by 1 desc',
'',
'',
'/*',
'select  ',
'    trim(to_char(txdate, ''mm/yyyy'')) as mth ,',
'    trim(to_char(txdate, ''MON-yyyy'')) as mthyr ,',
'    SUM(CREDIT) as total_by_mth',
'from SBIHL ',
'group by   trim(to_char(txdate, ''mm/yyyy'')) ,trim(to_char(txdate, ''MON-yyyy''))',
'order by   trim(to_char(txdate, ''mm/yyyy'')) , trim(to_char(txdate, ''MON-yyyy''))',
'',
'select  ',
'        to_char(trunc(TXDATE, ''mm''), ''MON'') as mth,   ',
'        sum(CREDIT) as total_by_mth  ',
'from     SBIHL ',
'group by   trunc(TXDATE, ''mm'')  ',
'order by  mth   ',
'*/',
'',
'',
'/*',
'select  to_char(trunc(TXDATE, ''mm''), ''MON'') as mth,     ',
'        sum(CREDIT) as total_by_mth  ',
'from     SBIHL ',
'group by   trunc(TXDATE, ''mm'')  ',
'order by  mth ',
'*/',
' '))
,p_items_value_column_name=>'CREDIT'
,p_items_label_column_name=>'YYYYMM'
,p_color=>'#06651c'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(62586149086327014)
,p_chart_id=>wwv_flow_imp.id(62583299817327007)
,p_seq=>20
,p_name=>'EMI Bank Charges'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(txdate, ''YYYY-MM'') as YYYYMM , sum(DEBIT) as DEBIT',
'from SBIHL where DEBIT < 1000000',
'group by to_char(txdate, ''YYYY-MM'')',
'order by 1 desc'))
,p_items_value_column_name=>'DEBIT'
,p_items_label_column_name=>'YYYYMM'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(62585034971327010)
,p_chart_id=>wwv_flow_imp.id(62583299817327007)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Months'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#930a33'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(62584396300327010)
,p_chart_id=>wwv_flow_imp.id(62583299817327007)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Debited / Credit Amounts'
,p_title_font_family=>'Arial Black'
,p_title_font_style=>'normal'
,p_title_font_color=>'#8d0428'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_currency=>'INR'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(62583750134327009)
,p_chart_id=>wwv_flow_imp.id(62583299817327007)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title_font_color=>'#4b51f1'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
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
 p_id=>wwv_flow_imp.id(10913240309858628696)
,p_plug_name=>'Transaction Records'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   var_id number; ',
'',
'   Cursor C_1 Is ',
'        select to_char(min(TXDATE),''DD Mon YYYY'')   as frdt , to_char(max(TXDATE),''DD Mon YYYY'') as tddt ',
'        ,count(*)  as cnt1',
'        from TRANSMASTER  ;',
'',
'   /*',
'    Cursor C_2 Is ',
'        select to_char(min(TXDATE),''DD Mon YYYY'')   as frdt , to_char(max(TXDATE),''DD Mon YYYY'') as tddt ',
'        ,count(*)  as cnt2',
'        from SBIHL  ;',
'        */',
' ',
'Begin',
'',
'    Htp.p(  ''<table  border=0 cellspacing=2 cellpadding=2 width=100%  class="t-Report-report" style="border-color:#47423D;border: 1px solid #47423D;">'' );',
'        For row_1 In C_1 Loop  ',
'            Htp.p(  ''<tr  style="background-color:#47423D;color:white;">'' );',
'                Htp.p(  ''<td class="t-Report-colHead">Transactions</td>'' ); ',
'                Htp.p( '' </td>'' );',
'            Htp.p(  ''</tr>'' );',
'            Htp.p(  ''<tr>'' ); ',
'                Htp.p(  ''<td  class="t-Report-cell" style="align:right"> '' );',
'                Htp.p(  ''FR: '' );',
'                Htp.p(  row_1.frdt  );',
'                Htp.p(  ''<br/> TO: '' );',
'                Htp.p(  row_1.tddt  );',
'                Htp.p(  ''<br/> Transactions <br/>'' );',
'                Htp.p(  row_1.cnt1  );',
'                Htp.p( '' </td>'' ); ',
'            Htp.p(  ''</tr> '' );   ',
'        End Loop;',
'        /*',
'        For row_2 In C_2 Loop  ',
'            Htp.p(  ''<tr  style="background-color:#47423D;color:white;">'' );',
'                Htp.p(  ''<td class="t-Report-colHead" >SBI</td>'' ); ',
'                Htp.p( '' </td>'' );',
'            Htp.p(  ''</tr>'' );',
'            Htp.p(  ''<tr>'' ); ',
'                Htp.p(  ''<td  class="t-Report-cell" style="align:right"> '' );',
'                Htp.p(  ''FR: '' );',
'                Htp.p(  row_2.frdt  );',
'                Htp.p(  ''<br/> TO:'' );',
'                Htp.p(  row_2.tddt  );',
'                Htp.p(  ''<br/> Transactions <br/>'' );',
'                Htp.p(  row_2.cnt2  );',
'                Htp.p( '' </td>'' ); ',
'            Htp.p(  ''</tr> '' );   ',
'        End Loop;',
'        */',
'    Htp.p(  ''</table>'' ); ',
'',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15255477819426655655)
,p_plug_name=>'Transaction Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P3_FROMDT,P3_TODT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(62590254499327019)
,p_region_id=>wwv_flow_imp.id(15255477819426655655)
,p_chart_type=>'combo'
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
 p_id=>wwv_flow_imp.id(62592549240327020)
,p_chart_id=>wwv_flow_imp.id(62590254499327019)
,p_seq=>10
,p_name=>'Debit'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'sum(DEBIT) "Total Debit"  , ''Debit'',',
'sum(CREDIT)  "Total Credit" , ''Credit'',',
'trunc (TXDATE , ''YEAR'')  FdYr ,',
'add_months(trunc(TXDATE,''YEAR''),12)-1 LdYr',
'FROM',
' (',
'     select ',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc',
'',
'/*',
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'sum(DEBIT) "Total Debit"  , ''Debit'',',
'sum(CREDIT)  "Total Credit" , ''Credit''',
'FROM',
' (',
'     select ',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc',
'*/',
'',
'/*',
'select ',
'Year,',
' sum(DEBIT) "Total Debit"  , ''Debit'' series ',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'  )',
' GROUP BY Year, trunc (TXDATE , ''YEAR'')  ',
' union ',
' select ',
'Year, ',
' sum(CREDIT)  "Total Credit" , ''Credit'' series ',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'  )',
' GROUP BY Year, trunc (TXDATE , ''YEAR'') ',
'',
'*/',
'',
'',
'/*',
'select ROWID,',
'       ID, ',
'       to_char( TXDATE, ''DD/MM/YYYY'' ) TXDATE,',
'       TRANSACTIONTYPE,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit", ',
'       ROUND(BALANCE,0) "BALANCE" ',
'  from TRANSMASTER',
'  where',
'  TXDATE BETWEEN TO_DATE (:P3_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P3_TODT, ''mm/dd/yyyy'')',
'',
'  select null link, EXTRACT(Year FROM AYDATE) as label , ''Debit'' series,  Debit  from TRANSMASTER',
'',
'union',
'',
'select null link, EXTRACT(Year FROM TXDATE) as label , ''Debit'' series,  Debit  from TRANSMASTER',
'',
'union',
'',
'select null link, EXTRACT(Year FROM TXDATE) as label , ''Credit'' series,   Credit  from TRANSMASTER',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''TOTAL_INCOME'' series,  TOTAL_INCOME  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''TOTAL_TAX'' series,   TOTAL_TAX  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''SAVINGS'' series,   ( TOTAL_INCOME - TOTAL_TAX ) as SAVINGS  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''AGP'' series,   AGP_SALARY  from aydata',
'',
'  */'))
,p_ajax_items_to_submit=>'P3_FROMDT,P3_TODT'
,p_series_type=>'bar'
,p_items_value_column_name=>'Total Debit'
,p_items_label_column_name=>'YEAR'
,p_custom_column_name=>'Total Debit'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_FROMDT,P9_TODT:&FDYR.,&LDYR.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(62593191679327031)
,p_chart_id=>wwv_flow_imp.id(62590254499327019)
,p_seq=>20
,p_name=>'Credit'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'sum(DEBIT) "Total Debit"  , ''Debit'',',
'sum(CREDIT)  "Total Credit" , ''Credit'',',
'trunc (TXDATE , ''YEAR'')  FdYr ,',
'add_months(trunc(TXDATE,''YEAR''),12)-1 LdYr',
'FROM',
' (',
'     select ',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc',
'',
'/*',
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'sum(DEBIT) "Total Debit"  , ''Debit'',',
'sum(CREDIT)  "Total Credit" , ''Credit''',
'FROM',
' (',
'     select ',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc',
'*/',
'',
'/*',
'select ',
'Year,',
' sum(DEBIT) "Total Debit"  , ''Debit'' series ',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'  )',
' GROUP BY Year, trunc (TXDATE , ''YEAR'')  ',
' union ',
' select ',
'Year, ',
' sum(CREDIT)  "Total Credit" , ''Credit'' series ',
'FROM ',
'  (',
'      select ROWID,',
'        ID,',
'        EXTRACT(YEAR FROM TXDATE) Year,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER where ( TRANSACTIONTYPE not like ''%PRINCIPAL AUTO REDEEM%'' AND ',
'                    TRANSACTIONTYPE not like ''%FD BOOKED%''  AND',
'                    TRANSACTIONTYPE not like ''%FD THROUGH%'' )  ',
'  )',
' GROUP BY Year, trunc (TXDATE , ''YEAR'') ',
'',
'*/',
'',
'',
'/*',
'select ROWID,',
'       ID, ',
'       to_char( TXDATE, ''DD/MM/YYYY'' ) TXDATE,',
'       TRANSACTIONTYPE,',
'       ROUND(DEBIT,0) "Debit", ',
'       ROUND(CREDIT,0) "Credit", ',
'       ROUND(BALANCE,0) "BALANCE" ',
'  from TRANSMASTER',
'  where',
'  TXDATE BETWEEN TO_DATE (:P3_FROMDT, ''mm/dd/yyyy'') AND TO_DATE (:P3_TODT, ''mm/dd/yyyy'')',
'',
'  select null link, EXTRACT(Year FROM AYDATE) as label , ''Debit'' series,  Debit  from TRANSMASTER',
'',
'union',
'',
'select null link, EXTRACT(Year FROM TXDATE) as label , ''Debit'' series,  Debit  from TRANSMASTER',
'',
'union',
'',
'select null link, EXTRACT(Year FROM TXDATE) as label , ''Credit'' series,   Credit  from TRANSMASTER',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''TOTAL_INCOME'' series,  TOTAL_INCOME  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''TOTAL_TAX'' series,   TOTAL_TAX  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''SAVINGS'' series,   ( TOTAL_INCOME - TOTAL_TAX ) as SAVINGS  from aydata',
'',
'union',
'',
'select null link, EXTRACT(Year FROM AYDATE) as label , ''AGP'' series,   AGP_SALARY  from aydata',
'',
'  */'))
,p_ajax_items_to_submit=>'P3_FROMDT,P3_TODT'
,p_series_type=>'bar'
,p_items_value_column_name=>'Total Credit'
,p_items_label_column_name=>'YEAR'
,p_custom_column_name=>'Total Credit'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_FROMDT,P9_TODT:&FDYR.,&LDYR.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(62591421272327019)
,p_chart_id=>wwv_flow_imp.id(62590254499327019)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Credit Date'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#0D5C05'
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
 p_id=>wwv_flow_imp.id(62592021902327020)
,p_chart_id=>wwv_flow_imp.id(62590254499327019)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>'y2'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'on'
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
 p_id=>wwv_flow_imp.id(62590769482327019)
,p_chart_id=>wwv_flow_imp.id(62590254499327019)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Credit Amount'
,p_title_font_family=>'Arial Black'
,p_title_font_style=>'normal'
,p_title_font_color=>'#0D5C05'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15366319991064379918)
,p_name=>'Annual Summary'
,p_template=>wwv_flow_imp.id(62118548241085014)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>3
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'EXTRACT(YEAR FROM TXDATE) Year,',
'unistr(''\20B9'') ||TO_CHAR(sum(DEBIT), ''999,99,99,99,999'') "Total Debit", ',
'unistr(''\20B9'') ||TO_CHAR(sum(CREDIT), ''999,99,99,99,999'')  "Total Credit" , ',
'trunc (TXDATE , ''YEAR'')  FdYr ,',
'add_months(trunc(TXDATE,''YEAR''),12)-1 "LdYr" ',
'FROM',
' (',
'     select ROWID,',
'        ID,',
'        TXDATE,',
'        TRANSACTIONTYPE,',
'        DEBIT,',
'        CREDIT,',
'        BALANCE',
'   from TRANSMASTER  ',
' ) GROUP BY EXTRACT(YEAR FROM TXDATE) , trunc (TXDATE , ''YEAR'') ',
' ORDER BY Year Desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62221958113085074)
,p_query_num_rows=>8
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62580855566326994)
,p_query_column_id=>1
,p_column_alias=>'YEAR'
,p_column_display_sequence=>10
,p_column_heading=>'Transaction Year'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_FROMDT,P9_TODT,P9_YEARFILTER:#FDYR#,#LdYr#,#YEAR#'
,p_column_linktext=>'#YEAR#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62581244976326995)
,p_query_column_id=>2
,p_column_alias=>'Total Debit'
,p_column_display_sequence=>20
,p_column_heading=>'Total Debit'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62581667133326996)
,p_query_column_id=>3
,p_column_alias=>'Total Credit'
,p_column_display_sequence=>30
,p_column_heading=>'Total Credit'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62582119119326996)
,p_query_column_id=>4
,p_column_alias=>'FDYR'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62582470492326996)
,p_query_column_id=>5
,p_column_alias=>'LdYr'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19820646210264393911)
,p_plug_name=>'Balance Chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P3_FROMDT,P3_TODT'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(62587592963327016)
,p_region_id=>wwv_flow_imp.id(19820646210264393911)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'auto'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(62589246406327017)
,p_chart_id=>wwv_flow_imp.id(62587592963327016)
,p_seq=>10
,p_name=>'Balance Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select   ',
'        ID,',
'        to_char(TXDATE,''YYMMDD'') rawdate,',
'        to_char(txdate, ''YYYY-MM'') as YYYYMM,',
'        TXDATE,  ',
'        TO_NUMBER(BALANCE) as Balance, ',
'        (''On Dt: <b>''||to_char(TXDATE,''DD MON YY'')||''</b>',
'         Balance: <b>''||unistr(''\20B9'') ||TO_CHAR(Balance, ''999,99,99,99,999'')||''</b>',
'         Tx: <b>''||TRANSACTIONTYPE||''</b>'') as TXDETAIL',
'   from SBIHL ',
'   ORDER BY  2, 1 desc'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"ID","expr":"ID"}],"itemName":"P3_FROMDT"}'
,p_items_value_column_name=>'BALANCE'
,p_items_label_column_name=>'ID'
,p_items_short_desc_column_name=>'TXDETAIL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TX:&TRANSACTIONTYPE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(62588683532327017)
,p_chart_id=>wwv_flow_imp.id(62587592963327016)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Balance Amount'
,p_title_font_family=>'Arial Black'
,p_title_font_style=>'normal'
,p_title_font_color=>'#8d0428'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_currency=>'INR'
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
 p_id=>wwv_flow_imp.id(62588089097327016)
,p_chart_id=>wwv_flow_imp.id(62587592963327016)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Balance Date'
,p_title_font_family=>'Arial Black'
,p_title_font_color=>'#930a33'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
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
wwv_flow_imp.component_end;
end;
/
