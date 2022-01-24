prompt --application/shared_components/files/app_icon_min_css
begin
--   Manifest
--     APP STATIC FILES: 118394
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>16769126531911660025
,p_default_application_id=>118394
,p_default_id_offset=>0
,p_default_owner=>'WKSP_QUACKER'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E7B6261636B67726F756E642D696D6167653A75726C28696D61676532766563746F722E737667293B6261636B67726F756E642D7265706561743A6E6F2D7265706561743B6261636B67726F756E642D73697A653A636F7665723B62';
wwv_flow_api.g_varchar2_table(2) := '61636B67726F756E642D706F736974696F6E3A3530253B6261636B67726F756E642D636F6C6F723A233330396664627D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(17259723350952553709)
,p_file_name=>'app-icon.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
