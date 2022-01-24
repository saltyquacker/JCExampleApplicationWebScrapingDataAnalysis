prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'HelpText'
,p_alias=>'HELPTEXT'
,p_page_mode=>'MODAL'
,p_step_title=>'HelpText'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220106002356'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27156728166093850135)
,p_name=>'P12_INFO'
,p_item_sequence=>10
,p_prompt=>'Authorized to Open: Dispensary authorized to open under AGCO''s retail regulations.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(17252250078138312387)
,p_item_icon_css_classes=>'fa-info-circle'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27156728394838850137)
,p_name=>'P12_INFO2'
,p_item_sequence=>20
,p_prompt=>'In Progress: Dispensary applying for new applications.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(17252250078138312387)
,p_item_icon_css_classes=>'fa-info-circle'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27156728422043850138)
,p_name=>'P12_INFO2_1'
,p_item_sequence=>30
,p_prompt=>'Public Notice: Dispensary application being withdrawn, renewed, suspended or re-evaluated.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(17252250078138312387)
,p_item_icon_css_classes=>'fa-info-circle'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.component_end;
end;
/
