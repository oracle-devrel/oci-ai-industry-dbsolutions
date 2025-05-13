prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_name=>'Copy of 31 Anomaly Detection'
,p_alias=>'COPY-OF-31-ANOMALY-DETECTION'
,p_step_title=>'Copy of 31 Anomaly Detection'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(62722399245879119)
,p_navigation_list_template_id=>wwv_flow_imp.id(62250142950085095)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159633996518703595)
,p_plug_name=>'Transaction Anomalies'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62118548241085014)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare   ',
' ',
'begin',
'  ',
'      FD_TX_ANM_INSERTS ( );',
'   ',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P38_ANM_OCID'
,p_plug_read_only_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159635710721703612)
,p_plug_name=>'Anomalies'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT * FROM (',
'    select ID,',
'       ANOMALY_NAME,',
'       ANOMALY_OCID,',
'       --TX_TIMESTAMP,',
'       to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,',
'       JSON_URL',
'  from FD_ANM  order by tx_timestamp desc   ',
') WHERE ROWNUM = 1;'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(159637116561703626)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>false
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(159637122749703627)
,p_name=>'ANOMALY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>false
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(159637300349703628)
,p_name=>'ANOMALY_OCID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Anomaly Ocid'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_text', '&ANOMALY_OCID.',
  'target', 'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::P38_ANM_OCID:&ANOMALY_OCID.',
  'type', 'LINK',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(159637343137703629)
,p_name=>'TX_TIMESTAMP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(159637460494703630)
,p_name=>'JSON_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>false
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159935315257410793)
,p_plug_name=>'Anm'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,  TOTAL_PAY ',
'        FROM FD_TX_HISTORIC_DATA order by TX_TIMESTAMP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Anm'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(159935370751410794)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMOUSER'
,p_internal_uid=>121634733028624944
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159935451649410795)
,p_db_column_name=>'TX_TIMESTAMP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tx Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159935611803410796)
,p_db_column_name=>'TOTAL_PAY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Total Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(159946561992872364)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'553688'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TX_TIMESTAMP:TOTAL_PAY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159936209962410802)
,p_plug_name=>'Transaction Anomalies'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'GC_OCI_DOC_AI_URL          CONSTANT VARCHAR2(500)  := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/detectAnomalyJobs''; ',
'BASE_URL CONSTANT VARCHAR2(500) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101'';',
'compartmentId CONSTANT VARCHAR2(500) := ''ocid1.compartment.oc1..replace-this'';',
'projectId CONSTANT VARCHAR2(500) := ''ocid1.aianomalydetectionproject.oc1.phx.amaaaaaaknuwtjiapvs2awb56mryemubr4qrcfcso55y2ecjpe5cvohzlnlq'';',
'AI_URL CONSTANT VARCHAR2(500) := BASE_URL||''/models?compartmentId=''||compartmentId||''&projectId=''||projectId||''&limit=10&sortOrder=ASC&sortBy=timeCreated'';',
'json_input_str3 varchar2(4000) ;',
' ',
' ',
'',
'request_payload_small_ds   varchar2(32000)   ;',
'',
'l_request_json        VARCHAR2(32000); ',
'l_response_json       CLOB; ',
'  v_id varchar(100);',
'  v_filename varchar(100);',
'  l_obj_name varchar2(500);',
'  l_base_path varchar2(500) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/'';',
'  l_docjob_json_url varchar2(4000) ;',
'  l_json                CLOB;',
'  v_time_diff number := 1; ',
'  v_tx_timestamp FD_TX_HISTORIC_DATA.TX_TIMESTAMP%TYPE;',
'  v_total_pay FD_TX_HISTORIC_DATA.TOTAL_PAY%TYPE;',
'',
'  cursor c1 is ',
'      SELECT  JSON_ARRAYAGG(',
'                 JSON_OBJECT',
'                 (',
'                        ''timestamp'' VALUE TO_CHAR((  TX_TIMESTAMP  ), ''YYYY-MM-DD"T"HH24:MI:SS".000Z"'' ), ',
'                        ''values'' VALUE json_array(TOTAL_PAY)   ',
'                ) ORDER BY TX_TIMESTAMP   )  as TX_DATA  ',
'FROM FD_TX_HISTORIC_DATA  ;',
'',
'cursor c2 is ',
'      SELECT   TX_TIMESTAMP,  TOTAL_PAY ',
'        FROM FD_TX_HISTORIC_DATA order by TX_TIMESTAMP ;',
'  ',
'begin  ',
'  Htp.p(GC_OCI_DOC_AI_URL);',
'  Htp.p(''<br/><hr/>'');',
'  Htp.p(request_payload_small_ds);',
'  Htp.p(''<br/><hr/>'');',
'',
'  delete from FD_TX_HISTORIC_DATA;',
'',
'  FOR Lcntr IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,12000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'   FOR Lcntr2 IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,55000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'    Htp.p(''<table border=1>'');',
'    For row_2 In C2 Loop',
'       v_tx_timestamp := row_2.TX_TIMESTAMP; ',
'       v_total_pay := row_2.TOTAL_PAY; ',
'       Htp.p(''<tr><td>''||v_tx_timestamp||''</td><td>''||v_total_pay||''</td></tr>'');',
'    End Loop;',
'    Htp.p(''</table>'');',
'',
'    For row_1 In C1 Loop',
'       json_input_str3 := row_1.TX_DATA; ',
'    End Loop;',
'',
'    request_payload_small_ds   := ''',
'                        {',
'                          "compartmentId": "ocid1.compartment.oc1..replace-this",',
'                          "description": "AD",',
'                          "displayName": "AD",',
'                          "modelId": "ocid1.aianomalydetectionmodel.oc1.phx.amaaaaaaknuwtjiaapusfv6pxavfbxm546pan2phqh54j2p64j2ys7inkofq",',
'                          "inputDetails": {',
'                              "inputType": "INLINE",',
'                                "signalNames":["TOTAL_PAY"],',
'                                    "data":   ''||json_input_str3||''',
'                                  },',
'                         "outputDetails": {',
'                               "namespaceName": "replace-this",',
'                            "bucketName": "replace-this",',
'                            "outputType": "OBJECT_STORAGE",',
'                            "prefix": "AA"',
'                            } ',
'                        }',
'                        '';',
'  ',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'        l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => GC_OCI_DOC_AI_URL, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => request_payload_small_ds, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        Htp.p(l_response_json);',
'',
'        apex_json.parse (l_response_json);',
'        v_id := apex_json.get_varchar2 (''id'');',
'        --v_tx_timestamp := apex_json.get_varchar2 (''timeAccepted''); ',
'',
'        l_docjob_json_url   := l_base_path||''AA/''||v_id||''/''||v_id||''-result.json'';',
'',
'        Htp.p(''<br/>''||v_id);',
'        Htp.p(''<br/>''||v_tx_timestamp);',
'        Htp.p(''<br/>''||l_docjob_json_url);',
'        --Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
' ',
'         INSERT INTO FD_ANM (ANOMALY_OCID, TX_TIMESTAMP, JSON_URL) VALUES (v_id, current_timestamp, l_docjob_json_url);',
'       -- Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
'',
' ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159936454521410805)
,p_plug_name=>'Transaction Anomalies OLD GOLD'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'GC_OCI_DOC_AI_URL          CONSTANT VARCHAR2(500)  := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/detectAnomalyJobs''; ',
'BASE_URL CONSTANT VARCHAR2(500) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101'';',
'compartmentId CONSTANT VARCHAR2(500) := ''ocid1.compartment.oc1..replace-this'';',
'projectId CONSTANT VARCHAR2(500) := ''ocid1.aianomalydetectionproject.oc1.phx.amaaaaaaknuwtjiapvs2awb56mryemubr4qrcfcso55y2ecjpe5cvohzlnlq'';',
'AI_URL CONSTANT VARCHAR2(500) := BASE_URL||''/models?compartmentId=''||compartmentId||''&projectId=''||projectId||''&limit=10&sortOrder=ASC&sortBy=timeCreated'';',
'json_input_str3 varchar2(4000) ;',
' ',
' ',
'',
'request_payload_small_ds   varchar2(32000)   ;',
'',
'l_request_json        VARCHAR2(32000); ',
'l_response_json       CLOB; ',
'  v_id varchar(100);',
'  v_filename varchar(100);',
'  l_obj_name varchar2(500);',
'  l_base_path varchar2(500) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/'';',
'  l_docjob_json_url varchar2(4000) ;',
'  l_json                CLOB;',
'  v_time_diff number := 1; ',
'  v_tx_timestamp FD_TX_HISTORIC_DATA.TX_TIMESTAMP%TYPE;',
'  v_total_pay FD_TX_HISTORIC_DATA.TOTAL_PAY%TYPE;',
'',
'  cursor c1 is ',
'      SELECT  JSON_ARRAYAGG(',
'                 JSON_OBJECT',
'                 (',
'                        ''timestamp'' VALUE TO_CHAR((  TX_TIMESTAMP  ), ''YYYY-MM-DD"T"HH24:MI:SS".000Z"'' ), ',
'                        ''values'' VALUE json_array(TOTAL_PAY)   ',
'                ) ORDER BY TX_TIMESTAMP   )  as TX_DATA  ',
'FROM FD_TX_HISTORIC_DATA  ;',
'',
'cursor c2 is ',
'      SELECT   TX_TIMESTAMP,  TOTAL_PAY ',
'        FROM FD_TX_HISTORIC_DATA order by TX_TIMESTAMP ;',
'  ',
'begin  ',
'   ',
'',
'  delete from FD_TX_HISTORIC_DATA;',
'',
'  FOR Lcntr IN 1..20 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,12000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'   FOR Lcntr2 IN 1..20 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,55000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'    --Htp.p(''<table border=1>'');',
'    For row_2 In C2 Loop',
'       v_tx_timestamp := row_2.TX_TIMESTAMP; ',
'       v_total_pay := row_2.TOTAL_PAY; ',
'      -- Htp.p(''<tr><td>''||v_tx_timestamp||''</td><td>''||v_total_pay||''</td></tr>'');',
'    End Loop;',
'    --Htp.p(''</table>'');',
'',
'    For row_1 In C1 Loop',
'       json_input_str3 := row_1.TX_DATA; ',
'    End Loop;',
'',
'    request_payload_small_ds   := ''',
'                        {',
'                          "compartmentId": "ocid1.compartment.oc1..replace-this",',
'                          "description": "AD",',
'                          "displayName": "AD",',
'                          "modelId": "ocid1.aianomalydetectionmodel.oc1.phx.amaaaaaaknuwtjiaapusfv6pxavfbxm546pan2phqh54j2p64j2ys7inkofq",',
'                          "inputDetails": {',
'                              "inputType": "INLINE",',
'                                "signalNames":["TOTAL_PAY"],',
'                                    "data":   ''||json_input_str3||''',
'                                  },',
'                         "outputDetails": {',
'                               "namespaceName": "replace-this",',
'                            "bucketName": "replace-this",',
'                            "outputType": "OBJECT_STORAGE",',
'                            "prefix": "AA"',
'                            } ',
'                        }',
'                        '';',
'  ',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'        l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => GC_OCI_DOC_AI_URL, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => request_payload_small_ds, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        --Htp.p(l_response_json);',
'',
'        apex_json.parse (l_response_json);',
'        v_id := apex_json.get_varchar2 (''id'');',
'        --v_tx_timestamp := apex_json.get_varchar2 (''timeAccepted''); ',
'',
'        l_docjob_json_url   := l_base_path||''AA/''||v_id||''/''||v_id||''-result.json'';',
'',
'       ',
'        --Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
' ',
'         INSERT INTO FD_ANM (ANOMALY_OCID, TX_TIMESTAMP, JSON_URL) VALUES (v_id, current_timestamp, l_docjob_json_url);',
'        Htp.p(''<br/>Anomalies Generated ''||v_id);',
'',
' ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(160054552207916635)
,p_plug_name=>'Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(104592884786469867)
,p_region_id=>wwv_flow_imp.id(160054552207916635)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(104594626519469872)
,p_chart_id=>wwv_flow_imp.id(104592884786469867)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,',
'       TOTAL_PAY,',
'       IS_ANOMALY,',
'       INV_NO,',
'       CATEGORY,',
'       CUST_ID,',
'       CREDIT_CARD_NO,',
'       TRANS_STATUS,',
'       TRANSACTION_STATUS,',
'       MERCHANT_ID,',
'       MERCHANT_CITY,',
'       MERCHANT_REGION,',
'       MERCHANT_STATE,',
'       MERCHANT_PLACE,',
'       LONGITUDE,',
'       LATITUDE,',
'       MERCHANT_PLACE_ID,',
'       CUSTOMER_FULLNAME,',
'       MERCHANT_FULLNAME,',
'       MALL',
'  from FD_TX_HISTORIC_DATA   order by TX_TIMESTAMP '))
,p_items_value_column_name=>'TOTAL_PAY'
,p_items_label_column_name=>'TX_TIMESTAMP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(104593396561469869)
,p_chart_id=>wwv_flow_imp.id(104592884786469867)
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
 p_id=>wwv_flow_imp.id(104593951368469870)
