prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_name=>'Open Bank Account'
,p_alias=>'OPEN-BANK-ACCOUNT'
,p_step_title=>'Open Bank Account'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'setInterval("jQuery(''#static_1'').trigger(''apexrefresh'');", 4000); '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*----- New Template Bank Customer-------*/ ',
' .video-container {',
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
'',
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
 p_id=>wwv_flow_imp.id(1805971180505966)
,p_plug_name=>'Apply for Premium Blank Account'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>90
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_CNAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7882217010408268)
,p_plug_name=>'L'
,p_parent_plug_id=>wwv_flow_imp.id(1805971180505966)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P58_CNT'
,p_plug_display_when_cond2=>'0'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1806030568505967)
,p_plug_name=>'Personal Details'
,p_parent_plug_id=>wwv_flow_imp.id(7882217010408268)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1806148788505968)
,p_plug_name=>'Education/Occupation Details'
,p_parent_plug_id=>wwv_flow_imp.id(7882217010408268)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1806216278505969)
,p_plug_name=>'Contact Details'
,p_parent_plug_id=>wwv_flow_imp.id(7882217010408268)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7882348491408269)
,p_plug_name=>'R'
,p_parent_plug_id=>wwv_flow_imp.id(1805971180505966)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P58_CNT'
,p_plug_display_when_cond2=>'0'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24461329884272604)
,p_plug_name=>'Upload Signature or Unique ID Proof'
,p_parent_plug_id=>wwv_flow_imp.id(7882348491408269)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24462257878272614)
,p_name=>'Uploaded Files'
,p_parent_plug_id=>wwv_flow_imp.id(24461329884272604)
,p_template=>wwv_flow_imp.id(62117175029085013)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", "EMAIL", "FILE_NAME", "FILE_TYPE", sys.dbms_lob.getlength("FILE_CONTENT") "FILE_CONTENT", "GENDATE" from "USER_PROFILE_BC" where ',
'upper(email) = upper(v(''APP_USER''))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P58_EMAIL'
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
 p_id=>wwv_flow_imp.id(8211127924894443)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8209152637894432)
,p_query_column_id=>2
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(8209564327894437)
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
 p_id=>wwv_flow_imp.id(8209971361894438)
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
 p_id=>wwv_flow_imp.id(8210359115894440)
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
 p_id=>wwv_flow_imp.id(8210709861894441)
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
 p_id=>wwv_flow_imp.id(8471834500056474)
