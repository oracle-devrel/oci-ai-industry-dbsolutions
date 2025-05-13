prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_name=>'Pizza by Shops'
,p_alias=>'PIZZA-BY-SHOPS'
,p_step_title=>'Pizza by Shops'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  /*----- New Template Bank Customer-------*/ ',
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
'/*------------*/',
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
' ',
'',
' /*',
'.t-Form-itemWrapper .a-Button, .t-Form-itemWrapper .oj-inputdatetime-input-trigger !important {',
'    ',
'}',
'.t-Header-nav .a-MenuBar-item.a-Menu--current {',
'    --a-menubar-item-font-weight: var(--a-base-font-weight-bold,700); ',
'    color: var(--a-menubar-item-current-text-color);',
'}',
'.a-Button--hot, .a-CardView-button--hot, .apex-button-group input:checked+label, .t-Button--hot, .t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc input:checked+label, .ui-button--hot {',
'    --a-button-background-color:#3C4545 !important;',
'    }',
'',
'     #t_Body_content { ',
'background: url(#APP_FILES#OCPC-2k.jpg) no-repeat center center fixed;  ',
'background-size: cover !important; ',
'}',
' .t-Region {',
'    background-color: #191715;  ',
'}',
'',
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
' ',
'',
'.t-Footer {',
'  display: none',
'}',
'*/'))
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
 p_id=>wwv_flow_imp.id(27820455918288055)
