prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'Customer Analysis'
,p_alias=>'SHOPPING-RECEIPTS'
,p_step_title=>'Customer Analysis'
,p_autocomplete_on_off=>'OFF'
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
'',
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
'',
'.t-Footer {',
'  display: none',
'}'))
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
 p_id=>wwv_flow_imp.id(49673779024903765)
,p_plug_name=>'Technologies / More Information'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>100
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104622818137702199)
,p_plug_name=>'left'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14339773236257988)
,p_plug_name=>'Technologies / More Information'
,p_parent_plug_id=>wwv_flow_imp.id(104622818137702199)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'Technologies / More Information'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(692884090236086959)
,p_plug_name=>'Customer Information Analysis'
,p_title=>'Customer Information Analysis'
,p_parent_plug_id=>wwv_flow_imp.id(104622818137702199)
,p_icon_css_classes=>'fa-file-play'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93152125787465690)
,p_plug_name=>'Sentiments Chart'
,p_parent_plug_id=>wwv_flow_imp.id(692884090236086959)
,p_icon_css_classes=>'fa-files-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.key, j.text , j.documentSentiment as Sentiments,  ',
'TO_CHAR(ROUND(Positive * 100 ,1),''fm999.0'') || ''%'' Positive,',
'TO_CHAR(ROUND(Negative * 100 ,1),''fm999.0'') || ''%'' Negative,',
'TO_CHAR(ROUND(Neutral * 100 ,1),''fm999.0'') || ''%'' Neutral',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                text  PATH ''$.sentences[0].text'' ,  ',
'                                documentSentiment , ',
'                                Neutral  number PATH ''$.documentScores.Neutral'' , ',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive''  ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = :P20_DOCUMENT_ID AND ',
'(j.key = ''Investigation Report 1'' OR j.key = ''Investigation Report 2''); '))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_DOCUMENT_ID'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(93152789637465697)
,p_region_id=>wwv_flow_imp.id(93152125787465690)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(93152854327465698)
,p_chart_id=>wwv_flow_imp.id(93152789637465697)
,p_seq=>10
,p_name=>'Positive'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.key, j.text , j.documentSentiment as Sentiments,  ',
'TO_CHAR(ROUND(Positive * 100 ,1),''fm999.0'') || ''%'' Positive_label,',
'round(Positive * 100) Positive,',
'TO_CHAR(ROUND(Negative * 100 ,1),''fm999.0'') || ''%'' Negative_label,',
'round(Negative * 100) Negative,',
'TO_CHAR(ROUND(Neutral * 100 ,1),''fm999.0'') || ''%'' Neutral',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                text  PATH ''$.sentences[0].text'' ,  ',
'                                documentSentiment , ',
'                                Neutral  number PATH ''$.documentScores.Neutral'' , ',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive''  ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = :P20_DOCUMENT_ID AND ',
'(j.key = ''Investigation Report 1'' OR j.key = ''Investigation Report 2''); '))
,p_items_value_column_name=>'POSITIVE'
,p_group_name_column_name=>'POSITIVE_LABEL'
,p_group_short_desc_column_name=>'POSITIVE_LABEL'
,p_items_label_column_name=>'KEY'
,p_items_short_desc_column_name=>'TEXT'
,p_custom_column_name=>'POSITIVE_LABEL'
,p_color=>'#186703'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(93249276053551256)
,p_chart_id=>wwv_flow_imp.id(93152789637465697)
,p_seq=>20
,p_name=>'Neutral'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.key, j.text , j.documentSentiment as Sentiments,  ',
'TO_CHAR(ROUND(Positive * 100 ,1),''fm999.0'') || ''%'' Positive_label,',
'round(Positive * 100) Positive,',
'TO_CHAR(ROUND(Negative * 100 ,1),''fm999.0'') || ''%'' Negative_label,',
'round(Negative * 100) Negative,',
'TO_CHAR(ROUND(Neutral * 100 ,1),''fm999.0'') || ''%'' Neutral_label,',
'round(Neutral * 100) Neutral',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                text  PATH ''$.sentences[0].text'' ,  ',
'                                documentSentiment , ',
'                                Neutral  number PATH ''$.documentScores.Neutral'' , ',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive''  ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = :P20_DOCUMENT_ID AND ',
'(j.key = ''Investigation Report 1'' OR j.key = ''Investigation Report 2''); '))
,p_items_value_column_name=>'NEUTRAL'
,p_items_label_column_name=>'KEY'
,p_color=>'#e1960c'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(93249188991551255)
,p_chart_id=>wwv_flow_imp.id(93152789637465697)
,p_seq=>30
,p_name=>'Negative'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.key, j.text , j.documentSentiment as Sentiments,  ',
'TO_CHAR(ROUND(Positive * 100 ,1),''fm999.0'') || ''%'' Positive_label,',
'round(Positive * 100) Positive,',
'TO_CHAR(ROUND(Negative * 100 ,1),''fm999.0'') || ''%'' Negative_label,',
'round(Negative * 100) Negative,',
'TO_CHAR(ROUND(Neutral * 100 ,1),''fm999.0'') || ''%'' Neutral',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                text  PATH ''$.sentences[0].text'' ,  ',
'                                documentSentiment , ',
'                                Neutral  number PATH ''$.documentScores.Neutral'' , ',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive''  ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = :P20_DOCUMENT_ID AND ',
'(j.key = ''Investigation Report 1'' OR j.key = ''Investigation Report 2''); '))
,p_items_value_column_name=>'NEGATIVE'
,p_group_name_column_name=>'NEGATIVE_LABEL'
,p_group_short_desc_column_name=>'NEGATIVE_LABEL'
,p_items_label_column_name=>'KEY'
,p_items_short_desc_column_name=>'TEXT'
,p_custom_column_name=>'NEGATIVE_LABEL'
,p_color=>'#840303'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_color=>'#f4ebeb'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(93248962399551253)
,p_chart_id=>wwv_flow_imp.id(93152789637465697)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(93249055793551254)
,p_chart_id=>wwv_flow_imp.id(93152789637465697)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'% Sentiment as Value'
,p_format_type=>'decimal'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107812845448849532)
,p_plug_name=>'rg'
,p_parent_plug_id=>wwv_flow_imp.id(692884090236086959)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104622856912702200)
,p_plug_name=>'right'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93151368416465683)
,p_plug_name=>'Investigation Sentiments'
,p_parent_plug_id=>wwv_flow_imp.id(104622856912702200)
,p_icon_css_classes=>'fa-files-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.key, j.text , j.documentSentiment as Sentiments,  ',
'TO_CHAR(ROUND(Positive * 100 ,1),''fm999.0'') || ''%'' Positive,',
'TO_CHAR(ROUND(Negative * 100 ,1),''fm999.0'') || ''%'' Negative,',
'TO_CHAR(ROUND(Neutral * 100 ,1),''fm999.0'') || ''%'' Neutral',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                text  PATH ''$.sentences[0].text'' ,  ',
'                                documentSentiment , ',
'                                Neutral  number PATH ''$.documentScores.Neutral'' , ',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive''  ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = :P20_DOCUMENT_ID AND ',
'(j.key = ''Investigation Report 1'' OR j.key = ''Investigation Report 2''); ',
''))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_DOCUMENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93151499111465684)
,p_name=>'KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Key'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93151577769465685)
,p_name=>'TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Text'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93151702656465686)
,p_name=>'SENTIMENTS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Sentiments'
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
 p_id=>wwv_flow_imp.id(93151779649465687)
