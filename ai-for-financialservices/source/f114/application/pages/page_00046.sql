prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>'Information Window'
,p_alias=>'INFORMATION-WINDOW'
,p_page_mode=>'MODAL'
,p_step_title=>'Information Window'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168756255368504247)
,p_plug_name=>'Business Rules'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>70
,p_query_type=>'TABLE'
,p_query_table=>'FD_BUSINESS_RULES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_INFO_ID'
,p_plug_display_when_cond2=>'5'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Business Rules'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(168756473429504249)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(168756573476504250)
,p_name=>'UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(168756712782504251)
,p_name=>'UNIT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(168756793083504252)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(168756434662504248)
,p_internal_uid=>130455796939718398
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(168845190033330947)
,p_interactive_grid_id=>wwv_flow_imp.id(168756434662504248)
,p_static_id=>'550407'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(168845371135330948)
,p_report_id=>wwv_flow_imp.id(168845190033330947)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(168845859385330955)
,p_view_id=>wwv_flow_imp.id(168845371135330948)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(168756473429504249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(168846831344330963)
,p_view_id=>wwv_flow_imp.id(168845371135330948)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(168756573476504250)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>1078.65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(168847687213330967)
,p_view_id=>wwv_flow_imp.id(168845371135330948)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(168756712782504251)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(168848638779330970)
,p_view_id=>wwv_flow_imp.id(168845371135330948)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(168756793083504252)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204302242602841575)
,p_plug_name=>'Business Rules'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <b>Rule 1 (Based on Transaction Value)</b> <br/>',
'If Transaction Amount < 2000. Transaction is <b>Auto Approved</b>',
'If Transaction Amount >= 2000 and < 10,000. Transaction is kept <b>OnHold</b> for a manual review',
'If Transaction Amount >= 10000. Transaction is <b>Rejected</b> and the card is <b>Blocked</b> from Further Transactions <br/>',
'<b>Rule 2 (Based on Location)</b> <br/>',
'If the same credit card is used in less than <b>15 seconds</b> in different locations, then that transaction will be <b>Rejected</b>  <br/>',
'<b>Rule 3</b> <br/>',
'If the same credit card is used in more than <b>15 seconds</b>  in the same locations AND If Transaction Amount >= 2000 and < 10,000 -> It is <b>OnHold</b>, then that card will NOT be blocked. <br/>',
'<b>Rule 4 (Based on Time)</b> <br/>',
'The same credit card has been used in less than 15, and then the card is <b>Blocked</b>. '))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_INFO_ID'
,p_plug_display_when_cond2=>'5'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237881458049020540)
,p_plug_name=>'Money laundering'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
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
'<b>The graph solution</b><br/>',
'To make fraud detection simpler, users can create a graph from',
'transactions between entities as well as entities that share some',
'information, including the email addresses, passwords, addresses,',
'and more. Once a graph is created, running a simple query will find',
'all customers with accounts who have similar information, and reveal',
'which accounts are sending money to each other. <a href=''https://www.oracle.com/a/ocom/docs/graph-database-use-cases-ebook.pdf'' target=''_new''> read more ..</a>',
'<br/>',
'<img src=''#APP_FILES#ml.png''> ',
''))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_INFO_ID'
,p_plug_display_when_cond2=>'2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(370618630479794630)
,p_plug_name=>'Money Mules'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
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
'investigation. Through this method, graph technology can enhance machine learning',
'models trained to discover money mules and mule fraud. <a href=''https://www.oracle.com/a/ocom/docs/graph-database-use-cases-ebook.pdf'' target=''_new''> read more ..</a>',
'<br/>',
'<img src=''#APP_FILES#mml.png''>'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_INFO_ID'
,p_plug_display_when_cond2=>'3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(437464441924730676)
,p_plug_name=>'Real Time Transaction'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b> Real-time fraud detection </b>',
'<br/>',
unistr('In today\2019s world, consumers demand instant access to services and'),
unistr('to money transfers\2014which opens up opportunities to criminals. For'),
'example, payment services apps try to deliver money as quickly as',
unistr('possible to valid users while also ensuring money isn\2019t sent for illicit'),
'purposes or hiding the real receiver by getting sent in circuitous routes. ',
'This necessitates real-time fraud detection.',
'<br/>',
'Because graphs enable lightning-fast answers to queries and because they',
'expand access to data, they have become a popular technology in the realm',
'of real-time fraud detection. When investigating transactions with graph',
unistr('technology, it\2019s not only the transactions that can be modeled in graphs.'),
'Graphs are extremely flexible, which means the heterogeneous surrounding',
'information can also be modeled. For example, client IP addresses, ATM',
'geolocation, card numbers, and account IDs can all become vertices, and',
'the connections can all become edges.'))
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_INFO_ID'
,p_plug_display_when_cond2=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18105507418916069720)
,p_plug_name=>'graph'
,p_region_name=>'graph'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH query as (',
'    -- source and target constitutes the edge direction and thus',
'    -- represents the reporting structure of employee to their managers.',
'    /*',
'    SELECT',
'        EMPLOYEE_ID as source,',
'        MANAGER_ID as target',
'    FROM',
'        EBA_GRAPHVIZ_EMPLOYEES',
'    WHERE',
'        MANAGER_ID IS NOT NULL',
'        */',
'    select ',
'    SRC_ACCT_ID as source , ',
'    DST_ACCT_ID as target  ',
'    from bank_transfers where DESCRIPTION = ''FDTX'' ',
'    -- WHERE TX_TYPE = ''FDTX''  ',
'    --AND MERCHANT_STATE = ''United States of America''',
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
'                ''Amount'' VALUE bank_transfers.Amount',
'                --''JobTitle'' VALUE jobs.JOB_TITLE',
'                --''HireDate'' VALUE employees.HIRE_DATE,',
'                --''JobId'' VALUE jobs.JOB_ID,',
'                --''JobTitle'' VALUE jobs.JOB_TITLE ',
'                --''Country'' VALUE locations.COUNTRY_ID',
'            )',
'        ) AS vertex',
'    FROM',
'        /*',
'        EBA_GRAPHVIZ_EMPLOYEES employees',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON employees.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_DEPARTMENTS departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_LOCATIONS locations ON departments.LOCATION_ID = locations.LOCATION_ID',
'        */',
'        FINBANK_ACCOUNTS finbank_accounts ',
'        LEFT OUTER JOIN EBA_GRAPHVIZ_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID',
'        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID ',
'        --LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.DST_ACCT_ID  ',
'    WHERE',
'        /*',
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
'        */',
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
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P46_INFO_ID'
,p_plug_display_when_cond2=>'1'
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
    '        "label": "${properties.FirstName} ${properties.LastName}",',
    '        "color": "${interpolate.discrete(''properties.JobId'', ''blue'', ''red'', ''green'', ''#244f54'', ''#449287'', ''#62b3b7'', ''#ffda40'', ''#dda831'', ''#e96e4c'', ''#e8b4af'', ''#b3b3b3'', ''#333333'')}",',
    '        "icon": "fa-user",',
    '        "legend": "${properties.JobTitle}",',
    '        "children": {',
    '            "salary": {',
    '                "size": 8,',
    '                "color": "${interpolate.color(''properties.Amount'', ''white'', ''#FB8500'')}",',
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
    '        "icon": "fa-university"',
    '    }',
    '}')),
  'attribute_04', 'force',
  'attribute_05', 'N',
  'attribute_10', 'modes:exploration',
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(341075416182638183)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(105214756982711756)
,p_name=>'P46_INFO_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
