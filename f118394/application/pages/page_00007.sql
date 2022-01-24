prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Dispensary Graph'
,p_alias=>'TEST-LINE-GRAPH'
,p_step_title=>'Dispensary Graph'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220103160527'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18742236396617890375)
,p_plug_name=>'Active Dispensaries (Canada) WIP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(18742236774294890376)
,p_region_id=>wwv_flow_api.id(18742236396617890375)
,p_chart_type=>'line'
,p_title=>'Active Dispensaries (Canada)'
,p_height=>'500'
,p_animation_on_display=>'zoom'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(18742238434816890377)
,p_chart_id=>wwv_flow_api.id(18742236774294890376)
,p_seq=>10
,p_name=>'Dispensaries With Product'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT ADDRESS) AS "# Dispensaries With Product" from JCPRODUCTS WHERE BRAND <> ''NO PRODUCTS''  AND DATE_>=trunc(SYSDATE-7) GROUP BY DATE_ ;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_group_name_column_name=>'# Dispensaries With Product'
,p_group_short_desc_column_name=>'Date'
,p_items_label_column_name=>'Date'
,p_items_short_desc_column_name=>'# Dispensaries With Product'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(17816312228529793947)
,p_chart_id=>wwv_flow_api.id(18742236774294890376)
,p_seq=>20
,p_name=>'Dispensaries Without Product'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT ADDRESS) AS "# Dispensaries With Product" from JCPRODUCTS WHERE BRAND = ''NO PRODUCTS''  AND DATE_>=trunc(SYSDATE-7) GROUP BY DATE_ ;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_group_name_column_name=>'# Dispensaries With Product'
,p_group_short_desc_column_name=>'Date'
,p_items_label_column_name=>'Date'
,p_items_short_desc_column_name=>'# Dispensaries With Product'
,p_color=>'#b71919'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(18742237205927890376)
,p_chart_id=>wwv_flow_api.id(18742236774294890376)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
,p_max=>7
,p_format_type=>'date-short'
,p_numeric_pattern=>'DD/MM/YYYY'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(18742237821287890377)
,p_chart_id=>wwv_flow_api.id(18742236774294890376)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'# of Dispensaries'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19126179806914205125)
,p_plug_name=>'Active Dispensaries (Ontario) WIP'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(19126179909719205126)
,p_region_id=>wwv_flow_api.id(19126179806914205125)
,p_chart_type=>'line'
,p_title=>'Active Dispensaries (Ontario)'
,p_height=>'500'
,p_animation_on_display=>'zoom'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(19126180011824205127)
,p_chart_id=>wwv_flow_api.id(19126179909719205126)
,p_seq=>10
,p_name=>'Dispensaries With Product'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DATE_ AS "Date", COUNT(DISTINCT ADDRESS) AS "# Dispensaries With Product", PROVINCE from JCPRODUCTS WHERE BRAND <> ''NO PRODUCTS'' AND PROVINCE = ''ON''   AND DATE_>=trunc(SYSDATE-7) GROUP BY DATE_ ,PROVINCE;',
''))
,p_items_value_column_name=>'# Dispensaries With Product'
,p_group_name_column_name=>'# Dispensaries With Product'
,p_group_short_desc_column_name=>'Date'
,p_items_label_column_name=>'Date'
,p_items_short_desc_column_name=>'# Dispensaries With Product'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(19126180140325205128)
,p_chart_id=>wwv_flow_api.id(19126179909719205126)
,p_seq=>20
,p_name=>'Dispensaries Without Product'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT ADDRESS) AS "# Dispensaries With Product", PROVINCE from JCPRODUCTS WHERE BRAND = ''NO PRODUCTS'' AND PROVINCE = ''ON''  AND DATE_>=trunc(SYSDATE-7)  GROUP BY DATE_,PROVINCE ;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_group_name_column_name=>'# Dispensaries With Product'
,p_group_short_desc_column_name=>'Date'
,p_items_label_column_name=>'Date'
,p_items_short_desc_column_name=>'# Dispensaries With Product'
,p_color=>'#b71919'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(19126180292520205129)
,p_chart_id=>wwv_flow_api.id(19126179909719205126)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
,p_max=>7
,p_format_type=>'date-short'
,p_numeric_pattern=>'DD/MM/YYYY'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(19126180383912205130)
,p_chart_id=>wwv_flow_api.id(19126179909719205126)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'# of Dispensaries'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.component_end;
end;
/
