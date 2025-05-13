prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_name=>'AI Search'
,p_alias=>'AI-SEARCH'
,p_step_title=>'AI Search'
,p_warn_on_unsaved_changes=>'N'
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
'',
'',
'',
'.t-Footer {',
'  display: none',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62250142950085095)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17605949459314685)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17607244744314698)
,p_plug_name=>'Rg2'
,p_parent_plug_id=>wwv_flow_imp.id(17605949459314685)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62119980143085015)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17607494370314700)
,p_plug_name=>'Rg3'
,p_parent_plug_id=>wwv_flow_imp.id(17605949459314685)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62119980143085015)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26009834738054684)
,p_plug_name=>'Translator Block'
,p_parent_plug_id=>wwv_flow_imp.id(17605949459314685)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P78_DB'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26010324565054689)
,p_plug_name=>'L'
,p_parent_plug_id=>wwv_flow_imp.id(26009834738054684)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17607963540314705)
,p_plug_name=>'DB Search Results'
,p_parent_plug_id=>wwv_flow_imp.id(26010324565054689)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'v_ip varchar2(20) := '''';',
'v_dbcheck varchar2(20) := :P78_DB;',
'v_n number; ',
'BEGIN ',
'       if v_dbcheck is not null then',
'        v_n := viewchat ( v_ip ); ',
'       end if;',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P78_DB'
,p_plug_display_when_cond2=>'Y'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26010498058054690)
,p_plug_name=>'R'
,p_parent_plug_id=>wwv_flow_imp.id(26009834738054684)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P78_CHECK'
,p_plug_display_when_cond2=>'Y'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(179934266992079259)
,p_plug_name=>'introframe'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="sketchfab-embed-wrapper"> ',
'        <iframe title="Patient Information" frameborder="0" allowfullscreen mozallowfullscreen="true" style="width:100%;height:800px" ',
'        webkitallowfullscreen="true"',
'         allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking',
'          execution-while-out-of-viewport execution-while-not-rendered web-share ',
'          src="https://sketchfab.com/models/aa6b6dc085344a009ccd02c9312c0128/embed?autostart=1&ui_theme=dark&dnt=1"> </iframe> ',
'          </div>'))
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P78_Q'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(263638941252008)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17607244744314698)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_icon_css_classes=>'fa-cloud-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(265363658252016)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17607494370314700)
,p_button_name=>'Upload_File'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_icon_css_classes=>'fa-upload'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(265780087252017)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17607494370314700)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(266134852252018)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17607494370314700)
,p_button_name=>'Manage_Vectors'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Manage Vectors'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-layout-list-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(268996734252033)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(17607494370314700)
,p_button_name=>'Translate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Translate'
,p_icon_css_classes=>'fa-language'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(212932234758995)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(17607244744314698)
,p_button_name=>'SelAIHelp'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search Helper'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-success'
,p_icon_css_classes=>'fa-info-circle'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17606974089314713)
,p_name=>'P78_Q'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17607244744314698)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17608670748314725)
,p_name=>'P78_CHECK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17607244744314698)
,p_item_default=>'true'
,p_prompt=>'Search Public LLM'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17609114679314729)
,p_name=>'P78_CHECKINT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17607244744314698)
,p_item_default=>'true'
,p_prompt=>'Search Internal KB'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17609622301314735)
,p_name=>'P78_DB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17607244744314698)
,p_item_default=>'true'
,p_prompt=>'Search DB'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17611894843314739)
,p_name=>'P78_A'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(26010324565054689)
,p_prompt=>'Internal Knowledge Base Search Results'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_display_when=>'P78_CHECKINT'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '360')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17612052588314741)
,p_name=>'P78_GA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(26010324565054689)
,p_prompt=>'Generative AI Public LLM Results (cohere.command-r-16k model)'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_display_when=>'P78_CHECK'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '360')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17612054709314744)
,p_name=>'P78_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17607494370314700)
,p_prompt=>'Vector file upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(592756602535198869)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'dropzone_title', 'Upload File to KB',
  'file_types', 'application/pdf',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26017303930054742)
,p_name=>'P78_OP_TEXT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(26010498058054690)
,p_prompt=>'Text to translate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26017398021054743)
,p_name=>'P78_TRANSLATED_OP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(26010498058054690)
,p_prompt=>'Translated Op'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27012688455035753)
,p_name=>'P78_TRG_LANG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(26010498058054690)
,p_prompt=>'Target Language'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Arabic;ar,Brazilian Portuguese;pt-BR,Czech;cs,Danish;da,Dutch;nl,English;en,Finnish;fi,Canadian French;fr-CA,German;de,Italian;it,Japanese;ja,Korean;ko,Norwegian;no,Polish;pl,Romanian;ro,Simplified Chinese;zh-CN,Spanish;es,Swedish;sv,Tradition'
||'al Chinese;zh-TW,Turkish;tr'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(272959612252088)
,p_name=>'cls'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(265780087252017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273466586252091)
,p_event_id=>wwv_flow_imp.id(272959612252088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_sess varchar2(100) := V(''SESSION'');',
'',
'begin ',
'        delete from AICHAT where SESSID = l_sess;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(273890258252093)
,p_event_id=>wwv_flow_imp.id(272959612252088)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Cleared!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(274347123252094)
,p_event_id=>wwv_flow_imp.id(272959612252088)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(270939712252079)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VectorSearch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_input varchar2(32000) := :P78_Q;',
'    l_checkint varchar2(50) := :P78_CHECKINT;',
'    v_response varchar2(32000) := ''- - -'';',
'BEGIN  ',
'    if l_input is not null and l_checkint = ''Y'' then',
'         v_response := rag_function ( l_input ); ',
'        :P78_A := v_response;',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(263638941252008)
,p_internal_uid=>9263048154316533
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(271295652252081)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GenAISearch'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  ',
'  l_genai_rest_url    VARCHAR2(4000) := ''https://inference.generativeai.us-chicago-1.oci.oraclecloud.com/20231130/actions/chat''; ',
'',
'  l_web_cred        CONSTANT VARCHAR2(50)   := ''replace-this'';   ',
'  l_input varchar2(4000) := :P78_Q;',
'  l_check varchar2(50) := :P78_CHECK;',
'  l_response_json CLOB;',
'  l_text varchar2(32000);',
'   ',
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
'            FROM   JSON_TABLE(l_response_json, ''$''  COLUMNS (text VARCHAR2(32000)  PATH ''$.chatResponse[0].text'' )) jt;   ',
'BEGIN',
'',
'  if l_input is not null and l_check = ''Y'' then',
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
'           l_text := row_1.text; ',
'           :P78_GA := l_text;',
'           :P78_OP_TEXT := l_text; ',
'     End Loop;',
'',
'    end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(263638941252008)
,p_internal_uid=>9263404094316535
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(271727427252083)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SearchDB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_input varchar2(100) := :P78_Q;',
'l_input_upper varchar2(4000) := upper(l_input);',
'l_sess varchar2(100) := V(''SESSION'');',
'l_action varchar2(10) := ''chat'';',
'l_qry varchar2(4000);',
'l_ai_resp varchar2(32000);',
'l_db_check varchar2(20) := :P78_DB;',
'',
'CURSOR C1  IS ',
'    SELECT DBMS_CLOUD_AI.GENERATE(prompt  => l_input,',
'                              profile_name => ''COHERE'',',
'                              action       => l_action ) as qry',
'    FROM dual;  ',
'',
'begin ',
'',
'    if ',
'    l_input_upper like ''SHOW%'' or  ',
'    l_input_upper like ''LIST%'' or ',
'    l_input_upper like ''HOW MANY%'' or ',
'    l_input_upper like ''WHAT IS THE NAME%'' or ',
'    l_input_upper like ''WHAT ARE THE NAME%''',
'    then',
'        l_action := ''showsql'';',
'    end if;',
'    ',
'    ---------------- Insert into DB Table ----------',
'    if l_input is not null and l_db_check = ''Y'' then',
'            For row_1 In C1 Loop',
'                l_qry := row_1.qry; ',
'            End Loop;  ',
'            if l_action = ''showsql'' then ',
'            -- handle sqlquery',
'            l_qry := lower(l_qry);',
'            insert into AICHAT (PROMPT, SESSID, ACTION, AISQL) values ',
'            (:P66_INPUT, l_sess, l_action, l_qry);',
'            else ',
'            -- handle chat',
'            insert into AICHAT (PROMPT, SESSID, ACTION, AIRESPONSE) values ',
'            (:P66_INPUT, l_sess, l_action, l_qry);',
'            end if; ',
'    end if;',
'',
'    --------- Display Chat -----------',
'    --l_ai_resp := viewchat (null);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(263638941252008)
,p_internal_uid=>9263835869316537
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(272117165252084)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fileupload'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_url         VARCHAR2(1000);',
'  l_length      NUMBER;',
'  l_response    CLOB;    ',
'  failed_upload EXCEPTION;',
'  l_bucket_url varchar2(4000) := ''https://replace-this.objectstorage.us-phoenix-1.oci.customer-oci.com/n/replace-this/b/X-Ray-Lung-replace-this-for-Training/o/KB/'';',
'BEGIN',
'  FOR lr_files in (SELECT * FROM apex_application_temp_files WHERE name = :P78_FILE) ',
'  LOOP ',
'    l_url := l_bucket_url||apex_util.url_encode(lr_files.filename);',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := lr_files.mime_type;',
'    l_response := apex_web_service.make_rest_request(p_url                  => l_url,',
'                                                     p_http_method          => ''PUT'',',
'                                                     p_body_blob            => lr_files.blob_content,',
'                                                     p_credential_static_id => ''replace-this'');  ',
'    ------ store in db',
'    INSERT INTO MY_BOOKS (FILE_NAME, file_type,FILE_CONTENT,FILE_SIZE)',
'        SELECT filename, mime_type,blob_content, dbms_lob.getlength(blob_content) FROM apex_application_temp_files',
'        WHERE name = :P78_FILE;',
'    ------ store in db',
'    IF apex_web_service.g_status_code != 200 then',
'      RAISE failed_upload;',
'    END IF;',
'  END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Upload Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(265363658252016)
,p_process_success_message=>'File Uploaded'
,p_internal_uid=>9264225607316538
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(272515914252085)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Translate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' ',
'        l_rest_url    VARCHAR2(4000) := ''https://language.aiservice.us-phoenix-1.oci.oraclecloud.com/20221001/actions/batchLanguageTranslation'';  ',
'        l_web_cred        CONSTANT VARCHAR2(50)   := ''replace-this'';   ',
'        --l_input varchar2(4000) := :P22_OUTPUT;',
'        l_input varchar2(4000) := :P78_OP_TEXT;',
'        l_target_lang varchar2(20) := :P78_TRG_LANG;',
'        l_src_lang varchar2(10);  ',
'        l_response_json CLOB;',
'        l_text varchar2(32000);  ',
'        l_body varchar2(4000) :=''{  ',
'                ',
'                         "documents": [  { ',
'                            "key": "1x",',
'                            "text": "''||l_input||''",',
'                            "languageCode": "auto"  ',
'                          } ],',
'                          "targetLanguageCode": "''||l_target_lang||''" ,',
'                           "compartmentId": "ocid1.compartment.oc1..replace-this"',
'                 ',
'        }'';    ',
'         ',
'        CURSOR C1  IS ',
'            SELECT jt.* ',
'            FROM   JSON_TABLE(l_response_json, ''$'' ',
'                     COLUMNS (',
'                                text VARCHAR2(4000)  ',
'                                PATH ''$.documents[0].translatedText'',',
'                                src_lang VARCHAR2(20)  ',
'                                PATH ''$.documents[0].sourceLanguageCode'', ',
'                                target_lang VARCHAR2(20)  ',
'                                PATH ''$.documents[0].targetLanguageCode''',
'                             )) jt; ',
'                       ',
'begin ',
'        ',
'',
'        apex_web_service.g_request_headers.DELETE; ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json''; ',
'',
'        l_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => l_rest_url, ',
'            p_http_method          => ''POST'', ',
'            p_body                 => l_body, ',
'            p_credential_static_id => l_web_cred);',
'',
'         --:P22_OUTPUT := l_response_json;',
'',
'         For row_1 In C1 Loop',
'                   l_text := row_1.text;',
'                   l_src_lang := row_1.src_lang;',
'                   l_target_lang := row_1.target_lang;   ',
'                    :P78_TRG_LANG := l_target_lang; ',
'                    :P78_TRANSLATED_OP := row_1.text;',
'                    --:P22_OUTPUT := row_1.text;',
'         End Loop; ',
'         ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9264624356316539
);
wwv_flow_imp.component_end;
end;
/
