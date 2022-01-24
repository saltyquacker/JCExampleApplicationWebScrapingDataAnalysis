prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(17252290821906312400)
,p_name=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_last_updated_by=>'SALTYQUACKER.GAMES@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220106005400'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27156728937735850143)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27156729016063850144)
,p_event_id=>wwv_flow_api.id(27156728937735850143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_NEW'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'<div style="color:red;font-size: 25px;font-weight: bold;">***THIS SITE WILL NO LONGER BE UPDATED OR MAINTAINED 2022-01-07***</div>'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
