prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>16769126531911660025
,p_default_application_id=>118394
,p_default_id_offset=>0
,p_default_owner=>'WKSP_QUACKER'
);
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Stock (GTA only)'
,p_alias=>'STOCK-GTA-ONLY'
,p_step_title=>'Stock (GTA only)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220108201837'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22480252259594454603)
,p_plug_name=>'Flower (3.5g) By Strain (GTA)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(22480252323578454604)
,p_region_id=>wwv_flow_api.id(22480252259594454603)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480252425313454605)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>10
,p_name=>'Total Flower (3.5g) Units'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_,SUM(CURRENTSTOCK) FROM JCPRODUCTS WHERE PROVINCE = ''ON''AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton Hills'',''Milton'',''Oakvill'
||'e'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Bradford'',''Bradford West Gwil'
||'limbury'')  GROUP BY DATE_ ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffffff'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480252553832454606)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'''
||',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'','
||'''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480252655543454607)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>30
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burli'
||'ngton'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Te'
||'cumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480252711393454608)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>40
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'
||''',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'''
||',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480252808865454609)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>50
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','
||'''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'','''
||'New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480252952232454610)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>60
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','''
||'Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''N'
||'ew Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480253044224454611)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>70
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burl'
||'ington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New T'
||'ecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480253101047454612)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>80
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'''
||',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'','
||'''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#462a10'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480253213840454613)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_seq=>90
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','''
||'Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''N'
||'ew Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22480253382021454614)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-medium'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22480253429072454615)
,p_chart_id=>wwv_flow_api.id(22480252323578454604)
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22480253524354454616)
,p_plug_name=>'Flower (7g) By Strain (GTA)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(22480253616186454617)
,p_region_id=>wwv_flow_api.id(22480253524354454616)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480253793143454618)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>10
,p_name=>'Total Flower (7g) Units'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_,SUM(CURRENTSTOCK) FROM JCPRODUCTS WHERE PROVINCE = ''ON''AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'''
||',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Bradford'',''Bradford West Gwilli'
||'mbury'') GROUP BY DATE_ ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffffff'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480253805873454619)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','''
||'Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''N'
||'ew Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480253999827454620)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>30
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burling'
||'ton'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecu'
||'mseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480254010483454621)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>40
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','
||'''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'','''
||'New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480254186890454622)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>50
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''B'
||'urlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''Ne'
||'w Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480254292738454623)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>60
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Bu'
||'rlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New'
||' Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480254314335454624)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>70
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlin'
||'gton'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tec'
||'umseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480254491217454625)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>80
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','''
||'Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''N'
||'ew Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#462a10'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22480254547609454626)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_seq=>90
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Bu'
||'rlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New'
||' Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22480254670558454627)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-medium'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22480254757390454628)
,p_chart_id=>wwv_flow_api.id(22480253616186454617)
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41620363503440226148)
,p_plug_name=>'Pre-Rolls By Strain (GTA)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(22556547126539470981)
,p_region_id=>wwv_flow_api.id(41620363503440226148)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
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
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556553098638470984)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>20
,p_name=>'Total Pre-Roll Units'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Bra'
||'mpton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'
||''') GROUP BY DATE_, TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffffff'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556551860200470983)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>40
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'','''
||'Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'''
||',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556548863400470981)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>50
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton '
||'Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Bradf'
||'ord'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556552457681470984)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>60
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'','
||'''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'
||''',''Bradford'',''Bradford West Gwillimbury'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556549493307470982)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>70
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''H'
||'alton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'','
||'''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>16769126531911660025
,p_default_application_id=>118394
,p_default_id_offset=>0
,p_default_owner=>'WKSP_QUACKER'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556551207105470983)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>80
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Ha'
||'lton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'','''
||'Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556550049014470982)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>90
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton'
||' Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Brad'
||'ford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556550689585470983)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>100
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'','''
||'Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'''
||',''Bradford'',''Bradford West Gwillimbury'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#a63b0a'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556553689459470984)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>110
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Ha'
||'lton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'','''
||'Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556554273743470984)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_seq=>120
,p_name=>'Lemon Cheese'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Lemon Cheese'' AND TYPE=''Pre-Rolls'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''H'
||'alton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'','
||'''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f8fa7c'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556547661695470981)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-medium'
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
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556548241726470981)
,p_chart_id=>wwv_flow_api.id(22556547126539470981)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41620366873371226181)
,p_plug_name=>'Vaporizers (0.5g) By Strain (GTA)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(22556232426497470971)
,p_region_id=>wwv_flow_api.id(41620366873371226181)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
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
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556234754867470973)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>10
,p_name=>'Total Vaporizer (0.5g) Units'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, SUM(CURRENTSTOCK), TYPE  FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton Hills'',''Mil'
||'ton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Bradford'',''Bradf'
||'ord West Gwillimbury'')  GROUP BY DATE_, TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffffff'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556237011130470974)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Vaporizers''  AND WEIGHT=''0.5g''AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whi'
||'tby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumse'
||'th'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556237600725470975)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>40
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g''  AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Ux'
||'bridge'',''Whitby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangevil'
||'le'',''Tecumseth'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556238219886470975)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>50
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Wh'
||'itby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecums'
||'eth'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556238808924470975)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>60
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Vaporizers''  AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whi'
||'tby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumse'
||'th'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556235324204470973)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>70
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Vaporizers''  AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whit'
||'by'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumset'
||'h'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556235808550470974)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>80
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Vaporizers''  AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','
||'''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'','''
||'New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556236438025470974)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>90
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Vaporizers''  AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Wh'
||'itby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecums'
||'eth'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#462a10'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556234113846470972)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_seq=>100
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Vaporizers''  AND WEIGHT=''0.5g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whit'
||'by'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumset'
||'h'',''New Tecumseth'',''Bradford'',''Bradford West Gwillimbury'')  GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556232931461470972)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-medium'
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
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556233503739470972)
,p_chart_id=>wwv_flow_api.id(22556232426497470971)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41620367993088226192)
,p_plug_name=>'Concentrate By Strain (GTA)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(22556239779548470976)
,p_region_id=>wwv_flow_api.id(41620367993088226192)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
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
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556242074850470977)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>10
,p_name=>'Total Concentrate Units'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND TYPE=''Concentrate'' GROUP BY DATE_,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffffff'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556242684662470978)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556243247758470978)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>40
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556243808446470978)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>50
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556244442866470979)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>60
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556245026469470979)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>70
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556245637901470979)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>80
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556246224854470980)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>90
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#462a10'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556241446670470977)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_seq=>100
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Concentrate'' GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556240220771470976)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
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
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556240874231470977)
,p_chart_id=>wwv_flow_api.id(22556239779548470976)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-medium'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41681965099080673083)
,p_plug_name=>'Vaporizers (1.0g) By Strain (GTA)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(22556555132975470985)
,p_region_id=>wwv_flow_api.id(41681965099080673083)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
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
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_time_axis_type=>'enabled'
,p_show_gauge_value=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556556819594470986)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>10
,p_name=>'Total Vaporizer (1.0g) Units'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND TYPE=''Vaporizers''  AND WEIGHT=''1.0g''AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''Burlington'',''Halton Hills'',''Milt'
||'on'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''New Tecumseth'',''Bradford'') GROUP '
||'BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffffff'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556559850852470988)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Vaporizers''  AND WEIGHT=''1.0g''AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whi'
||'tby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumse'
||'th'',''New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>16769126531911660025
,p_default_application_id=>118394
,p_default_id_offset=>0
,p_default_owner=>'WKSP_QUACKER'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556560460025470988)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>30
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Vaporizers'' AND WEIGHT=''1.0g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'',''B'
||'urlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'',''Ne'
||'w Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556557400118470986)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>40
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Vaporizers''  AND WEIGHT=''1.0g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''W'
||'hitby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecum'
||'seth'',''New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556558070871470987)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>50
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Vaporizers''  AND WEIGHT=''1.0g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whi'
||'tby'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumse'
||'th'',''New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556558656803470987)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>60
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Vaporizers''  AND WEIGHT=''1.0g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whit'
||'by'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumset'
||'h'',''New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556559203285470987)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>70
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Vaporizers''  AND WEIGHT=''1.0g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitby'','
||'''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'','''
||'New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556561012182470988)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>80
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Vaporizers'' AND WEIGHT=''1.0g''AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whit'
||'by'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumset'
||'h'',''New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#462a10'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(22556561670683470989)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_seq=>90
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_, PRODUCT,SUM(CURRENTSTOCK), TYPE FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Vaporizers'' AND WEIGHT=''1.0g'' AND CITY IN (''Toronto'',''Ajax'',''Clarington'',''Brock'',''Oshawa'',''Pickering'',''Scugog'',''Uxbridge'',''Whitb'
||'y'',''Burlington'',''Halton Hills'',''Milton'',''Oakville'',''Brampton'',''Caledon'',''Mississauga'',''Aurora'',''East Gwillimbury'',''Georgina'',''King'',''Markham'',''Newmarket'',''Richmond Hill'',''Vaughan'',''Whitchurch-Stouffville'',''Stouffville'',''Mono'',''Orangeville'',''Tecumseth'
||''',''New Tecumseth'',''Bradford'') GROUP BY DATE_, PRODUCT,TYPE ORDER BY DATE_ ASC'
,p_items_value_column_name=>'SUM(CURRENTSTOCK)'
,p_items_label_column_name=>'DATE_'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556555671252470985)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
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
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(22556556241780470986)
,p_chart_id=>wwv_flow_api.id(22556555132975470985)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-medium'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22556562223235470989)
,p_name=>'P13_TITLE'
,p_item_sequence=>10
,p_prompt=>'Stock by Strain(GTA) '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(17252250078138312387)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