,p_plug_name=>'Bank Offers for &P58_EDUCATIONAL_QUALIFICATION.s in &P58_COUNTRY.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_OCCUPATION_TYPE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8472502700056481)
,p_plug_name=>'Rg'
,p_parent_plug_id=>wwv_flow_imp.id(8471834500056474)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  l_genai_rest_url    VARCHAR2(4000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';  ',
'  l_web_cred        CONSTANT VARCHAR2(50)   := ''replace-this'';   ',
'  l_qualif varchar2(100) := :P58_EDUCATIONAL_QUALIFICATION;',
'  l_country varchar2(100) := :P58_COUNTRY;',
'  l_input varchar2(4000) := ''What are the Bank offers for ''||l_qualif||'' in ''||l_country;',
'  ',
'  l_response_json CLOB;',
'  l_text varchar2(32000);',
'  ',
'    l_ocigabody varchar2(32000) := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "cohere.command-r-08-2024"',
'        },',
'        "chatRequest": {',
'            "message": "''||l_input||''",',
'            "maxTokens": 500,',
'            "isStream": false,',
'            "apiFormat": "COHERE",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }',
'    ''; ',
'',
'  CURSOR C1  IS ',
'            SELECT jt.* ',
'            FROM   JSON_TABLE(l_response_json, ''$''  COLUMNS (text VARCHAR2(32000)  PATH ''$.chatResponse[0].text'' )) jt;  ',
'',
'BEGIN',
'',
'  if l_qualif is not null   then',
'',
'        apex_web_service.g_request_headers.DELETE; ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json''; ',
'    ',
'',
'         l_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => l_genai_rest_url, ',
'            p_http_method          => ''POST'', ',
'            p_body                 => l_ocigabody, ',
'            p_credential_static_id => l_web_cred);',
' ',
'',
'    For row_1 In C1 Loop',
'           l_text := row_1.text;  ',
'           Htp.p(''<pre>''|| l_text ||''</pre>'');',
'           --:P58_OP_TEXT := l_text;',
'           --:P78_GA := l_check;',
'     End Loop;',
'',
'    end if;',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15847668400767574)
,p_plug_name=>'More Information / Technologies  OLD'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'<table>',
'<tr>',
'    <td>',
'    <iframe width="560" height="315" src="https://www.youtube.com/embed/MUOrh7sHr1k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" ',
'    allowfullscreen></iframe>',
'    </td>',
'</tr>',
'<tr>',
'    <td>',
'    <a href=''https://madhusudhanrao-ppm.github.io/developer/ai-for-financialservices/workshops/tenancy/index.html?lab=ai-fs-create-account'' target=''_new''>Open a Bank Account Workshop</a>',
'    </td> ',
'</tr>',
'</table>'))
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20163456491574137)
,p_plug_name=>'Customer Details'
,p_region_name=>'static_1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'select * from BANK_CUSTOMERS   where ID = :P58_MY_CUST_ID; '
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P58_MY_CUST_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P58_MY_CUST_ID'
,p_prn_content_disposition=>'ATTACHMENT'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(20547782315899798)
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
,p_internal_uid=>29539890757964252
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20547800885899799)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20549155123899812)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20550649042899827)
,p_db_column_name=>'ACCOUNT_STATUS'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Account Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20547910183899800)
,p_db_column_name=>'GENDER'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20548173419899802)
,p_db_column_name=>'MARITAL_STATUS'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Marital Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20548207505899803)
,p_db_column_name=>'STREET_ADDRESS'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Street Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20548441249899805)
,p_db_column_name=>'CITY'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20548579762899806)
,p_db_column_name=>'STATE_PROVINCE'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'State Province'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20548818556899809)
,p_db_column_name=>'CUST_INCOME_LEVEL'
,p_display_order=>140
,p_column_identifier=>'I'
,p_column_label=>'Cust Income Level'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20549656000899817)
,p_db_column_name=>'ACCOUNT_NUMBER'
,p_display_order=>210
,p_column_identifier=>'L'
,p_column_label=>'Account Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20549780035899818)
,p_db_column_name=>'ACCOUNT_TYPE'
,p_display_order=>220
,p_column_identifier=>'M'
,p_column_label=>'Account Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20550285506899823)
,p_db_column_name=>'OCCUPATION_TYPE'
,p_display_order=>270
,p_column_identifier=>'P'
,p_column_label=>'Occupation Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20550419633899825)
,p_db_column_name=>'EDUCATIONAL_QUALIFICATION'
,p_display_order=>290
,p_column_identifier=>'R'
,p_column_label=>'Educational Qualification'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24518164256702496)
,p_db_column_name=>'REQUEST_CARD'
,p_display_order=>420
,p_column_identifier=>'T'
,p_column_label=>'Request Card'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20582307021598771)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'123168'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CUSTOMER_NAME:ACCOUNT_STATUS:GENDER:MARITAL_STATUS:STREET_ADDRESS:CITY:STATE_PROVINCE:CUST_INCOME_LEVEL:ACCOUNT_NUMBER:ACCOUNT_TYPE:OCCUPATION_TYPE:EDUCATIONAL_QUALIFICATION'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8270668723324329)
,p_report_id=>wwv_flow_imp.id(20582307021598771)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ACCOUNT_STATUS'
,p_operator=>'='
,p_expr=>'Approved'
,p_condition_sql=>' (case when ("ACCOUNT_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Approved''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#128103'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8271055912324333)
,p_report_id=>wwv_flow_imp.id(20582307021598771)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ACCOUNT_STATUS'
,p_operator=>'='
,p_expr=>'Pending Review'
,p_condition_sql=>' (case when ("ACCOUNT_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Pending Review''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#987a04'
,p_row_font_color=>'#ffffff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(8271440582324334)
,p_report_id=>wwv_flow_imp.id(20582307021598771)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ACCOUNT_STATUS'
,p_operator=>'='
,p_expr=>'Rejected'
,p_condition_sql=>' (case when ("ACCOUNT_STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''Rejected''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e70435'
,p_row_font_color=>'#FFFFFF'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49674941238844525)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_response VARCHAR2(32000); ',
'begin ',
'   l_response := getData(:APP_PAGE_ID);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8208435036894422)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(24461329884272604)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload Signature / UID'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::P92_EMAIL:&P58_EMAIL.'
,p_icon_css_classes=>'fa-upload'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7401371206343567)
,p_button_sequence=>100
,p_button_name=>'Please'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Your Profile is incomplete, Please update your profile'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P58_CNAME'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-user'
,p_grid_new_row=>'Y'
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8271820319324338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20163456491574137)
,p_button_name=>'Apply_for_card'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Apply For Card'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1169200178072237)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(49674941238844525)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:58'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1808074231505987)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1805971180505966)
,p_button_name=>'Submit_Application'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Application'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P58_CNT'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-forms'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7882670765408272)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1805971180505966)
,p_button_name=>'Already_Applied'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'You application is under the review process'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P58_CNT'
,p_button_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_button_css_classes=>'fa-warning-bg'
,p_icon_css_classes=>'fa-assistive-listening-systems'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6839518084740296)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1805971180505966)
,p_button_name=>'Update_Basic_Profile'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Profile'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-user'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2480344513537167)
,p_branch_name=>'Go To Page 58'
,p_branch_action=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::P58_MY_CUST_ID:&P58_CUST_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1806487360505971)
,p_name=>'P58_CUSTOMER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1806030568505967)
,p_prompt=>'Customer Name'
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
 p_id=>wwv_flow_imp.id(1806570839505972)
