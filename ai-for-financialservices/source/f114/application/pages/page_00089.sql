prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ----- New Template------- ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #171E23; ',
'}  ',
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
' ',
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
' ',
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'.u-Processing {',
'',
'display:none !important;',
'',
'}',
'*/',
'   '))
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
 p_id=>wwv_flow_imp.id(7672959365758665)
,p_plug_name=>'BankerTopIcons'
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select 3 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Fraud Detected'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(1000, 1300))) data,',
'''fa fa-credit-card-alt fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 42 ) as link',
'from dual',
'union all',
'Select 1 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''New Customers'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(1, 100))) AS data,',
'''fa-users fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'union all',
'Select 2 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''New Applications'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(100, 200))) data,',
'''fa fa-newspaper-o fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual  ',
'union all',
'Select 4 as sort_order,',
'''#'' as LINK1,',
'''Services Offline'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(2, 10))) data,',
'''fa fa-server fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'''#'' as link',
'from dual',
'union all',
'Select 5 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''Review Tasks'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(10, 30))) data,',
'''fa fa-tasks fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 ) as link',
'from dual',
'union all',
'Select 6 as sort_order,',
'apex_page.get_url (p_page => 42 ) as LINK1,',
'''Total Transactions'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(10000, 15000))) data,',
'''fa fa-usd fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 42 ) as link',
'from dual',
'union all',
'Select 7 as sort_order,',
'''#'' as LINK1,',
'''App Downloads'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(20000, 30000))) data,',
'''fa fa-download fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'''#'' as link',
'from dual',
'union all',
'Select 8 as sort_order,',
'apex_page.get_url (p_page => 64 ) as LINK1,',
'''Support Request'' title,',
'to_char(TRUNC(DBMS_RANDOM.VALUE(50, 100))) data,',
'''fa fa-phone fa-fw fa-3x'' as icon_class,',
'''red'' as class1,',
'''red'' as class2,',
'apex_page.get_url (p_page => 64 )  as link',
'from dual'))
,p_plug_source_type=>'PLUGIN_COOL.DASHBOARD_V_2.0'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '{ "cardWidth": 1, "refresh": 2 ,"releaveHideIcon":"fa-long-arrow-down"}	')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7739337758567788)
,p_plug_name=>'Banker Chart 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7739756820567790)
,p_region_id=>wwv_flow_imp.id(7739337758567788)
,p_chart_type=>'pie'
,p_title=>'Profit Margins'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options){',
'	options.dataFilter = function(data) {',
'		for (var s = 0; s < data.series.lenght; s++) {',
'			data.series[s].pieSliceExplore = 1;',
'		}',
'		console.log(data)',
'		return data;',
'	};',
'	options.styleDefaults.threeDEffect = "on";',
'	return options;',
'}'))
,p_automatic_refresh_interval=>2
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7740212467567792)
,p_chart_id=>wwv_flow_imp.id(7739756820567790)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Gross Profile Margin'' label, DBMS_RANDOM.VALUE(1, 100) AS value from sys.dual',
'union all',
'select ''Operating Profilt Margin'' label, DBMS_RANDOM.VALUE(1, 50) AS  value from sys.dual',
'union all',
'select ''Net Profit Margin'' label, DBMS_RANDOM.VALUE(1, 75) AS  value from sys.dual',
'union all',
'select ''Operating Expense Ratio'' label, DBMS_RANDOM.VALUE(1, 200) AS   value from sys.dual '))
,p_max_row_count=>20
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8469700512056453)
,p_plug_name=>'Banker Transaction Pipeline'
,p_title=>'Transaction Pipeline'
,p_icon_css_classes=>'fa-combo-chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>'Transaction Pipeline'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8469820075056454)
,p_region_id=>wwv_flow_imp.id(8469700512056453)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function (options) {',
'	options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'	return options;',
'}'))
,p_automatic_refresh_interval=>2
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8469894157056455)
,p_chart_id=>wwv_flow_imp.id(8469820075056454)
,p_seq=>10
,p_name=>'Approved'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Approved'' label, DBMS_RANDOM.VALUE(1, 40) AS RejectedTx from sys.dual',
'',
'',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD ',
'WHERE TRANSACTION_STATUS = ''APPROVE'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_items_value_column_name=>'REJECTEDTX'
,p_items_label_column_name=>'LABEL'
,p_color=>'#5884a7'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8470010891056456)
,p_chart_id=>wwv_flow_imp.id(8469820075056454)
,p_seq=>20
,p_name=>'OnHold'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''OnHold'' label, DBMS_RANDOM.VALUE(2, 40) AS OnHoldTx from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''OnHold'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_items_value_column_name=>'ONHOLDTX'
,p_items_label_column_name=>'LABEL'
,p_color=>'#354f65'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8470147524056457)
,p_chart_id=>wwv_flow_imp.id(8469820075056454)
,p_seq=>30
,p_name=>'Rejected'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Rejected'' label, DBMS_RANDOM.VALUE(3, 20) AS RejectTx from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''REJECT'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_items_value_column_name=>'REJECTTX'
,p_items_label_column_name=>'LABEL'
,p_color=>'#49535c'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8470408412056460)
,p_chart_id=>wwv_flow_imp.id(8469820075056454)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8470210544056458)
,p_chart_id=>wwv_flow_imp.id(8469820075056454)
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
 p_id=>wwv_flow_imp.id(8470331803056459)
