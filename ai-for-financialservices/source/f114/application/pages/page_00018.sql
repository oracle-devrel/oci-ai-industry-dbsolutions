prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'Interaction'
,p_alias=>'INTERACTION'
,p_step_title=>'Interaction'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15097927931443504118)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>wwv_flow_imp.id(62112010250085005)
,p_plug_display_sequence=>10
,p_plug_source=>'This page shows the different ways that you can interact with the graph.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279436638161907946)
,p_plug_name=>'Basic Interaction'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(62145865404085032)
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The below example shows how you can interact with the graph by switching layouts, grouping / ungrouping vertices etc.',
'<br/><br/>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(88811103670842655)
,p_plug_name=>'Interaction'
,p_parent_plug_id=>wwv_flow_imp.id(24279436638161907946)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*  ',
'    Interaction depicted by this example, is achieved via ''Settings'' parameter',
'    controlled via buttons in the page, and isn''t affected by the query.',
'',
'    In the below query, data is selected from database tables and ',
'    made into JSON format that GVT accepts.',
'',
'    The query retrieves vertices and edges of the graph that visualizes ',
'    the reporting structure of employees to their managers.*/',
'    ',
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
'    SYS.DUAL'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17853243194617274193)
,p_plug_name=>'Interaction'
,p_region_name=>'graph'
,p_parent_plug_id=>wwv_flow_imp.id(24279436638161907946)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
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
'    from bank_transfers where DESCRIPTION = ''FDTX''',
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
'                ''JobTitle'' VALUE jobs.JOB_TITLE',
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88811191883842656)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279433554630907915)
,p_plug_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(24279436638161907946)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Interaction depicted in this example, is achieved by changing the ''Settings'' property of the component / plugin at runtime. The buttons in the page ''Force'', ''Radial'' etc has Dynamic actions that updates the Settings value of the component and the gra'
||'ph reflects the change.',
'<br><br><strong>',
'Example:',
'</strong><br>',
'''Force'' button''s dynamic action triggers this:',
'<br>',
'<code>',
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''force'' };',
'</code>',
'<br/>',
'Please note that :page_start and :page_size bind parameters when added to the query, needs the GVT plugin instance''s Attributes > ''SQL Query supports Pagination'' property to be turned on in APEX.<br><br>',
'<strong>Query:</strong>',
'<br>',
'<code>',
'/*  ',
'    Interaction depicted by this example, is achieved via ''Settings'' parameter',
'    controlled via buttons in the page, and isn''t affected by the query.',
'',
'    In the below query, data is selected from database tables and ',
'    made into JSON format that GVT accepts.',
'',
'    The query retrieves vertices and edges of the graph that visualizes ',
'    the reporting structure of employees to their managers.*/',
'    ',
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
'</code>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279436780627907947)
,p_plug_name=>'Expanding Nodes'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(62145865404085032)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The below examples shows how the ''Expand'' function can be used to fetch adjacent elements of a node. ',
'''Expand'' can be triggered on a node by selecting it, and choosing ''Expand'' from the toolbar or the context-menu.',
'<br/><br/>',
''))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(88810887688842653)
,p_plug_name=>'Expand'
,p_parent_plug_id=>wwv_flow_imp.id(24279436780627907947)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*  ',
'    Interaction depicted by this example, is achieved via ''Settings'' parameter',
'    controlled via buttons in the page, and isn''t affected by the query.',
'',
'    In the below query, data is selected from database tables and ',
'    made into JSON format that GVT accepts.',
'',
'    The query retrieves vertices and edges of the graph that visualizes ',
'    the reporting structure of employees to their managers.*/',
'    ',
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
'    SYS.DUAL'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
  'attribute_11', wwv_flow_string.join(wwv_flow_t_varchar2(
    'let fetchedVertexId = Math.floor(Math.random() * 1000 + 1000);',
    'let edgeId = Math.floor(Math.random() * 1000 + 1000);',
    'return {',
    '    vertices: [{',
    '        id: ids[0], // the source/expanded vertex',
    '    }, {',
    '        id: fetchedVertexId,',
    '        properties: {',
    '            FirstName: "Expanded",',
    '            LastName: fetchedVertexId',
    '        }',
    '    }],',
    '    edges: [{ id: edgeId, source: ids[0], target: fetchedVertexId }]',
    '}')),
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279436066693907940)
,p_plug_name=>'Javascript fetching data'
,p_parent_plug_id=>wwv_flow_imp.id(24279436780627907947)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example shows how node expansion can be done, when the expanded data is supplied through javascript.',
'<br/><br/>',
'Attributes > Expand attribute of GVT should be supplied with the javascript, that will fetch data during node ''Expand''.',
'',
'<br/>',
'<br/>',
'<strong>',
'Attributes> Expand ',
'</strong>',
'',
'<br/><br/>',
'// fetch logic randomized. Replace with actual fetched data',
'<br>',
'<code>',
'let fetchedVertexId = Math.floor(Math.random() * 1000 + 1000);',
'let edgeId = Math.floor(Math.random() * 1000 + 1000);',
'return {',
'    vertices: [{',
'        id: ids[0], // the source/expanded vertex',
'    }, {',
'        id: fetchedVertexId,',
'        properties: {',
'            FirstName: "Expanded",',
'            LastName: fetchedVertexId',
'        }',
'    }],',
'    edges: [{ id: edgeId, source: ids[0], target: fetchedVertexId }]',
'}',
'</code>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279436230108907942)
,p_plug_name=>'NEW'
,p_parent_plug_id=>wwv_flow_imp.id(24279436780627907947)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
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
'    from bank_transfers where DESCRIPTION = ''FDTX''',
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
'                ''JobTitle'' VALUE jobs.JOB_TITLE',
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
'    SYS.DUAL'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
  'attribute_11', wwv_flow_string.join(wwv_flow_t_varchar2(
    'let fetchedVertexId = Math.floor(Math.random() * 1000 + 1000);',
    'let edgeId = Math.floor(Math.random() * 1000 + 1000);',
    'return {',
    '    vertices: [{',
    '        id: ids[0], // the source/expanded vertex',
    '    }, {',
    '        id: fetchedVertexId,',
    '        properties: {',
    '            FirstName: "Expanded",',
    '            LastName: fetchedVertexId',
    '        }',
    '    }],',
    '    edges: [{ id: edgeId, source: ids[0], target: fetchedVertexId }]',
    '}')),
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(88810955312842654)
,p_name=>'JSON'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>10
,p_use_as_row_header=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279436360933907943)
,p_plug_name=>'PL/SQL fetching data'
,p_parent_plug_id=>wwv_flow_imp.id(24279436780627907947)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This example shows how node expansion can be done, when the expanded data is supplied through PL/SQL.',
'<br/><br/>',
'Attributes > Expand attribute of GVT should be supplied with the javascript that invokes a process containing the PL/SQL.',
'',
'<br/>',
'<br/>',
'<strong>',
'Attributes> Expand ',
'</strong>',
'',
'<br/>',
'<code>',
'const data = await apex.server.process(''Expand'', {',
'    x01: ids[0]',
'}, { dataType: ''text'' });',
'try {',
'    return JSON.parse(data);',
'} catch (error) {',
'    return [];',
'}',
'</code>',
'',
'<br/><br/>',
'The ''Expand'' process that contains the data fetching PL/SQL, is configured in the Processes tab.',
'',
'<br/></br>',
'<strong> ''Expand'' process</strong>',
'<br/>',
'<code>',
'// fetch logic randomized. Replace with actual fetched data',
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
'</code>'))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24279436611082907945)
,p_plug_name=>'Expand'
,p_parent_plug_id=>wwv_flow_imp.id(24279436780627907947)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*  ',
'    Interaction depicted by this example, is achieved via ''Settings'' parameter',
'    controlled via buttons in the page, and isn''t affected by the query.',
'',
'    In the below query, data is selected from database tables and ',
'    made into JSON format that GVT accepts.',
'',
'    The query retrieves vertices and edges of the graph that visualizes ',
'    the reporting structure of employees to their managers.*/',
'    ',
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
'    SYS.DUAL'))
,p_plug_source_type=>'PLUGIN_GRAPHVIZ'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
  'attribute_11', wwv_flow_string.join(wwv_flow_t_varchar2(
    'const data = await apex.server.process(''Expand'', {',
    '    x01: ids[0]',
    '}, { dataType: ''text'' });',
    'try {',
    '    return JSON.parse(data);',
    '} catch (error) {',
    '    return [];',
    '}',
    '',
    '')),
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(88834134636983367)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'Force'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Force'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Force - Force correlation arrows to point at their inner-related vertices with all vertices ultimately pointing at the root vertex"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(88834445341983375)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'Radial'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Radial'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-network-hub'
,p_button_cattributes=>'title="Radial - Display graph with outer vertices in a circle encompassing inner vertices and ultimately the root vertex centered in the middle"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(88812799702842672)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'Grid'
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
 p_id=>wwv_flow_imp.id(88813519915842679)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'Hierarchical'
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
 p_id=>wwv_flow_imp.id(88834839768983375)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
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
 p_id=>wwv_flow_imp.id(88835291021983376)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
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
 p_id=>wwv_flow_imp.id(88835737338983376)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'First'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'First Name'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-align-left'
