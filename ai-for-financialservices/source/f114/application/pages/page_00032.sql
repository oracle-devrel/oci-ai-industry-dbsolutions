prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Test_Refesh'
,p_alias=>'TEST-REFESH'
,p_step_title=>'Test_Refesh'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>' '
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#t_Body_content {',
'',
' background: url(#APP_FILES#OCPC-2k.jpg) no-repeat center center fixed;  ',
'background-size: cover !important;',
'',
'}',
' '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1601685775963072)
,p_plug_name=>'New'
,p_region_name=>'my_region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'begin',
'   ',
'        Htp.p(''Hi -------> <br/> ''); ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93357008796019659)
,p_plug_name=>'rg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'       ',
'  Htp.p(''This is just a start'');',
'        ',
'  sys.dbms_output.put_line(''Time 1: '' || to_char(systimestamp, ''hh24:mi:ss.ff''));',
'',
'  :P32_START := to_char(systimestamp, ''hh24:mi:ss.ff'');',
'',
'  -- Pause for 1 second.',
'  --sys.dbms_session.sleep(15);',
'  DBMS_SESSION.SLEEP(10);',
'',
'  Htp.p(''After waiting for 30 secs'');',
'',
'  Htp.p(''Time 2: '' || to_char(systimestamp, ''hh24:mi:ss.ff''));',
'',
'  :P32_STOP := to_char(systimestamp, ''hh24:mi:ss.ff'');',
' ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93358299795019672)
,p_plug_name=>'AA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this''; ',
'l_response_json CLOB;',
' ',
' ',
'',
'l_spjob varchar2(32000) := ''http://158.101.17.2:8080/ords/graphuser/race_dv'';',
' ',
' l_body varchar2(32000) ;',
' ',
'begin ',
'    --apex_application.g_print_success_message := ''Image is getting generated !''; ',
'',
'    --DBMS_LOCK.sleep(20);',
'  ',
'',
'    --Htp.p(l_body);',
'',
'    apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'',
'    l_body := apex_web_service.make_rest_request(    ',
'                p_url => l_spjob,',
'                p_http_method => ''GET'' ',
'        ); ',
'',
'      --  Htp.p(l_response_json);',
'  /*',
'    l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => l_api_url, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => l_body, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'         Htp.p(l_response_json);',
'',
'*/',
'      ',
'',
'    /*',
'    apex_web_service.g_request_headers.delete(); ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json'';  ',
'',
'',
'    l_response_json   := apex_web_service.make_rest_request(',
'        p_url         => ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjiaqprxgwel33bbsl63hrjlzrsbtwvbbbjigjwegulxo4ja/ocid1.aianomalydetectionjob.oc1.phx.amaaaa'
||'aaknuwtjiaqprxgwel33bbsl63hrjlzrsbtwvbbbjigjwegulxo4ja-result.json'',',
'        p_http_method => ''GET'' ,',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID );',
'     */',
'      --Htp.p(l_response_json);',
'',
'        ',
'        /*',
'        apex_web_service.g_request_headers.delete(); ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json'';  ',
'',
'        l_response := apex_web_service.make_rest_request(    ',
'                p_url => l_spjob,',
'                p_http_method => ''GET'' ',
'        ); ',
'        */',
'        /*',
'         l_response := apex_web_service.make_rest_request ',
'           (p_url                  => UTL_URL.ESCAPE(l_spjob), ',
'            p_http_method          => ''GET'', ',
'            p_credential_static_id => GC_WC_CREDENTIAL_ID); ',
'        */',
'       /*',
'        l_http_status_code := apex_web_service.g_status_code; ',
'        if l_http_status_code = 200 then ',
'            apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' ); ',
'            apex_collection.add_member( ',
'                p_collection_name => ''REST_COLLECTION'', ',
'                p_clob001 =>         l_response  ); ',
'        end if;     ',
'        */',
'',
'        --For row_1 In C1 Loop',
'        --l_text := row_1.transcription; ',
'        --End Loop;',
' ',
'   ',
' end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93772747249232651)
,p_plug_name=>'Get Rest'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this''; ',
'l_response_json CLOB;',
'l_text varchar2(4000);',
'--l_response clob;',
'l_http_status_code number;',
'l_file_blob           BLOB; ',
'uri httpuritype;',
'json_input_str3 varchar2(4000) ;',
'l_response varchar2(32000);',
'v_tx_timestamp FD_TX_HISTORIC_DATA.TX_TIMESTAMP%TYPE;',
'  v_total_pay FD_TX_HISTORIC_DATA.TOTAL_PAY%TYPE;',
'  v_time_diff number := 1; ',
'',
'  resp clob;',
'',
'  l_api_url varchar2(1000) := ''https://anomalydetection.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/actions/detectAnomalies'';',
'',
'l_spjob varchar2(32000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjiaqprxgwel33bbsl63hrjlzrsbtwvbbbjigjwegulxo4ja/ocid1.aianomalydetectionjob.oc1.phx.amaa'
||'aaaaknuwtjiaqprxgwel33bbsl63hrjlzrsbtwvbbbjigjwegulxo4ja-result.json'';',
' ',
' l_body varchar2(32000) ;',
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
'CURSOR cr_document_data (l_response_json IN CLOB) IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_response_json, ''$.detectionResults[*]'' ',
'             COLUMNS (tx_timestamp      VARCHAR2(100)  PATH ''$.timestamp'' , actualValue      VARCHAR2(100)  PATH ''$.anomalies.actualValue'' )) jt; ',
'',
'begin ',
'    --apex_application.g_print_success_message := ''Image is getting generated !''; ',
'',
'    --DBMS_LOCK.sleep(20);',
'',
'    delete from FD_TX_HISTORIC_DATA;',
'',
'  FOR Lcntr IN 1..20 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,12000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'   FOR Lcntr2 IN 1..5 LOOP',
'         v_total_pay := round(DBMS_Random.Value(1,55000),0);  ',
'         FD_TX_HISTORICDATA_INSERTS (v_time_diff, v_total_pay);',
'        v_time_diff := v_time_diff + 1;',
'   END LOOP;',
'',
'',
'    For row_1 In C1 Loop',
'       json_input_str3 := row_1.TX_DATA; ',
'    End Loop;',
'',
'     l_body   := ''{',
'    "modelId": "ocid1.aianomalydetectionmodel.oc1.phx.amaaaaaaknuwtjiaapusfv6pxavfbxm546pan2phqh54j2p64j2ys7inkofq",',
'    "requestType": "INLINE",',
'    "signalNames":["TOTAL_PAY"],',
'    "data":   ''||json_input_str3||''',
'}'';',
'',
'',
'    --Htp.p(l_body);',
'',
'    apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'',
'   l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => l_api_url, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => l_body, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        -- Htp.p(l_response_json);',
'',
'',
'        For row_1 In cr_document_data (l_response_json) Loop',
'          --v_id := row_1.v_id; ',
'          Htp.p(''<br/>A1  ''||row_1.tx_timestamp);',
'          Htp.p(''<br/>A1  ''||row_1.actualValue);',
'          -------- run update query -----------',
'          UPDATE FD_TX_HISTORIC_DATA SET IS_ANOMALY = ''YES'' WHERE TOTAL_PAY = row_1.actualValue;',
'       End Loop;',
'',
'',
'  /*',
'    l_response_json := apex_web_service.make_rest_request ',
'        (p_url                  => l_api_url, ',
'        p_http_method          => ''POST'', ',
'        p_body                 => l_body, ',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'         Htp.p(l_response_json);',
'',
'*/',
'      ',
'',
'    /*',
'    apex_web_service.g_request_headers.delete(); ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json'';  ',
'',
'',
'    l_response_json   := apex_web_service.make_rest_request(',
'        p_url         => ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/AA/ocid1.aianomalydetectionjob.oc1.phx.amaaaaaaknuwtjiaqprxgwel33bbsl63hrjlzrsbtwvbbbjigjwegulxo4ja/ocid1.aianomalydetectionjob.oc1.phx.amaaaa'
||'aaknuwtjiaqprxgwel33bbsl63hrjlzrsbtwvbbbjigjwegulxo4ja-result.json'',',
'        p_http_method => ''GET'' ,',
'        p_credential_static_id => GC_WC_CREDENTIAL_ID );',
'     */',
'      --Htp.p(l_response_json);',
'',
'        ',
'        /*',
'        apex_web_service.g_request_headers.delete(); ',
'        apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'        apex_web_service.g_request_headers(1).value := ''application/json'';  ',
'',
'        l_response := apex_web_service.make_rest_request(    ',
'                p_url => l_spjob,',
'                p_http_method => ''GET'' ',
'        ); ',
'        */',
'        /*',
'         l_response := apex_web_service.make_rest_request ',
'           (p_url                  => UTL_URL.ESCAPE(l_spjob), ',
'            p_http_method          => ''GET'', ',
'            p_credential_static_id => GC_WC_CREDENTIAL_ID); ',
'        */',
'       /*',
'        l_http_status_code := apex_web_service.g_status_code; ',
'        if l_http_status_code = 200 then ',
'            apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' ); ',
'            apex_collection.add_member( ',
'                p_collection_name => ''REST_COLLECTION'', ',
'                p_clob001 =>         l_response  ); ',
'        end if;     ',
'        */',
'',
'        --For row_1 In C1 Loop',
'        --l_text := row_1.transcription; ',
'        --End Loop;',
' ',
'   ',
' end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1601748382963073)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1601685775963072)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'New'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(93357932301019668)
,p_button_sequence=>60
,p_button_name=>'Call_Ajax'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Call Ajax'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1601589161963071)
,p_name=>'P32_VAL'
,p_item_sequence=>20
,p_prompt=>'Val'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93357130832019660)
,p_name=>'P32_START'
,p_item_sequence=>30
,p_item_default=>'P32_VAL'
,p_item_default_type=>'ITEM'
,p_prompt=>'Start'
,p_source=>'P32_VAL'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_QRCODE'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(62079878348084960)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'data_type', 'URL',
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93357215562019661)
,p_name=>'P32_STOP'
,p_item_sequence=>80
,p_prompt=>'Stop'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(62254495953085100)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93357524915019664)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_STOP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93357568469019665)
,p_event_id=>wwv_flow_imp.id(93357524915019664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'ended'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93358006457019669)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(93357932301019668)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93358086290019670)
,p_event_id=>wwv_flow_imp.id(93358006457019669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''MyQuery'', { },',
'   {',
'      dataType: "text",',
'      success: function(pData) {',
'         if (pData != "") {',
'            apex.message.alert(pData);',
'         }',
'      }',
'  });'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93358390373019673)
,p_event_id=>wwv_flow_imp.id(93358006457019669)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( "Something Created !" );'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93358208122019671)
,p_event_id=>wwv_flow_imp.id(93358006457019669)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P32_START'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1601864264963074)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1601748382963073)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1601965739963075)
,p_event_id=>wwv_flow_imp.id(1601864264963074)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("my_region").refresh();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1602039091963076)
,p_name=>'New_3'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1602151976963077)
,p_event_id=>wwv_flow_imp.id(1602039091963076)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setRefresh();'
,p_build_option_id=>wwv_flow_imp.id(62079878348084960)
);
wwv_flow_imp.component_end;
end;
/
