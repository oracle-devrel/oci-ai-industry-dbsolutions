prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'setInterval("jQuery(''#static_1'').trigger(''apexrefresh'');", 20000);',
'setInterval("jQuery(''#static_5'').trigger(''apexrefresh'');", 20000); ',
'*/',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #171E23; ',
'}  ',
'.a-Button,.a-CardView-button,.apex-button-group label,.t-Button,.t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input+label,.t-Form-helpButton,.ui-button {',
'    background-color: #5883A7; ',
'}',
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
'.t-Region-bodyWrap {',
'	background-color: #171E23; ',
'}',
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
'}',
'/*------------*/',
' ',
'/*------------*/',
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
'/*------------*/',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1600127368963057)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'RELATED_LABELS'
,p_query_where=>'CONTENT_TYPE = ''AIFS_CUST'' AND LABEL_NAME = ''Cheque Deposit'''
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1600235071963058)
,p_region_id=>wwv_flow_imp.id(1600127368963057)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&LABEL_NAME.</p>',
'<div class="sketchfab-embed-wrapper"> ',
'        <iframe title="CT scan lung" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src=&3DURL.> </iframe> ',
'          </div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1600595762963062)
,p_card_id=>wwv_flow_imp.id(1600235071963058)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1600306889963059)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'RELATED_LABELS'
,p_query_where=>'CONTENT_TYPE = ''AIFS_CUST''  AND LABEL_NAME = ''Online Shopping'''
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1600451453963060)
,p_region_id=>wwv_flow_imp.id(1600306889963059)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&LABEL_NAME.</p>',
'<div class="sketchfab-embed-wrapper"> ',
'        <iframe title="CT scan lung" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src=&3DURL.> </iframe> ',
'          </div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1600780004963063)
,p_card_id=>wwv_flow_imp.id(1600451453963060)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8359685671674783)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>50
,p_query_type=>'TABLE'
,p_query_table=>'RELATED_LABELS'
,p_query_where=>'CONTENT_TYPE = ''AIFS_CUST''  AND LABEL_NAME = ''Funds Transfer'''
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8359779392674784)
,p_region_id=>wwv_flow_imp.id(8359685671674783)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&LABEL_NAME.</p>',
'<div class="sketchfab-embed-wrapper"> ',
'        <iframe title="CT scan lung" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src=&3DURL.> </iframe> ',
'          </div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8359827041674785)
,p_card_id=>wwv_flow_imp.id(8359779392674784)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8359941485674786)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'RELATED_LABELS'
,p_query_where=>'CONTENT_TYPE = ''AIFS_CUST''  AND LABEL_NAME = ''Manage Profile'''
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8360061174674787)
,p_region_id=>wwv_flow_imp.id(8359941485674786)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&LABEL_NAME.</p>',
'<div class="sketchfab-embed-wrapper"> ',
'        <iframe title="CT scan lung" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src=&3DURL.> </iframe> ',
'          </div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8360103665674788)
,p_card_id=>wwv_flow_imp.id(8360061174674787)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8360226852674789)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'RELATED_LABELS'
,p_query_where=>'CONTENT_TYPE = ''AIFS_CUST''  AND LABEL_NAME = ''Generate Statement'''
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8360350481674790)
,p_region_id=>wwv_flow_imp.id(8360226852674789)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&LABEL_NAME.</p>',
'<div class="sketchfab-embed-wrapper"> ',
'        <iframe title="CT scan lung" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src=&3DURL.> </iframe> ',
'          </div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8360397343674791)
,p_card_id=>wwv_flow_imp.id(8360350481674790)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124379031867209000)
,p_plug_name=>'Cards'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'RELATED_LABELS'
,p_query_where=>'CONTENT_TYPE = ''AIFS_CUST'' AND LABEL_NAME = ''ATM Cash Withdrawal'''
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(592273237185775)
,p_region_id=>wwv_flow_imp.id(124379031867209000)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>&LABEL_NAME.</p>',
'<div class="sketchfab-embed-wrapper"> ',
'        <iframe title="CT scan lung" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:400px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src=&3DURL.> </iframe> ',
'          </div>'))
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1600502770963061)
,p_card_id=>wwv_flow_imp.id(592273237185775)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(593311293185780)
,p_name=>'UpdateComments'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(593880930185782)
,p_event_id=>wwv_flow_imp.id(593311293185780)
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(592909622185778)
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
,p_internal_uid=>9585018064250232
);
wwv_flow_imp.component_end;
end;
/
