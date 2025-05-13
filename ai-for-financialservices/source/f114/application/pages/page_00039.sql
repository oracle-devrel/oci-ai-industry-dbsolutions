prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_name=>'MoneyL'
,p_alias=>'MONEYL'
,p_step_title=>'MoneyL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104618080928702152)
,p_plug_name=>'Money laundering'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b> Money laundering </b>',
'<br/>',
'Conceptually, money laundering is simple. Dirty money is passed around',
'to blend it with legitimate funds and then turned into hard assets. This is',
'the kind of process that was used in the <a href=''https://en.wikipedia.org/wiki/Panama_Papers'' target=''_new''> Panama Papers analysis </a>.',
'More specifically, a <b> circular money transfer </b> involves a criminal who',
'sends large amounts of fraudulently obtained money to himself or',
unistr('herself\2014but hides it through a long and complex series of valid'),
unistr('transfers between \201Cnormal\201D accounts. These \201Cnormal\201D accounts are'),
'actually, accounts are created with synthetic identities. They typically',
'share certain similar information because they are generated from',
unistr('stolen identities (email addresses, addresses, etc.), and it\2019s this related'),
'information that makes graph analysis such an excellent fit to make them',
'reveal their fraudulent origins',
'<br/>',
'<img src=''#APP_FILES#ml.png''>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
