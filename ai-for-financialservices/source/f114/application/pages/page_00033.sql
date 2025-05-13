prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'Show Anomalies'
,p_alias=>'SHOW-ANOMALIES'
,p_step_title=>'Show Anomalies'
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
 p_id=>wwv_flow_imp.id(93360467000019694)
,p_plug_name=>'Input Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,  TOTAL_PAY ',
'        FROM FD_TX_HISTORIC_DATA order by TX_TIMESTAMP'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93360557303019695)
,p_name=>'TX_TIMESTAMP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Tx Timestamp'
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
 p_id=>wwv_flow_imp.id(93360715803019696)
,p_name=>'TOTAL_PAY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Total Pay'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93360801489019697)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';',
'v_anm_ocid FD_ANM.ANOMALY_OCID%TYPE := :P33_ANOMALY_OCID; ',
'v_json_url VARCHAR2(1000);',
'l_response                CLOB;',
'BASE_URL CONSTANT VARCHAR2(500) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101'';',
'anm_api_url   VARCHAR2(1000) := BASE_URL||''/detectAnomalyJobs/''||v_anm_ocid;',
'',
'BASE_URL2 CONSTANT VARCHAR2(500) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a/ocid1.aianomalydetectionjob.oc1'
||'.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result.json'';',
'obj_str_url VARCHAR2(1000) := BASE_URL2||''/n/:replace-this/b/:replace-this/o/:objectName/AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksy'
||'f3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result.json'';',
'v_response_json       CLOB; ',
'v_lifecycleState varchar2(50);',
' p_file_blob    BLOB;',
'b_data BLOB;',
'v_res_url VARCHAR2(32000);',
'  l_json                CLOB;',
'  cur sys_refcursor;',
'   v_request_json        VARCHAR2(32000); ',
'',
'GC_OCY_DOC_AI_PAYLOAD      CONSTANT VARCHAR2(32000) := ''{  ',
'    "namespaceName": "replace-this", ',
'    "bucketName": "replace-this", ',
'    "objectName": "AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result.json" ',
'}''; ',
'',
'',
'begin ',
'',
'select JSON_URL into v_json_url from FD_ANM where ANOMALY_OCID = v_anm_ocid;',
'',
'-- Htp.p(v_json_url);',
'',
' --AI_URL := BASE_URL||''/detectAnomalyJobs/''||v_anm_ocid;',
'',
'/*',
' p_file_blob := apex_web_service.make_rest_request_b ',
'   (p_url                  => UTL_URL.ESCAPE(v_json_url), ',
'    p_http_method          => ''GET'', ',
'    p_credential_static_id => GC_WC_CREDENTIAL_ID); ',
'    */',
'',
'',
'v_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => anm_api_url, ',
'            p_http_method          => ''GET'', ',
'            --p_body                 => v_request_json, ',
'            p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
' --Htp.p(v_response_json);',
'',
' apex_json.parse (v_response_json);',
' v_lifecycleState := apex_json.get_varchar2 (''lifecycleState'');',
'',
' --Htp.p(v_lifecycleState);',
'',
' if v_lifecycleState = ''SUCCEEDED'' then',
'        Htp.p('' Anomaly Detection Job is Completed! Status:<b style="color:green">''||v_lifecycleState||''</b>'');',
'        Htp.p(''<br/><br/> <a href=''||v_json_url||'' target=_new>Download Anomalies </a>'');',
' else ',
'         Htp.p(''Please wait Anomaly Detection Job is in progress ! Status:<b style="color:orange">''||v_lifecycleState||''</b>''  );',
' end if;',
'',
'',
'-- ',
'',
'/*',
'Name:',
' ',
'AA/',
'ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a',
'/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result.json',
'',
'https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/',
'AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia6xpv63nnp3enudtkn2dhooitfxhkj3dqvbefkttft5mq',
'/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia6xpv63nnp3enudtkn2dhooitfxhkj3dqvbefkttft5mq-result.json',
'',
'https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/',
'KV/profile10.pdf',
'*/',
'',
' --Htp.p(BASE_URL2);',
'',
'/*',
'',
'   apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
'',
'  -- ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result.json',
'  --/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia4ucg6nqwqwfm2nwewt72iduwpfeel7o4pc5q2hwaufoq/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia4ucg6nqwqwfm2nwewt72iduwpfeel7o4pc5q2hwaufoq-result.json',
'v_request_json := apex_web_service.make_rest_request',
'             (p_url =>  ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a/ocid1.aianomalydetectionjob.oc1.phx.amaaaaa'
||'aknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result!!.json'' ,',
'              p_http_method => ''GET'' );',
'',
'    Htp.p(v_request_json);',
'    */',
'',
'        --apex_json.initialize_clob_output ( p_indent => 1 );',
'',
'         -- apex_json.open_object;',
'         -- apex_json.write ( ''documents'', cur );',
'         -- apex_json.close_object;',
'',
'        --  v_request_json := APEX_JSON.get_clob_output;',
'',
'        -- htp.p(''<br/><br/>'' ||APEX_JSON.get_clob_output);',
'',
'  /*',
'  l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/AA/AA_ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a_ocid1.aianomalydetectionjo'
||'b.oc1.phx.amaaaaaaknuwtjia3u5zeg2ksyf3h54ofqf3pmcsxwdzcf7c6wi2vlmsnq4a-result.json''),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'              */',
'',
'  --Htp.p(l_json);            ',
' ',
' /* -------- working below ----------',
' l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/KV/ocid1.aidocumentprocessorjob.oc1.phx.amaaaaaaknuwtjia56zo56a5oivdm5brh256fe4lfdwaur7sls4qhvkhmpaa/replace-this_replace-this/res'
||'ults/KV/profile17.pdf.json''),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'',
'   open cur for ',
'            SELECT  jt.*  , ''en''  "languageCode"    ',
'            FROM JSON_TABLE(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'                     COLUMNS (',
'                             "key"   VARCHAR2(200)  PATH ''$.cells[0].text'' ,  ',
'                             "text"      VARCHAR2(200)  PATH ''$.cells[1].text''  ',
'                     ) ) jt;  ',
'                   ',
'',
'          apex_json.initialize_clob_output ( p_indent => 1 );',
'',
'          apex_json.open_object;',
'          apex_json.write ( ''documents'', cur );',
'          apex_json.close_object;',
'',
'          v_request_json := APEX_JSON.get_clob_output;',
'',
'         htp.p(''<br/><br/>'' ||APEX_JSON.get_clob_output);',
'---------------------*/',
' /*',
' v_res_url := apex_web_service.make_rest_request ',
'   (p_url                  => ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/KV/ocid1.aidocumentprocessorjob.oc1.phx.amaaaaaaknuwtjia56zo56a5oivdm5brh256fe4lfdwaur7sls4qhvkhmpaa/replace-this_replace-this/results/KV/'
||'profile17.pdf.json'', ',
'    p_http_method          => ''GET''); ',
'    */',
'',
' ',
'',
'/*',
'p_file_blob := apex_web_service.make_rest_request_b ',
'   (p_url                  => UTL_URL.ESCAPE(v_json_url), ',
'    p_http_method          => ''GET'', ',
'    p_credential_static_id => GC_WC_CREDENTIAL_ID); ',
'',
'',
'v_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => anm_api_url, ',
'            p_http_method          => ''GET'', ',
'            --p_body                 => v_request_json, ',
'            p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
' Htp.p(v_response_json);',
'',
' apex_json.parse (v_response_json);',
' v_lifecycleState := apex_json.get_varchar2 (''lifecycleState'');',
'',
' Htp.p(v_lifecycleState);',
'',
'',
' v_response_json := get_file (p_request_url => lr_document.object_store_url); ',
'',
'   v_response_json := apex_web_service.make_rest_request',
'             (p_url =>  v_json_url ,',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
' */',
'',
'',
'',
' --lifecycleState',
'',
'-- /20210101/detectAnomalyJobs/{detectAnomalyJobId}',
'',
'/*',
'',
'l_response := apex_web_service.make_rest_request(    ',
'                p_url => v_json_url,',
'                p_http_method => ''GET'',',
'                p_credential_static_id => GC_WC_CREDENTIAL_ID',
'                ); ',
'',
'',
'l_response := apex_web_service.make_rest_request(    ',
'                p_url => v_json_url,',
'                p_http_method => ''GET'' ',
'                ); ',
'                */',
'',
'',
'/*',
'',
'v_response_json := apex_web_service.make_rest_request ',
'           (p_url                  => v_sentimental_api_url, ',
'            p_http_method          => ''POST'', ',
'            p_body                 => v_request_json, ',
'            p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'',
'l_json := apex_web_service.make_rest_request',
'             --(p_url => UTL_URL.ESCAPE(v_json_url),',
'              ( p_url => v_json_url,',
'              p_http_method => ''GET'' );',
'              ',
'l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(l_docjob_json_url),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        open cur for ',
'            SELECT  jt.*  , ''en''  "languageCode"    ',
'            FROM JSON_TABLE(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'                     COLUMNS (',
'                             "key"   VARCHAR2(200)  PATH ''$.cells[0].text'' ,  ',
'                             "text"      VARCHAR2(200)  PATH ''$.cells[1].text''  ',
'                     ) ) jt;  ',
'                     */',
'',
'',
' ',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93360966968019699)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(93360801489019697)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93360343126019693)
,p_name=>'P33_ANOMALY_OCID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93361045575019700)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93360966968019699)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93657637875726851)
,p_event_id=>wwv_flow_imp.id(93361045575019700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
