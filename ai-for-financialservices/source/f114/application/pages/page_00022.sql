prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Ask AI'
,p_alias=>'ASK-AI'
,p_step_title=>'Ask AI'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(62722399245879119)
,p_navigation_list_template_id=>wwv_flow_imp.id(62250142950085095)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(194171725087900341)
,p_plug_name=>'Response'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'  l_url    VARCHAR2(4000) := ''https://api.cohere.ai/v1/generate'';  ',
'  l_input varchar2(4000) := :P22_INPUT;',
'   ',
'    l_body   VARCHAR2(4000) := ''{',
'        "model": "command",',
'        "prompt": "''||l_input||''",',
'        "max_tokens": 300,',
'        "temperature": 0.9,',
'        "k": 0,',
'        "stop_sequences": [],',
'        "return_likelihoods": "NONE"',
'        }'';',
'    l_response_json CLOB;',
'    l_text varchar2(4000);',
'',
'  CURSOR C1  IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_response_json, ''$'' ',
'             COLUMNS (text VARCHAR2(2000)  PATH ''$.generations[0].text'' )) jt; ',
'',
'BEGIN',
'',
'  if l_input is not null then',
'',
'  apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value := ''application/json'';',
'    apex_web_service.g_request_headers(2).name := ''Authorization'';',
'     ',
'    -- working own key below from myself',
'    --apex_web_service.g_request_headers(2).value := ''Bearer IOJX6EmPo1DS1TGEfJBrDaLox3RAccIMQgz6YXcA'';',
'    ',
'    -- key from Tom YRU0OUK1u588XfWl6wcfos3JDrxIWA81GlngmvBj',
'    apex_web_service.g_request_headers(2).value := ''Bearer YRU0OUK1u588XfWl6wcfos3JDrxIWA81GlngmvBj'';',
'',
'  l_response_json := apex_web_service.make_rest_request( ',
'    p_url => l_url, ',
'    p_http_method => ''POST'', ',
'    p_body => l_body  ',
'  );',
'',
'  --Htp.p(l_response_json ); ',
'',
'    For row_1 In C1 Loop',
'           l_text := row_1.text;',
'            Htp.p(  l_text );  ',
'     End Loop;',
'',
'    end if;',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P22_INPUT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91390553930846298)
,p_button_sequence=>20
,p_button_name=>'Ask_AI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ask Cohere'
,p_icon_css_classes=>'fa-user-man'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(156947012412548006)
,p_name=>'P22_INPUT'
,p_item_sequence=>10
,p_prompt=>'Ask Cohere AI Input'
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
wwv_flow_imp.component_end;
end;
/
