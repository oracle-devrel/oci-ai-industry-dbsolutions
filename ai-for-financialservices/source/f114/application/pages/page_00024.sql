prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>'Senti_REST'
,p_alias=>'SENTI-REST'
,p_step_title=>'Senti_REST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91379401149754674)
,p_plug_name=>'rg_sentimental_important'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>110
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_api_url varchar2(200) := ''https://language.aiservice.us-phoenix-1.oci.oraclecloud.com/20210101/actions/batchDetectLanguageSentiments'';',
'v_request_json        VARCHAR2(32000); ',
'v_response_json       CLOB; ',
'v_credentials         VARCHAR2(50)   := ''replace-this'';  ',
' ',
'BEGIN',
'    Htp.p(v_api_url);',
'   /*',
'    v_request_json := ''{',
'                  "text": "Mr John is native of wellington between 2003 to 2007 he was working in white field and he had great work record there however after 2007 he was involved in stealing and petty crimes. He was involved in theft and a murder"',
'                }''; ',
'                */',
'',
'    v_request_json := ''{',
'                   ',
'                          "documents": [',
'                            {',
'                              "key": "Red Bull",',
'                              "text": "Red Bull Racing Honda, the four-time Formula-1 World Champion team, has chosen Oracle Cloud Infrastructure (OCI) as their infrastructure partner.",',
'                              "languageCode": "en"',
'                            },',
'                            {',
'                              "key": "sit proident qui",',
'                              "text": "OCI recently added new services to very bad at work, and ISO to enable our was fraud also",',
'                              "languageCode": "en"',
'                            }',
'                          ]',
' ',
'                }'' ;',
'',
'   Htp.p(v_request_json);',
' ',
'  ',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
'',
'  v_response_json := apex_web_service.make_rest_request ',
'   (p_url                  => v_api_url, ',
'    p_http_method          => ''POST'', ',
'    p_body                 => v_request_json, ',
'    p_credential_static_id => v_credentials);',
'',
'    Htp.p(''<br/><br/>'');',
'    ',
'    Htp.p(v_response_json);',
'     ',
'',
'  --IF apex_web_service.g_status_code != 200 then ',
'  --  raise_application_error(-20112,''Unable to call OCI Language AI.''); ',
'  --END IF; ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91380056222754681)
,p_plug_name=>'rg_create_data_for_senti'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>90
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this''; ',
'--GC_OCI_DOC_AI_URL CONSTANT VARCHAR2(500)   := ''replace-this''; ',
'doc_understanding_base_url VARCHAR2(500) := ''https://document.aiservice.us-phoenix-1.oci.oraclecloud.com'';',
'GC_OCI_DOC_AI_URL VARCHAR2(500) := doc_understanding_base_url||''/20221109/processorJobs'';',
'l_http_status_code number;',
'--l_request_json VARCHAR2(32000) := ''''; ',
'--https://docs.oracle.com/en-us/iaas/api/#/en/document-understanding/20221109/',
'--POST /20221109/processorJobs',
'l_file_blob           BLOB; ',
'',
'CURSOR cr_document_data (cp_json IN CLOB) IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(cp_json, ''$'' ',
'             COLUMNS (document_type_code      VARCHAR2(50)  PATH ''$.detectedDocumentTypes[0].documentType'', ',
'                      document_type_score     NUMBER        PATH ''$.detectedDocumentTypes[0].confidence'', ',
'                      language_code           VARCHAR2(50)  PATH ''$.detectedLanguages[0].languageCode'', ',
'                      language_score          NUMBER        PATH ''$.detectedLanguages[0].confidence'', ',
'                      page_count              NUMBER        PATH ''$.documentMetadata.pageCount'')) jt; ',
' ',
'  CURSOR cr_document_fields (cp_json IN CLOB) IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(cp_json, ''$.words[*]'' ',
'             COLUMNS (page_number       NUMBER        PATH ''$.pageNumber'', ',
'                      NESTED PATH ''$.documentFields[*]'' COLUMNS ',
'                       (field_type_code VARCHAR2(50)   PATH ''$.text'', ',
'                        field_label     VARCHAR2(100)  PATH ''$.text.name'', ',
'                        label_score     NUMBER         PATH ''$.fieldLabel.confidence'', ',
'                        field_value     VARCHAR2(1000) PATH ''$.fieldValue.value'' ',
'                        ))) jt ',
'    WHERE  jt.field_type_code = ''KEY_VALUE''; ',
' ',
'  --l_request_json        VARCHAR2(32000); ',
'  l_response_json       CLOB; ',
'  lr_document_data      cr_document_data%ROWTYPE; ',
'  l_response CLOB;',
'',
'  l_request_json      CONSTANT VARCHAR2(32000) := '' {',
'  "processorConfig": {',
'    "features": [',
'      {',
'        "featureType": "TABLE_EXTRACTION"',
'      }',
'    ],',
'    "processorType": "GENERAL"',
'  },',
'  "inputLocation": {',
'    "sourceType": "OBJECT_STORAGE_LOCATIONS",',
'    "objectLocations": [',
'      {',
'        "source": "OBJECT_STORAGE",',
'        "namespaceName": "replace-this",',
'        "bucketName": "replace-this",',
'        "objectName": "KV/profile5.pdf"',
'      }',
'    ]',
'  },',
'  "compartmentId": "replace-this",',
'  "outputLocation": {',
'    "namespaceName": "replace-this",',
'    "bucketName": "replace-this",',
'    "prefix": "KV"',
'  }',
'}''; ',
'',
'myjson CLOB := ''{',
'  "id": "ocid1.aidocumentprocessorjob.oc1.phx.replace-this",',
'  "compartmentId": "replace-this",',
'  "displayName": null,',
'  "features": [{ "featureType": "TABLE_EXTRACTION" }],',
'  "language": null,',
'  "documentType": null,',
'  "inputLocation": {',
'    "sourceType": "OBJECT_STORAGE_LOCATIONS",',
'    "objectLocations": [',
'      {',
'        "namespaceName": "replace-this",',
'        "bucketName": "replace-this",',
'        "objectName": "KV/profile5.pdf"',
'      }',
'    ]',
'  },',
'  "timeAccepted": "2023-11-18T04:11:39.633Z",',
'  "timeStarted": "2023-11-18T04:11:39.633Z",',
'  "timeFinished": "2023-11-18T04:11:39.633Z",',
'  "percentComplete": 100.0,',
'  "outputLocation": {',
'    "namespaceName": "replace-this",',
'    "bucketName": "replace-this",',
'    "prefix": "KV"',
'  },',
'  "lifecycleState": "SUCCEEDED",',
'  "isZipOutputEnabled": false,',
'  "lifecycleDetails": null',
'}'';',
'l_json_text VARCHAR2(32767);',
'l_file_name varchar2(50) := ''profile5.pdf'';',
'l_obj_name varchar2(500) := ''KV/ocid1.aidocumentprocessorjob.oc1.phx.replace-this/replace-this/results/KV/profile5.pdf.json'';',
'--l_job_id varchar2(2100) := ''ocid1.aidocumentprocessorjob.oc1.phx.replace-this'';',
'l_docjob_json_url varchar2(4000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/''||l_obj_name;',
'-- https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/KV%2Focid1.aidocumentprocessorjob.oc1.phx.replace-this%2Freplace-this_replace-this%2Fresults%2FKV%2Fprofile5.pdf.json',
'--json_file_path varchar2(1000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/KV%2Focid1.aidocumentprocessorjob.oc1.phx.replace-this%2Freplace-this%2F'
||'results%2FKV%2Fprofile5.pdf.json'';',
'--KV/ocid1.aidocumentprocessorjob.oc1.phx.replace-this/replace-this/results/KV/profile5.pdf.json',
'    ',
' ',
'BEGIN ',
'  --https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/KV%2Fprofile5.pdf',
'  -- Replace the uploaded filename in the JSON payload to be sent to Document AI. ',
'  --l_request_json := REPLACE(GC_OCY_DOC_AI_PAYLOAD, ''#FILE_NAME#'', p_file_name); ',
'    ',
'    HTP.P(l_request_json);',
'    HTP.P(''<br/><br/>'');',
'    HTP.P(GC_OCI_DOC_AI_URL);',
'    HTP.P(''<br/>11<br/>'');   ',
'    HTP.P(GC_OCI_DOC_AI_URL);',
'    HTP.P(''<br/>12<br/>'');   ',
'    HTP.P(l_docjob_json_url);',
'        ',
'    apex_web_service.g_request_headers.delete(); ',
'    apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'    apex_web_service.g_request_headers(1).value := ''application/json'';  ',
'',
'   -- l_http_status_code := apex_web_service.g_status_code; ',
'',
'    --l_response_json := apex_web_service.make_rest_request(    ',
'      --  p_url =>  l_docjob_json_url,',
'     --   p_http_method => ''GET'' ',
'     -- ); ',
' ',
'',
'    HTP.P(''<br/>14 -> <br/>'');   ',
'    HTP.P(UTL_URL.ESCAPE(l_docjob_json_url));',
'    HTP.P(''<br/>15 -> <br/>'');       ',
'    l_file_blob := apex_web_service.make_rest_request_b ',
'           (p_url                  => UTL_URL.ESCAPE(l_docjob_json_url), ',
'           p_http_method          => ''GET'', ',
'           p_credential_static_id => GC_WC_CREDENTIAL_ID); ',
'         ',
'         -- IF apex_web_service.g_status_code != 200 then ',
'         --   raise_application_error(-20112,''Unable to Get File.''); ',
'         -- END IF; ',
'    -- HTP.P(TO_CHAR(l_file_blob)); ',
'',
'   -- l_file_blob := get_file (p_request_url => lr_document.object_store_url); ',
' ',
'          -- Output the file so it shows in APEX. ',
'         -- owa_util.mime_header(''text/json'',false); ',
'          --htp.p(''Content-Length: '' || dbms_lob.getlength(l_file_blob));  ',
'          --owa_util.http_header_close;   ',
'          wpg_docload.download_file(l_file_blob); ',
'',
'          ',
'',
'   /*',
'    apex_web_service.g_request_headers.delete(); ',
'          apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'          apex_web_service.g_request_headers(1).value := ''application/json'';  ',
'',
'        l_response := apex_web_service.make_rest_request(   ',
'        p_url => l_docjob_json_url,',
'        p_http_method => ''GET'' ',
'         ); ',
'         */',
'',
'          --HTP.P(l_response);',
' ',
'         /*',
'         l_http_status_code := apex_web_service.g_status_code; ',
'          if l_http_status_code = 200 then ',
'            apex_collection.create_or_truncate_collection( ''REST_COLLECTION2'' ); ',
'            apex_collection.add_member( ',
'                p_collection_name => ''REST_COLLECTION2'', ',
'                p_clob001 =>         l_response  ); ',
'          end if;    ',
'          */ ',
'',
'     --IF apex_web_service.g_status_code != 200 then ',
'     --raise_application_error(-20112,''Unable to call OCI Document AI.''); ',
'     --END IF; ',
'        ',
'    --For row_1 In C1 Loop ',
'    --   HTP.P(row_1.id);   ',
'    --End Loop;',
'',
'  ',
'  -- Set Content-Type in the Request Header. This is required by the Document AI REST Service. ',
'   /*',
'  apex_web_service.g_request_headers.DELETE; ',
'  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'  apex_web_service.g_request_headers(1).value := ''application/json''; ',
' ',
'  -- Call the Document AI analyzeDocument REST Web Service. ',
'  l_response_json := apex_web_service.make_rest_request ',
'   (p_url                  => GC_OCI_DOC_AI_URL, ',
'    p_http_method          => ''POST'', ',
'    p_body                 => l_request_json, ',
'    p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'    --p_credential_static_id => ''APEX_OCI_BLOG_CREDENTIAL''); ',
'',
'    HTP.P(''<br/><br/>'');',
'    HTP.P(l_response_json);',
'    HTP.P(''<br/><br/>''); ',
'    apex_json.parse (l_response_json); ',
'    HTP.P(apex_json.get_varchar2 (''id''));',
' ',
'  --IF apex_web_service.g_status_code != 200 then ',
'   -- raise_application_error(-20112,''Unable to call OCI Document AI.''); ',
'  --END IF; ',
'   */',
' /*',
' ',
'  -- Get Document Level Data from the JSON response. ',
'  OPEN  cr_document_data (cp_json => l_response_json); ',
'  FETCH cr_document_data INTO lr_document_data; ',
'  CLOSE cr_document_data; ',
' ',
'  -- Get Key Value Fields from JSON and populate table. ',
'  FOR r_field IN cr_document_fields (cp_json => l_response_json) LOOP ',
'    INSERT INTO cndemo_document_ai_fields (document_id,field_type_code,field_label,label_score,field_value) ',
'    VALUES (p_document_id,r_field.field_type_code,r_field.field_label,r_field.label_score,r_field.field_value); ',
'  END LOOP; ',
'   ',
'  -- Update Document Table with Results. ',
'  UPDATE cndemo_document_ai_docs ',
'  SET    doc_ai_json         = l_response_json ',
'  ,      language_code       = lr_document_data.language_code ',
'  ,      language_score      = lr_document_data.language_score ',
'  ,      document_type_code  = lr_document_data.document_type_code ',
'  ,      document_type_score = lr_document_data.document_type_score ',
'  ,      page_count          = lr_document_data.page_count ',
'  WHERE  document_id         = p_document_id; ',
'    */',
'  END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91380193927754682)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62174008823085047)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    * FROM   apex_collections  c',
'    WHERE c.collection_name = ''REST_COLLECTION2'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(91380273596754683)
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
,p_internal_uid=>53079635873968833
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380436325754684)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Collection Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380525476754685)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380632597754686)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380695664754687)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380806713754688)
,p_db_column_name=>'C003'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380863151754689)
,p_db_column_name=>'C004'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'C004'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91380994133754690)
,p_db_column_name=>'C005'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C005'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381109023754691)
,p_db_column_name=>'C006'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C006'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381214568754692)
,p_db_column_name=>'C007'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C007'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381301473754693)
,p_db_column_name=>'C008'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C008'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381420190754694)
,p_db_column_name=>'C009'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C009'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381528124754695)
,p_db_column_name=>'C010'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C010'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381623166754696)
,p_db_column_name=>'C011'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C011'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381658141754697)
,p_db_column_name=>'C012'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C012'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381784794754698)
,p_db_column_name=>'C013'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C013'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381914330754699)
,p_db_column_name=>'C014'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C014'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91381941056754700)
,p_db_column_name=>'C015'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C015'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93106801836940551)
,p_db_column_name=>'C016'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'C016'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93106890937940552)
,p_db_column_name=>'C017'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'C017'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93106977743940553)
,p_db_column_name=>'C018'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'C018'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107094481940554)
,p_db_column_name=>'C019'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'C019'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107145390940555)
,p_db_column_name=>'C020'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C020'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107279794940556)
,p_db_column_name=>'C021'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C021'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107420368940557)
,p_db_column_name=>'C022'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C022'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107535065940558)
,p_db_column_name=>'C023'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'C023'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107633097940559)
,p_db_column_name=>'C024'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'C024'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107715008940560)
,p_db_column_name=>'C025'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'C025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107790920940561)
,p_db_column_name=>'C026'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'C026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107878350940562)
,p_db_column_name=>'C027'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'C027'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93107948239940563)
,p_db_column_name=>'C028'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'C028'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108090230940564)
,p_db_column_name=>'C029'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'C029'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108206697940565)
,p_db_column_name=>'C030'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'C030'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108243853940566)
,p_db_column_name=>'C031'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'C031'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108378761940567)
,p_db_column_name=>'C032'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'C032'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108462493940568)
,p_db_column_name=>'C033'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'C033'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108541553940569)
,p_db_column_name=>'C034'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'C034'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108682567940570)
,p_db_column_name=>'C035'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'C035'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108743579940571)
,p_db_column_name=>'C036'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'C036'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108882504940572)
,p_db_column_name=>'C037'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'C037'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93108969116940573)
,p_db_column_name=>'C038'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'C038'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109054151940574)
,p_db_column_name=>'C039'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'C039'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109175820940575)
,p_db_column_name=>'C040'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'C040'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109292416940576)
,p_db_column_name=>'C041'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'C041'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109345691940577)
,p_db_column_name=>'C042'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'C042'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109514250940578)
,p_db_column_name=>'C043'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'C043'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109604420940579)
,p_db_column_name=>'C044'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'C044'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109655026940580)
,p_db_column_name=>'C045'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'C045'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109763706940581)
,p_db_column_name=>'C046'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'C046'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109903776940582)
,p_db_column_name=>'C047'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'C047'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93109968058940583)
,p_db_column_name=>'C048'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'C048'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110076220940584)
,p_db_column_name=>'C049'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'C049'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110194488940585)
,p_db_column_name=>'C050'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'C050'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110315618940586)
,p_db_column_name=>'CLOB001'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Clob001'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110421817940587)
,p_db_column_name=>'BLOB001'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Blob001'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110499352940588)
,p_db_column_name=>'XMLTYPE001'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Xmltype001'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110629755940589)
,p_db_column_name=>'N001'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'N001'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110643502940590)
,p_db_column_name=>'N002'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'N002'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110791871940591)
,p_db_column_name=>'N003'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'N003'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93110884911940592)
,p_db_column_name=>'N004'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'N004'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111007248940593)
,p_db_column_name=>'N005'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'N005'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111086926940594)
,p_db_column_name=>'D001'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'D001'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111156208940595)
,p_db_column_name=>'D002'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'D002'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111274044940596)
,p_db_column_name=>'D003'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'D003'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111382207940597)
,p_db_column_name=>'D004'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'D004'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111509240940598)
,p_db_column_name=>'D005'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'D005'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93111591031940599)
,p_db_column_name=>'MD5_ORIGINAL'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Md5 Original'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(93132240006941049)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'548317'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLLECTION_NAME:SEQ_ID:C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015:C016:C017:C018:C019:C020:C021:C022:C023:C024:C025:C026:C027:C028:C029:C030:C031:C032:C033:C034:C035:C036:C037:C038:C039:C040:C041:C042:C043:C044:C045:C0'
||'46:C047:C048:C049:C050:CLOB001:BLOB001:XMLTYPE001:N001:N002:N003:N004:N005:D001:D002:D003:D004:D005:MD5_ORIGINAL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93111662008940600)
,p_plug_name=>'Jsonfile_2_senti_req_important'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'l_json                CLOB;',
'l_orders_obj          JSON_OBJECT_T;',
'  ',
'',
'cur sys_refcursor;',
'cur2 sys_refcursor;',
'',
'l_file_name varchar2(50) := ''profile11.pdf'';',
'l_job_id varchar2(200) := ''ocid1.aidocumentprocessorjob.oc1.phx.replace-this'';',
'l_obj_name varchar2(500) := ''KV/''||l_job_id||''/replace-this/results/KV/''||l_file_name||''.json'';',
'l_docjob_json_url varchar2(4000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/''||l_obj_name;',
'',
'CURSOR C1   IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'             COLUMNS (',
'                     key      VARCHAR2(50)  PATH ''$.cells[0].text'',  ',
'                     text      VARCHAR2(50)  PATH ''$.cells[1].text''   ',
'             ) ) jt; ',
'                    ',
'',
'BEGIN',
'        HTP.P(''<br/>----1---------------<br/>'');       ',
'         ',
'',
'           l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(l_docjob_json_url),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        HTP.P(''<br/>----2---------------<br/>'');       ',
'              -- Parse the JSON into a JSON Object Type.',
'          l_orders_obj := json_object_t.parse(l_json);',
'          -- Disable error handling (the default).',
'          l_orders_obj.On_error(0);',
'',
'          HTP.P(''<br/>----3---------------<br/>'');       ',
'',
'          --l_orders_arr := l_orders_obj.get_Array(''pages'');',
'          --HTP.P(''Count of rows in the [pages] array: ''|| l_orders_arr.get_size);',
'',
'          -- For row_1 In C1 Loop',
'           --     HTP.P(''<br/> Field -------> ''||row_1.key||'' Value ----------------> ''||row_1.text); ',
'          -- End Loop;',
'',
'        --htp.p(''<br/><br/>44'' ||l_json);',
'',
'         open cur for ',
'            SELECT  jt.*  , ''en''  "languageCode"    ',
'            FROM JSON_TABLE',
'            --(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'            (l_json, ',
'                --''$.pages[0].tables[0].bodyRows[*]''  COLUMNS ( "key"   VARCHAR2(200)  PATH ''$.cells[0].text'' ,   "text"      VARCHAR2(200)  PATH ''$.cells[1].text''   )',
'                ''$.pages[0].tables[0].bodyRows[*]''  ',
'                        COLUMNS (',
'                                  -- "key"   VARCHAR2(200)  PATH ''$.headerRows[*].cells[0].text'' ,   ',
'                                  -- "text"      VARCHAR2(200)  PATH ''$.headerRows[*].cells[1].text'',',
'                                   "key"   VARCHAR2(200)  PATH ''$.cells[0].text'' ,   ',
'                                   "text"      VARCHAR2(200)  PATH ''$.cells[1].text'' ',
'                                ) ',
'             ) jt;  ',
'',
'           ',
'           open cur2 for ',
'            SELECT  jt.*  , ''en''  "languageCode"    ',
'            FROM JSON_TABLE',
'            --(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'            (l_json, ',
'                --''$.pages[0].tables[0].bodyRows[*]''  COLUMNS ( "key"   VARCHAR2(200)  PATH ''$.cells[0].text'' ,   "text"      VARCHAR2(200)  PATH ''$.cells[1].text''   )',
'                ''$.pages[0].tables[0]''  ',
'                        COLUMNS (',
'                                   "key"   VARCHAR2(200)  PATH ''$.headerRows[*].cells[0].text'' ,   ',
'                                    "text"      VARCHAR2(200)  PATH ''$.headerRows[*].cells[1].text'' ',
'                                  -- "key"   VARCHAR2(200)  PATH ''$.cells[0].text'' ,   ',
'                                   --"text"      VARCHAR2(200)  PATH ''$.cells[1].text'' ',
'                                ) ',
'             ) jt;  ',
'                   ',
'',
'          apex_json.initialize_clob_output ( p_indent => 2 );',
'',
'          apex_json.open_object;',
'          apex_json.write ( ''documents'', cur ); ',
'          apex_json.close_object;',
'',
'           htp.p(''<br/><br/>'' ||APEX_JSON.get_clob_output);',
'',
'          apex_json.open_object; ',
'          apex_json.write ( ''documents'', cur2 );',
'          apex_json.close_object;',
'',
'           htp.p(''<br/><br/>'' ||APEX_JSON.get_clob_output);',
'',
'',
'          --dbms_output.put_line (apex_json.get_clob_output () );',
'          apex_json.free_output;',
'         ',
'',
'          --|| l_orders_arr.get_size',
'          --OPEN  cr_document_data (cp_json => l_json); ',
'          --FETCH cr_document_data INTO lr_document_data; ',
'         -- CLOSE cr_document_data; ',
'         ',
'          -- Get Key Value Fields from JSON and populate table. ',
'          --FOR r_field IN cr_document_fields (cp_json => l_response_json) LOOP ',
'          --  INSERT INTO cndemo_document_ai_fields (document_id,field_type_code,field_label,label_score,field_value) ',
'          --  VALUES (p_document_id,r_field.field_type_code,r_field.field_label,r_field.label_score,r_field.field_value); ',
'         -- END LOOP; ',
'',
'          -- Loop Through ''orders'' array. ',
'  -- *** Note: The Loop Index for JSON_OBJECT starts at 0 NOT 1 ***',
'  --FOR i IN 0..l_orders_arr.get_size -1 LOOP',
'',
'    -- Get the order object for the for the current order in the ''orders'' array',
'   -- l_order_obj := json_object_t(l_orders_arr.get(i));',
'   -- HTP.P('' [tables]: '' || l_order_obj.get_Number(''tables''));',
'',
'    -- Output the fields, objects and arrays directly accessible from the Order Object.',
'    -- This could be useful if you do not always know what fields could be in the JSON.',
'    /*',
'    l_keys := l_order_obj.get_keys;',
'    FOR x IN 1..l_keys.COUNT LOOP',
'      l_keys_str := l_keys_str || l_keys(x) || '','';',
'    END LOOP;',
'    dbms_output.put_line(''  Order Keys: ['' || l_keys_str || '']'') ;',
'    ',
'    -- Convert the ISO8601 to TIMESTAMP WITH TIME ZONE assumes the time is in the UTC time zone.',
'    l_order_date := convert_iso_date (p_date => l_order_obj.get_String(''order_date''));',
'    dbms_output.put_line(''  [order_date]: ''||',
'      TO_CHAR(l_order_date, ''DD-MON-YYYY HH24:MI:SS TZH:TZM''));',
'',
'    -- Check if the optional field ''ship_date'' exists in the order object.',
'    IF l_order_obj.has(''ship_date'') THEN',
'      l_ship_date := convert_iso_date (p_date => l_order_obj.get_String(''ship_date''));',
'      dbms_output.put_line(''  [ship_date] : ''||',
'        TO_CHAR(l_ship_date, ''DD-MON-YYYY HH24:MI:SS TZH:TZM''));',
'    ELSE',
'      dbms_output.put_line(''  [ship_date] : N/A'');',
'    END IF;',
'    ',
'    -- Output fields from the ''customer'' object.',
'    dbms_output.put_line(''  [customer].[number]: ''||',
'      l_order_obj.get_Object(''customer'').get_Number(''number''));',
'    dbms_output.put_line(''  [customer].[name]  : ''||',
'      l_order_obj.get_Object(''customer'').get_String(''name''));',
'      ',
'    -- Loop through the ''lines'' array for the current order.',
'    l_lines_arr := l_order_obj.get_Array(''lines'');',
'    dbms_output.put_line(''  Order Lines  : '' || l_lines_arr.get_size);',
'    FOR y IN 0..l_lines_arr.get_size -1 LOOP',
'      -- Reference fields in the line without converting it to an object first.',
'      dbms_output.put_line(''      [line_number] : '' ||',
'        json_object_t(l_lines_arr.get(y)).get_Number(''line_number''));',
'      dbms_output.put_line(''      [item_number] : '' ||',
'        json_object_t(l_lines_arr.get(y)).get_String(''item_number''));',
'    END LOOP;  -- End Lines Loop',
'        */',
'  --END LOOP;    -- End Orders Loop',
'',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93148137838465651)
,p_plug_name=>'download_json_important'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this''; ',
'--doc_understanding_base_url VARCHAR2(500) := ''https://document.aiservice.us-phoenix-1.oci.oraclecloud.com'';',
'--GC_OCI_DOC_AI_URL VARCHAR2(500) := doc_understanding_base_url||''/20221109/processorJobs'';',
'l_json                CLOB;',
'l_orders_obj          JSON_OBJECT_T;',
'  l_orders_arr          JSON_ARRAY_T;',
'  l_order_obj           JSON_OBJECT_T;',
'  l_lines_arr           JSON_ARRAY_T;',
'  l_order_date          TIMESTAMP WITH TIME ZONE;',
'  l_ship_date           TIMESTAMP WITH TIME ZONE;',
'  l_keys                JSON_KEY_LIST;',
'  l_keys_str            VARCHAR2(32000);',
'',
'l_file_name varchar2(50) := ''profile5.pdf'';',
'l_obj_name varchar2(500) := ''KV/ocid1.aidocumentprocessorjob.oc1.phx.replace-this/replace-this/results/KV/profile5.pdf.json'';',
'l_docjob_json_url varchar2(4000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/''||l_obj_name;',
'',
'CURSOR C1   IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'             COLUMNS (',
'                     col1      VARCHAR2(50)  PATH ''$.cells[0].text'',  ',
'                     col2      VARCHAR2(50)  PATH ''$.cells[1].text''   ',
'             ) ) jt; ',
'                      --document_type_score     NUMBER        PATH ''$.detectedDocumentTypes[0].confidence'', ',
'                      --language_code           VARCHAR2(50)  PATH ''$.detectedLanguages[0].languageCode'', ',
'                      --language_score          NUMBER        PATH ''$.detectedLanguages[0].confidence'', ',
'                      --page_count              NUMBER        PATH ''$.documentMetadata.pageCount'')) jt; ',
'   -- WHERE  jt.field_type_code = ''KEY_VALUE''; ',
'',
'/*',
'CURSOR C1   IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_json, ''$'' ',
'             COLUMNS (col1      VARCHAR2(50)  PATH ''$.pages[0].tables[0].bodyRows[0].cells[0].text''  )) jt; ',
'                      --document_type_score     NUMBER        PATH ''$.detectedDocumentTypes[0].confidence'', ',
'                      --language_code           VARCHAR2(50)  PATH ''$.detectedLanguages[0].languageCode'', ',
'                      --language_score          NUMBER        PATH ''$.detectedLanguages[0].confidence'', ',
'                      --page_count              NUMBER        PATH ''$.documentMetadata.pageCount'')) jt; ',
'   -- WHERE  jt.field_type_code = ''KEY_VALUE''; ',
'   */',
'',
'BEGIN',
'        HTP.P(''<br/>----1---------------<br/>'');       ',
'         ',
'',
'           l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(l_docjob_json_url),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        HTP.P(''<br/>----2---------------<br/>'');       ',
'              -- Parse the JSON into a JSON Object Type.',
'          l_orders_obj := json_object_t.parse(l_json);',
'          -- Disable error handling (the default).',
'          l_orders_obj.On_error(0);',
'',
'          HTP.P(''<br/>----3---------------<br/>'');       ',
'',
'          l_orders_arr := l_orders_obj.get_Array(''pages'');',
'          HTP.P(''Count of rows in the [pages] array: ''|| l_orders_arr.get_size);',
'',
'          For row_1 In C1 Loop',
'                HTP.P(''<br/> Field -------> ''||row_1.col1||'' Value ----------------> ''||row_1.col2); ',
'          End Loop;',
'          --|| l_orders_arr.get_size',
'          --OPEN  cr_document_data (cp_json => l_json); ',
'          --FETCH cr_document_data INTO lr_document_data; ',
'         -- CLOSE cr_document_data; ',
'         ',
'          -- Get Key Value Fields from JSON and populate table. ',
'          --FOR r_field IN cr_document_fields (cp_json => l_response_json) LOOP ',
'          --  INSERT INTO cndemo_document_ai_fields (document_id,field_type_code,field_label,label_score,field_value) ',
'          --  VALUES (p_document_id,r_field.field_type_code,r_field.field_label,r_field.label_score,r_field.field_value); ',
'         -- END LOOP; ',
'',
'          -- Loop Through ''orders'' array. ',
'  -- *** Note: The Loop Index for JSON_OBJECT starts at 0 NOT 1 ***',
'  --FOR i IN 0..l_orders_arr.get_size -1 LOOP',
'',
'    -- Get the order object for the for the current order in the ''orders'' array',
'   -- l_order_obj := json_object_t(l_orders_arr.get(i));',
'   -- HTP.P('' [tables]: '' || l_order_obj.get_Number(''tables''));',
'',
'    -- Output the fields, objects and arrays directly accessible from the Order Object.',
'    -- This could be useful if you do not always know what fields could be in the JSON.',
'    /*',
'    l_keys := l_order_obj.get_keys;',
'    FOR x IN 1..l_keys.COUNT LOOP',
'      l_keys_str := l_keys_str || l_keys(x) || '','';',
'    END LOOP;',
'    dbms_output.put_line(''  Order Keys: ['' || l_keys_str || '']'') ;',
'    ',
'    -- Convert the ISO8601 to TIMESTAMP WITH TIME ZONE assumes the time is in the UTC time zone.',
'    l_order_date := convert_iso_date (p_date => l_order_obj.get_String(''order_date''));',
'    dbms_output.put_line(''  [order_date]: ''||',
'      TO_CHAR(l_order_date, ''DD-MON-YYYY HH24:MI:SS TZH:TZM''));',
'',
'    -- Check if the optional field ''ship_date'' exists in the order object.',
'    IF l_order_obj.has(''ship_date'') THEN',
'      l_ship_date := convert_iso_date (p_date => l_order_obj.get_String(''ship_date''));',
'      dbms_output.put_line(''  [ship_date] : ''||',
'        TO_CHAR(l_ship_date, ''DD-MON-YYYY HH24:MI:SS TZH:TZM''));',
'    ELSE',
'      dbms_output.put_line(''  [ship_date] : N/A'');',
'    END IF;',
'    ',
'    -- Output fields from the ''customer'' object.',
'    dbms_output.put_line(''  [customer].[number]: ''||',
'      l_order_obj.get_Object(''customer'').get_Number(''number''));',
'    dbms_output.put_line(''  [customer].[name]  : ''||',
'      l_order_obj.get_Object(''customer'').get_String(''name''));',
'      ',
'    -- Loop through the ''lines'' array for the current order.',
'    l_lines_arr := l_order_obj.get_Array(''lines'');',
'    dbms_output.put_line(''  Order Lines  : '' || l_lines_arr.get_size);',
'    FOR y IN 0..l_lines_arr.get_size -1 LOOP',
'      -- Reference fields in the line without converting it to an object first.',
'      dbms_output.put_line(''      [line_number] : '' ||',
'        json_object_t(l_lines_arr.get(y)).get_Number(''line_number''));',
'      dbms_output.put_line(''      [item_number] : '' ||',
'        json_object_t(l_lines_arr.get(y)).get_String(''item_number''));',
'    END LOOP;  -- End Lines Loop',
'        */',
'  --END LOOP;    -- End Orders Loop',
'',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93148262586465652)
,p_plug_name=>'Jsonfile_2_senti'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this'';  ',
'l_json                CLOB;',
'l_orders_obj          JSON_OBJECT_T;',
'  ',
'',
'  cur sys_refcursor;',
'',
'l_file_name varchar2(50) := ''profile5.pdf'';',
'l_job_id varchar2(200) := ''ocid1.aidocumentprocessorjob.oc1.phx.replace-this'';',
'l_obj_name varchar2(500) := ''KV/''||l_job_id||''/replace-this/results/KV/''||l_file_name||''.json'';',
'l_docjob_json_url varchar2(4000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/''||l_obj_name;',
'',
'CURSOR C1   IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'             COLUMNS (',
'                     key      VARCHAR2(50)  PATH ''$.cells[0].text'',  ',
'                     text      VARCHAR2(50)  PATH ''$.cells[1].text''   ',
'             ) ) jt; ',
'                    ',
'',
'BEGIN',
'        HTP.P(''<br/>----1---------------<br/>'');       ',
'         ',
'',
'           l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(l_docjob_json_url),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'',
'        HTP.P(''<br/>----2---------------<br/>'');       ',
'              -- Parse the JSON into a JSON Object Type.',
'          l_orders_obj := json_object_t.parse(l_json);',
'          -- Disable error handling (the default).',
'          l_orders_obj.On_error(0);',
'',
'          HTP.P(''<br/>----3---------------<br/>'');       ',
'',
'          --l_orders_arr := l_orders_obj.get_Array(''pages'');',
'          --HTP.P(''Count of rows in the [pages] array: ''|| l_orders_arr.get_size);',
'',
'          -- For row_1 In C1 Loop',
'           --     HTP.P(''<br/> Field -------> ''||row_1.key||'' Value ----------------> ''||row_1.text); ',
'          -- End Loop;',
'',
'',
'         open cur for',
'            --SELECT jt.*  , ''en'' languageCode ',
'            ',
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
'           htp.p(''<br/><br/>'' ||APEX_JSON.get_clob_output);',
'',
'',
'          --dbms_output.put_line (apex_json.get_clob_output () );',
'          apex_json.free_output;',
'         ',
'',
'          --|| l_orders_arr.get_size',
'          --OPEN  cr_document_data (cp_json => l_json); ',
'          --FETCH cr_document_data INTO lr_document_data; ',
'         -- CLOSE cr_document_data; ',
'         ',
'          -- Get Key Value Fields from JSON and populate table. ',
'          --FOR r_field IN cr_document_fields (cp_json => l_response_json) LOOP ',
'          --  INSERT INTO cndemo_document_ai_fields (document_id,field_type_code,field_label,label_score,field_value) ',
'          --  VALUES (p_document_id,r_field.field_type_code,r_field.field_label,r_field.label_score,r_field.field_value); ',
'         -- END LOOP; ',
'',
'          -- Loop Through ''orders'' array. ',
'  -- *** Note: The Loop Index for JSON_OBJECT starts at 0 NOT 1 ***',
'  --FOR i IN 0..l_orders_arr.get_size -1 LOOP',
'',
'    -- Get the order object for the for the current order in the ''orders'' array',
'   -- l_order_obj := json_object_t(l_orders_arr.get(i));',
'   -- HTP.P('' [tables]: '' || l_order_obj.get_Number(''tables''));',
'',
'    -- Output the fields, objects and arrays directly accessible from the Order Object.',
'    -- This could be useful if you do not always know what fields could be in the JSON.',
'    /*',
'    l_keys := l_order_obj.get_keys;',
'    FOR x IN 1..l_keys.COUNT LOOP',
'      l_keys_str := l_keys_str || l_keys(x) || '','';',
'    END LOOP;',
'    dbms_output.put_line(''  Order Keys: ['' || l_keys_str || '']'') ;',
'    ',
'    -- Convert the ISO8601 to TIMESTAMP WITH TIME ZONE assumes the time is in the UTC time zone.',
'    l_order_date := convert_iso_date (p_date => l_order_obj.get_String(''order_date''));',
'    dbms_output.put_line(''  [order_date]: ''||',
'      TO_CHAR(l_order_date, ''DD-MON-YYYY HH24:MI:SS TZH:TZM''));',
'',
'    -- Check if the optional field ''ship_date'' exists in the order object.',
'    IF l_order_obj.has(''ship_date'') THEN',
'      l_ship_date := convert_iso_date (p_date => l_order_obj.get_String(''ship_date''));',
'      dbms_output.put_line(''  [ship_date] : ''||',
'        TO_CHAR(l_ship_date, ''DD-MON-YYYY HH24:MI:SS TZH:TZM''));',
'    ELSE',
'      dbms_output.put_line(''  [ship_date] : N/A'');',
'    END IF;',
'    ',
'    -- Output fields from the ''customer'' object.',
'    dbms_output.put_line(''  [customer].[number]: ''||',
'      l_order_obj.get_Object(''customer'').get_Number(''number''));',
'    dbms_output.put_line(''  [customer].[name]  : ''||',
'      l_order_obj.get_Object(''customer'').get_String(''name''));',
'      ',
'    -- Loop through the ''lines'' array for the current order.',
'    l_lines_arr := l_order_obj.get_Array(''lines'');',
'    dbms_output.put_line(''  Order Lines  : '' || l_lines_arr.get_size);',
'    FOR y IN 0..l_lines_arr.get_size -1 LOOP',
'      -- Reference fields in the line without converting it to an object first.',
'      dbms_output.put_line(''      [line_number] : '' ||',
'        json_object_t(l_lines_arr.get(y)).get_Number(''line_number''));',
'      dbms_output.put_line(''      [item_number] : '' ||',
'        json_object_t(l_lines_arr.get(y)).get_String(''item_number''));',
'    END LOOP;  -- End Lines Loop',
'        */',
'  --END LOOP;    -- End Orders Loop',
'',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93148414360465653)
,p_plug_name=>'trigger_doc_job'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'GC_OCI_OBJ_STORE_BASE_URL  CONSTANT VARCHAR2(500)  := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/KV/'';  ',
'GC_OCI_DOC_AI_URL VARCHAR2(500) := ''https://document.aiservice.us-phoenix-1.oci.oraclecloud.com/20221109/processorJobs''; ',
'',
'  GC_OCI_DOC_AI_TIMEOUT_SECS CONSTANT NUMBER         := 15; ',
'  GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this''; --APEX_OCI_BLOG_CREDENTIAL ',
'',
'  p_file_name  VARCHAR2(50) := ''profile8.pdf'';',
'  p_document_id number := 2666;',
'  ',
'  GC_OCY_DOC_AI_PAYLOAD      CONSTANT VARCHAR2(32000) := '' {',
'    "processorConfig": {',
'        "processorType": "GENERAL",',
'        "features": [',
'            {',
'                "featureType": "TABLE_EXTRACTION"',
'            }',
'        ]',
'    },',
'    "inputLocation": {',
'        "sourceType": "OBJECT_STORAGE_LOCATIONS",',
'        "objectLocations": [',
'            {',
'                "source": "OBJECT_STORAGE",',
'                "namespaceName": "replace-this",',
'                "bucketName": "replace-this",',
'                "objectName": "KV/#FILE_NAME#"',
'            }',
'        ]',
'    },',
'    "outputLocation": {',
'        "bucketName": "replace-this",',
'        "namespaceName": "replace-this",',
'        "prefix": "KV"',
'    },',
'   "compartmentId": "ocid1.compartment.oc1..replace-this"',
'} ''; ',
'',
'  l_request_json        VARCHAR2(32000); ',
'  l_response_json       CLOB; ',
'',
'begin ',
'                -- Replace the uploaded filename in the JSON payload to be sent to Document AI. ',
'                  l_request_json := REPLACE(GC_OCY_DOC_AI_PAYLOAD, ''#FILE_NAME#'', p_file_name); ',
'                 ',
'                  -- Set Content-Type in the Request Header. This is required by the Document AI REST Service. ',
'                  apex_web_service.g_request_headers.DELETE; ',
'                  apex_web_service.g_request_headers(1).name  := ''Content-Type''; ',
'                  apex_web_service.g_request_headers(1).value := ''application/json''; ',
'                 ',
'                  -- Call the Document AI analyzeDocument REST Web Service. ',
'                  l_response_json := apex_web_service.make_rest_request ',
'                   (p_url                  => GC_OCI_DOC_AI_URL, ',
'                    p_http_method          => ''POST'', ',
'                    p_body                 => l_request_json, ',
'                    p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'                    --p_credential_static_id => ''APEX_OCI_BLOG_CREDENTIAL''); ',
'',
'                     Htp.p(l_response_json);',
'                 ',
'                 -- IF apex_web_service.g_status_code != 200 then ',
'                  --  raise_application_error(-20112,''Unable to call OCI Document AI.''); ',
'                  --END IF; ',
'                 ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93148516870465654)
,p_plug_name=>'BasicJson'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_id varchar(100);',
'    v_filename varchar(100);',
'    l_json                CLOB;',
'    GC_WC_CREDENTIAL_ID        CONSTANT VARCHAR2(50)   := ''replace-this''; ',
'     cur sys_refcursor;',
'    sample_json   varchar2 (32767)',
'        := ''{',
'                  "id": "ocid1.aidocumentprocessorjob.oc1.phx.amaaaaaaknuwtjiaeggitfbnzx5csefc3pfgv5rd6nmsigpfg5ebmdiim5pa",',
'                  "compartmentId": "ocid1.compartment.oc1..replace-this",',
'                  "displayName": null,',
'                  "features": [',
'                    {',
'                      "featureType": "TABLE_EXTRACTION"',
'                    }',
'                  ],',
'                  "language": null,',
'                  "documentType": null,',
'                  "inputLocation": {',
'                    "sourceType": "OBJECT_STORAGE_LOCATIONS",',
'                    "objectLocations": [',
'                      {',
'                        "namespaceName": "replace-this",',
'                        "bucketName": "replace-this",',
'                        "objectName": "KV/profile10.pdf"',
'                      }',
'                    ]',
'                  },',
'                  "timeAccepted": "2023-11-18T18:14:37.358Z",',
'                  "timeStarted": "2023-11-18T18:14:37.358Z",',
'                  "timeFinished": "2023-11-18T18:14:37.358Z",',
'                  "percentComplete": 100.0,',
'                  "outputLocation": {',
'                    "namespaceName": "replace-this",',
'                    "bucketName": "replace-this",',
'                    "prefix": "KV"',
'                  },',
'                  "lifecycleState": "SUCCEEDED",',
'                  "isZipOutputEnabled": false,',
'                  "lifecycleDetails": null',
'                }',
''';',
'',
'l_file_name varchar2(50)  ;',
'l_job_id varchar2(200)  ;',
'l_obj_name varchar2(500)  ;',
'l_docjob_json_url varchar2(4000) ;',
'',
'/*',
'l_file_name varchar2(50) := ''profile11.pdf'';',
'l_job_id varchar2(200) := ''ocid1.aidocumentprocessorjob.oc1.phx.amaaaaaaknuwtjiaz4bexo2iintifppdllbzx5a2yebzhq7cyirbj735hyva'';',
'l_obj_name varchar2(500) := ''KV/''||l_job_id||''/replace-this/results/KV/''||l_file_name||''.json'';',
'l_docjob_json_url varchar2(4000) := ''https://objectstorage.us-phoenix-1.oraclecloud.com/n/replace-this/b/replace-this/o/''||l_obj_name;',
'*/',
'',
'CURSOR C1   IS ',
'    SELECT jt.* ',
'    FROM   JSON_TABLE(l_json, ''$.pages[0].tables[0].bodyRows[*]'' ',
'             COLUMNS (',
'                     key      VARCHAR2(50)  PATH ''$.cells[0].text'',  ',
'                     text      VARCHAR2(50)  PATH ''$.cells[1].text''   ',
'             ) ) jt; ',
'',
'             ',
'begin',
'    apex_json.parse (sample_json);',
'    v_id := apex_json.get_varchar2 (''id'');',
'    Htp.p (v_id);',
'',
'    v_filename := apex_json.get_varchar2 (''inputLocation.objectLocations[0].objectName'');',
'    Htp.p (v_filename);',
'',
'      HTP.P(''<br/>----1---------------<br/>'');       ',
'         ',
'        /*',
'           l_json := apex_web_service.make_rest_request',
'             (p_url => UTL_URL.ESCAPE(l_docjob_json_url),',
'              p_http_method => ''GET'',',
'              p_credential_static_id => GC_WC_CREDENTIAL_ID);',
'        */',
'        --HTP.P(''<br/>----2---------------<br/>'');       ',
'              -- Parse the JSON into a JSON Object Type.',
'          --l_orders_obj := json_object_t.parse(l_json);',
'          -- Disable error handling (the default).',
'          --l_orders_obj.On_error(0);',
'',
'         -- HTP.P(''<br/>----3---------------<br/>'');       ',
'',
'          --l_orders_arr := l_orders_obj.get_Array(''pages'');',
'          --HTP.P(''Count of rows in the [pages] array: ''|| l_orders_arr.get_size);',
'',
'          -- For row_1 In C1 Loop',
'           --     HTP.P(''<br/> Field -------> ''||row_1.key||'' Value ----------------> ''||row_1.text); ',
'          -- End Loop;',
'',
'        /*',
'         open cur for',
'            --SELECT jt.*  , ''en'' languageCode ',
'            ',
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
'           htp.p(''<br/><br/>'' ||APEX_JSON.get_clob_output);',
'',
' ',
'          apex_json.free_output;',
'        */',
'          ',
'    --Htp.p (apex_json.get_varchar2 (''glossary.title''));',
'    --Htp.p (apex_json.get_varchar2 (''glossary.GlossDiv.title''));',
'   -- Htp.p (apex_json.get_varchar2 (''glossary.GlossDiv.GlossList.GlossEntry.GlossTerm''));',
'    --Htp.p (apex_json.get_varchar2 (''glossary.GlossDiv.GlossList.GlossEntry.GlossDef.GlossSeeAlso[%d]'', 2));',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93148992592465659)
,p_plug_name=>'ParseSentiRespJSON'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_sentiments varchar(4000);',
'v_req varchar(4000);',
'',
'cursor c1 Is',
'select j.*',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                documentSentiment , ',
'                                Neutral number PATH ''$.documentScores.Neutral'' ,',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive'' ,',
'                                text  PATH ''$.sentences[0].text''     ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = 2676;   ',
'',
'begin ',
'',
'        null;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93149078701465660)
,p_plug_name=>'testing_json'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.*',
'from   CNDEMO_DOCUMENT_AI_DOCS d, json_table ',
'(',
'         d.sentiments, ''$'' columns  ',
'         (  nested documents[*] ',
'                columns ( ',
'                                key,  ',
'                                documentSentiment , ',
'                                Neutral number PATH ''$.documentScores.Neutral'' ,',
'                                Negative number PATH ''$.documentScores.Negative'' , ',
'                                Positive number PATH ''$.documentScores.Positive'' ,',
'                                text  PATH ''$.sentences[0].text''     ',
'                        )     ',
'        )    ',
') j',
'where  d.document_id = 2676; '))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout_options', 'STRIPE:STROKE')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93149151874465661)
,p_name=>'KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Key'
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
 p_id=>wwv_flow_imp.id(93149327699465662)
,p_name=>'DOCUMENTSENTIMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Documentsentiment'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93149371338465663)
,p_name=>'NEUTRAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Neutral'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93149473818465664)
,p_name=>'NEGATIVE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Negative'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93149597750465665)
,p_name=>'POSITIVE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Positive'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93149689087465666)
,p_name=>'TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Text'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'PLAIN',
  'value_identifies_row', 'N')).to_clob
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93249375910551257)
,p_plug_name=>'multi row ins'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin ',
'        null;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp.component_end;
end;
/