,p_chart_id=>wwv_flow_imp.id(8469820075056454)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'percent'
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
 p_id=>wwv_flow_imp.id(15846858188767566)
,p_plug_name=>'BankerStyle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'/*----- New Template-------*/ ',
'.u-Processing { ',
'display:none !important; ',
'}  ',
' #t_Body_content {  ',
'    background-color: #171E23; ',
'}  ',
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
'/* ------------ Color Icons ---------------------- */',
'',
'.apex-row {',
'     display: block;',
'     flex-wrap: wrap; ',
'}',
'.u-Processing {',
'',
'display:none !important;',
'',
'}',
'</style>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(220150787797884162)
,p_plug_name=>'Banker Total Transaction Value'
,p_title=>'Total Transaction Value'
,p_region_name=>'static_3naa'
,p_icon_css_classes=>'fa-combo-chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_header=>'Total Transaction Value'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7767770464776008)
,p_region_id=>wwv_flow_imp.id(220150787797884162)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function (options) {',
'	options.styleDefaults = $.extend( options.styleDefaults, {threeDEffect: "on"});',
'	return options;',
'}'))
,p_automatic_refresh_interval=>2
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7770034146776022)
,p_chart_id=>wwv_flow_imp.id(7767770464776008)
,p_seq=>10
,p_name=>'Approved'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Approved'' label, DBMS_RANDOM.VALUE(10000, 20000) AS TRANSACTION_TOTAL from sys.dual',
'',
'',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD ',
'WHERE TRANSACTION_STATUS = ''APPROVE'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'LABEL'
,p_color=>'#9edb6b'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7770663040776025)
,p_chart_id=>wwv_flow_imp.id(7767770464776008)
,p_seq=>20
,p_name=>'OnHold'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''OnHold'' label, DBMS_RANDOM.VALUE(20000, 30000) AS TRANSACTION_TOTAL from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''OnHold'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'LABEL'
,p_color=>'#ffe787'
,p_line_style=>'solid'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7771255049776027)
,p_chart_id=>wwv_flow_imp.id(7767770464776008)
,p_seq=>40
,p_name=>'Rejected'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Rejected'' label, DBMS_RANDOM.VALUE(10000, 15000) AS TRANSACTION_TOTAL from sys.dual',
'/*',
'select TRANSACTION_STATUS, count(*) TRANSACTION_COUNT, sum(total_pay) as TRANSACTION_TOTAL from RETAIL_SHOPPING_FD WHERE TRANSACTION_STATUS = ''REJECT'' AND TX_TYPE = ''FDTX''  group by TRANSACTION_STATUS',
'*/'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TRANSACTION_TOTAL'
,p_items_label_column_name=>'LABEL'
,p_color=>'#f06c6d'
,p_line_style=>'solid'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7769397222776018)
,p_chart_id=>wwv_flow_imp.id(7767770464776008)
,p_axis=>'y2'
,p_is_rendered=>'on'
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7768882455776016)
,p_chart_id=>wwv_flow_imp.id(7767770464776008)
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
 p_id=>wwv_flow_imp.id(7768275185776013)
,p_chart_id=>wwv_flow_imp.id(7767770464776008)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'currency'
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
 p_id=>wwv_flow_imp.id(253542870629043037)
,p_plug_name=>'Banker Transaction Locations'
,p_title=>'Transaction Locations'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(7829024259746144)
,p_region_id=>wwv_flow_imp.id(253542870629043037)
,p_height=>640
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'world-map'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_title=>'Suspected Transaction Locations'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:CIRCLE_TOOL:DISTANCE_TOOL'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(7829579677746148)
,p_map_region_id=>wwv_flow_imp.id(7829024259746144)
,p_name=>'Tx Locations'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, t.total_pay, trans_status, comments, latitude, longitude, customer_fullname, merchant_fullname, merchant_place, merchant_state, merchant_region, ',
'CREDIT_CARD_NO this_credit_card, ',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'FROM RETAIL_SHOPPING_FD t ',
'where merchant_state != ''United States of America'' AND TX_TYPE = ''ML''',
'order by id  desc'))
,p_has_spatial_index=>false
,p_pk_column=>'ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Merchant Name: &MERCHANT_PLACE. <br/>',
'Customer Name: &CUSTOMER_FULLNAME. <br/> ',
'Mall: &THIS_MALL. <br/>',
'State: &MERCHANT_STATE. <br/>',
'Region: &MERCHANT_REGION. <br/>',
'Total Pay: &TOTAL_PAY. <br/>',
'Invoice No: &INV_NO. <br/>'))
,p_allow_hide=>true
);
wwv_flow_imp.component_end;
end;
/
