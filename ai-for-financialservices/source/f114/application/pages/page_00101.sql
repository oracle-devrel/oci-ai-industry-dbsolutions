prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'EMICalc'
,p_alias=>'EMICALC'
,p_step_title=>'EMICalc'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-chartView, .a-IRR-detailView, .a-IRR-groupByView, .a-IRR-pivotView, .a-IRR-tableContainer {',
'    overflow: auto;',
'    -webkit-overflow-scrolling: touch;',
'    background-color: #E6FFFF;',
'}',
'.a-IRR-headerLink.has-focus,.a-IRR-headerLink:focus {',
'    box-shadow: inset 0 0 0 2px #E6FFFF;',
'    outline: none',
'}',
'.a-IRR-header {',
'    background-color: #6DB1FF;',
'    border-color: var(--a-gv-header-cell-border-color);',
'    border-style: solid;',
'    border-width: var(--a-gv-header-cell-border-width,1px);',
'    color: var(--a-gv-header-text-color);',
'    font-size: var(--a-gv-header-cell-font-size);',
'    font-weight: var(--a-gv-header-cell-font-weight,var(--a-base-font-weight-bold,700));',
'    height: var(--a-gv-header-cell-height,40px);',
'    line-height: var(--a-gv-header-cell-line-height);',
'    padding: 0;',
'    vertical-align: middle',
'}',
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'   /*  background-color: #171E23; */',
'   background-color: #222326;',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'   /* background-color: #5883A7;  */',
'   background-color: #1C1D20;',
'}',
'.t-Region-header {',
'    align-items: center;',
'   /* background-color: #1C2A35; */',
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
'	/* background-color: #171E23; */',
'    background-color: #222326;',
'}',
'.t-Header-branding {',
'    align-items: center;',
'    /* background-color: #1C2A35; */',
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
'   /*  background-color: #1C2A35; ',
'    background-color: #222326; */',
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
'/*------------*/',
' ',
'  /* ----------- developer style ---------------------- */',
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
' /* ----------- developer style ---------------------- */'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148703209149715416)
,p_plug_name=>'Home/Car Loan Equated Monthly Installments (EMI) Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_body      CLOB;',
'l_body_html CLOB;  ',
'l_p number := to_number(:P101_P); ',
'l_Rate number := to_number(:P101_R); ',
'l_input_time number  := to_number(:P101_MONTHS); ',
'l_t number  := 10;',
'l_r number  := 10;  ',
' ',
'l_Time number := 10;',
'emi number;',
'l_upper number;',
'l_lower number;',
'l_ratio number; ',
'l_intemi number;',
'l_princemi number;',
'l_intcomp number;',
'l_totalemi number := 0;',
'l_counter_max number := 10;',
'l_counter number;',
'l_currbalance number; ',
'',
'l_total_int number  := 0;',
'sd date;',
'fd date;',
'ld date;',
'sdd varchar2(200); ',
'url1 varchar2(2000);',
'l_total_principal number := 0;',
' ',
'',
'BEGIN',
' ',
'-- If Months',
'l_t := l_input_time;  ',
'l_r := l_Rate/12/100;',
'sd := sysdate;',
'',
'htp.p (''  <a href="https://homeloans.sbi/calculators" target="_new">SBI HL </a><br/> Loan Amount: $''||l_p||'' Rate of Interest: ''||l_Rate|| ''% in ''||l_input_time||'' months '');',
'',
'l_body_html := ''<html>'';',
'l_body_html := ''<table class="a-GV-table"  border=1 cellspacing=4 cellpadding=4  aria-live="polite" style="border-color:white;">'';',
'',
'l_body_html := l_body_html ||'' <tr   style="background-color:#302D29;color:white"  >',
'<td>Month Pending </td>',
'<td  > Reducing Loan </td>',
'<td  > Amount after EMI Paid</td>',
'<td align="right"> Interest   </td>',
'<td align="right"> Principal   </td>',
'<td  > EMI   </td> ',
'<td  > Months remaining </td>',
'<td  > Time (m) </td> ',
' </tr> '';',
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
'    l_currbalance := l_p - l_princemi; ',
'    sd := ADD_MONTHS(sd, 1);',
'    fd := last_day(add_months(sd,-1))+1;',
'    ld := last_day(add_months(sd,0));   ',
'    sdd := to_char(sd,''DD/Mon/YY'');',
'',
'    l_total_int := l_total_int+l_intcomp;',
'    l_total_principal :=  l_total_principal +  l_princemi;',
'',
'    l_body_html := l_body_html ||'' <tr> ',
'    <td>''||l_counter||''</td> ',
'    <td align="right">''||unistr(''\0024'') ||TO_CHAR(l_p, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right">'' ||unistr(''\0024'') ||TO_CHAR(l_currbalance, ''999,99,99,99,999'') ||'' </td>  ',
'    <td align="right"> ''||unistr(''\0024'') ||TO_CHAR(l_intcomp, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right"> ''||unistr(''\0024'') ||TO_CHAR(l_princemi, ''999,99,99,99,999'')||'' </td> ',
'    <td align="right"> ''||unistr(''\0024'') ||TO_CHAR(emi, ''999,99,99,99,999'') ||'' </td>   ',
'    <td>''||l_t||'' </td> ',
'    <td>''||sdd||''  </td> ',
'    </tr>'';',
'     ',
'   l_totalemi := emi + l_totalemi;',
'   l_p := l_currbalance; ',
'   l_t := l_t - 1;',
'    ',
'END LOOP;  ',
'',
'l_body_html := l_body_html ||''<tr   style="background-color:#302D29;color:white"  >',
'<td>Total </td>',
'<td colspan=2>   </td>',
'<td align="right"> Interest Paid: ''||unistr(''\0024'') ||TO_CHAR(l_total_int, ''999,99,99,99,999'') ||'' </td>',
'<td align="right"> Principal Paid: ''||unistr(''\0024'') ||TO_CHAR(l_total_principal, ''999,99,99,99,999'')||''</td>',
'<td colspan=3> </td>',
'</tr>'';',
'l_body_html := l_body_html ||''</table>'';',
'l_body_html := l_body_html || ''</html><br>'';',
'',
'Htp.p(  l_body_html );',
'',
'',
'END;',
' '))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13290858034570695)
,p_name=>'P101_P'
,p_item_sequence=>10
,p_item_default=>'1000000'
,p_prompt=>'Home/Car Loan Amount ($)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14335757346257948)
,p_name=>'P101_R'
,p_item_sequence=>20
,p_prompt=>'Rate of Interest %'
,p_source=>'8.5'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(123966455041090510)
,p_name=>'P101_MONTHS'
,p_item_sequence=>30
,p_item_default=>'12'
,p_prompt=>'Months (Range 1 to 48 months)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '48',
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14330647615201380)
,p_name=>'pChanges'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14331066140201386)
,p_event_id=>wwv_flow_imp.id(14330647615201380)
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
 p_id=>wwv_flow_imp.id(14331517598201388)
,p_event_id=>wwv_flow_imp.id(14330647615201380)
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
 p_id=>wwv_flow_imp.id(14332014230201390)
,p_event_id=>wwv_flow_imp.id(14330647615201380)
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
 p_id=>wwv_flow_imp.id(14332505025201392)
,p_event_id=>wwv_flow_imp.id(14330647615201380)
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
 p_id=>wwv_flow_imp.id(14332901056201394)
,p_name=>'d1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_FROMDT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14333378349201395)
,p_name=>'d2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_TODT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14333695872201397)
,p_name=>'oC2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_MONTHS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14334282468201398)
,p_event_id=>wwv_flow_imp.id(14333695872201397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13290987750570696)
,p_name=>'oc1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_P'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14335666168257947)
,p_event_id=>wwv_flow_imp.id(13290987750570696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14335806987257949)
,p_name=>'oc3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P101_R'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14335924660257950)
,p_event_id=>wwv_flow_imp.id(14335806987257949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