,p_chart_id=>wwv_flow_imp.id(104592884786469867)
,p_axis=>'y'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(215015576094273643)
,p_plug_name=>'Transaction Anomalies'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,',
'       TOTAL_PAY,',
'       IS_ANOMALY,',
'       INV_NO,',
'       CATEGORY,',
'       CUST_ID,',
'       CREDIT_CARD_NO,',
'       TRANS_STATUS,',
'       TRANSACTION_STATUS,',
'       MERCHANT_ID,',
'       MERCHANT_CITY,',
'       MERCHANT_REGION,',
'       MERCHANT_STATE,',
'       MERCHANT_PLACE,',
'       LONGITUDE,',
'       LATITUDE,',
'       MERCHANT_PLACE_ID,',
'       CUSTOMER_FULLNAME,',
'       MERCHANT_FULLNAME,',
'       MALL',
'  from FD_TX_HISTORIC_DATA   order by TX_TIMESTAMP '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transaction Anomalies'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(159936670785410807)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMOUSER'
,p_internal_uid=>121636033062624957
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159936905331410809)
,p_db_column_name=>'TOTAL_PAY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Total Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159936941871410810)
,p_db_column_name=>'IS_ANOMALY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Is Anomaly'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159937615472410816)
,p_db_column_name=>'ID'
,p_display_order=>40
,p_is_primary_key=>'Y'
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159937765562410818)
,p_db_column_name=>'INV_NO'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Inv No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159937879204410819)
,p_db_column_name=>'CATEGORY'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159937960994410820)
,p_db_column_name=>'CUST_ID'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Cust Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938037586410821)
,p_db_column_name=>'CREDIT_CARD_NO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Credit Card No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938155430410822)
,p_db_column_name=>'TRANS_STATUS'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Trans Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938290163410823)
,p_db_column_name=>'TRANSACTION_STATUS'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Transaction Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938330760410824)
,p_db_column_name=>'MERCHANT_ID'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Merchant Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938428940410825)
,p_db_column_name=>'MERCHANT_CITY'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Merchant City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938584364410826)
,p_db_column_name=>'MERCHANT_REGION'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Merchant Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938670548410827)
,p_db_column_name=>'MERCHANT_STATE'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Merchant State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938772059410828)
,p_db_column_name=>'MERCHANT_PLACE'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Merchant Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159938891431410829)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159939002391410830)
,p_db_column_name=>'LATITUDE'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159939057738410831)
,p_db_column_name=>'MERCHANT_PLACE_ID'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Merchant Place Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159939133652410832)
,p_db_column_name=>'CUSTOMER_FULLNAME'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Customer Fullname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159939283692410833)
,p_db_column_name=>'MERCHANT_FULLNAME'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Merchant Fullname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159939400112410834)
,p_db_column_name=>'MALL'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Mall'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(159939424567410835)
,p_db_column_name=>'TX_TIMESTAMP'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Tx Timestamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(159978987381254018)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'554012'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TOTAL_PAY:IS_ANOMALY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215016992636275678)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';',
'v_anm_ocid FD_ANM.ANOMALY_OCID%TYPE := :P38_ANM_OCID; ',
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
,p_plug_display_condition_type=>'NEVER'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(259934876214617575)
,p_plug_name=>'Transaction Locations'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(104590978486469859)
,p_region_id=>wwv_flow_imp.id(259934876214617575)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(104591472879469862)
,p_map_region_id=>wwv_flow_imp.id(104590978486469859)
,p_name=>'Tx Locations'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT t.id, t.inv_no, t.total_pay, trans_status,  latitude, longitude, customer_fullname, merchant_fullname, merchant_place, merchant_state, merchant_region, ',
'CREDIT_CARD_NO this_credit_card, ',
'LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, ',
'MALL this_mall, ',
'LAG(MALL) OVER (ORDER BY id) AS previous_mall,  ',
'to_char(TX_TIMESTAMP,''dd/mm/yyyy hh24:mi:ss'') TX_TIMESTAMP,   ',
't.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,',
'to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'') - LAG(to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) OVER (ORDER BY to_char(TX_TIMESTAMP,''yyyymmddHH24MISS'')) AS time_diff_number ',
'FROM FD_TX_HISTORIC_DATA t ',
'--where transaction_status = ''OnHold'' ',
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104578787879469817)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(215016992636275678)
,p_button_name=>'Refresh'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::P38_ANM_OCID:&P38_ANM_OCID.'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104590215582469857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(215015576094273643)
,p_button_name=>'Refresh_Data'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh Historic Transaction Data'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104595292395469892)
,p_button_sequence=>80
,p_button_name=>'Generate_Anomalies'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Generate Anomalies'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159953716118410905)
,p_name=>'P38_ANM_OCID'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104596534804469913)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104595292395469892)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104596986832469916)
,p_event_id=>wwv_flow_imp.id(104596534804469913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
' ',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'GC_OCI_DOC_AI_URL          CONSTANT VARCHAR2(500)  := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/detectAnomalyJobs''; ',
'BASE_URL CONSTANT VARCHAR2(500) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101'';',
'compartmentId CONSTANT VARCHAR2(500) := ''ocid1.compartment.oc1..replace-this'';',
'projectId CONSTANT VARCHAR2(500) := ''ocid1.aianomalydetectionproject.oc1.phx.amaaaaaaknuwtjiapvs2awb56mryemubr4qrcfcso55y2ecjpe5cvohzlnlq'';',
'AI_URL CONSTANT VARCHAR2(500) := BASE_URL||''/models?compartmentId=''||compartmentId||''&projectId=''||projectId||''&limit=10&sortOrder=ASC&sortBy=timeCreated'';',
'json_input_str3 varchar2(4000) ; ',
'request_payload_small_ds   varchar2(32000)   ; ',
'l_request_json        VARCHAR2(32000); ',
'l_response_json       CLOB; ',
'  v_id varchar(100);',
'  v_filename varchar(100);',
'  l_obj_name varchar2(500);',
'  l_base_path varchar2(500) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/'';',
'  l_docjob_json_url varchar2(4000) ;',
'  l_json                CLOB;',
'  v_time_diff number := 1; ',
'  v_tx_timestamp FD_TX_HISTORIC_DATA.TX_TIMESTAMP%TYPE;',
'  v_total_pay FD_TX_HISTORIC_DATA.TOTAL_PAY%TYPE;',
'  ',
'    cursor c1 is ',
'      SELECT  JSON_ARRAYAGG(',
'                 JSON_OBJECT',
'                 (',
'                        ''timestamp'' VALUE TO_CHAR((  TX_TIMESTAMP  ), ''YYYY-MM-DD"T"HH24:MI:SS".000Z"'' ), ',
'                        ''values'' VALUE json_array(TOTAL_PAY)   ',
'                ) ORDER BY TX_TIMESTAMP   )  as TX_DATA  ',
'FROM FD_TX_HISTORIC_DATA  ;',
'',
'begin  ',
'   ',
'',
'  delete from FD_TX_HISTORIC_DATA;',
'',
'  FOR Lcntr IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,12000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'   FOR Lcntr2 IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,55000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'',
'     ',
'  ',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'        l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => GC_OCI_DOC_AI_URL, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => request_payload_small_ds, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        Htp.p(l_response_json);',
'',
'        apex_json.parse (l_response_json);',
'        v_id := apex_json.get_varchar2 (''id'');',
'        --v_tx_timestamp := apex_json.get_varchar2 (''timeAccepted''); ',
'',
'        l_docjob_json_url   := l_base_path||''AA/''||v_id||''/''||v_id||''-result.json'';',
'',
'         ',
'         INSERT INTO FD_ANM (ANOMALY_OCID, TX_TIMESTAMP, JSON_URL) VALUES (v_id, current_timestamp, l_docjob_json_url);',
'       -- Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
'',
'        Htp.p(''<br/><br/> ''||v_id||'' '');',
'',
'        --:P38_ANM_OCID := v_id;',
'end;'))
,p_attribute_03=>'P38_ANM_OCID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104597491161469917)
,p_event_id=>wwv_flow_imp.id(104596534804469913)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159635710721703612)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104598499387469918)
,p_event_id=>wwv_flow_imp.id(104596534804469913)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(159935315257410793)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104598037720469918)
,p_event_id=>wwv_flow_imp.id(104596534804469913)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_ANM_OCID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(104598838287469919)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(104590215582469857)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104599854280469919)
,p_event_id=>wwv_flow_imp.id(104598838287469919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare   ',
' ',
'begin',
'  ',
'      FD_TX_ANM_INSERTS ( );',
'   ',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104599415521469919)
,p_event_id=>wwv_flow_imp.id(104598838287469919)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Transactions refreshed!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104600348519469920)
,p_event_id=>wwv_flow_imp.id(104598838287469919)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(215015576094273643)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104601408026469921)
,p_event_id=>wwv_flow_imp.id(104598838287469919)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(160054552207916635)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104600864244469920)
,p_event_id=>wwv_flow_imp.id(104598838287469919)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(259934876214617575)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(104596043618469898)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'GC_OCI_DOC_AI_URL          CONSTANT VARCHAR2(500)  := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/detectAnomalyJobs''; ',
'BASE_URL CONSTANT VARCHAR2(500) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101'';',
'compartmentId CONSTANT VARCHAR2(500) := ''ocid1.compartment.oc1..replace-this'';',
'projectId CONSTANT VARCHAR2(500) := ''ocid1.aianomalydetectionproject.oc1.phx.amaaaaaaknuwtjiapvs2awb56mryemubr4qrcfcso55y2ecjpe5cvohzlnlq'';',
'AI_URL CONSTANT VARCHAR2(500) := BASE_URL||''/models?compartmentId=''||compartmentId||''&projectId=''||projectId||''&limit=10&sortOrder=ASC&sortBy=timeCreated'';',
'json_input_str3 varchar2(4000) ;',
' ',
' ',
'',
'request_payload_small_ds   varchar2(32000)   ;',
'',
'l_request_json        VARCHAR2(32000); ',
'l_response_json       CLOB; ',
'  v_id varchar(100);',
'  v_filename varchar(100);',
'  l_obj_name varchar2(500);',
'  l_base_path varchar2(500) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/'';',
'  l_docjob_json_url varchar2(4000) ;',
'  l_json                CLOB;',
'  v_time_diff number := 1; ',
'  v_tx_timestamp FD_TX_HISTORIC_DATA.TX_TIMESTAMP%TYPE;',
'  v_total_pay FD_TX_HISTORIC_DATA.TOTAL_PAY%TYPE;',
'',
'  cursor c1 is ',
'      SELECT  JSON_ARRAYAGG(',
'                 JSON_OBJECT',
'                 (',
'                        ''timestamp'' VALUE TO_CHAR((  TX_TIMESTAMP  ), ''YYYY-MM-DD"T"HH24:MI:SS".000Z"'' ), ',
'                        ''values'' VALUE json_array(TOTAL_PAY)   ',
'                ) ORDER BY TX_TIMESTAMP   )  as TX_DATA  ',
'FROM FD_TX_HISTORIC_DATA  ;',
'',
'cursor c2 is ',
'      SELECT   TX_TIMESTAMP,  TOTAL_PAY ',
'        FROM FD_TX_HISTORIC_DATA order by TX_TIMESTAMP ;',
'  ',
'begin  ',
'   ',
'',
'  delete from FD_TX_HISTORIC_DATA;',
'',
'  FOR Lcntr IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,12000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'   FOR Lcntr2 IN 1..7 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,55000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'    --Htp.p(''<table border=1>'');',
'    For row_2 In C2 Loop',
'       v_tx_timestamp := row_2.TX_TIMESTAMP; ',
'       v_total_pay := row_2.TOTAL_PAY; ',
'      -- Htp.p(''<tr><td>''||v_tx_timestamp||''</td><td>''||v_total_pay||''</td></tr>'');',
'    End Loop;',
'    --Htp.p(''</table>'');',
'',
'    For row_1 In C1 Loop',
'       json_input_str3 := row_1.TX_DATA; ',
'    End Loop;',
'',
'    request_payload_small_ds   := ''',
'                        {',
'                          "compartmentId": "ocid1.compartment.oc1..replace-this",',
'                          "description": "AD",',
'                          "displayName": "AD",',
'                          "modelId": "ocid1.aianomalydetectionmodel.oc1.phx.amaaaaaaknuwtjiaapusfv6pxavfbxm546pan2phqh54j2p64j2ys7inkofq",',
'                          "inputDetails": {',
'                              "inputType": "INLINE",',
'                                "signalNames":["TOTAL_PAY"],',
'                                    "data":   ''||json_input_str3||''',
'                                  },',
'                         "outputDetails": {',
'                               "namespaceName": "replace-this",',
'                            "bucketName": "replace-this",',
'                            "outputType": "OBJECT_STORAGE",',
'                            "prefix": "AA"',
'                            } ',
'                        }',
'                        '';',
'  ',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'        l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => GC_OCI_DOC_AI_URL, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => request_payload_small_ds, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        Htp.p(l_response_json);',
'',
'        apex_json.parse (l_response_json);',
'        v_id := apex_json.get_varchar2 (''id'');',
'        --v_tx_timestamp := apex_json.get_varchar2 (''timeAccepted''); ',
'',
'        l_docjob_json_url   := l_base_path||''AA/''||v_id||''/''||v_id||''-result.json'';',
'',
'       ',
'        --Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
' ',
'         INSERT INTO FD_ANM (ANOMALY_OCID, TX_TIMESTAMP, JSON_URL) VALUES (v_id, current_timestamp, l_docjob_json_url);',
'       -- Htp.p(''<br/><br/><a href=''||l_docjob_json_url||''>download</a>'');',
'',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(104595292395469892)
,p_internal_uid=>66295405895684048
);
wwv_flow_imp.component_end;
end;
/
