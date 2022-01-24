prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Stores By Strain'
,p_alias=>'CARRY-BY-STRAIN'
,p_step_title=>'Stores By Strain'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220111183918'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29073383309184544223)
,p_plug_name=>'Flower (7g)'
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
 p_id=>wwv_flow_api.id(29073383451326544224)
,p_region_id=>wwv_flow_api.id(29073383309184544223)
,p_chart_type=>'line'
,p_title=>'Flower (7g) by Strain '
,p_height=>'500'
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
,p_legend_font_size=>'14'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073383569483544225)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>10
,p_name=>'Total Dispensaries With Flower (7g) In Stock'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province ',
' FROM JCPRODUCTS WHERE PROVINCE = ''ON''AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GROUP BY DATE_ ,TYPE,province;'))
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#000000'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073383603739544226)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST)'
||' GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073383700288544227)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>30
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GROUP '
||'BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073383852990544228)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>40
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST'
||') GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073383948567544229)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>50
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) '
||'GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073384035426544230)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>60
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) G'
||'ROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073384194708544231)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>70
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GROUP'
||' BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073384254837544232)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>80
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST)'
||' GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#a63b0a'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073384365948544233)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>90
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) G'
||'ROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073384484894544234)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_seq=>100
,p_name=>'Lemon Cheese'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Lemon Cheese'' AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) '
||'GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f8fa7c'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29073384536395544235)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
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
 p_id=>wwv_flow_api.id(29073384610155544236)
,p_chart_id=>wwv_flow_api.id(29073383451326544224)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'# Dispensaries'
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
 p_id=>wwv_flow_api.id(29073384703278544237)
,p_plug_name=>'Vaporizers (0.5g)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT DATE_, PRODUCT,COUNT(PRODUCT) FROM JCPRODUCTS WHERE PROVINCE = ''ON'' GROUP BY DATE_, PRODUCT '
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(29073384839228544238)
,p_region_id=>wwv_flow_api.id(29073384703278544237)
,p_chart_type=>'line'
,p_title=>'Vaporizers (0.5g) by Strain '
,p_height=>'500'
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
,p_legend_font_size=>'14'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073384944311544239)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>10
,p_name=>'Total Dispensaries With Vaporizers (0.5g) In Stock'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province ',
' FROM JCPRODUCTS WHERE PROVINCE = ''ON''AND TYPE=''Flower'' AND WEIGHT=''7g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GROUP BY DATE_ ,TYPE,province;'))
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#000000'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385042996544240)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>20
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17'
||'_LIST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385121416544241)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>30
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) '
||'GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385270099544242)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>40
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P1'
||'7_LIST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385322250544243)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>50
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17_'
||'LIST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385468881544244)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>60
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17_L'
||'IST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385547632544245)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>70
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST)'
||' GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385678766544246)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>80
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17'
||'_LIST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#a63b0a'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385714363544247)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>90
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17_L'
||'IST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29073385835968544248)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_seq=>100
,p_name=>'Lemon Cheese'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Lemon Cheese'' AND TYPE=''Vaporizers'' AND WEIGHT=''0.5g'' AND DATE_>=trunc(SYSDATE-:P17_'
||'LIST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f8fa7c'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29073385920860544249)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
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
 p_id=>wwv_flow_api.id(29073386070525544250)
,p_chart_id=>wwv_flow_api.id(29073384839228544238)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'# Dispensaries'
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
 p_id=>wwv_flow_api.id(48144334783014357926)
,p_plug_name=>'Pre-Rolls'
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
 p_id=>wwv_flow_api.id(29079949313357603238)
