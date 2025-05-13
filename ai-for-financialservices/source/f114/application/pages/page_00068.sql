prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_name=>'My Admin Tasks'
,p_alias=>'MY-ADMIN-TASKS'
,p_step_title=>'My Admin Tasks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2629495124627072)
,p_plug_name=>'My Admin Tasks'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(62196139762085059)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2630296262627076)
,p_plug_name=>'Admin Tasks - Smart Filters'
,p_parent_plug_id=>wwv_flow_imp.id(2629495124627072)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(2630423831627076)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'maximum_suggestion_chips', '0',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2630423831627076)
,p_plug_name=>'Admin Tasks - Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62124331163085017)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from table ( apex_approval.get_tasks (',
'                   p_context            => ''ADMIN_TASKS'',',
'                   p_show_expired_tasks => :P68_SHOW_EXPIRED',
'                   --, p_application_id => :APP_ID',
'                   ) )'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "orderBys": [',
'        {',
'            "key": "CREATED_ON",',
'            "expr": "created_on desc"',
'        },',
'        {',
'            "key": "DUE_ON",',
'            "expr": "priority asc, due_on asc nulls last"',
'        }',
'    ],',
'    "itemName": "P68_SORT_BY"',
'}'))
,p_optimizer_hint=>'APEX$USE_NO_GROUPING_SETS'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P68_SHOW_EXPIRED'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'No Tasks'
,p_no_data_found_icon_classes=>'fa-clipboard-check-alt fa-lg'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2635085639627099)
,p_region_id=>wwv_flow_imp.id(2630423831627076)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'SUBJECT'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<small role="group" aria-label="Task Details">',
'    <strong>&TASK_DEF_NAME!HTML.</strong>',
'{if INITIATOR/}',
'    <span role="separator" aria-label="&middot;"> &middot; </span> Initiated by &INITIATOR!HTML. ',
'{endif/}',
'{if ACTUAL_OWNER/}',
'    <span role="separator" aria-label="&middot;"> &middot; </span> Assigned to &ACTUAL_OWNER!HTML.',
'{endif/}',
'{if !IS_COMPLETED/}',
'    {case DUE_CODE/}',
'        {when OVERDUE/}',
'            <span role="separator" aria-label="&middot;"> &middot; </span><strong class="u-danger-text">Due &DUE_IN.</strong>',
'        {when NEXT_HOUR/}',
'            <span role="separator" aria-label="&middot;"> &middot; </span> <strong class="u-danger-text">Due &DUE_IN.</strong>',
'        {when NEXT_24_HOURS/}',
'            <span role="separator" aria-label="&middot;"> &middot; </span> <span class="u-danger-text">Due &DUE_IN.</span>',
'        {otherwise/}',
'            {if DUE_IN/}<span role="separator" aria-label="&middot;"> &middot; </span> <span>Due &DUE_IN.</span>{endif/}',
'    {endcase/}',
'{endif/}',
'{if !IS_COMPLETED/}',
'    {case PRIORITY/}',
'        {when 1/}',
'            <span role="separator" aria-label="&middot;"> &middot; </span> <strong class="u-danger-text">Urgent</strong>',
'        {when 2/}',
'            <span role="separator" aria-label="&middot;"> &middot; </span> <span class="u-danger-text">High priority</span>',
'    {endcase/}',
'{endif/}',
'{if OUTCOME/}',
'    <span role="separator" aria-label="&middot;"> &middot; </span> &OUTCOME.',
'{endif/}',
'</small>'))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'BADGE_TEXT'
,p_badge_css_classes=>'&BADGE_CSS_CLASSES.'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'TASK_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2635539249627101)
,p_card_id=>wwv_flow_imp.id(2635085639627099)
,p_action_type=>'TITLE'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&DETAILS_LINK_TARGET.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629961367627074)
,p_name=>'P68_TASK_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2630854377627077)
,p_name=>'P68_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2631261935627079)
,p_name=>'P68_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Due'
,p_source=>'DUE_IN_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.DUE'
,p_lov=>'.'||wwv_flow_imp.id(2443508965449991)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2631673249627081)
,p_name=>'P68_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Type'
,p_source=>'TASK_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_lov_type )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2632054389627086)
,p_name=>'P68_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Category'
,p_source=>'TASK_DEF_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2632410808627088)
,p_name=>'P68_PRIORITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Priority'
,p_source=>'PRIORITY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.PRIORITY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_lov_priority )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2632801588627089)
,p_name=>'P68_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'State'
,p_source=>'STATE_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.STATE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val',
'  from table ( apex_approval.get_lov_state )',
' order by insert_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2633248766627091)
,p_name=>'P68_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2633527208627093)
,p_name=>'P68_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Application'
,p_source=>'DETAILS_APP_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2633947473627094)
,p_name=>'P68_INITIATOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Initiator'
,p_source=>'INITIATOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2634388343627096)
,p_name=>'P68_INITIATED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2630296262627076)
,p_prompt=>'Initiated'
,p_source=>'CREATED_AGO_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_named_lov=>'UNIFIED_TASK_LIST.LOV.INITIATED'
,p_lov=>'.'||wwv_flow_imp.id(2449942116450029)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_display_as=>'INLINE'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2636162258627104)
,p_name=>'P68_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2630423831627076)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Sort by'
,p_source=>'DUE_ON'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Create Date;CREATED_ON,Due Date;DUE_ON'
,p_cHeight=>1
,p_tag_css_classes=>'mnw160'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(62254214243085098)
,p_item_icon_css_classes=>'fa-sort-amount-desc'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2636559648627105)
,p_name=>'P68_SHOW_EXPIRED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2630423831627076)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Show expired tasks'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(62254302773085100)
,p_item_css_classes=>'u-pullRight u-nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2636984102627107)
,p_name=>'Show Success Message'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2637372626627108)
,p_event_id=>wwv_flow_imp.id(2636984102627107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( this.data.successMessage ) {',
'    apex.message.showPageSuccess(this.data.successMessage.text);',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2637876428627110)
,p_name=>'Refresh - Admin Tasks - Report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2630423831627076)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2638276855627111)
,p_event_id=>wwv_flow_imp.id(2637876428627110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2630423831627076)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2638696796627113)
,p_event_id=>wwv_flow_imp.id(2637876428627110)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2630296262627076)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2639192815627115)
,p_name=>'Refresh - Admin Tasks - Report'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_SHOW_EXPIRED'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2639600444627116)
,p_event_id=>wwv_flow_imp.id(2639192815627115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2630423831627076)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2640111517627118)
,p_event_id=>wwv_flow_imp.id(2639192815627115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2630296262627076)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