,p_name=>'P58_DOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1806030568505967)
,p_prompt=>'Date of Birth'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1806604856505973)
,p_name=>'P58_GENDER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1806030568505967)
,p_prompt=>'Gender'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Male;M,Female;F,Other;O'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1806786006505974)
,p_name=>'P58_MARITAL_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1806030568505967)
,p_prompt=>'Martial Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Married;Married,UnMarried;UnMarried,Single;Single,Divorced;Divorced,Widow/Widower;Widow/Widower'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1807081175505977)
,p_name=>'P58_OCCUPATION_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1806148788505968)
,p_prompt=>'Occupation Type'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC2:State Govt.;State Govt.,Central Govt.;Central Govt.,Public Sector;Public Sector,Private Sector;Private Sector,Defence;Defence,Own Business;Own Business,Startup;Startup,Housewife;Housewife,Student;Student,Others;Others'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1807142271505978)
,p_name=>'P58_EDUCATIONAL_QUALIFICATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1806148788505968)
,p_prompt=>'Educational Qualification/Profession'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Upto 10th;Upto 10th,Graduate;Graduate,Post Graduate;Post Graduate,Doctor;Doctor,Engineer;Engineer,Lawyer;Lawyer,Others;Others'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1807248544505979)
,p_name=>'P58_CUST_INCOME_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1806148788505968)
,p_prompt=>'Income Level > $ 1,000 is required'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC(,):A: 1,000 to 1,00,000100000B: 1,00,000 to 5,00,000500000C: Above 5,00,0001000000D: Below 1000500E: Not Applicable700'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1807384094505980)
,p_name=>'P58_STREET_ADDRESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1806216278505969)
,p_prompt=>'Street Address'
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
 p_id=>wwv_flow_imp.id(1807476843505981)
,p_name=>'P58_POSTAL_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1806216278505969)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1807522634505982)
,p_name=>'P58_CITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1806216278505969)
,p_prompt=>'City'
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
 p_id=>wwv_flow_imp.id(1807657430505983)
,p_name=>'P58_STATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1806216278505969)
,p_prompt=>'State'
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
 p_id=>wwv_flow_imp.id(1807715500505984)
,p_name=>'P58_COUNTRY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1806216278505969)
,p_prompt=>'Country'
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
 p_id=>wwv_flow_imp.id(1808253699505989)
,p_name=>'P58_BANK_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1806148788505968)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6839422767740295)
,p_name=>'P58_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1806030568505967)
,p_prompt=>'Email'
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
 p_id=>wwv_flow_imp.id(7401460227343568)
