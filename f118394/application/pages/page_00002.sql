prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Dispensary Map'
,p_alias=>'DISPENSARY-MAP'
,p_step_title=>'Dispensary Map'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(17252294925589312404)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220103154256'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18583063743359141528)
,p_plug_name=>'Dispensary Map'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(17252140355560312356)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'TABLE'
,p_query_table=>'MAPJC'
,p_include_rowid_column=>false
,p_plug_source_type=>'PLUGIN_COM.JK64.REPORT_GOOGLE_MAP_R1'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'400'
,p_attribute_02=>'CLUSTER'
,p_attribute_03=>'13'
,p_attribute_04=>'PAN_ON_CLICK:PAN_ALLOWED:ZOOM_ALLOWED:SPINNER:DETAILED_MOUSE_EVENTS'
,p_attribute_05=>'5'
,p_attribute_06=>'0,0'
,p_attribute_22=>'ROADMAP'
,p_attribute_24=>'Y'
,p_attribute_25=>'auto'
);
wwv_flow_api.component_end;
end;
/
