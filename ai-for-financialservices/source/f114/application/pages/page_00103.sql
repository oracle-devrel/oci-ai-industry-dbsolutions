prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_name=>'Data Exporter'
,p_alias=>'DATAEXPORTER'
,p_step_title=>'Data Exporter'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'/* ------------ Color Icons ---------------------- */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14338693631257978)
,p_plug_name=>'Generated Insert Script'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'declare',
'  v_table_name      varchar2(30) := :P103_TABLENAME;',
'  v_column_list     varchar2(2000);',
'  v_insert_list     varchar2(2000);',
'  v_ref_cur_columns varchar2(4000);',
'  v_ref_cur_query   varchar2(2000);',
'  v_ref_cur_output  varchar2(2000);',
'  v_column_name     varchar2(2000);',
'  cursor c1 is select column_name, data_type from user_tab_columns where table_name = v_table_name order by column_id;',
'  refcur            sys_refcursor; ',
'begin',
'  for i in c1 loop',
'     v_column_list := v_column_list||'',''||i.column_name;',
'     if i.data_type = ''NUMBER'' then',
'        v_column_name := i.column_name;',
'     elsif i.data_type = ''DATE'' then',
'        v_column_name := chr(39)||''to_date(''||chr(39)||''||chr(39)''||''||to_char(''||i.column_name||'',''||chr(39)||''dd/mm/yyyy hh:mi:ss''||chr(39)||'')||chr(39)||''||chr(39)||'', ''||chr(39)||''||chr(39)||''||chr(39)||''dd/mm/rrrr hh:mi:ss''||chr(39)||''||chr(39)|'
||'|''||chr(39)||'')''||chr(39);',
'     elsif i.data_type = ''VARCHAR2'' then',
'        v_column_name := ''chr(39)||''||i.column_name||''||chr(39)'';',
'     end if;',
'     v_ref_cur_columns := v_ref_cur_columns||''||''||chr(39)||'',''||chr(39)||''||''||v_column_name;',
'  end loop; ',
'  v_column_list     := ltrim(v_column_list,'','');',
'  v_ref_cur_columns := substr(v_ref_cur_columns,8);',
'',
'  v_insert_list     := ''<br/> INSERT INTO ''||v_table_name||'' (''||v_column_list||'') VALUES '';',
'  v_ref_cur_query   := ''SELECT ''||v_ref_cur_columns||'' FROM ''||v_table_name;',
'  ',
'  open refcur for v_ref_cur_query;',
'  loop',
'  fetch refcur into v_ref_cur_output; ',
'  exit when refcur%notfound;',
'    v_ref_cur_output := ''(''||v_ref_cur_output||'');''; ',
'    v_ref_cur_output := replace(v_ref_cur_output,'',,'','',null,'');',
'    v_ref_cur_output := replace(v_ref_cur_output,''(,'',''(null,'');',
'    v_ref_cur_output := replace(v_ref_cur_output,'',,)'','',null)'');',
'    v_ref_cur_output := replace(v_ref_cur_output,''null,)'',''null,null)'');',
'    v_ref_cur_output := v_insert_list||v_ref_cur_output; ',
'    --dbms_output.put_line (v_ref_cur_output); ',
'   Htp.p (v_ref_cur_output); ',
'  end loop; ',
'end;',
' ',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P103_TABLENAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14339084039257981)
,p_plug_name=>'Get DDL'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'declare',
'  v_table_name      varchar2(30) := :P103_TABLENAME;',
'   ',
'  --cursor c1 is SELECT DBMS_METADATA.GET_DDL(''TABLE'', ''EMP'') as ddlinfo FROM DUAL;',
'',
'  --v_employee_name employees.employee_name%TYPE;',
'begin',
'  FOR my_ddl IN ( SELECT DBMS_METADATA.GET_DDL(''TABLE'', v_table_name) as ddlinfo FROM DUAL) LOOP',
'    Htp.p (''<pre>  '' || my_ddl.ddlinfo || ''</pre>''  );',
'  END LOOP; ',
'end;',
' ',
'',
'  ',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P103_TABLENAME'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14338601182257977)
,p_name=>'P103_TABLENAME'
,p_item_sequence=>10
,p_prompt=>'Table name to Export'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT table_name as d, table_name as v FROM user_tables where TABLESPACE_NAME = ''DATA'' ORDER BY  table_name;'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14338879154257979)
,p_name=>'oc'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_TABLENAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14338909398257980)
,p_event_id=>wwv_flow_imp.id(14338879154257979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
