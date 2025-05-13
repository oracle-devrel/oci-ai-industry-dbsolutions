prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
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
 p_id=>88
,p_name=>'View Profile'
,p_alias=>'PROFILE'
,p_step_title=>'Profile'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {   ',
'   background-color: #222326;',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button { ',
'   background-color: #1C1D20;',
'}',
'.t-Region-header {',
'    align-items: center; ',
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
'.t-Region-bodyWrap { ',
'    background-color: #222326;',
'}',
'.t-Header-branding {',
'    align-items: center; ',
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
'.t-Body-nav { ',
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
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'',
'.t-Footer {',
'  display: none',
'}',
' ',
'.home:before {',
'content : url(#APP_FILES#icons/home.png);',
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
'.bankstmt:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.emi:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.atmcash:before{',
'content : url(#APP_FILES#icons/atmcash.png);',
'} ',
'.arch:before{',
'content : url(#APP_FILES#icons/architecturepresentation.png);',
'} ',
'.admin:before{',
'content : url(#APP_FILES#icons/administration.png);',
'} ',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch.png);',
'} ',
'.anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.mytask:before{',
'content : url(#APP_FILES#icons/mytasks.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflowconsle.png);',
'}  ',
'',
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
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22484119041736203)
,p_plug_name=>'Customerrg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6958811432734564)
,p_plug_name=>'Customer Reset Password'
,p_title=>'Reset Password'
,p_parent_plug_id=>wwv_flow_imp.id(22484119041736203)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_plug_grid_column_span=>6
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127047231693302993186)
,p_plug_name=>'Customer View Profile'
,p_title=>'View Profile'
,p_parent_plug_id=>wwv_flow_imp.id(22484119041736203)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10608734752071356)
,p_plug_name=>'View my profile'
,p_parent_plug_id=>wwv_flow_imp.id(127047231693302993186)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_user_id number;',
'l_fullname varchar2(255);',
'l_address1 varchar2(255);',
'l_address2 varchar2(255);',
'l_city_statezip varchar2(255);',
'l_email varchar2(128);',
'l_country varchar2(128);',
'',
'begin',
'    select user_id,',
'        first_name||'' ''|| last_name, ',
'        address1, ',
'        address2, email,',
'        city||'', ''|| statezip,',
'        country',
'    into l_user_id,l_fullname,l_address1,l_address2,l_email, l_city_statezip, l_country',
'        from common_users where   upper(email) = upper(v(''APP_USER'')) ;',
'',
'    Htp.p(''<div style="color:#191715; background-color:white">'');',
'        if l_fullname!='','' then',
'        htp.p(''<p><b>  ''||l_fullname||''</b></p>'');',
'        end if;',
'        htp.p(''<p>Address: ''||l_address1||''</p>'');',
'        --htp.p(''<p> ''||l_address2||''</p>''); ',
'        if l_city_statezip!='','' then',
'        htp.p(''<p>City: ''||l_city_statezip||'' </b></p>'');',
'        end if;',
'        htp.p(''<p>Email or User Id: ''||l_email||''</p>'');',
'        htp.p(''<p>Country: ''||l_country||''</p>'');',
'    Htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22484264423736205)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(127047231693302993186)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(46092815558074149)
,p_name=>'Uploaded Files'
,p_parent_plug_id=>wwv_flow_imp.id(127047231693302993186)
,p_template=>wwv_flow_imp.id(62117175029085013)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID","EMAIL","FILE_NAME","FILE_TYPE",sys.dbms_lob.getlength("FILE_CONTENT")"FILE_CONTENT","GENDATE" from "USER_PROFILE_BC"',
'where upper(email) = upper(:P88_EMAIL)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P88_EMAIL'
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
 p_id=>wwv_flow_imp.id(12640780941737115)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12638762430737102)
