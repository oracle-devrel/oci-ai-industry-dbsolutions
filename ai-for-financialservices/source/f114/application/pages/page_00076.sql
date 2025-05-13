prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_name=>'Home Loan EMI Calculator'
,p_alias=>'HOME-LOAN-EMI-CALCULATOR'
,p_step_title=>'Home Loan EMI Calculator'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5334020429963083)
,p_plug_name=>'Rg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62119980143085015)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5334153645963084)
,p_plug_name=>'EMI Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_body      CLOB;',
'l_body_html CLOB;',
'l_p number;',
'l_t number  := 10;',
'l_r number  := 10;',
'l_Rate number := 0;',
'-- Time is hardcoded as 10 years',
'l_Time number := 10;',
'emi number;',
'l_upper number;',
'l_lower number;',
'l_ratio number; ',
'l_intemi number;',
'l_princemi number;',
'l_intcomp number;',
'l_totalemi NUMBER(10) := 0;',
'l_counter_max number := 10;',
'l_counter number;',
'l_currbalance number;',
'',
'--ll_time number  := 0;',
'll_time number  := :P76_MONTHS;',
'  ',
'l_total_int number  := 0;',
'sd date;',
'fd date;',
'ld date;',
'sdd varchar2(200);',
'',
'---',
'url1 varchar2(2000);',
'',
'-- Cursor C1 Is ',
'-- --select (balance*-1) as CURRBALANCE from SBIHLDEC2023 where rownum = 1 order by  txndate desc;',
'-- select CURRBALANCE, sysdate from ',
'--     (select id, txndate, (balance*-1) as CURRBALANCE from SBIHLDEC2023   order by txndate desc)',
'-- where rownum = 1 ;',
'',
'Cursor C1 Is select  balance * -1 as CURRBALANCE',
'  from ( select a.*, max(id) over () as max_pk',
'           from SBIHLDEC2023 a',
'                )',
' where id = max_pk;',
'',
'',
'--Select HLID,  CURRBALANCE  From HLTRANS where hlid = (select max(hlid) from HLTRANS where currbalance > 0) ;',
'Cursor C2 Is',
'select VAL as HLRATE from HLTERM where DESCRIPTION = ''RATE'';',
'--Is Select RATE  From HLRATE where HLRATEID = (select max(HLRATEID) from HLRATE where RATE > 0)  ;',
'-- Cursor C3 Is ',
'-- select VAL as HLTERM from HLTERM where DESCRIPTION = ''TERM'';',
'--Select TERM  From HLTERM where TERMID = (select max(TERMID) from HLTERM where TERM > 0)  ;',
'',
'begin',
'',
'For row_1 In C1 Loop ',
'      l_p := row_1.CURRBALANCE;',
'end loop;',
'',
'For row_2 In C2 Loop ',
'      l_Rate := row_2.HLRATE;',
'end loop;',
'',
'--  For row_3 In C3 Loop ',
'--        ll_time := row_3.HLTERM;',
'--  end loop;',
'',
'-- If Years',
'--l_t := ll_time*12; ',
'',
'-- If Months',
'l_t := ll_time; ',
' ',
'',
'l_r := l_Rate/12/100;',
'sd := sysdate;',
'',
'htp.p (''  <a href="https://homeloans.sbi/calculators" target="_new">SBI HL </a><br/> Current Balance ''||l_p);',
'',
'l_body_html := ''<html>'';',
'l_body_html := ''<table class="a-GV-table"  border=1 cellspacing=4 cellpadding=4  aria-live="polite" style="border-color:white;">'';',
'',
'l_body_html := l_body_html ||'' <th role="columnheader" class="a-GV-header is-readonly"   >Month Pending',
'<td  > Reducing Loan </td>',
'<td  > Amount after EMI Paid</td>',
'<td  > Interest   </td>',
'<td  > Principal   </td>',
'<td  > EMI   </td>',
'',
'<td  > Months remaining </td>',
'<td  > Time (m) </td> ',
'</colgroup></th> '';',
' ',
'',
'FOR l_counter in 1 .. l_t LOOP ',
'    ',
'    l_upper := power((1+l_r), l_t);',
'    l_lower := power((1+l_r), l_t)-1;',
'    l_ratio := l_upper  / l_lower;  ',
'    emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'    l_intcomp := round(l_p * l_r);',
'    l_princemi := round(emi - l_intcomp);',
'    l_currbalance := l_p - l_princemi;',
'    --l_currbalance := round(l_currbalance);',
'    -- find next month',
'    sd := ADD_MONTHS(sd, 1);',
'    fd := last_day(add_months(sd,-1))+1;',
'    ld := last_day(add_months(sd,0));  ',
'    --to_char(TXDATE,''DD MON YYYY'') TXDATE,',
'    sdd := to_char(sd,''DD/Mon/YY'');',
'',
'    l_total_int := l_total_int+l_intcomp;',
'     ',
'',
'    l_body_html := l_body_html ||'' <tr> ',
'    <td>''||l_counter||''</td> ',
'    <td align="right">''||unistr(''\20B9'') ||TO_CHAR(l_p, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right">'' ||unistr(''\20B9'') ||TO_CHAR(l_currbalance, ''999,99,99,99,999'') ||'' </td>  ',
'    <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_intcomp, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_princemi, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(emi, ''999,99,99,99,999'') ||'' </td>  ',
'    ',
'    <td>''||l_t||'' </td> ',
'    <td>''||sdd||''  </td> ',
'    </tr>'';',
'    -- ''||fd||'' ''||ld||''',
'   -- l_body_html := l_body_html ||'' <tr> <td>''||l_counter||''</td> <td align="right">''||unistr(''\20B9'') ||TO_CHAR(l_p, ''999,99,99,99,999'')||'' </td>  <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_intcomp, ''999,99,99,99,999'')||'' </td>  <td align="r'
||'ight"> ''||unistr(''\20B9'') ||TO_CHAR(l_princemi, ''999,99,99,99,999'')||'' </td>  <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(emi, ''999,99,99,99,999'') ||'' </td>  <td align="right">'' ||unistr(''\20B9'') ||TO_CHAR(l_currbalance, ''999,99,99,99,999'') ||'' <'
||'/td>  <td>''||l_t||'' </td> </tr> ''; ',
'     ',
'   l_totalemi := emi + l_totalemi;',
'   l_p := l_currbalance; ',
'    l_t := l_t - 1;',
'    ',
'END LOOP;  ',
'',
'l_body_html := l_body_html ||''<tr>',
'<td>Total Interest Paid</td>',
'<td colspan=2>   </td>',
'<td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_total_int, ''999,99,99,99,999'') ||'' </td>',
'<td colspan=4></td>',
'</tr>'';',
'l_body_html := l_body_html ||''</table>'';',
'l_body_html := l_body_html || ''</html><br>'';',
'',
'Htp.p(  l_body_html );',
'',
'',
'end;',
'',
'',
'-- l_body_html := l_body_html ||'' <th role="columnheader" class="a-GV-header is-readonly><colgroup>',
'-- <td  >   Rate : </td>',
'-- <td colspan=2  >''||l_Rate||'' </td>',
'-- <td> Time : </td>',
'-- <td colspan=1 >''||l_t||'' (months) </td>',
'-- <td colspan=2  >Current Balance ''||l_p||''</th>',
'-- </tr> '';',
'-- ''||sd||''   '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(139784197184383551)
,p_plug_name=>'EMI Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_body      CLOB;',
'l_body_html CLOB;',
'-- Principal ',
'l_p number := to_number(:P76_LOAN_AMOUNT); ',
'l_t number  := 10;',
'l_r number  := 10;',
'l_Rate number := to_number(:P76_RATE);',
'-- Time is hardcoded as 10 years',
'l_Time number := 10;',
' emi number;',
' ',
'l_upper number;',
'l_lower number;',
'l_ratio number; ',
'l_intemi number;',
'l_princemi number;',
'l_intcomp number;',
'l_totalemi NUMBER(10) := 0;',
'l_counter_max number := 10;',
'l_counter number;',
'l_currbalance number;',
'',
'--ll_time number  := 0;',
'll_time number  := to_number(:P76_MONTHS);',
'  ',
'l_total_int number  := 0;',
'sd date;',
'fd date;',
'ld date;',
'sdd varchar2(200);',
'',
'---',
'url1 varchar2(2000);',
'  ',
' ',
' ',
'begin',
' ',
' ',
' ',
'',
'-- If Months',
'l_t := ll_time; ',
' ',
'',
'l_r := l_Rate/12/100;',
'sd := sysdate;',
'',
'Htp.p('' l_p is ''||l_p);',
'Htp.p('' l_Rate is ''||l_Rate);',
'Htp.p('' ll_time is ''||ll_time);',
'',
'htp.p (''  <a href="https://homeloans.sbi/calculators" target="_new">SBI HL </a><br/> Current Balance ''||l_p);',
'',
'l_body_html := ''<html>'';',
'l_body_html := ''<table class="a-GV-table"  border=1 cellspacing=4 cellpadding=4  aria-live="polite" style="border-color:white;">'';',
'',
'l_body_html := l_body_html ||'' <th role="columnheader" class="a-GV-header is-readonly"   >Month Pending',
'<td  > Reducing Loan </td>',
'<td  > Amount after EMI Paid</td>',
'<td  > Interest   </td>',
'<td  > Principal   </td>',
'<td  > EMI   </td>',
'',
'<td  > Months remaining </td>',
'<td  > Time (m) </td> ',
'</colgroup></th> '';',
' ',
'',
'  FOR l_counter in 1 .. l_t LOOP ',
'    ',
'    l_upper := power((1+l_r), l_t);',
'    l_lower := power((1+l_r), l_t)-1;',
'    l_ratio := l_upper  / l_lower;  ',
'    --emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'    --emi :=  round(3 * 2 , 0)  ; ',
'     emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'    ',
'    l_intcomp := round(l_p * l_r);',
'    l_princemi := round(emi - l_intcomp);',
'    l_currbalance := l_p - l_princemi;',
'    l_currbalance := round(l_currbalance);',
'    -- find next month',
'    sd := ADD_MONTHS(sd, 1);',
'    fd := last_day(add_months(sd,-1))+1;',
'    ld := last_day(add_months(sd,0));  ',
'    --to_char(TXDATE,''DD MON YYYY'') TXDATE,',
'    sdd := to_char(sd,''DD/Mon/YY'');',
'',
'    l_total_int := l_total_int+l_intcomp;',
'     ',
'    l_body_html := l_body_html ||'' <tr> ',
'    <td>''||l_counter||''</td> ',
'    <td align="right">''||unistr(''\20B9'') ||TO_CHAR(l_p, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right">'' ||unistr(''\20B9'') ||TO_CHAR(l_currbalance, ''999,99,99,99,999'') ||'' </td>  ',
'    <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_intcomp, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_princemi, ''999,99,99,99,999'')||'' </td>  ',
'    <td>''||l_t||'' </td>   ',
'     </tr>'';',
'',
'    l_totalemi := emi + l_totalemi;',
'    l_p := l_currbalance; ',
'    l_t := l_t - 1;',
'    ',
'    ',
'',
'    -- l_body_html := l_body_html ||'' <tr> ',
'    -- -- <td>''||l_counter||''</td> ',
'    -- -- <td align="right">''||unistr(''\20B9'') ||TO_CHAR(l_p, ''999,99,99,99,999'')||'' </td> ',
'    -- -- <td align="right">'' ||unistr(''\20B9'') ||TO_CHAR(l_currbalance, ''999,99,99,99,999'') ||'' </td>  ',
'    -- -- <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_intcomp, ''999,99,99,99,999'')||'' </td> ',
'    -- -- <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_princemi, ''999,99,99,99,999'')||'' </td> ',
'    -- -- <td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(emi, ''999,99,99,99,999'') ||'' </td>  ',
'    ',
'    -- -- <td>''||l_t||'' </td> ',
'    -- -- <td>''||sdd||''  </td> ',
'    -- </tr>'';',
'   ',
'--    l_totalemi := emi + l_totalemi;',
'--    l_p := l_currbalance; ',
'--     l_t := l_t - 1;',
'    ',
' END LOOP;  ',
'',
'l_body_html := l_body_html ||''<tr>',
'<td>Total Interest Paid</td>',
'<td colspan=2>   </td>',
'<td align="right"> ''||unistr(''\20B9'') ||TO_CHAR(l_total_int, ''999,99,99,99,999'') ||'' </td>',
'<td colspan=4></td>',
'</tr>'';',
'l_body_html := l_body_html ||''</table>'';',
'l_body_html := l_body_html || ''</html><br>'';',
'',
'Htp.p(  l_body_html );',
'',
'',
'end;',
' '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(264777430045050016)
,p_plug_name=>'HLTERMS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_plug_grid_column_span=>4
,p_query_type=>'TABLE'
,p_query_table=>'HLTERM'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'HLTERMS'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(264778747326050026)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(264779285648050027)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(264780268979050030)
,p_name=>'TERMID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TERMID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(264781231984050031)
,p_name=>'VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Val'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(264782224892050032)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(264777952391050019)
,p_internal_uid=>273770060833114473
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(264778334546050021)
,p_interactive_grid_id=>wwv_flow_imp.id(264777952391050019)
,p_static_id=>'300500'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(264778534859050022)
,p_report_id=>wwv_flow_imp.id(264778334546050021)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264779627075050028)
,p_view_id=>wwv_flow_imp.id(264778534859050022)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(264779285648050027)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>85.67200000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264780656256050030)
,p_view_id=>wwv_flow_imp.id(264778534859050022)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(264780268979050030)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264781687398050031)
,p_view_id=>wwv_flow_imp.id(264778534859050022)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(264781231984050031)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(264782685716050032)
,p_view_id=>wwv_flow_imp.id(264778534859050022)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(264782224892050032)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.656
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5333812056963081)
,p_name=>'P76_LOAN_AMOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5334020429963083)
,p_item_default=>'100000'
,p_prompt=>'Loan Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254437042085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5333896242963082)
,p_name=>'P76_RATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5334020429963083)
,p_item_default=>'8.4'
,p_prompt=>'Rate of Interest'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254437042085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(115047577368758687)
,p_name=>'P76_MONTHS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5334020429963083)
,p_item_default=>'120'
,p_prompt=>'Months'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254437042085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5411642950869561)
,p_name=>'pChanges'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5412173314869567)
,p_event_id=>wwv_flow_imp.id(5411642950869561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'EMI'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_today date := sysdate;',
'    l_p number;',
'    l_t number;',
'    l_r number;',
'    emi number;',
'    l_upper number;',
'    l_lower number;',
'    l_ratio number; ',
'begin',
'    l_p := :P;',
'    l_t := :T*12;',
'    l_r := :R/12/100; ',
'    l_upper := power((1+l_r), l_t);',
'    l_lower := power((1+l_r), l_t)-1;',
'    l_ratio := l_upper  / l_lower; ',
'    emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'    return emi;',
'end;',
' '))
,p_attribute_07=>'P,T,R'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5412621232869570)
,p_event_id=>wwv_flow_imp.id(5411642950869561)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'INTCOMP'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_today date := sysdate;',
'    l_p number;',
'    l_t number;',
'    l_r number;',
'    emi number;',
'    l_upper number;',
'    l_lower number;',
'    l_ratio number; ',
'    l_intemi number; ',
'begin',
'    l_p := :P;',
'    l_t := :T*12;',
'    l_r := :R/12/100; ',
'    l_upper := power((1+l_r), l_t);',
'    l_lower := power((1+l_r), l_t)-1;',
'    l_ratio := l_upper  / l_lower; ',
'    emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'    -- interest is 1% of principal',
'    l_intemi := round((l_r * l_p),0);',
'    return l_intemi;',
'end;'))
,p_attribute_07=>'P,T,R'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5413174150869572)
,p_event_id=>wwv_flow_imp.id(5411642950869561)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'PRINCOMP'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_today date := sysdate;',
'   l_p number;',
'   l_t number;',
'   l_r number;',
'   emi number;',
'   l_upper number;',
'   l_lower number;',
'   l_ratio number; ',
'   l_intemi number; ',
'   l_princemi number; ',
'begin',
'   l_p := :P;',
'   l_t := :T*12;',
'   l_r := :R/12/100; ',
'   l_upper := power((1+l_r), l_t);',
'   l_lower := power((1+l_r), l_t)-1;',
'   l_ratio := l_upper  / l_lower; ',
'   emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'   -- interest is 1% of principal',
'   l_intemi := l_r * l_p;',
'   l_princemi := round(emi - l_intemi);',
'   return l_princemi;',
'end;'))
,p_attribute_07=>'P,T,R'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5413646619869574)
,p_event_id=>wwv_flow_imp.id(5411642950869561)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'CURRBALANCE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_today date := sysdate;',
'   l_p number;',
'   l_t number;',
'   l_r number;',
'   emi number;',
'   l_upper number;',
'   l_lower number;',
'   l_ratio number; ',
'   l_intemi number; ',
'   l_princemi number;',
'   l_currbalance number; ',
'begin',
'   l_p := :P;',
'   l_t := :T*12;',
'   l_r := :R/12/100; ',
'   l_upper := power((1+l_r), l_t);',
'   l_lower := power((1+l_r), l_t)-1;',
'   l_ratio := l_upper  / l_lower; ',
'   emi :=  round(l_p * l_r * l_ratio, 0)  ; ',
'   -- interest is 1% of principal',
'   l_intemi := l_r * l_p;',
'   l_princemi := emi - l_intemi;',
'   l_currbalance := round(l_p - l_princemi);',
'   return l_currbalance;',
'end;'))
,p_attribute_07=>'P,T,R'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5414039406869575)
,p_name=>'d1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_FROMDT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5414466442869577)
,p_name=>'d2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_TODT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5414807781869578)
,p_name=>'oC2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MONTHS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5415390769869581)
,p_event_id=>wwv_flow_imp.id(5414807781869578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