,p_region_id=>wwv_flow_api.id(48144334783014357926)
,p_chart_type=>'line'
,p_title=>'Pre-Rolls By Strain'
,p_height=>'500'
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
,p_legend_rendered=>'on'
,p_legend_title=>'Strains'
,p_legend_position=>'auto'
,p_legend_font_size=>'14'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079955405765603242)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>20
,p_name=>'Total Dispensaries With Pre-Rolls In Stock'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province from JCPRODUCTS WHERE Type = ''Pre-Rolls'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TYPE,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#000000'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079954235928603241)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>40
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Acapulco Gold'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON'' GROUP BY DATE_ ,'
||'TYPE,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079951039677603239)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>50
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''French'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TYPE,pro'
||'duct,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079954870896603241)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>60
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Blueberry Kush'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,'
||'TYPE,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079951620369603239)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>70
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Unicorn Poop'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TY'
||'PE,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079953435975603241)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>80
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Cherry Bomb'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TYP'
||'E,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079952208106603240)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>90
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Pyramid'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TYPE,pr'
||'oduct,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079952891874603240)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>100
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Critical Kush'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,T'
||'YPE,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#a63b0a'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079956029996603242)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>110
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Tang Breath'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TYP'
||'E,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079956610858603243)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_seq=>120
,p_name=>'Lemon Cheese'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,product ,province from JCPRODUCTS WHERE Type = ''Pre-Rolls''AND PRODUCT = ''Lemon Cheese'' AND DATE_ >=trunc(SYSDATE-:P17_LIST) AND province = ''ON''GROUP BY DATE_ ,TY'
||'PE,product,province;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f8fa7c'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29079949822161603238)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
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
 p_id=>wwv_flow_api.id(29079950479689603239)
,p_chart_id=>wwv_flow_api.id(29079949313357603238)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'# Dispensaries'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48144335981036357937)
,p_plug_name=>'Flower (3.5g)'
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
 p_id=>wwv_flow_api.id(29079926393308603222)
,p_region_id=>wwv_flow_api.id(48144335981036357937)
,p_chart_type=>'line'
,p_title=>'Flower (3.5g) by Strain '
,p_height=>'500'
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
,p_legend_font_size=>'14'
,p_time_axis_type=>'enabled'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079932869083603227)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>20
,p_name=>'Total Dispensaries With Flower (3.5g) In Stock'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province ',
' FROM JCPRODUCTS WHERE PROVINCE = ''ON''AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GROUP BY DATE_ ,TYPE,province;'))
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#000000'
,p_line_style=>'dashed'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079928635228603223)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>40
,p_name=>'Acapulco Gold'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Acapulco Gold'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIS'
||'T) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f6c429'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079929214125603224)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>50
,p_name=>'French Macaron'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''French'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GROU'
||'P BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#eb8cfe'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079929816095603224)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>60
,p_name=>'Blueberry Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Blueberry Kush'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LI'
||'ST) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7ca4fa'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079930484324603225)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>70
,p_name=>'Unicorn Poop'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Unicorn Poop'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST'
||') GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#7f50ff'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079931069807603225)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>80
,p_name=>'Cherry Bomb'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Cherry Bomb'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST)'
||' GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ff9e89'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079931647088603226)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>90
,p_name=>'Pyramid'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Pyramid'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST) GRO'
||'UP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#8fffb6'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079928097508603223)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>100
,p_name=>'Critical Kush'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Critical Kush'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIS'
||'T) GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#a63b0a'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079933414727603227)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>110
,p_name=>'Tang Breath'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Tang Breath'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST)'
||' GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#ffac12'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(29079932269121603226)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_seq=>120
,p_name=>'Lemon Cheese'
,p_data_source_type=>'SQL'
,p_data_source=>'SELECT DATE_ AS "Date", COUNT(DISTINCT DISPENSARY) AS "# Dispensaries With Product",Type,province,WEIGHT,product FROM JCPRODUCTS WHERE PROVINCE = ''ON'' AND PRODUCT = ''Lemon Cheese'' AND TYPE=''Flower'' AND WEIGHT=''3.5g'' AND DATE_>=trunc(SYSDATE-:P17_LIST'
||') GROUP BY DATE_ ,TYPE,province,WEIGHT,product;'
,p_ajax_items_to_submit=>'P17_LIST'
,p_items_value_column_name=>'# Dispensaries With Product'
,p_items_label_column_name=>'Date'
,p_color=>'#f8fa7c'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(29079926848033603222)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Date'
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
 p_id=>wwv_flow_api.id(29079927422534603223)
,p_chart_id=>wwv_flow_api.id(29079926393308603222)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'# Dispensaries'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29080581035351603261)
,p_name=>'P17_TITLE'
,p_item_sequence=>20
,p_prompt=>'Stores with Product In Stock (ONTARIO)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_field_template=>wwv_flow_api.id(17252250078138312387)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29080581438049603262)
,p_name=>'P17_LIST'
,p_is_required=>true
,p_item_sequence=>40
,p_prompt=>'SELECT DATE RANGE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Last 7 days;7,Last 30 days;30'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(17252250078138312387)
,p_item_icon_css_classes=>'fa-calendar-search'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.component_end;
end;
/
