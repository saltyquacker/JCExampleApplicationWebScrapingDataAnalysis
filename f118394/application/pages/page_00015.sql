prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Stores Without Quantity'
,p_alias=>'STORES-WITHOUT-QUANTITY'
,p_page_mode=>'MODAL'
,p_step_title=>'Excluded'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220111170638'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(29063600747558368818)
,p_name=>'Stores with No Quantity Listed (Stock:0)'
,p_template=>wwv_flow_api.id(17252140355560312356)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'SELECT DISTINCT dispensary, address,city,province FROM JCPRODUCTS WHERE currentstock =0 AND DATE_=trunc(SYSDATE)'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(17252208754552312373)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29063601553183368819)
,p_query_column_id=>1
,p_column_alias=>'DISPENSARY'
,p_column_display_sequence=>20
,p_column_heading=>'Dispensary'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29073381159204544201)
,p_query_column_id=>2
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>30
,p_column_heading=>'Address'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29073381257363544202)
,p_query_column_id=>3
,p_column_alias=>'CITY'
,p_column_display_sequence=>40
,p_column_heading=>'City'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29073381300509544203)
,p_query_column_id=>4
,p_column_alias=>'PROVINCE'
,p_column_display_sequence=>50
,p_column_heading=>'Province'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
