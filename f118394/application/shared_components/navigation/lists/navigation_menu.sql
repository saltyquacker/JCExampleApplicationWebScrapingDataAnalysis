prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>16769126531911660025
,p_default_application_id=>118394
,p_default_id_offset=>0
,p_default_owner=>'WKSP_QUACKER'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(17251956378037312319)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17252317390615312432)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Product Search (ONTARIO)'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19063709891874754387)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Stock By Strain'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(17252317390615312432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29079903568159603194)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Stores By Strain'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(17252317390615312432)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28177256942655679903)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Product Search (GTA only)'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22556216495688470960)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Stock (GTA only)'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(28177256942655679903)
,p_security_scheme=>wwv_flow_api.id(17252294064871312404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17862001705962755097)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Dispensary Search'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-search'
,p_security_scheme=>wwv_flow_api.id(17252294064871312404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10,2,7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18583063177086141527)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Map'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(17862001705962755097)
,p_security_scheme=>wwv_flow_api.id(17252294064871312404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18742235891407890373)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Graph'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(17862001705962755097)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17252343020305312488)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Edit/View All Entries'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-certificate'
,p_security_scheme=>wwv_flow_api.id(17252294064871312404)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19671504368897085285)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'OCS'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-bag'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,9,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19672114279669118372)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Graph'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(19671504368897085285)
,p_security_scheme=>wwv_flow_api.id(17252294064871312404)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19712575051727431866)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Map'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(19671504368897085285)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.component_end;
end;
/