,p_name=>'P58_CNAME'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7882448289408270)
,p_name=>'P58_ACCOUNT_NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1806148788505968)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7882519602408271)
,p_name=>'P58_CUST_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1806148788505968)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7882766329408273)
,p_name=>'P58_CNT'
,p_item_sequence=>30
,p_item_default=>'select count(*) as cnt from BANK_CUSTOMERS where upper(email) = upper(v(''APP_USER''));'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7882859504408274)
,p_name=>'P58_MY_CUST_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1805971180505966)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8472019617056476)
,p_name=>'P58_OP_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8471834500056474)
,p_prompt=>'Offers'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7882054253408266)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24461329884272604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7882165466408267)
,p_event_id=>wwv_flow_imp.id(7882054253408266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24462257878272614)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16984655142144375)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(49674941238844525)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16984710022144376)
,p_event_id=>wwv_flow_imp.id(16984655142144375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2481616636537180)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SaveData_InvokeWorkflow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'l_bank_customer BANK_CUSTOMERS.CUSTOMER_NAME%TYPE := :P58_CUSTOMER_NAME;',
'l_dob BANK_CUSTOMERS.DOB%TYPE := :P58_DOB;',
'l_account_number BANK_CUSTOMERS.ACCOUNT_NUMBER%TYPE := round(DBMS_Random.Value(1,990000),0);  ',
'l_gender BANK_CUSTOMERS.GENDER%TYPE := :P58_GENDER;',
'l_martial_status BANK_CUSTOMERS.MARITAL_STATUS%TYPE := :P58_MARITAL_STATUS; ',
'l_edu_qualif BANK_CUSTOMERS.EDUCATIONAL_QUALIFICATION%TYPE := :P58_EDUCATIONAL_QUALIFICATION;',
'l_occ_type BANK_CUSTOMERS.OCCUPATION_TYPE%TYPE := :P58_OCCUPATION_TYPE;',
'l_income_level BANK_CUSTOMERS.CUST_INCOME_LEVEL%TYPE := :P58_CUST_INCOME_LEVEL;',
'l_street BANK_CUSTOMERS.STREET_ADDRESS%TYPE := :P58_STREET_ADDRESS;',
'l_city BANK_CUSTOMERS.CITY%TYPE := :P58_CITY;',
'l_state BANK_CUSTOMERS.STATE_PROVINCE%TYPE := :P58_STATE; ',
'l_postcode BANK_CUSTOMERS.CUST_POSTAL_CODE%TYPE := :P58_POSTAL_CODE; ',
'l_country BANK_CUSTOMERS.COUNTRY%TYPE := :P58_COUNTRY; ',
'l_bank BANK_CUSTOMERS.BANK_NAME%TYPE := :P58_BANK_NAME; ',
'l_email BANK_CUSTOMERS.EMAIL%TYPE := :P58_EMAIL; ',
'',
'o_cust_id BANK_CUSTOMERS.ID%TYPE;',
'',
'l_task_id number;',
'l_user varchar2(100) := v(''APP_USER'');',
'l_workflow_id number;',
'',
'begin',
'    insert into BANK_CUSTOMERS (CUSTOMER_NAME, DOB, ACCOUNT_TYPE, ACCOUNT_NUMBER, GENDER, MARITAL_STATUS,  ',
'    EDUCATIONAL_QUALIFICATION, OCCUPATION_TYPE, CUST_INCOME_LEVEL, STREET_ADDRESS, CITY, STATE_PROVINCE, CUST_POSTAL_CODE,   COUNTRY,',
'    CURRENT_BALANCE, BANK_NAME, EMAIL  ) ',
'    values ',
'    (l_bank_customer, l_dob, ''Savings Bank'', l_account_number, l_gender, l_martial_status,  l_edu_qualif, l_occ_type, l_income_level,',
'    l_street, l_city, l_state, l_postcode, l_country, 10000, l_bank , l_email)',
'    RETURNING ID INTO o_cust_id;  ',
'',
'    commit;',
' ',
'   --- Invoke Workflow -------------------',
'    ',
'   l_workflow_id := ',
'    apex_workflow.start_workflow ',
'      (p_static_id      => ''MYBANKWF1'',',
'       p_detail_pk      => o_cust_id,',
'       p_initiator      => UPPER(l_user),',
'       p_parameters     => apex_workflow.t_workflow_parameters',
'                            (1 => apex_workflow.t_workflow_parameter(static_id => ''P_ACCOUNT_NUMBER'', string_value => l_account_number),',
'                             2 => apex_workflow.t_workflow_parameter(static_id => ''P_CUSTOMER_ID'', string_value => o_cust_id),',
'                             3 => apex_workflow.t_workflow_parameter(static_id => ''P_CUSTOMER_NAME'', string_value => l_bank_customer),',
'                             4 => apex_workflow.t_workflow_parameter(static_id => ''P_INCOME_LEVEL'', string_value => l_income_level)),',
'       p_debug_level => apex_debug.c_log_level_info);',
'     ',
'',
'     :P58_ACCOUNT_NUMBER := l_account_number;',
'     :P58_CUST_ID := o_cust_id;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1808074231505987)
,p_internal_uid=>11473725078601634
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8471915705056475)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GenAI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  l_genai_rest_url    VARCHAR2(4000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';  ',
'  l_web_cred        CONSTANT VARCHAR2(50)   := ''replace-this'';   ',
'  l_qualif varchar2(100) := :P58_EDUCATIONAL_QUALIFICATION;',
'  l_input varchar2(4000) := ''What are the Bank offers for ''||l_qualif;',
'  ',
'  l_response_json CLOB;',
'  l_text varchar2(32000);',
'  ',
'    l_ocigabody varchar2(32000) := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "cohere.command-r-08-2024"',
'        },',
'        "chatRequest": {',
'            "message": "''||l_input||''",',
'            "maxTokens": 500,',
'            "isStream": false,',
'            "apiFormat": "COHERE",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }',
'    ''; ',
'',
'  CURSOR C1  IS ',
'            SELECT jt.* ',
'            FROM   JSON_TABLE(l_response_json, ''$''  COLUMNS (text VARCHAR2(32000)  PATH ''$.chatResponse[0].text'' )) jt;  ',
'',
'BEGIN',
'',
'  if l_qualif is not null   then',
'',
'        apex_web_service.g_request_headers.DELETE; ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json''; ',
'    ',
'',
'         l_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => l_genai_rest_url, ',
'            p_http_method          => ''POST'', ',
'            p_body                 => l_ocigabody, ',
'            p_credential_static_id => l_web_cred);',
' ',
'',
'    For row_1 In C1 Loop',
'           l_text := row_1.text;  ',
'           :P58_OP_TEXT := l_text;',
'           --:P78_GA := l_check;',
'     End Loop;',
'',
'    end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_internal_uid=>17464024147120929
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6954455122485091)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialization Profile'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select ',
'       first_name||'' ''|| last_name,  ',
'       first_name,',
'       address1,    ',
'       city,       ',
'       statezip,',
'       email,',
'       country',
'  into  ',
'       :P58_CUSTOMER_NAME, ',
'       :P58_CNAME,',
'       :P58_STREET_ADDRESS, ',
'       :P58_CITY,',
'       :P58_STATE,',
'       :P58_EMAIL,',
'       :P58_COUNTRY',
'from common_users',
'where   upper(email) = upper(v(''APP_USER''));',
' ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>15946563564549545
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8472419364056480)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  l_genai_rest_url    VARCHAR2(4000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat'';  ',
'  l_web_cred        CONSTANT VARCHAR2(50)   := ''replace-this'';   ',
'  l_qualif varchar2(100) := :P58_EDUCATIONAL_QUALIFICATION;',
'  l_country varchar2(100) := :P58_COUNTRY;',
'  l_input varchar2(4000) := ''What are the Bank offers for ''||l_qualif||'' in ''||l_country;',
'  ',
'  l_response_json CLOB;',
'  l_text varchar2(32000);',
'  ',
'    l_ocigabody varchar2(32000) := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "cohere.command-r-08-2024"',
'        },',
'        "chatRequest": {',
'            "message": "''||l_input||''",',
'            "maxTokens": 500,',
'            "isStream": false,',
'            "apiFormat": "COHERE",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }',
'    ''; ',
'',
'  CURSOR C1  IS ',
'            SELECT jt.* ',
'            FROM   JSON_TABLE(l_response_json, ''$''  COLUMNS (text VARCHAR2(32000)  PATH ''$.chatResponse[0].text'' )) jt;  ',
'',
'BEGIN',
'',
'  if l_qualif is not null   then',
'',
'        apex_web_service.g_request_headers.DELETE; ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json''; ',
'    ',
'',
'         l_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => l_genai_rest_url, ',
'            p_http_method          => ''POST'', ',
'            p_body                 => l_ocigabody, ',
'            p_credential_static_id => l_web_cred);',
' ',
'',
'    For row_1 In C1 Loop',
'           l_text := row_1.text;  ',
'           :P58_OP_TEXT := l_text;',
'           --:P78_GA := l_check;',
'     End Loop;',
'',
'    end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>17464527806120934
);
wwv_flow_imp.component_end;
end;
/