,p_name=>'NEUTRAL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Neutral'
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
 p_id=>wwv_flow_imp.id(93151864264465688)
,p_name=>'NEGATIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Negative'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93151988206465689)
,p_name=>'POSITIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Positive'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171279225798786784)
,p_plug_name=>'face'
,p_parent_plug_id=>wwv_flow_imp.id(104622856912702200)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="sketchfab-embed-wrapper"> ',
'        <iframe title="" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:800px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src="https://sketchfab.com/models/8650234a2e7949ca9fe9b4124e000d97/embed?autostart=1&ui_theme=dark&dnt=1"> </iframe> ',
'          </div>'))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P20_DOCUMENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1278365162799996046)
,p_plug_name=>'Customer Data'
,p_parent_plug_id=>wwv_flow_imp.id(104622856912702200)
,p_icon_css_classes=>'fa-files-o'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.key, j.text   ',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                text  PATH ''$.sentences[0].text'' ,  ',
'                                documentSentiment , ',
'                                Neutral  number PATH ''$.documentScores.Neutral'' , ',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive''  ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = :P20_DOCUMENT_ID   ',
''))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P20_DOCUMENT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93150368206465673)
,p_name=>'KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Key'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93150922579465678)
,p_name=>'TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Text'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107809753804849501)
,p_plug_name=>'oda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="en-US" class="no-js" >',
'<head>',
'    <script src="#APP_FILES#oda/settings#MIN#.js"></script>',
'    <script src="#APP_FILES#oda/web-sdk.js" onload="initSdk(''Bots'')"></script>',
'    <link rel="stylesheet" href="#APP_FILES#oda/redwood-base-madhu.css" > ',
'',
'</head>',
'</html>'))
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(90602685754764546)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(107812845448849532)
,p_button_name=>'PROCESS_RECEIPT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process File (PDF Only)'
,p_icon_css_classes=>'fa-file-play'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(90603118251764548)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(107812845448849532)
,p_button_name=>'Download_Sample_Data'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Sample Data'
,p_button_redirect_url=>'https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/InvestigationReports.zip'
,p_icon_css_classes=>'fa-download'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1170242379012999)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(49673779024903765)
,p_button_name=>'Edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::P105_PGNO:1'
,p_icon_css_classes=>'fa-clipboard-edit'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(90604103045764567)
,p_branch_name=>'Review Receipt'
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:5:P20_DOCUMENT_ID:&P20_DOCUMENT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(90602685754764546)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107832519195190622)
,p_name=>'P20_RECEIPT_FILE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(692884090236086959)
,p_prompt=>'Investigation File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(62254302773085100)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', 'Select a pdf file',
  'file_types', 'application/pdf',
  'max_file_size', '2000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107832889850190624)
,p_name=>'P20_DOCUMENT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(692884090236086959)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(90603659579764564)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SENTIMENTAL_AI_PK.process_file (p_apex_file_name => :P20_RECEIPT_FILE, x_document_id => :P20_DOCUMENT_ID); ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(90602685754764546)
,p_internal_uid=>52303021856978714
);
wwv_flow_imp.component_end;
end;
/