,p_query_column_id=>2
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12639162840737108)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12639575230737110)
,p_query_column_id=>4
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>60
,p_column_heading=>'File Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12639974879737112)
,p_query_column_id=>5
,p_column_alias=>'FILE_CONTENT'
,p_column_display_sequence=>50
,p_column_heading=>'Image'
,p_column_format=>'IMAGE:USER_PROFILE_BC:FILE_CONTENT:ID::::::::'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12640341236737113)
,p_query_column_id=>6
,p_column_alias=>'GENDATE'
,p_column_display_sequence=>70
,p_column_heading=>'Gendate'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129790924072430872869)
,p_plug_name=>'Customer Update my profile'
,p_title=>'Update my profile'
,p_parent_plug_id=>wwv_flow_imp.id(22484119041736203)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_id,first_name, last_name, address1,address2, city, statezip from common_users where upper(email) = upper(v(''APP_USER'')) ',
' '))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P88_UID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22484537443736207)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>150
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6959250733734568)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6958811432734564)
,p_button_name=>'Update_Pwd'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update password'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6922442691972107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22484537443736207)
,p_button_name=>'saveProfile'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update my profile'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6916675253972053)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22484264423736205)
,p_button_name=>'Apply'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply for Bank Account'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P88_CNT'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6839294611740294)
,p_name=>'P88_UID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22484119041736203)
,p_source=>'select user_id   from COMMON_USERS where upper(email) = upper(v(''APP_USER''))'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6957263478734548)
,p_name=>'P88_EMAIL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6958914120734565)
,p_name=>'P88_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6958811432734564)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6959166137734567)
,p_name=>'P88_RE_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6958811432734564)
,p_prompt=>'Confirm New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8469558387056451)
,p_name=>'P88_COUNTRY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select country_name as v,country_name as d from  EBA_GRAPHVIZ_COUNTRIES order by country_name;'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8470882839056464)
,p_name=>'P88_CNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22484119041736203)
,p_item_default=>'select count(*) as cnt from BANK_CUSTOMERS where upper(email) = upper(v(''APP_USER''));'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8470969712056465)
,p_name=>'P88_ACCNO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_default=>'select ''Account Number: ''||ACCOUNT_NUMBER from BANK_CUSTOMERS where upper(email) = upper(v(''APP_USER''));'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Account Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791326824630872942)
,p_name=>'P88_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791326842992872943)
,p_name=>'P88_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(62255809456085102)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791327022187872944)
,p_name=>'P88_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791327050807872945)
,p_name=>'P88_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'Address 1'
,p_source=>'ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791327222290872946)
,p_name=>'P88_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_source=>'ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791327248041872947)
,p_name=>'P88_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129791327400706872948)
,p_name=>'P88_STATEZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_item_source_plug_id=>wwv_flow_imp.id(129790924072430872869)
,p_prompt=>'State'
,p_source=>'STATEZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6959004668734566)
,p_validation_name=>'Validation_Password'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P88_PASSWORD=:P88_RE_PASSWORD then',
'    return true;',
'else ',
'    return false;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'New Password should be equal to the Re New Password!'
,p_when_button_pressed=>wwv_flow_imp.id(6959250733734568)
,p_associated_item=>wwv_flow_imp.id(6958914120734565)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6923525956972118)
,p_validation_name=>'ValidationEmail'
,p_validation_sequence=>20
,p_validation=>'P88_EMAIL'
,p_validation2=>'^[a-zA-Z0-9_!#$%&''*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Wrong Email Format!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6924653423972125)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'saveProfile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'update common_users',
'set first_name =:P88_first_name,',
'    last_name  =:P88_last_name,',
'    address1   = :P88_address1,',
'    address2   = :P88_address2,',
'    city       =  :P88_city,',
'    statezip   =  :P88_statezip,',
'    country = :P88_COUNTRY',
'where upper(email) = upper(v(''APP_USER'')) ;',
' ',
' APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE := ''Profile Updated.'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6922442691972107)
,p_internal_uid=>15916761866036579
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6959348660734569)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'updatePassword'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'COM_COMMON_AUTH_PKG.reset_password(:P88_USER_ID,:P88_password);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Password could not be updated'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6959250733734568)
,p_process_success_message=>'Password updated'
,p_internal_uid=>15951457102799023
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6924220839972123)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialization Profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select user_id,',
'       first_name,',
'       last_name, ',
'       address1,     ',
'       city,       ',
'       statezip,',
'       email,',
'       country',
'',
'  into :P88_USER_ID,',
'       :P88_FIRST_NAME,',
'       :P88_LAST_NAME,',
'       :P88_ADDRESS1, ',
'       :P88_CITY,',
'       :P88_STATEZIP,',
'       :P88_EMAIL,',
'       :P88_COUNTRY',
'       ',
'from common_users',
'where   upper(email) = upper(v(''APP_USER''));',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>15916329282036577
);
wwv_flow_imp.component_end;
end;
/
