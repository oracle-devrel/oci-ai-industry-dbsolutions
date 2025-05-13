prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Graph Selection'
,p_alias=>'GRAPH-SELECTION'
,p_step_title=>'Graph Selection'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(62722399245879119)
,p_navigation_list_template_id=>wwv_flow_imp.id(62250142950085095)
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15085719463953325466)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--accessibleHeading'
,p_plug_template=>wwv_flow_imp.id(62112010250085005)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This page shows how vertices can be selected individually or in groups, and visualize',
'them in the selection area. The selection area shows only the vertices that the user selected, and thus helps the user isolate and work on them.'))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17841214274884153908)
,p_plug_name=>'Selection Target'
,p_region_name=>'graph2'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
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
  'attribute_12', 'return [];',
  'attribute_14', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17841433457478599217)
,p_plug_name=>'Selection Source'
,p_region_name=>'graph'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62183755337085053)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*  This example uses Dynamic action to set the contents of the second graph ',
'    at run time. The query doesn''t directly contribute to that, except',
'    fetching data to show the graph.',
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
 p_id=>wwv_flow_imp.id(24267176546188727775)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62136132866085027)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'When selection is made in the first graph, the Dynamic Action for selection ',
'gets triggered and the below script gets executed. ',
'',
'<br><br><strong>Dynamic Action script</strong><br>',
'<code>',
'apex.region(''graph2'').self.data = this.data;',
'</code>',
'<br>',
'The script sets the second graphs',
'data with the selection made in the first graph.',
'',
'<br><br>',
'Please note that :page_start and :page_size bind parameters when added to the query, needs the GVT plugin instance''s Attributes > ''SQL Query supports Pagination'' property to be turned on in APEX.<br><br>',
'',
'<strong>First graph Query:</strong><br><br>',
'<code>/*  This example uses Dynamic action to set the contents of the second graph ',
'    at run time. The query doesn''t directly contribute to that, except',
'    fetching data to show the graph.',
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
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76577906183803211)
,p_name=>'Selection'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17841433457478599217)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_GRAPHVIZ|REGION TYPE|selection'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76578407233803213)
,p_event_id=>wwv_flow_imp.id(76577906183803211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region(''graph2'').self.data = this.data;'
);
wwv_flow_imp.component_end;
end;
/
