prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Edit/View All Entries'
,p_alias=>'JCPRODUCTS-REPORT'
,p_step_title=>'Edit/View All Entries'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(17252294925589312404)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220103154219'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17252343650389312489)
,p_plug_name=>'Edit/View All Entries'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17252132931765312355)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'JCPRODUCTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Jcproducts Report'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17252343749535312489)
,p_name=>'Jcproducts Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.:::5:P5_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_internal_uid=>17252343749535312489
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252344174335312490)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252344554245312491)
,p_db_column_name=>'DISPENSARY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dispensary'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252344904422312491)
,p_db_column_name=>'ADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252345381260312492)
,p_db_column_name=>'CITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252345793138312492)
,p_db_column_name=>'PROVINCE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Province'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252346157521312492)
,p_db_column_name=>'BRAND'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252346573487312492)
,p_db_column_name=>'PRODUCT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252346914848312493)
,p_db_column_name=>'TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252347352040312493)
,p_db_column_name=>'THCRANGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Thcrange'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252347707724312493)
,p_db_column_name=>'WEIGHT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Weight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252348139572312493)
,p_db_column_name=>'CURRENTSTOCK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Currentstock'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252348516937312494)
,p_db_column_name=>'PRICE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252348978327312494)
,p_db_column_name=>'SALEPRICE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Saleprice'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990D00'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252349349468312494)
,p_db_column_name=>'PERCENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Percent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252349760725312494)
,p_db_column_name=>'SPECIAL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Special'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17252350140040312495)
,p_db_column_name=>'DATE_'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17252416354276312590)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'172524164'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DISPENSARY:ADDRESS:CITY:PROVINCE:BRAND:PRODUCT:TYPE:THCRANGE:WEIGHT:CURRENTSTOCK:PRICE:SALEPRICE:PERCENT:SPECIAL:DATE_'
,p_sort_column_1=>'DISPENSARY'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17252351336757312496)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(17252163996755312362)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17251954519509312319)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(17252255443787312389)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17252350581711312495)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17252343650389312489)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(17252253332936312389)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17252353156829312497)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17252343650389312489)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(17252253235234312389)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17252352282025312497)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17252343650389312489)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17252352725994312497)
,p_event_id=>wwv_flow_api.id(17252352282025312497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17252343650389312489)
);
wwv_flow_api.component_end;
end;
/