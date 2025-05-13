prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_name=>'TrackOrder'
,p_alias=>'TRACKORDER'
,p_step_title=>'TrackOrder'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*------------*/',
'.home:before {',
'content : url(#APP_FILES#icons/home.png);',
'}  ',
'.bankcustomer:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.openbankacc:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apply:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.apphistory:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.onlineshop:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.makepayment:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.fundtransfer:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.bankstmt:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.emi:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.atmcash:before{',
'content : url(#APP_FILES#icons/atmcash.png);',
'} ',
'.arch:before{',
'content : url(#APP_FILES#icons/architecturepresentation.png);',
'} ',
'.admin:before{',
'content : url(#APP_FILES#icons/administration.png);',
'} ',
'.aisearch:before{',
'content : url(#APP_FILES#icons/aisearch.png);',
'} ',
'.anmdetect:before{',
'content : url(#APP_FILES#icons/anomalydetection.png);',
'} ',
'.fraud:before{',
'content : url(#APP_FILES#icons/frauddetection.png);',
'} ',
'.moneylaund:before{',
'content : url(#APP_FILES#icons/moneylaundering.png);',
'} ',
'.moneymule:before{',
'content : url(#APP_FILES#icons/moneymules.png);',
'} ',
'.mytask:before{',
'content : url(#APP_FILES#icons/mytasks.png);',
'} ',
'.custanalysis:before{',
'content : url(#APP_FILES#icons/customeranalysis.png);',
'}  ',
'.wfconsole:before{',
'content : url(#APP_FILES#icons/workflowconsle.png);',
'}  ',
'/*------------*/'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(501822730801075)
,p_navigation_list_template_id=>wwv_flow_imp.id(62244795433085092)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8472837113056484)
,p_plug_name=>'Track'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62117175029085013)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_body_html      CLOB;',
'-- l_lat varchar2(200) := :P77_LAT;',
'-- l_lang varchar2(200) := :P77_LONG;',
'',
'l_lat varchar2(200) := ''47.24998'';',
'l_lang varchar2(200) := ''122.48963'';',
'l_vehicles_img varchar2(200) := ''#APP_FILES#retailimages/icons/bike3.png'';',
'l_speed number := 0;',
'l_mode varchar2(200);',
'',
'c_latitude number;',
'c_longitude number; ',
's_latitude number;',
's_longitude number;',
'',
'v_delcharges number;',
'',
'BEGIN',
'',
'    select "MODE" as Delivery,  C_LATITUDE, C_LONGITUDE,  S_LATITUDE, S_LONGITUDE, DELIVERY_CHARGES into ',
'            l_mode, c_latitude, c_longitude, s_latitude, s_longitude, v_delcharges  from PIZZA_ORDER where SESSID = V(''SESSION'');',
'',
'    if v_delcharges >= 10 and (c_latitude > s_latitude) then',
'        l_speed := 10;',
'        l_vehicles_img := ''#APP_FILES#retailimages/icons/truck1_f.png'';  ',
'    elsif v_delcharges >= 10 and (c_latitude <= s_latitude)  then',
'        l_speed := 10;',
'        l_vehicles_img := ''#APP_FILES#retailimages/icons/truck1_r.png'';',
'    elsif v_delcharges < 10 and (c_latitude > s_latitude)  then',
'        l_speed := 10;',
'        l_vehicles_img := ''#APP_FILES#retailimages/icons/bike_r.png'';',
'    elsif v_delcharges < 10 and (c_latitude <= s_latitude)  then',
'        l_speed := 10;',
'        l_vehicles_img := ''#APP_FILES#retailimages/icons/bike_f.png'';',
'    end if;',
'',
'    l_body_html := l_body_html || ''  ',
'    <head> ',
'    <link rel="stylesheet" href="#APP_FILES#retailimages/files/leaflet.css" />',
'    <link rel="stylesheet" href="#APP_FILES#retailimages/files/leaflet-routing-machine.css" /> ',
'    <script src="#APP_FILES#retailimages/files/leaflet.js"></script>',
'    <script src="#APP_FILES#retailimages/files/leaflet-routing-machine.js"></script>',
'	<style>',
'		body {',
'			margin: 0;',
'			padding: 0;',
'		}',
'	</style>',
'',
'</head>',
'',
' <div id="map" style="width:100%; height: 100vh"></div>    ',
'	<script> ',
'        var map = L.map(''''map'''').setView(["''||c_latitude||''", "''||c_longitude||''"], 11);',
'		mapLink = "<a href=''''http://openstreetmap.org''''>OpenStreetMap</a>";',
'		L.tileLayer(''''http://{s}.tile.osm.org/{z}/{x}/{y}.png'''', { attribution: ''''Leaflet &copy; '''' + mapLink + '''', contribution''''  , maxZoom: 25 }).addTo(map);',
'',
'		var taxiIcon = L.icon({',
'			iconUrl: ''''''||l_vehicles_img||'''''',',
'			iconSize: [70, 70]',
'		})',
'',
'		var marker = L.marker(["''||s_latitude||''", "''||s_longitude||''"], { icon: taxiIcon }).addTo(map);',
'',
'		L.Routing.control(',
'            {',
'                waypoints: [',
'                    L.latLng("''||c_latitude||''", "''||c_longitude||''"),',
'                    L.latLng("''||s_latitude||''", "''||s_longitude||''") ',
'                ]',
'            }',
'        ).on(''''routesfound''''  , function (e) {',
'            e.routes[0].coordinates.forEach(function(coord, index){',
'               setTimeout(() => {',
'                    marker.setLatLng([coord.lat, coord.lng])',
'               }, ''||l_speed||'' * index);     ',
'            })',
'        })',
'        .addTo(map);',
'',
'	</script>',
'	 ',
'     ''; ',
'',
'     Htp.p(l_body_html);',
'',
'     UPDATE PIZZA_ORDER SET ORDER_STATUS = ''Delivered''  where SESSID = V(''SESSION'');',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp.component_end;
end;
/