,p_button_cattributes=>'title="Change vertices'' labels to display first name only"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(88836066910983377)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'Last'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Last '
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-align-left'
,p_button_cattributes=>'title="Change vertices'' labels to display last name only"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(88836509355983377)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(17853243194617274193)
,p_button_name=>'Full'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62257131305085104)
,p_button_image_alt=>'Full'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-align-left'
,p_button_cattributes=>'title="Change vertices'' labels to display full name"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88840161327983416)
,p_name=>'Force'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88834134636983367)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88840698780983421)
,p_event_id=>wwv_flow_imp.id(88840161327983416)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''force'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88841030967983422)
,p_name=>'Radial'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88834445341983375)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88841476739983422)
,p_event_id=>wwv_flow_imp.id(88841030967983422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''radial'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88841882278983422)
,p_name=>'GroupEdges'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88834839768983375)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88842381325983423)
,p_event_id=>wwv_flow_imp.id(88841882278983422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, groupEdges: true };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88842837344983423)
,p_name=>'UnGroupEdges'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88835291021983376)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88843244674983424)
,p_event_id=>wwv_flow_imp.id(88842837344983423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, groupEdges: false };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88843718392983424)
,p_name=>'First'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88835737338983376)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88844202094983425)
,p_event_id=>wwv_flow_imp.id(88843718392983424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.FirstName}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88844611825983426)
,p_name=>'Last'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88836066910983377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88845088612983426)
,p_event_id=>wwv_flow_imp.id(88844611825983426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.LastName}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88845481655983426)
,p_name=>'Full'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88836509355983377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88846033727983427)
,p_event_id=>wwv_flow_imp.id(88845481655983426)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.styles.vertex.label.text = ''${properties.FirstName} ${properties.LastName}'';',
'self.styles = { ...self.styles };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88812838565842673)
,p_name=>'Grid'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88812799702842672)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88813033511842674)
,p_event_id=>wwv_flow_imp.id(88812838565842673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''grid'' };'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(88813604814842680)
,p_name=>'Hierarchical'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(88813519915842679)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(88813711892842681)
,p_event_id=>wwv_flow_imp.id(88813604814842680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'hierarchical'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const { self } = apex.region(''graph'');',
'self.settings = { ...self.settings, layout: ''hierarchical'' };'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(88839814629983414)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Expand'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE data clob;',
'fetch_vert_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'edge_id NUMBER := round(',
'  DBMS_RANDOM.VALUE (1000, 5000)',
');',
'BEGIN ',
'SELECT ',
'  (',
'    JSON_OBJECT(',
'      ''vertices'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE apex_application.g_x01',
'        ), ',
'        JSON_OBJECT(',
'          ''id'' VALUE fetch_vert_id, ',
'          ''properties'' VALUE JSON_OBJECT(',
'            ''FirstName'' VALUE ''Expanded'', ''LastName'' VALUE fetch_vert_id',
'          )',
'        )',
'      ), ',
'      ''edges'' VALUE JSON_ARRAY(',
'        JSON_OBJECT(',
'          ''id'' VALUE edge_id, ''source'' VALUE apex_application.g_x01, ',
'          ''target'' VALUE fetch_vert_id',
'        )',
'      )',
'    )',
'  ) INTO data ',
'FROM ',
'  SYS.DUAL;',
'htp.p(data);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50539176907197564
);
wwv_flow_imp.component_end;
end;
/
