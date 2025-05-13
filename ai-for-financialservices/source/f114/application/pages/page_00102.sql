prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_name=>'Search Helper'
,p_alias=>'SEARCHHELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Search Helper'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2293551177024951)
,p_plug_name=>'Search '
,p_title=>'Search Helper'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'Select AI (Search DB):',
'-----------------------------',
'What are the names, address and phone of customers who are buying Shoes',
'What are the names, address, phone of customers who are buying toys',
'-----------------------------',
'AI Vector Search (Search internal Knowledge base):',
'-----------------------------',
'How I can open account with Bank',
'Customer identification by an official of the Bank',
'Should I to visit your Branch Office for KYC',
'</pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