,p_plug_name=>'Your Choice: &P55_PIZZA_NAME.  @  &P55_SHOP_NAME., Price: $ &P55_PRICE.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'u-success-border'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27821138871288061)
,p_plug_name=>'Your Choice'
,p_parent_plug_id=>wwv_flow_imp.id(27820455918288055)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'u-success-border'
,p_query_type=>'SQL'
,p_plug_source=>'select * from pizzashops where ID = :P55_PIZZA_ID'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P55_PIZZA_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(674662177551322)
,p_region_id=>wwv_flow_imp.id(27821138871288061)
,p_layout_type=>'GRID'
,p_component_css_classes=>'u-success-border'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<center> <img src=''#APP_FILES#retailimages/pizzanames/&IMAGE.'' width=530px height=530px/>'
,p_sub_title_adv_formatting=>false
,p_sub_title_css_classes=>'u-success-border'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(719446728087362)
,p_plug_name=>'Rg3'
,p_parent_plug_id=>wwv_flow_imp.id(27821138871288061)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720036096087368)
,p_plug_name=>'Rg5'
,p_parent_plug_id=>wwv_flow_imp.id(27821138871288061)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM   (',
'    select ID, ADDRESS, CITY, ',
'       PRICE, DESCRIPTION, PIZZA_NAME,',
'       SHOP, IMAGE, QUANTITY_AVAILABLE, UNIT_TYPE ',
'       from PIZZASHOPS',
'        where city=''seattle'' and Unit_type = ''Burger'' ',
'        ORDER BY DBMS_RANDOM.RANDOM) ',
'        where rownum < 2',
' '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P55_UNIT_TYPE'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(720179313087369)
,p_region_id=>wwv_flow_imp.id(720036096087368)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Get discount coupons on &UNIT_TYPE.s </b><br/>',
'<img src=''#APP_FILES#retailimages/pizzanames/&IMAGE.'' height="220px" width="220px"/><br/>',
'<b> &PIZZA_NAME.</b> @ &SHOP. $ &PRICE. '))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720242467087370)
,p_plug_name=>'Rg6'
,p_parent_plug_id=>wwv_flow_imp.id(27821138871288061)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'SELECT * FROM   (',
'    select ID, ADDRESS, CITY, ',
'       PRICE, DESCRIPTION, PIZZA_NAME,',
'       SHOP, IMAGE, QUANTITY_AVAILABLE, UNIT_TYPE ',
'       from PIZZASHOPS',
'        where city=''seattle'' and Unit_type = ''Coke'' ',
'        ORDER BY DBMS_RANDOM.RANDOM) ',
'        where rownum < 2',
' ',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P55_UNIT_TYPE'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(720349176087371)
,p_region_id=>wwv_flow_imp.id(720242467087370)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Get discount coupons on &UNIT_TYPE.s </b><br/>',
'<img src=''#APP_FILES#retailimages/pizzanames/&IMAGE.'' height="220px" width="220px"/><br/>',
'<b> &PIZZA_NAME.</b> @ &SHOP. $ &PRICE. '))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27821975759288070)
,p_plug_name=>'About &P5_PIZZA_NAME. '
,p_parent_plug_id=>wwv_flow_imp.id(27820455918288055)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37015738983511224)
,p_plug_name=>'Rg'
,p_parent_plug_id=>wwv_flow_imp.id(27820455918288055)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62119980143085015)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(720460659087372)
,p_plug_name=>'Rg7'
,p_parent_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM   (',
'    select ID, ADDRESS, CITY, ',
'       PRICE, DESCRIPTION, PIZZA_NAME,',
'       SHOP, IMAGE, QUANTITY_AVAILABLE, UNIT_TYPE ',
'       from PIZZASHOPS',
'        where city=''seattle'' and Unit_type = ''Pizza'' ',
'        ORDER BY DBMS_RANDOM.RANDOM) ',
'        where rownum < 2'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P55_UNIT_TYPE'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(720551752087373)
,p_region_id=>wwv_flow_imp.id(720460659087372)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Get discount coupons on &UNIT_TYPE.s </b><br/>',
'<img src=''#APP_FILES#retailimages/pizzanames/&IMAGE.'' height="220px" width="220px"/><br/>',
'<b> &PIZZA_NAME.</b> @ &SHOP. $ &PRICE. '))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78817516460580332)
,p_plug_name=>'Rg2'
,p_parent_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT * FROM   (',
'    select ID, ADDRESS, CITY, ',
'       PRICE, DESCRIPTION, PIZZA_NAME,',
'       SHOP, IMAGE, QUANTITY_AVAILABLE, UNIT_TYPE ',
'       from PIZZASHOPS',
'        where city=''seattle'' and Unit_type = ''Sundae'' ',
'        ORDER BY DBMS_RANDOM.RANDOM) ',
'        where rownum < 2',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P55_UNIT_TYPE'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(673783568551318)
,p_region_id=>wwv_flow_imp.id(78817516460580332)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Get discount coupons on &UNIT_TYPE.s </b><br/>',
'<img src=''#APP_FILES#retailimages/pizzanames/&IMAGE.'' height="220px" width="220px"/><br/>',
'<b> &PIZZA_NAME.</b> @ &SHOP. $ &PRICE. '))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27821612048288066)
,p_plug_name=>'More Yummy Choices'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27820886022288059)
,p_plug_name=>'Other &P55_UNIT_TYPE.s at &P55_SHOP_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(27821612048288066)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM   (',
'   select * from pizzashops where  unit_type = :P55_UNIT_TYPE and IMAGE is not null',
'    ORDER BY DBMS_RANDOM.RANDOM)',
';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P55_PIZZA_ID,P55_SHOP_NAME,P55_UNIT_TYPE'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(664631552551271)
,p_region_id=>wwv_flow_imp.id(27820886022288059)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center> <img src=''#APP_FILES#retailimages/pizzanames/&IMAGE.'' width=220px height=220px/><br/>',
'<b> &PIZZA_NAME.</b> </center>'))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center> @ &SHOP. &DESCRIPTION. &PRICE. </center> ',
''))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(665183183551276)
,p_card_id=>wwv_flow_imp.id(664631552551271)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::P55_SHOP_NAME,P55_PIZZA_ID,P55_PIZZA_NAME,P55_PRICE,P55_UNIT_PRICE:&SHOP.,&ID.,&PIZZA_NAME.,&PRICE.,&PRICE.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27821708945288067)
,p_plug_name=>'Our Pizza shops are at Seattle, Auburn, Tacoma, Federal Way, Kirkland'
,p_parent_plug_id=>wwv_flow_imp.id(27821612048288066)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(666182287551282)
,p_region_id=>wwv_flow_imp.id(27821708945288067)
,p_height=>640
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'osm-positron'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR:INFINITE_MAP:DISTANCE_TOOL'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(666675948551285)
,p_map_region_id=>wwv_flow_imp.id(666182287551282)
,p_name=>'Pizza Locations'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ADDRESS,',
'       CITY,',
'       LATITUDE,',
'       LONGITUDE,',
'       PRICE,',
'       DESCRIPTION,',
'       PIZZA_NAME,',
'       SHOP, ',
'       sdo_geom,',
'       QUANTITY_AVAILABLE',
'  from PIZZASHOPS ',
' where city = ''seattle'' or city = ''kirkland'''))
,p_has_spatial_index=>false
,p_pk_column=>'ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'ICON'
,p_point_icon_source_type=>'STATIC_CLASS'
,p_point_icon_css_classes=>'fa-map-pin-heart'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b> &SHOP. </b><br/>',
'&ADDRESS.<br/>',
'&CITY.<br/>'))
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_LAT,P2_LONG:&LATITUDE.,&LONGITUDE.'
,p_allow_hide=>true
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(667206498551288)
,p_map_region_id=>wwv_flow_imp.id(666182287551282)
,p_name=>'Pizza Locations_1'
,p_layer_type=>'POINT'
,p_display_sequence=>20
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ADDRESS,',
'       CITY,',
'       LATITUDE,',
'       LONGITUDE,',
'       PRICE,',
'       DESCRIPTION,',
'       PIZZA_NAME,',
'       SHOP, ',
'       sdo_geom,',
'       QUANTITY_AVAILABLE',
'  from PIZZASHOPS ',
'where city = ''Seattle'' or city = ''Auburn'' or city = ''Tacoma'' or city = ''Federal Way'' or city = ''Kirkland'''))
,p_has_spatial_index=>false
,p_pk_column=>'ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'ICON'
,p_point_icon_source_type=>'STATIC_CLASS'
,p_point_icon_css_classes=>'fa-map-pin-heart'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b> &SHOP. </b><br/>',
'&ADDRESS.<br/>',
'&CITY.<br/>'))
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::P55_PIZZA_ID,P55_SHOP_NAME,P55_PIZZA_NAME:&ID.,&SHOP.,&PIZZA_NAME.'
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(102636456322874435)
,p_plug_name=>'chat'
,p_region_name=>'chat'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663590266551260)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27821612048288066)
,p_button_name=>'AddToCart'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Add to Cart'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(672970751551315)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27821975759288070)
,p_button_name=>'About'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P5_PIZZA_NAME.'
,p_icon_css_classes=>'fa-info-circle'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(722015641087388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(719446728087362)
,p_button_name=>'Add_to_cart'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add to Cart'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-shopping-cart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(721628496087384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(719446728087362)
,p_button_name=>'ViewCart'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Cart'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-shopping-cart'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(669340042551297)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(719446728087362)
,p_button_name=>'Checkout'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Check Out'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-dollar'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(690168610551398)
,p_branch_name=>'AfterSubmitRed'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(663590266551260)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(689755226551397)
,p_branch_name=>'AfterSubmitAdd'
,p_branch_action=>'begin '||wwv_flow.LF||
'   -- SHOP_ITEMS_INSERTS(''PPXRR'', V(''SESSION''), ''Madhu Rao'');'||wwv_flow.LF||
'   null;'||wwv_flow.LF||
'end;'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'PLSQL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(717959642087347)
,p_name=>'P55_WHICHMODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27829359585288123)
,p_name=>'P55_QTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1 ------------------;1,2;2,3;3,4;4,5;5'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27833532426288154)
,p_name=>'P55_SHOP_NAME'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27833787851288156)
,p_name=>'P55_PIZZA_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27834281617288161)
,p_name=>'P55_PIZZA_NAME'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37022682655511274)
,p_name=>'P55_TOPPINGS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_prompt=>'Extra Toppings + $'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:----------------;0, Pepperoni (+1);1,Capsicum (+2);2,Corn (+3);3,Cheese (+4);4,Paneer (+5);5,Chicken (+6);6'
,p_cHeight=>1
,p_display_when=>'P55_UNIT_TYPE'
,p_display_when2=>'Pizza'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37022854151511275)
,p_name=>'P55_CRUST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_prompt=>'Crust'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Medium;Medium,Thin;Thin,Thick;Thick'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P55_UNIT_TYPE'
,p_display_when2=>'Pizza'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37023461254511282)
,p_name=>'P55_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_prompt=>'How can we serve'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Take Home;0,Serve @ Shop (+1);1,Deliver to Home (+5);5'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37023572285511283)
,p_name=>'P55_PRICE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_use_cache_before_default=>'NO'
,p_source=>'select price from pizzashops where id = :P55_PIZZA_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37023757855511284)
,p_name=>'P55_UNIT_PRICE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_prompt=>'Item Price $'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37024147351511288)
,p_name=>'P55_SIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_prompt=>'Size'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Regular;1,Family Size;1.5,Small;0.75'
,p_cHeight=>1
,p_display_when=>'P55_UNIT_TYPE'
,p_display_when2=>'Pizza'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37026426716511311)
,p_name=>'P55_UNIT_TYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(37015738983511224)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37028765379511305)
,p_name=>'P55_OUTPUT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27821975759288070)
,p_prompt=>'About Information'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(61819822123958876)
,p_name=>'P55_ITEM_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27821612048288066)
,p_use_cache_before_default=>'NO'
,p_source=>'select count(*) from pizza_order_details where sessid = V(''SESSION'');'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(677304487551353)
,p_name=>'onC2'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(718505422087353)
,p_event_id=>wwv_flow_imp.id(677304487551353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'A'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(677884999551357)
,p_event_id=>wwv_flow_imp.id(677304487551353)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_PRICE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  this_price number; ',
'  BEGIN',
'    this_price := (:P55_PRICE * :P55_QTY * :P55_SIZE) + (:P55_TOPPINGS * :P55_QTY); ',
'    :P55_UNIT_PRICE := this_price; ',
'    return this_price;',
'  END;'))
,p_attribute_07=>'P55_PRICE,P55_QTY,P55_SIZE,P55_TOPPINGS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(678244787551358)
,p_name=>'onC4'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_SIZE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(718616794087354)
,p_event_id=>wwv_flow_imp.id(678244787551358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'B'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(678758055551360)
,p_event_id=>wwv_flow_imp.id(678244787551358)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_PRICE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  this_price number; ',
'  BEGIN',
'    this_price := (:P55_PRICE * :P55_QTY * :P55_SIZE) + (:P55_TOPPINGS * :P55_QTY); ',
'    :P55_UNIT_PRICE := this_price; ',
'    return this_price;',
'  END;'))
,p_attribute_07=>'P55_PRICE,P55_QTY,P55_SIZE,P55_TOPPINGS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(679096471551361)
,p_name=>'onC5'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_TOPPINGS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(679659657551363)
,p_event_id=>wwv_flow_imp.id(679096471551361)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_PRICE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  this_price number; ',
'  BEGIN',
'    this_price := (:P55_PRICE * :P55_QTY * :P55_SIZE) + (:P55_TOPPINGS * :P55_QTY); ',
'    :P55_UNIT_PRICE := this_price; ',
'    return this_price;',
'  END;'))
,p_attribute_07=>'P55_PRICE,P55_QTY,P55_SIZE,P55_TOPPINGS,P55_MODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(680083211551364)
,p_name=>'oCRB'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_MODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(718807462087356)
,p_event_id=>wwv_flow_imp.id(680083211551364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'D'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(680526711551365)
,p_event_id=>wwv_flow_imp.id(680083211551364)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_WHICHMODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  this_price number; ',
'  this_mode varchar2(100) := :P55_MODE;',
'  BEGIN',
'    --this_price := (:P55_PRICE * :P55_QTY * :P55_SIZE) + (:P55_TOPPINGS * :P55_QTY); ',
'    --this_price := this_mode;',
'    :P55_WHICHMODE := this_mode; ',
'    return this_mode;',
'  END;'))
,p_attribute_07=>'P55_PRICE,P55_QTY,P55_SIZE,P55_TOPPINGS,P55_MODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(681045850551367)
,p_event_id=>wwv_flow_imp.id(680083211551364)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_PRICE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  declare',
'  this_price number; ',
'  BEGIN',
'    this_price := (:P55_PRICE * :P55_QTY * :P55_SIZE) + (:P55_TOPPINGS * :P55_QTY) + :P55_MODE; ',
'    :P55_UNIT_PRICE := this_price; ',
'    return this_price;',
'  END;'))
,p_attribute_07=>'P55_PRICE,P55_QTY,P55_SIZE,P55_TOPPINGS,P55_MODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(682811372551374)
,p_name=>'A2C'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(663590266551260)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(683364032551376)
,p_event_id=>wwv_flow_imp.id(682811372551374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_TYPE'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P66_COKE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(687922991551390)
,p_name=>'pgonload'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(688465896551392)
,p_event_id=>wwv_flow_imp.id(687922991551390)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attribute_01=>'DIALOG'
,p_ai_remote_server_id=>wwv_flow_imp.id(19450264014113012)
,p_ai_system_prompt=>'Hi There, welcome'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(718089138087348)
,p_name=>'OCX'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_UNIT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(718152600087349)
,p_event_id=>wwv_flow_imp.id(718089138087348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(78817516460580332)
,p_attribute_01=>'N'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(719566216087363)
,p_name=>'Rg2Da'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(78817516460580332)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(719806812087366)
,p_event_id=>wwv_flow_imp.id(719566216087363)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Sundae'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(719898532087367)
,p_event_id=>wwv_flow_imp.id(719566216087363)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27820886022288059)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(720630968087374)
,p_name=>'Rg7'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(720460659087372)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(720854228087376)
,p_event_id=>wwv_flow_imp.id(720630968087374)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Pizza'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(720990335087377)
,p_event_id=>wwv_flow_imp.id(720630968087374)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27820886022288059)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(721059978087378)
,p_name=>'Rg5'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(720036096087368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(721121081087379)
,p_event_id=>wwv_flow_imp.id(721059978087378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Burger'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(721269912087380)
,p_event_id=>wwv_flow_imp.id(721059978087378)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27820886022288059)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(721352115087381)
,p_name=>'Rg6'
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(720242467087370)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(721470264087382)
,p_event_id=>wwv_flow_imp.id(721352115087381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_UNIT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Coke'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(721527813087383)
,p_event_id=>wwv_flow_imp.id(721352115087381)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27820886022288059)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(722154807087389)
,p_name=>'adc'
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(722015641087388)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(722334777087391)
,p_event_id=>wwv_flow_imp.id(722154807087389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'SavePizzaData'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'     PIZZA_CART_INSERTS(:P55_PIZZA_NAME, V(''SESSION''), ''Payment-Pending'', :P55_SIZE, :P55_CRUST, :P55_TOPPINGS, :P55_UNIT_PRICE, :P55_QTY, :P55_PIZZA_ID);  ',
'end;'))
,p_attribute_02=>'P55_PIZZA_NAME,P55_SIZE,P55_CRUST,P55_TOPPINGS,P55_UNIT_PRICE,P55_QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(722445990087392)
,p_event_id=>wwv_flow_imp.id(722154807087389)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Item Added to Cart'
,p_attribute_04=>'fa-shopping-bag'
,p_attribute_05=>'u-success-text'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(722211840087390)
,p_event_id=>wwv_flow_imp.id(722154807087389)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(719446728087362)
,p_attribute_01=>'N'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(676967800551351)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GeAIResponse'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  l_genai_rest_url    VARCHAR2(4000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat''; ',
'',
'  l_web_cred        CONSTANT VARCHAR2(50)   := ''replace-this'';   ',
'  l_input varchar2(4000) := :P55_PIZZA_NAME;',
'  l_response_json CLOB;',
'  l_text varchar2(4000);',
'  l_prompt varchar2(1000);',
'  ',
'  l_ocigabody varchar2(32000); ',
'',
'  CURSOR C1  IS ',
'            SELECT jt.* ',
'            FROM   JSON_TABLE(l_response_json, ''$''  COLUMNS (text VARCHAR2(32000)  PATH ''$.chatResponse[0].text'' )) jt;   ',
'',
' BEGIN ',
'',
'    l_prompt := ''How to prepare ''||l_input||''. and what are the health benefits of ''||l_input; ',
'',
'    l_ocigabody  := '' ',
'    {',
'        "compartmentId": "ocid1.compartment.oc1..replace-this",',
'        "servingMode": {',
'            "servingType": "ON_DEMAND",',
'            "modelId": "cohere.command-r-16k"',
'        },',
'        "chatRequest": {',
'            "message": "''||l_prompt||''",',
'            "maxTokens": 600,',
'            "isStream": false,',
'            "apiFormat": "COHERE",',
'            "temperature": 0.75,',
'            "frequencyPenalty": 1,',
'            "presencePenalty": 0,',
'            "topP": 0.7,',
'            "topK": 1',
'        }',
'    }',
'    '';  ',
'',
'    if l_prompt is not null then',
'',
'        apex_web_service.g_request_headers.DELETE; ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'         l_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => l_genai_rest_url, ',
'            p_http_method          => ''POST'', ',
'            p_body                 => l_ocigabody, ',
'            p_credential_static_id => l_web_cred);',
' ',
'',
'    For row_1 In C1 Loop',
'           l_text := row_1.text; ',
'             :P55_OUTPUT := l_text;',
'     End Loop;',
'',
'    end if;',
'',
'    --:P68_OUTPUT := l_prompt;',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(672970751551315)
,p_internal_uid=>9669076242615805
);
wwv_flow_imp.component_end;
end;
/
