prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'Money_Mules'
,p_alias=>'MONEY-MULES'
,p_step_title=>'Money_Mules'
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
 p_id=>wwv_flow_imp.id(104618775986702159)
,p_plug_name=>'Selection Source'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' WITH query as ( ',
'    select ',
'    SRC_ACCT_ID as source , ',
'    DST_ACCT_ID as target  ',
'    from bank_transfers where DESCRIPTION = ''ML''',
'    AND MERCHANT_STATE != ''United States of America''',
'),',
'page AS (',
'    -- pagination',
'    SELECT',
'        *',
'    FROM',
'        query',
'    ORDER BY',
'        source,',
'        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY',
'        --target OFFSET 1 ROWS FETCH NEXT 100 ROWS ONLY',
'),',
'vertices AS (',
'    -- fetch employee details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            --''id'' VALUE employees.EMPLOYEE_ID,',
'            ''id'' VALUE FINBANK_ACCOUNTS.ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE FINBANK_ACCOUNTS.FIRST_NAME,',
'                ''LastName'' VALUE FINBANK_ACCOUNTS.LAST_NAME, ',
'                ''Department'' VALUE FINBANK_ACCOUNTS.DEPARTMENT_ID,',
'                ''HireDate'' VALUE FINBANK_ACCOUNTS.ACC_DATE,',
'                ''JobId'' VALUE FINBANK_ACCOUNTS.JOB_ID,',
'                ''JobTitle'' VALUE jobs.JOB_TITLE,',
'                ''MERCHANT_STATE'' VALUE bank_transfers.MERCHANT_STATE,',
'                ''Amount'' VALUE bank_transfers.Amount',
'               ',
'            )',
'        ) AS vertex',
'    FROM',
'        ',
'        FINBANK_ACCOUNTS finbank_accounts ',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID  ',
'    WHERE',
'        ',
'        bank_transfers.SRC_ACCT_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or bank_transfers.DST_ACCT_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'',
'),',
'edges AS (',
'   ',
'    SELECT',
'        JSON_OBJECT(''source'' VALUE source, ''target'' VALUE target) AS edge',
'    FROM',
'        page',
')',
'SELECT',
'    -- construct the final JSON that GVT accepts.',
'    JSON_OBJECT(',
'        ''vertices'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(vertex returning clob)',
'            FROM',
'                vertices',
'        ),',
'        ''edges'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(edge returning clob)',
'            FROM',
'                edges',
'        ),',
'        ''numResults'' VALUE (',
'            SELECT',
'                COUNT(*)',
'            FROM',
'                query',
'        ) returning clob',
'    ) json',
'FROM',
'    SYS.DUAL',
' ',
' /*   ',
'WITH query as (',
'    -- source and target constitutes the edge direction and thus',
'    -- represents the reporting structure of employee to their managers.',
'    SELECT',
'        EMPLOYEE_ID as source,',
'        MANAGER_ID as target',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES',
'    WHERE',
'        MANAGER_ID IS NOT NULL',
'),',
'page AS (',
'    -- pagination',
'    SELECT',
'        *',
'    FROM',
'        query',
'    ORDER BY',
'        source,',
'        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY',
'),',
'vertices AS (',
'    -- fetch employee details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            ''id'' VALUE employees.EMPLOYEE_ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE employees.FIRST_NAME,',
'                ''LastName'' VALUE employees.LAST_NAME,',
'                ''Salary'' VALUE employees.SALARY,',
'                ''Department'' VALUE employees.DEPARTMENT_ID,',
'                ''HireDate'' VALUE employees.HIRE_DATE,',
'                ''JobId'' VALUE jobs.JOB_ID,',
'                ''JobTitle'' VALUE jobs.JOB_TITLE,',
'                ''Country'' VALUE locations.COUNTRY_ID',
'            )',
'        ) AS vertex',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES employees',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON employees.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_DEPARTMENTS departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_LOCATIONS locations ON departments.LOCATION_ID = locations.LOCATION_ID',
'    WHERE',
'        employees.EMPLOYEE_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or employees.EMPLOYEE_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'),',
'edges AS (',
'    -- source (employee) and target (manager) constitutes the directed edge',
'    SELECT',
'        JSON_OBJECT(''source'' VALUE source, ''target'' VALUE target) AS edge',
'    FROM',
'        page',
')',
'SELECT',
'    -- construct the final JSON that GVT accepts.',
'    JSON_OBJECT(',
'        ''vertices'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(vertex returning clob)',
'            FROM',
'                vertices',
'        ),',
'        ''edges'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(edge returning clob)',
'            FROM',
'                edges',
'        ),',
'        ''numResults'' VALUE (',
'            SELECT',
'                COUNT(*)',
'            FROM',
'                query',
'        ) returning clob',
'    ) json',
'FROM',
'    SYS.DUAL',
'',
'    */'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', '{}',
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.FirstName} ${properties.LastName}",',
    '        "color": "${interpolate.discrete(''properties.JobId'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Salary'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "black"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[!!properties.Country]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.Country === ''UK'' ? ''GB'' : properties.Country).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''AD_PRES'', ''AD_VP'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.JobId) >= 0]": {',
    '        "icon": "fa-user-secret"',
    '    }',
    '}')),
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'N')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(104618927318702160)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(104619182889702163)
,p_plug_name=>'Selection Target'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*  This query retrieves empty data to show an empty graph initially,',
'    that gets overridden by Dynamic actions, when the user makes selection ',
'    in the first graph.*/',
'SELECT',
'    JSON_OBJECT(',
'        ''vertices'' VALUE JSON_ARRAY(),',
'        ''edges'' VALUE JSON_ARRAY(),',
'        ''numResults'' VALUE 0',
'    ) json',
'FROM',
'    SYS.DUAL'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', '{}',
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.FirstName} ${properties.LastName}",',
    '        "color": "${interpolate.discrete(''properties.JobId'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Salary'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "black"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[!!properties.Country]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.Country === ''UK'' ? ''GB'' : properties.Country).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''AD_PRES'', ''AD_VP'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.JobId) >= 0]": {',
    '        "icon": "fa-user-secret"',
    '    }',
    '}')),
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'N')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(104619333494702164)
,p_name=>'JSON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170327082666317195)
,p_plug_name=>'Transaction Locations'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(104636267232600794)
,p_region_id=>wwv_flow_imp.id(170327082666317195)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(104636742585600797)
,p_map_region_id=>wwv_flow_imp.id(104636267232600794)
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
'where merchant_state != ''United States of America'' ',
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(170328741118318448)
,p_plug_name=>'Detecting money mules and mule fraud '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select txn_id,  ',
'(select first_name||'' ''||last_name from finbank_accounts where id=src_acct_id) as Customer_Name,  ',
'(select first_name||'' ''||last_name from finbank_accounts where id=dst_acct_id) as Merchant_Name,',
' ''$'' ||amount as amount,',
' inv_no, LATITUDE, LONGITUDE, MERCHANT_REGION, MERCHANT_STATE, MERCHANT_PLACE',
'--(select LATITUDE from RETAIL_SHOPPING_FD where inv_no = inv_no ) as  LATITUDE',
'from ',
'(',
'        select bt.txn_id, bt.src_acct_id, bt.dst_acct_id, bt.description, bt.amount, bt.inv_no, rs.LATITUDE, rs.LONGITUDE, rs.MERCHANT_REGION, rs.MERCHANT_STATE, rs.MERCHANT_PLACE',
'        from BANK_TRANSFERS bt , RETAIL_SHOPPING_FD rs',
'        where ',
'        bt.DESCRIPTION = ''ML'' AND rs.INV_NO = bt.INV_NO AND rs.merchant_state != ''United States of America''',
')',
'',
'',
'',
'/*',
'select txn_id,  ',
'(select first_name||'' ''||last_name from finbank_accounts where id=src_acct_id) as Customer_Name, ',
'--(select last_name from finbank_accounts where id=src_acct_id) as Customer_Last_Name ,',
'(select first_name||'' ''||last_name from finbank_accounts where id=dst_acct_id) as Merchant_Name,',
' ''$'' ||amount as amount',
'--(select last_name from finbank_accounts where id=dst_acct_id) as Merchant_Last_Name',
'from ',
'(',
'        select txn_id, src_acct_id, dst_acct_id, description, amount   from BANK_TRANSFERS where DESCRIPTION = ''ML''',
')',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detecting money mules and mule fraud '
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
 p_id=>wwv_flow_imp.id(170328829231318449)
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
,p_internal_uid=>132028191508532599
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170328960382318450)
,p_db_column_name=>'TXN_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Txn Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329071218318451)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329170962318452)
,p_db_column_name=>'MERCHANT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Merchant Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329235711318453)
,p_db_column_name=>'AMOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329367185318454)
,p_db_column_name=>'INV_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Inv No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329492094318455)
,p_db_column_name=>'LATITUDE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329564686318456)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329667549318457)
,p_db_column_name=>'MERCHANT_REGION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Merchant Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329788262318458)
,p_db_column_name=>'MERCHANT_STATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Merchant State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(170329831301318459)
,p_db_column_name=>'MERCHANT_PLACE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Merchant Place'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(170349368779650900)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'657120'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TXN_ID:CUSTOMER_NAME:MERCHANT_NAME:AMOUNT:INV_NO:LATITUDE:LONGITUDE:MERCHANT_REGION:MERCHANT_STATE:MERCHANT_PLACE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237282653645687531)
,p_plug_name=>'Money Mules'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b> Money Mules </b>',
'<br/>',
'Mule fraud involves a person, called a money mule, who transfers illicit',
'goods. This can involve drugs but when it comes to the financial industry,',
'usually involves money. The money mule transfers money to his or her',
'own account, and the money is then transferred to another <b> scam operator',
'who is usually in another country </b>.',
'<br/>',
unistr('A money mule transfers illicit funds on behalf of someone else. Money mules can be any age, race, gender, or income level, and either witting, unwitting or complicit\2014but every one of them can take a different path to becoming a money mule. They can a')
||'lso move money into another country or tax havens. ',
'<br/>',
'Traditionally, rule-based models create alerts and the suspicious accounts',
'are flagged by humans. Machine learning is also used to predict human',
'decisions. However, it is often difficult to improve the models because the accounts',
'themselves usually have limited information.',
'<br/>',
'<b>The graph solution</b>',
'<br/>',
'This is where graphs come in. With graph technology, users can take',
'the transaction information as edges and generate more features of',
'the accounts based on surrounding relationships and transactions. For',
'example, by using graph-based centrality scores, users can determine',
'how close certain accounts are to known mule accounts.',
'',
'In addition, these false accounts often share similar information',
'(such as address or telephone numbers) because such information is',
unistr('necessary for registering the accounts\2014and the criminals only have'),
'so many identities to draw from. By using graph-based queries, graph',
'users can quickly discover the accounts with similar relationships or the',
'accounts involved with patterns like circulation and flag them for further',
'investigation.',
'<br/>',
'Through this method, graph technology can enhance machine learning',
'models trained to discover money mules and mule fraud.',
'<br/>',
'<img src=''#APP_FILES#mml.png''>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18035781162305440768)
,p_plug_name=>'graph'
,p_region_name=>'graph'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH query as ( ',
'    select ',
'    SRC_ACCT_ID as source , ',
'    DST_ACCT_ID as target  ',
'    from bank_transfers where DESCRIPTION = ''ML''',
'    AND MERCHANT_STATE != ''United States of America''',
'),',
'page AS (',
'    -- pagination',
'    SELECT',
'        *',
'    FROM',
'        query',
'    ORDER BY',
'        source,',
'        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY',
'        --target OFFSET 1 ROWS FETCH NEXT 100 ROWS ONLY',
'),',
'vertices AS (',
'    -- fetch employee details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            --''id'' VALUE employees.EMPLOYEE_ID,',
'            ''id'' VALUE FINBANK_ACCOUNTS.ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE FINBANK_ACCOUNTS.FIRST_NAME,',
'                ''LastName'' VALUE FINBANK_ACCOUNTS.LAST_NAME, ',
'                ''Department'' VALUE FINBANK_ACCOUNTS.DEPARTMENT_ID,',
'                ''HireDate'' VALUE FINBANK_ACCOUNTS.ACC_DATE,',
'                ''JobId'' VALUE FINBANK_ACCOUNTS.JOB_ID,',
'                ''JobTitle'' VALUE jobs.JOB_TITLE,',
'                ''MERCHANT_STATE'' VALUE bank_transfers.MERCHANT_STATE,',
'                ''Amount'' VALUE bank_transfers.Amount',
'               ',
'            )',
'        ) AS vertex',
'    FROM',
'        ',
'        FINBANK_ACCOUNTS finbank_accounts ',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID  ',
'    WHERE',
'        ',
'        bank_transfers.SRC_ACCT_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or bank_transfers.DST_ACCT_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'',
'),',
'edges AS (',
'   ',
'    SELECT',
'        JSON_OBJECT(''source'' VALUE source, ''target'' VALUE target) AS edge',
'    FROM',
'        page',
')',
'SELECT',
'    -- construct the final JSON that GVT accepts.',
'    JSON_OBJECT(',
'        ''vertices'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(vertex returning clob)',
'            FROM',
'                vertices',
'        ),',
'        ''edges'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(edge returning clob)',
'            FROM',
'                edges',
'        ),',
'        ''numResults'' VALUE (',
'            SELECT',
'                COUNT(*)',
'            FROM',
'                query',
'        ) returning clob',
'    ) json',
'FROM',
'    SYS.DUAL',
'',
'/*    ',
'WITH query as (',
'    -- source and target constitutes the edge direction and thus',
'    -- represents the reporting structure of employee to their managers.',
'    SELECT',
'        EMPLOYEE_ID as source,',
'        MANAGER_ID as target',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES',
'    WHERE',
'        MANAGER_ID IS NOT NULL',
'),',
'page AS (',
'    -- pagination',
'    SELECT',
'        *',
'    FROM',
'        query',
'    ORDER BY',
'        source,',
'        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY',
'),',
'vertices AS (',
'    -- fetch employee details and construct JSON',
'    SELECT',
'        JSON_OBJECT(',
'            ''id'' VALUE employees.EMPLOYEE_ID,',
'            ''properties'' VALUE JSON_OBJECT(',
'                ''FirstName'' VALUE employees.FIRST_NAME,',
'                ''LastName'' VALUE employees.LAST_NAME,',
'                ''Salary'' VALUE employees.SALARY,',
'                ''Department'' VALUE employees.DEPARTMENT_ID,',
'                ''HireDate'' VALUE employees.HIRE_DATE,',
'                ''JobId'' VALUE jobs.JOB_ID,',
'                ''JobTitle'' VALUE jobs.JOB_TITLE,',
'                ''Country'' VALUE locations.COUNTRY_ID',
'            )',
'        ) AS vertex',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES employees',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON employees.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_DEPARTMENTS departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_LOCATIONS locations ON departments.LOCATION_ID = locations.LOCATION_ID',
'    WHERE',
'        employees.EMPLOYEE_ID in (',
'            SELECT',
'                source',
'            from',
'                page',
'        )',
'        or employees.EMPLOYEE_ID in (',
'            SELECT',
'                target',
'            from',
'                page',
'        )',
'),',
'edges AS (',
'    -- source (employee) and target (manager) constitutes the directed edge',
'    SELECT',
'        JSON_OBJECT(''source'' VALUE source, ''target'' VALUE target) AS edge',
'    FROM',
'        page',
')',
'SELECT',
'    -- construct the final JSON that GVT accepts.',
'    JSON_OBJECT(',
'        ''vertices'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(vertex returning clob)',
'            FROM',
'                vertices',
'        ),',
'        ''edges'' VALUE (',
'            SELECT',
'                JSON_ARRAYAGG(edge returning clob)',
'            FROM',
'                edges',
'        ),',
'        ''numResults'' VALUE (',
'            SELECT',
'                COUNT(*)',
'            FROM',
'                query',
'        ) returning clob',
'    ) json',
'FROM',
'    SYS.DUAL',
'    */'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_02', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "evolution": {',
    '        "granularity": 500,',
    '        "vertex": "properties.Amount"',
    '    }',
    '}')),
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '    "vertex": {',
    '        "size": 12,',
    '        "label": "${properties.MERCHANT_STATE}",',
    '        "color": "${interpolate.discrete(''properties.JobId'', ''#d5445a'', ''#6d2f5f'', ''#25314c'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Salary'', ''white'', ''#FB8500'')}",',
    '                "icon": {',
    '                    "class": "fa-money",',
    '                    "color": "black"',
    '                },',
    '                "border": {',
    '                    "width": 1,',
    '                    "color": "#FB8500"',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[!!properties.Country]": {',
    '        "children": {',
    '            "flag": {',
    '                "size": 10,',
    '                "image": {',
    '                    "url": "https://flagcdn.com/40x30/${(properties.Country === ''UK'' ? ''GB'' : properties.Country).toLowerCase()}.png",',
    '                    "scale": 0.8',
    '                }',
    '            }',
    '        }',
    '    },',
    '    "vertex[[''VP'', ''SWISS BANK'', ''FI_MGR'', ''AC_MGR'', ''SA_MAN'', ''PU_MAN'', ''ST_MAN''].indexOf(properties.JobId) >= 0]": {',
    '        "icon": "fa-user-secret"',
    '    }',
    '}')),
  'attribute_04', 'hierarchical',
  'attribute_05', 'Y',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(271349159572009231)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104650268377775613)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Create_Transactions'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Transactions'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-table-arrow-up'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104647065576775611)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Force'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Force'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104649534067775613)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Grid'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Grid'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104649901630775613)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Hierarchical'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Hierarchical'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104647474151775612)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Radial'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Radial'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Radial - Display graph with outer vertices in a circle encompassing inner vertices and ultimately the root vertex centered in the middle"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104647892445775612)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'GroupEdges'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256310145085102)
,p_button_image_alt=>'Group Edges'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-object-group'
,p_button_cattributes=>'title="Group edges"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104648331374775612)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'UnGroupEdges'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256310145085102)
,p_button_image_alt=>'Ungroup Edges'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-object-ungroup'
,p_button_cattributes=>'title="Ungroup edges"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104646685102775608)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'First'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'First Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104649058944775613)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Last'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62256971437085104)
,p_button_image_alt=>'Last Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(104648692745775612)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_button_name=>'Full'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Full Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-align-left'
,p_button_cattributes=>'title="Change vertices'' labels to display full name"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(160123855597222425)
,p_name=>'P40_RECORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18035781162305440768)
,p_item_display_point=>'PREVIOUS'
,p_item_default=>'15'
,p_prompt=>'Records'
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
 p_id=>wwv_flow_imp.id(104619012690702161)
,p_name=>'Selection'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(104618775986702159)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_GRAPHVIZ|REGION TYPE|selection'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(104619098481702162)
,p_event_id=>wwv_flow_imp.id(104619012690702161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''graph2'').self.data = this.data;'
);
wwv_flow_imp.component_end;
end;
/
