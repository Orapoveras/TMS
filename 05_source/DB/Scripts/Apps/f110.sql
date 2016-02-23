set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>16183023117749526
,p_default_application_id=>110
,p_default_owner=>'SCASSETS_SCHEMA'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 110 - Scassets_sketch_05
--
-- Application Export:
--   Application:     110
--   Name:            Scassets_sketch_05
--   Date and Time:   16:32 Tuesday February 23, 2016
--   Exported By:     SCASSETS_ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     102260621005783
--

-- Application Statistics:
--   Pages:                     33
--     Items:                   80
--     Computations:             3
--     Validations:              2
--     Processes:               47
--     Regions:                 74
--     Buttons:                 69
--     Dynamic Actions:          3
--   Shared Components:
--     Logic:
--       Items:                  1
--       Computations:           1
--     Navigation:
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:             32
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   2
--       Shortcuts:              2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,110)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SCASSETS_SCHEMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Scassets_sketch_05')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_110')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6853C0F812D117B372DD07A59D160436F1A750DB30BECFBFA75ACE9FFAB337F4'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'BROWSER'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH24:MI'
,p_timestamp_format=>'DD-MON-YYYY HH24.MI.SSXFF'
,p_timestamp_tz_format=>'DD-MON-YYYY HH24.MI.SSXFF TZR'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(23813738664469253)
,p_application_tab_set=>0
,p_logo_image=>'#WORKSPACE_IMAGES#orapoveras.png'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0.1 alpha'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Управление транспортом'
,p_substitution_string_02=>'APP_FAVICONS'
,p_substitution_value_02=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application-16x16.png"><link rel="icon" sizes="32x32" '
||'href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application.png">'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160223161056'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23771331330469009)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23814971570469281)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home [&A01.]'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'RunningSecPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3,4,5,6,7,9,32,43'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24003366609359810)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'TripsLogPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24008315028466530)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'FuellingLogPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24012747429524963)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'FigurationWayBillPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24014661500707111)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'CalcFuelConsumptionPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24023895742805964)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'WayBillLogPageEntryDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25794215225056612)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'WayBillLogPage2DNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32,33,34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26014167067217761)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'WayBillLogPage3DNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38,39'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26181419915282510)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'WayBillLogPage4DNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24001320158301144)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'43,44'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24048035193187394)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'ServiceSecPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,11,13,14,16,18,30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24102289866182346)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'BatteriesLogPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24048035193187394)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24117775317457957)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'TiresLogPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24048035193187394)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24132345056561667)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'InsurancesLogPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24048035193187394)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25617370999233036)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'BreakageServiceLogPage2DNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24048035193187394)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30,31'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24235928989306687)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'FileCabinetSecPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,22,28'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24245175898464545)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'VehiclesPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24235928989306687)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24266780225514268)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'FuellingLogPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24235928989306687)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24295545939715247)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'DriversPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(24235928989306687)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24310079102789056)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'ParkingsPageDNMEntry'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(24235928989306687)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28,29'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23813463607469206)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23813657746469245)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(24250851430769605)
,p_name=>'FileCabinetTabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24251009443769608)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Vehicles'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-automobile'
,p_list_text_01=>'View and edit file Vehicles'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24251465673769610)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Batteries'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-bolt'
,p_list_text_01=>'List of all batteries that purchased and used'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24251887270769611)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Drivers'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-male'
,p_list_text_01=>'Employees who can be a car drivers'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24252207211769611)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Fuelling log'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tint'
,p_list_text_01=>'Fuelling'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24252615803769611)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Parkings'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-square'
,p_list_text_01=>'All car parkings'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24253031605769612)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tires'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paw'
,p_list_text_01=>'Just all tires'
,p_list_text_02=>'chartIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23771067735469006)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23771190817469008)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23771290262469009)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(24188262727055201)
,p_name=>'A01'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(24189756038089802)
,p_computation_sequence=>10
,p_computation_item=>'A01'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tvehicles'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25770365198445916)
,p_lov_name=>'SELPERSONLOV'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "NAME" as d,',
'       personid as r',
'  from tpersons',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25576625889549635)
,p_lov_name=>'SELVEHICLELOV'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(23814842776469277)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23815209113469283)
,p_parent_id=>0
,p_short_name=>'HomeEntry'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'RunningSecPageEntry'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24004420778359813)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'TripsLogPageEntry'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24009579073466535)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'FuellingLogPageEntry'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24013982314524965)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'FigurationWayBillPageEntry'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24020411285707138)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'CalcFuelConsumptionPageEntry'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24024913015805970)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'WayBillLogPageEntry'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24081842045044610)
,p_parent_id=>0
,p_short_name=>'ServiceSecPageEntry'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24107388770182380)
,p_parent_id=>wwv_flow_api.id(24081842045044610)
,p_short_name=>'BatteriesLogPageEntry'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24108507051182382)
,p_parent_id=>wwv_flow_api.id(24107388770182380)
,p_short_name=>'BatteriesLogEditPageEntry'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24121266147457980)
,p_parent_id=>wwv_flow_api.id(24081842045044610)
,p_short_name=>'TiresLogPageEntry'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24122462578457982)
,p_parent_id=>wwv_flow_api.id(24121266147457980)
,p_short_name=>'TiresLogEditPageEntry'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24138270459561709)
,p_parent_id=>wwv_flow_api.id(24081842045044610)
,p_short_name=>'InsurancesLogPageEntry'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24139443388561711)
,p_parent_id=>wwv_flow_api.id(24138270459561709)
,p_short_name=>'InsurancesLogEditPageEntry'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24237216948306697)
,p_short_name=>'FileCabinetSecPageEntry'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24247919363464574)
,p_parent_id=>wwv_flow_api.id(24237216948306697)
,p_short_name=>'VehiclesPageEntry'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24249116890464577)
,p_parent_id=>wwv_flow_api.id(24247919363464574)
,p_short_name=>'VehiclesEditPageEntry'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24270190073514292)
,p_parent_id=>wwv_flow_api.id(24237216948306697)
,p_short_name=>'FuellingLogPageEntry'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24271357900514296)
,p_parent_id=>wwv_flow_api.id(24270190073514292)
,p_short_name=>'FuellingLogEditPageEntry'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24298728191715255)
,p_parent_id=>wwv_flow_api.id(24237216948306697)
,p_short_name=>'DriversPageEntry'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24299933457715256)
,p_parent_id=>wwv_flow_api.id(24298728191715255)
,p_short_name=>'DriversEditPageEntry'
,p_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24315538068789067)
,p_parent_id=>wwv_flow_api.id(24237216948306697)
,p_short_name=>'ParkingsPageEntry'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24316700552789069)
,p_parent_id=>wwv_flow_api.id(24315538068789067)
,p_short_name=>'ParkingsEditPageEntry'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25621631871233066)
,p_parent_id=>wwv_flow_api.id(24081842045044610)
,p_short_name=>'BreakageServiceLogPage2Entry'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25622807281233070)
,p_parent_id=>wwv_flow_api.id(25621631871233066)
,p_short_name=>'BreakageServiceLogEditPage2'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25827508046056755)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'WayBillLogPage2Entry'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25828203601056759)
,p_parent_id=>wwv_flow_api.id(25827508046056755)
,p_short_name=>'WayBillLogEditPage2Entry'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25829493356056761)
,p_parent_id=>wwv_flow_api.id(25828203601056759)
,p_short_name=>'TripsLogEditPage2Entry'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26047178962217848)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'WayBillLogPage3Entry'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26048366459217853)
,p_parent_id=>wwv_flow_api.id(26185336423282532)
,p_short_name=>'WayBillLogEditPage3Entry'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26185336423282532)
,p_parent_id=>wwv_flow_api.id(24002153008301169)
,p_short_name=>'WayBillLogPage4Entry'
,p_link=>'f?p=&APP_ID.:43:&SESSION.'
,p_page_id=>43
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26186585099282536)
,p_parent_id=>wwv_flow_api.id(26185336423282532)
,p_short_name=>'WayBillLogEditPage4'
,p_link=>'f?p=&APP_ID.:44:&SESSION.'
,p_page_id=>44
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23771484596469020)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23771510346469029)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23771695387469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23771736905469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23771896245469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23771956544469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772093415469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772195837469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772269899469030)
,p_page_template_id=>wwv_flow_api.id(23771484596469020)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23772395201469039)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772469200469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772527853469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772619264469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772730616469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772870880469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23772953113469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773097907469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773162054469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773282482469040)
,p_page_template_id=>wwv_flow_api.id(23772395201469039)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23773393729469041)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773411821469041)
,p_page_template_id=>wwv_flow_api.id(23773393729469041)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773518257469041)
,p_page_template_id=>wwv_flow_api.id(23773393729469041)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23773676063469041)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773746236469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773819461469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23773955682469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774043187469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774100682469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774298106469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774306687469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774413953469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774524384469042)
,p_page_template_id=>wwv_flow_api.id(23773676063469041)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23774684886469043)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774700125469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774831854469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23774961764469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775052368469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775105384469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775233957469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775307946469044)
,p_page_template_id=>wwv_flow_api.id(23774684886469043)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23775425231469044)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775512793469045)
,p_page_template_id=>wwv_flow_api.id(23775425231469044)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775602253469045)
,p_page_template_id=>wwv_flow_api.id(23775425231469044)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775736808469045)
,p_page_template_id=>wwv_flow_api.id(23775425231469044)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23775879809469045)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23775942396469046)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776065471469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776191186469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776281720469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776317247469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776438123469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776534448469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776654751469047)
,p_page_template_id=>wwv_flow_api.id(23775879809469045)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23776719012469048)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776873779469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23776941471469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777067424469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777148035469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777218178469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777345462469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777481083469049)
,p_page_template_id=>wwv_flow_api.id(23776719012469048)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23777528360469049)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777673052469050)
,p_page_template_id=>wwv_flow_api.id(23777528360469049)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777730276469050)
,p_page_template_id=>wwv_flow_api.id(23777528360469049)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23777887751469050)
,p_page_template_id=>wwv_flow_api.id(23777528360469049)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23808261789469144)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23808383794469147)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23808476517469147)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23777998554469051)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23778085355469060)
,p_plug_template_id=>wwv_flow_api.id(23777998554469051)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23779493018469069)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23779529478469070)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23779697061469070)
,p_plug_template_id=>wwv_flow_api.id(23779529478469070)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23779716397469070)
,p_plug_template_id=>wwv_flow_api.id(23779529478469070)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23780498616469073)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23780553161469073)
,p_plug_template_id=>wwv_flow_api.id(23780498616469073)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23780621269469073)
,p_plug_template_id=>wwv_flow_api.id(23780498616469073)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23783807889469079)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23783924155469079)
,p_plug_template_id=>wwv_flow_api.id(23783807889469079)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23784095436469079)
,p_plug_template_id=>wwv_flow_api.id(23783807889469079)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23785970146469082)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23786002482469082)
,p_plug_template_id=>wwv_flow_api.id(23785970146469082)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23786178016469082)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23786204580469082)
,p_plug_template_id=>wwv_flow_api.id(23786178016469082)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23787082064469083)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23787331207469084)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23787486831469084)
,p_plug_template_id=>wwv_flow_api.id(23787331207469084)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23787520712469085)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23787602881469085)
,p_plug_template_id=>wwv_flow_api.id(23787520712469085)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23787749854469085)
,p_plug_template_id=>wwv_flow_api.id(23787520712469085)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23789634065469088)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23789735797469088)
,p_plug_template_id=>wwv_flow_api.id(23789634065469088)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23789816582469088)
,p_plug_template_id=>wwv_flow_api.id(23789634065469088)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23790833953469089)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23791382202469090)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23791440705469090)
,p_plug_template_id=>wwv_flow_api.id(23791382202469090)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23799588562469111)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23801216460469123)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23803340966469126)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23804129649469127)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23805080804469129)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23805547283469130)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23805630952469130)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23805712104469131)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23805870659469132)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23806760269469134)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23807203915469135)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23791914099469093)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23792084899469097)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23793710012469100)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23795899597469103)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23796218075469104)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23796331659469105)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(23796331659469105)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23797607715469107)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23798655526469109)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23807768938469137)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23807818149469141)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23807928687469141)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23808007372469142)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23808166166469142)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(23808831762469149)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(23809038806469156)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(23808975181469151)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(23809452489469172)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(23776719012469048)
,p_default_dialog_template=>wwv_flow_api.id(23775425231469044)
,p_error_template=>wwv_flow_api.id(23773393729469041)
,p_printer_friendly_template=>wwv_flow_api.id(23776719012469048)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(23773393729469041)
,p_default_button_template=>wwv_flow_api.id(23808383794469147)
,p_default_region_template=>wwv_flow_api.id(23787520712469085)
,p_default_chart_template=>wwv_flow_api.id(23787520712469085)
,p_default_form_template=>wwv_flow_api.id(23787520712469085)
,p_default_reportr_template=>wwv_flow_api.id(23787520712469085)
,p_default_tabform_template=>wwv_flow_api.id(23787520712469085)
,p_default_wizard_template=>wwv_flow_api.id(23787520712469085)
,p_default_menur_template=>wwv_flow_api.id(23790833953469089)
,p_default_listr_template=>wwv_flow_api.id(23787520712469085)
,p_default_irr_template=>wwv_flow_api.id(23787082064469083)
,p_default_report_template=>wwv_flow_api.id(23796331659469105)
,p_default_label_template=>wwv_flow_api.id(23807818149469141)
,p_default_menu_template=>wwv_flow_api.id(23808831762469149)
,p_default_calendar_template=>wwv_flow_api.id(23808975181469151)
,p_default_list_template=>wwv_flow_api.id(23803340966469126)
,p_default_nav_list_template=>wwv_flow_api.id(23806760269469134)
,p_default_top_nav_list_temp=>wwv_flow_api.id(23806760269469134)
,p_default_side_nav_list_temp=>wwv_flow_api.id(23805712104469131)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(23779529478469070)
,p_default_dialogr_template=>wwv_flow_api.id(23779493018469069)
,p_default_option_label=>wwv_flow_api.id(23807818149469141)
,p_default_required_label=>wwv_flow_api.id(23808007372469142)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(23805630952469130)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23809138693469160)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23809274148469160)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23809378802469160)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23778290900469067)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23778412297469069)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23778683568469069)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23779878605469071)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23780015958469071)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23780731160469073)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23781144823469074)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23781708551469075)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23782300122469076)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23782583403469076)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23783421779469079)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23785030397469080)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23786408197469083)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23789986902469088)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23790183228469089)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23790576161469089)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23790948647469090)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23791520114469091)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23792190342469097)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23792350795469099)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23793919198469101)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23794629206469102)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23794945320469102)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23795600443469103)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23795926495469104)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23796402830469106)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23796777319469106)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23796979201469106)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23797799757469108)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23799618104469118)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23800465128469119)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23801416081469123)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23802194509469124)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23802421395469125)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23803181716469126)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23803876915469127)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23806282782469133)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23807349991469135)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23808588797469147)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23809568578469196)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23809707330469197)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23809993638469197)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23810127699469197)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23810365260469197)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23810768804469198)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23811476090469200)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23811833916469200)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23812074983469201)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23812201426469201)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23812446546469201)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23812770344469201)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23813002649469202)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23778176353469064)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23778381327469069)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(23778290900469067)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23778535786469069)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(23778412297469069)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23778734999469069)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(23778683568469069)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23778865718469069)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(23778290900469067)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23778965461469069)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(23778412297469069)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23779067745469069)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(23778290900469067)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23779108606469069)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(23778412297469069)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23779245004469069)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(23778290900469067)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23779395113469069)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23777998554469051)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(23778683568469069)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23779992075469071)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23779529478469070)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23780130973469071)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(23779529478469070)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(23780015958469071)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23780228257469071)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(23779529478469070)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23780301739469073)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(23779529478469070)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(23780015958469071)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23780805429469074)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(23780731160469073)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23780914753469074)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(23780731160469073)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781095827469074)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(23780731160469073)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781231912469074)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781338417469075)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781429542469075)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781527664469075)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(23780731160469073)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781615484469075)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781894517469075)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23781976560469075)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782073553469075)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782125227469076)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782271268469076)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782450745469076)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(23782300122469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782628941469076)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(23782583403469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782729784469077)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(23782300122469076)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782851005469077)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23782958962469077)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783067975469077)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783150335469077)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(23782583403469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783250262469078)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783380596469078)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783578095469079)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(23783421779469079)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783699925469079)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(23783421779469079)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23783729424469079)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23780498616469073)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784142323469079)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784217343469079)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784381637469080)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784446902469080)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784551938469080)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784610955469080)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784798358469080)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784885256469080)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23784926095469080)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785191030469081)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(23785030397469080)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785271376469081)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(23785030397469080)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785384480469081)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(23782583403469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785443728469081)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785579829469081)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785676518469081)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785783151469081)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(23782583403469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23785892634469082)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23783807889469079)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23786309603469083)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23786178016469082)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23786526589469083)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23786178016469082)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(23786408197469083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23786689432469083)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23786178016469082)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(23786408197469083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23786735105469083)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23786178016469082)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23786867657469083)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23786178016469082)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23786924926469083)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23786178016469082)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(23786408197469083)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23787174915469084)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787082064469083)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23787259240469084)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787082064469083)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23787891806469085)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23787917942469085)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788021621469086)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788124517469086)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(23781144823469074)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788235201469086)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788369723469086)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788446599469086)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788564569469086)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788619158469086)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(23781708551469075)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788787882469087)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(23782300122469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788842100469087)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(23782583403469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23788988821469087)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(23782300122469076)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23789042238469087)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23789154441469087)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23789272945469087)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23789344688469087)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(23782583403469076)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23789458823469087)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23789596812469088)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23787520712469085)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(23779878605469071)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23790074576469088)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23789634065469088)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(23789986902469088)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23790214844469089)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23789634065469088)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(23790183228469089)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23790357922469089)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23789634065469088)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23790408855469089)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23789634065469088)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(23790183228469089)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23790633117469089)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23789634065469088)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(23790576161469089)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23790792455469089)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23789634065469088)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(23790576161469089)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23791077172469090)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23790833953469089)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(23790948647469090)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23791190560469090)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23790833953469089)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23791220081469090)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23790833953469089)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(23790948647469090)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23791614143469091)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23791382202469090)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(23791520114469091)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23791751852469091)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23791382202469090)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(23791520114469091)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23791886379469091)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23791382202469090)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792249554469098)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(23792190342469097)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792468306469099)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792512970469099)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(23792190342469097)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792688504469099)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792795553469099)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(23792190342469097)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792867873469099)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23792900039469099)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793069326469099)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(23792190342469097)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793174995469099)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(23792190342469097)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793292209469100)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793305936469100)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793451605469100)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793532260469100)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793666693469100)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23792084899469097)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23793878559469101)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794029352469101)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(23793919198469101)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794138775469101)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794278082469101)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(23793919198469101)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794367639469101)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794498897469101)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(23793919198469101)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794551783469102)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794797165469102)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(23794629206469102)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23794883532469102)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(23794629206469102)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795008148469102)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(23794945320469102)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795182455469102)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(23794945320469102)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795236445469102)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(23794629206469102)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795340405469103)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795482515469103)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(23793919198469101)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795528262469103)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23795780580469103)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23793710012469100)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(23795600443469103)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23796029000469104)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23795899597469103)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(23795926495469104)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23796136640469104)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23795899597469103)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(23795926495469104)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23796548894469106)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(23796402830469106)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23796663620469106)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(23796402830469106)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23796854797469106)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(23796777319469106)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797030647469106)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(23796979201469106)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797130947469106)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(23796979201469106)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797232413469107)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(23796979201469106)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797307999469107)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(23796777319469106)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797495438469107)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797506951469107)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23796331659469105)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(23796979201469106)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797852848469108)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23797969085469108)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798054383469108)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798159425469108)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798266372469108)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798337777469108)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798466882469109)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798527085469109)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23797607715469107)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798723509469109)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798868001469109)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23798903655469110)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799078273469110)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799174749469110)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(23792350795469099)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799233465469110)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799359892469110)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799456432469110)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23798655526469109)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(23797799757469108)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799783316469118)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799892167469118)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23799928961469119)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800062283469119)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800123870469119)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800241683469119)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800318128469119)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800521454469119)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(23800465128469119)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800693147469120)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(23800465128469119)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800733988469120)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800885504469120)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(23800465128469119)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23800991627469120)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801075482469123)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(23800465128469119)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801125651469123)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23799588562469111)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(23800465128469119)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801310286469123)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801528008469123)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(23801416081469123)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801650818469123)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801775661469123)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(23801416081469123)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801830924469124)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23801900549469124)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(23801416081469123)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802082498469124)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802268420469124)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(23802194509469124)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802328391469125)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(23802194509469124)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802555320469125)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(23802421395469125)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802643665469125)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(23802421395469125)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802733381469125)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(23802194509469124)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802805785469125)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23802903000469125)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(23801416081469123)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803059295469125)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803215778469126)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23801216460469123)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(23803181716469126)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803442732469126)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23803340966469126)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(23802194509469124)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803530376469126)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23803340966469126)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803677130469127)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23803340966469126)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803716949469127)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23803340966469126)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23803984112469127)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23803340966469126)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(23803876915469127)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804067020469127)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23803340966469126)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(23803876915469127)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804217091469128)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804342837469128)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804496691469128)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804508457469128)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804607805469128)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804708859469128)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804858754469128)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23804970392469128)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23805180579469130)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23805080804469129)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23805270953469130)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23805080804469129)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23805382216469130)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23805080804469129)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23805406068469130)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23805080804469129)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23805952011469133)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(23802421395469125)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806099125469133)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(23799618104469118)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806101039469133)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(23802421395469125)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806300424469133)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(23806282782469133)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806435874469133)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(23802194509469124)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806569939469133)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(23802194509469124)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806674664469134)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(23805870659469132)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(23806282782469133)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806838065469135)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23806760269469134)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23806974507469135)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23806760269469134)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23807075323469135)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23806760269469134)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23807176101469135)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23806760269469134)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23807479400469135)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23807203915469135)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(23807349991469135)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23807541161469135)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23807203915469135)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(23807349991469135)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23807697644469135)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23807203915469135)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(23807349991469135)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23808624046469148)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(23808476517469147)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(23808588797469147)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23808751511469148)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(23808476517469147)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(23808588797469147)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23809650895469196)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(23809568578469196)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23809883264469197)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(23809707330469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810032368469197)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(23809993638469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810267187469197)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(23810127699469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810422843469197)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(23810365260469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810554727469197)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(23809707330469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810605676469198)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(23809993638469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810872311469198)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(23810768804469198)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23810967328469198)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(23810768804469198)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811043804469199)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(23810768804469198)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811104329469199)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(23809568578469196)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811299216469199)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(23810365260469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811362969469199)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(23810127699469197)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811537111469200)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(23811476090469200)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811631495469200)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(23809568578469196)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811720897469200)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(23809568578469196)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23811999783469200)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(23811833916469200)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23812105633469201)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(23812074983469201)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23812372169469201)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(23812201426469201)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23812531419469201)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(23812446546469201)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23812618511469201)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(23812446546469201)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23812817196469201)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(23812770344469201)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23812965437469202)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(23812074983469201)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23813150382469202)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(23813002649469202)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23813200863469202)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23813325413469202)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(23813002649469202)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
wwv_flow_api.create_language_map(
 p_id=>wwv_flow_api.id(24319816086949025)
,p_translation_flow_id=>111
,p_translation_flow_language_cd=>'ru'
,p_translation_comments=>'Локализация приложения 110 на русский язык'
);
end;
/
prompt --application/shared_components/globalization/translations
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24319999462954685)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>26.111
,p_translate_from_id=>26
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Водители'
,p_translate_from_text=>'DriversPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24320093954954692)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>3.111
,p_translate_from_id=>3
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TripsLogPage'
,p_translate_from_text=>'TripsLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24320287656954692)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>15.111
,p_translate_from_id=>15
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BatteriesLogEditPage'
,p_translate_from_text=>'BatteriesLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24320402756954692)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>101.111
,p_translate_from_id=>101
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Login Page'
,p_translate_from_text=>'Login Page'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24320676538954693)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>21.111
,p_translate_from_id=>21
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VehiclesEditPage'
,p_translate_from_text=>'VehiclesEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24321096251954693)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>18.111
,p_translate_from_id=>18
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'InsurancesLogPage'
,p_translate_from_text=>'InsurancesLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24321202096954694)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>4.111
,p_translate_from_id=>4
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FuellingLogPage'
,p_translate_from_text=>'FuellingLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24321479542954694)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>28.111
,p_translate_from_id=>28
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ParkingsPage'
,p_translate_from_text=>'ParkingsPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24321662214954694)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>23.111
,p_translate_from_id=>23
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FuellingLogEditPage'
,p_translate_from_text=>'FuellingLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24321845225954694)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>1.111
,p_translate_from_id=>1
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Главная'
,p_translate_from_text=>'Home'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24322021049954694)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>2.111
,p_translate_from_id=>2
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'RunningSecPage'
,p_translate_from_text=>'RunningSecPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24322252914954695)
,p_page_id=>5
,p_translated_flow_id=>111
,p_translate_to_id=>5.111
,p_translate_from_id=>5
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FigurationWayBillPage'
,p_translate_from_text=>'FigurationWayBillPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24322494939954695)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>8.111
,p_translate_from_id=>8
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ServiceSecPage'
,p_translate_from_text=>'ServiceSecPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24322690161954695)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>19.111
,p_translate_from_id=>19
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'InsurancesLogEditPage'
,p_translate_from_text=>'InsurancesLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24322890465954695)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>17.111
,p_translate_from_id=>17
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TiresLogEditPage'
,p_translate_from_text=>'TiresLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24323076934954696)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>7.111
,p_translate_from_id=>7
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24323219895954697)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>14.111
,p_translate_from_id=>14
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BatteriesLogPage'
,p_translate_from_text=>'BatteriesLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24323451935954697)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>16.111
,p_translate_from_id=>16
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TiresLogPage'
,p_translate_from_text=>'TiresLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24323857177954697)
,p_page_id=>13
,p_translated_flow_id=>111
,p_translate_to_id=>13.111
,p_translate_from_id=>13
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FileCabinetSecPage'
,p_translate_from_text=>'FileCabinetSecPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24324043847954703)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>22.111
,p_translate_from_id=>22
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FuellingLogPage'
,p_translate_from_text=>'FuellingLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24324265690954703)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>20.111
,p_translate_from_id=>20
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VehiclesPage'
,p_translate_from_text=>'VehiclesPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24324409624954703)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>6.111
,p_translate_from_id=>6
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CalcFuelConsumptionPage'
,p_translate_from_text=>'CalcFuelConsumptionPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24324689955954703)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>29.111
,p_translate_from_id=>29
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ParkingsEditPage'
,p_translate_from_text=>'ParkingsEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24324816155954703)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>27.111
,p_translate_from_id=>27
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать водителя'
,p_translate_from_text=>'DriversEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24325094931954709)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>26.111
,p_translate_from_id=>26
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Водители'
,p_translate_from_text=>'DriversPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24325180766954709)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>3.111
,p_translate_from_id=>3
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TripsLogPage'
,p_translate_from_text=>'TripsLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24325302163954709)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>15.111
,p_translate_from_id=>15
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BatteriesLogEditPage'
,p_translate_from_text=>'BatteriesLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24325544235954709)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>101.111
,p_translate_from_id=>101
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Log In | &APP_NAME.'
,p_translate_from_text=>'Log In | &APP_NAME.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24325749855954710)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>21.111
,p_translate_from_id=>21
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VehiclesEditPage'
,p_translate_from_text=>'VehiclesEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24326144305954710)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>18.111
,p_translate_from_id=>18
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'InsurancesLogPage'
,p_translate_from_text=>'InsurancesLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24326368082954710)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>4.111
,p_translate_from_id=>4
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FuellingLogPage'
,p_translate_from_text=>'FuellingLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24326568870954711)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>28.111
,p_translate_from_id=>28
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ParkingsPage'
,p_translate_from_text=>'ParkingsPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24326773207954711)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>23.111
,p_translate_from_id=>23
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FuellingLogEditPage'
,p_translate_from_text=>'FuellingLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24326909368954711)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>1.111
,p_translate_from_id=>1
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&APP_NAME.'
,p_translate_from_text=>'&APP_NAME.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24327167062954711)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>2.111
,p_translate_from_id=>2
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'RunningSecPage'
,p_translate_from_text=>'RunningSecPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24327356427954714)
,p_page_id=>5
,p_translated_flow_id=>111
,p_translate_to_id=>5.111
,p_translate_from_id=>5
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FigurationWayBillPage'
,p_translate_from_text=>'FigurationWayBillPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24327514956954714)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>8.111
,p_translate_from_id=>8
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ServiceSecPage'
,p_translate_from_text=>'ServiceSecPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24327709113954714)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>19.111
,p_translate_from_id=>19
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'InsurancesLogEditPage'
,p_translate_from_text=>'InsurancesLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24327965510954714)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>17.111
,p_translate_from_id=>17
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TiresLogEditPage'
,p_translate_from_text=>'TiresLogEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24328149269954714)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>7.111
,p_translate_from_id=>7
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24328330588954715)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>14.111
,p_translate_from_id=>14
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BatteriesLogPage'
,p_translate_from_text=>'BatteriesLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24328552475954715)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>16.111
,p_translate_from_id=>16
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TiresLogPage'
,p_translate_from_text=>'TiresLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24328947500954715)
,p_page_id=>13
,p_translated_flow_id=>111
,p_translate_to_id=>13.111
,p_translate_from_id=>13
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FileCabinetSecPage'
,p_translate_from_text=>'FileCabinetSecPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24329144788954715)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>22.111
,p_translate_from_id=>22
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FuellingLogPage'
,p_translate_from_text=>'FuellingLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24329381901954716)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>20.111
,p_translate_from_id=>20
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VehiclesPage'
,p_translate_from_text=>'VehiclesPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24329548063954716)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>6.111
,p_translate_from_id=>6
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CalcFuelConsumptionPage'
,p_translate_from_text=>'CalcFuelConsumptionPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24329786467954716)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>29.111
,p_translate_from_id=>29
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ParkingsEditPage'
,p_translate_from_text=>'ParkingsEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24329905525954716)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>27.111
,p_translate_from_id=>27
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать водителя'
,p_translate_from_text=>'DriversEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24351197637954761)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>1.111
,p_translate_from_id=>1
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24351356085954761)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>8.111
,p_translate_from_id=>8
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24351940973954762)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>21.111
,p_translate_from_id=>21
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24352348934954762)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>20.111
,p_translate_from_id=>20
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24352581562954763)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>23.111
,p_translate_from_id=>23
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24352764024954763)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>22.111
,p_translate_from_id=>22
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24352981693954763)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>26.111
,p_translate_from_id=>26
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24353181792954763)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>29.111
,p_translate_from_id=>29
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24353312273954764)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>27.111
,p_translate_from_id=>27
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24353567170954764)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>28.111
,p_translate_from_id=>28
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24353799577954764)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>3.111
,p_translate_from_id=>3
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24353963855954764)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>4.111
,p_translate_from_id=>4
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24354111725954764)
,p_page_id=>5
,p_translated_flow_id=>111
,p_translate_to_id=>5.111
,p_translate_from_id=>5
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24354395003954765)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>6.111
,p_translate_from_id=>6
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24354548960954766)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>7.111
,p_translate_from_id=>7
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24354794584954766)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>15.111
,p_translate_from_id=>15
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24354961604954766)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>17.111
,p_translate_from_id=>17
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24355132617954767)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>14.111
,p_translate_from_id=>14
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24355301199954767)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>16.111
,p_translate_from_id=>16
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24355596312954767)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>19.111
,p_translate_from_id=>19
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24355776918954767)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>18.111
,p_translate_from_id=>18
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24355947540954767)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>2.111
,p_translate_from_id=>2
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24356156791954774)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24015744292707113.111)
,p_translate_from_id=>wwv_flow_api.id(24015744292707113)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24356383918954774)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24015813270707113.111)
,p_translate_from_id=>wwv_flow_api.id(24015813270707113)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Submit'
,p_translate_from_text=>'Submit'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24357573791954775)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24106921649182379.111)
,p_translate_from_id=>wwv_flow_api.id(24106921649182379)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24357745930954775)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24094802540182333.111)
,p_translate_from_id=>wwv_flow_api.id(24094802540182333)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24357933252954775)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24095104164182334.111)
,p_translate_from_id=>wwv_flow_api.id(24095104164182334)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24358128064954776)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24095095197182334.111)
,p_translate_from_id=>wwv_flow_api.id(24095095197182334)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24358382673954776)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24094908418182333.111)
,p_translate_from_id=>wwv_flow_api.id(24094908418182333)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24358538979954776)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24120857610457979.111)
,p_translate_from_id=>wwv_flow_api.id(24120857610457979)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24358757102954776)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24112235439457939.111)
,p_translate_from_id=>wwv_flow_api.id(24112235439457939)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24358958028954777)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24112147333457939.111)
,p_translate_from_id=>wwv_flow_api.id(24112147333457939)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24359157221954777)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24112031153457939.111)
,p_translate_from_id=>wwv_flow_api.id(24112031153457939)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24359373549954780)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24111993369457939.111)
,p_translate_from_id=>wwv_flow_api.id(24111993369457939)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24359559943954780)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24137822898561708.111)
,p_translate_from_id=>wwv_flow_api.id(24137822898561708)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24359760749954780)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24124534504561641.111)
,p_translate_from_id=>wwv_flow_api.id(24124534504561641)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24359957522954780)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24124498942561641.111)
,p_translate_from_id=>wwv_flow_api.id(24124498942561641)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24360181164954781)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24124367304561641.111)
,p_translate_from_id=>wwv_flow_api.id(24124367304561641)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24360346967954781)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24124216148561640.111)
,p_translate_from_id=>wwv_flow_api.id(24124216148561640)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24360550691954781)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24247515603464573.111)
,p_translate_from_id=>wwv_flow_api.id(24247515603464573)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24360759880954781)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24240122733464506.111)
,p_translate_from_id=>wwv_flow_api.id(24240122733464506)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24360968360954782)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24240057179464506.111)
,p_translate_from_id=>wwv_flow_api.id(24240057179464506)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24361120391954782)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24239984006464506.111)
,p_translate_from_id=>wwv_flow_api.id(24239984006464506)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24361399421954782)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24239895411464505.111)
,p_translate_from_id=>wwv_flow_api.id(24239895411464505)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24361526611954782)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24269749866514291.111)
,p_translate_from_id=>wwv_flow_api.id(24269749866514291)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24361737664954782)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24261220216514234.111)
,p_translate_from_id=>wwv_flow_api.id(24261220216514234)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24361948583954783)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24261189700514234.111)
,p_translate_from_id=>wwv_flow_api.id(24261189700514234)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24362105512954783)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24261045945514234.111)
,p_translate_from_id=>wwv_flow_api.id(24261045945514234)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24362372017954789)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24260985108514234.111)
,p_translate_from_id=>wwv_flow_api.id(24260985108514234)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24362593429954789)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24298345445715254.111)
,p_translate_from_id=>wwv_flow_api.id(24298345445715254)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24362731482954789)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24290007887715237.111)
,p_translate_from_id=>wwv_flow_api.id(24290007887715237)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24362914333954790)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24289926797715237.111)
,p_translate_from_id=>wwv_flow_api.id(24289926797715237)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24363175114954790)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24289855512715237.111)
,p_translate_from_id=>wwv_flow_api.id(24289855512715237)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24363347747954790)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24290116207715237.111)
,p_translate_from_id=>wwv_flow_api.id(24290116207715237)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24363517740954790)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24315133879789066.111)
,p_translate_from_id=>wwv_flow_api.id(24315133879789066)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24363732404954790)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24302562685789040.111)
,p_translate_from_id=>wwv_flow_api.id(24302562685789040)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24363943387954791)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24302448261789040.111)
,p_translate_from_id=>wwv_flow_api.id(24302448261789040)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24364126818954791)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24302398960789040.111)
,p_translate_from_id=>wwv_flow_api.id(24302398960789040)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить изменения'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24364366438954791)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24302248746789040.111)
,p_translate_from_id=>wwv_flow_api.id(24302248746789040)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24364594005954791)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814390507469274.111)
,p_translate_from_id=>wwv_flow_api.id(23814390507469274)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Поехали'
,p_translate_from_text=>'Поехали'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24364702491954797)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24017908932707124.111)
,p_translate_from_id=>wwv_flow_api.id(24017908932707124)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'aVehicleID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24364997632954797)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018362804707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018362804707130)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'aFromDate'
,p_translate_from_text=>'aFromDate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24365146975954797)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018735877707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018735877707130)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'aToDate'
,p_translate_from_text=>'aToDate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24366569571954799)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097192547182337.111)
,p_translate_from_id=>wwv_flow_api.id(24097192547182337)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymountid'
,p_translate_from_text=>'Batterymountid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24366710651954799)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097578801182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097578801182338)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24366945357954799)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097984809182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097984809182338)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymountdate'
,p_translate_from_text=>'Batterymountdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24367176674954800)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098327887182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098327887182339)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batteryname'
,p_translate_from_text=>'Batteryname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24367374186954800)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098771122182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098771122182339)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterylifetime'
,p_translate_from_text=>'Batterylifetime'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24367503351954800)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099162784182340.111)
,p_translate_from_id=>wwv_flow_api.id(24099162784182340)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymileage'
,p_translate_from_text=>'Batterymileage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24367764183954800)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099572624182340.111)
,p_translate_from_id=>wwv_flow_api.id(24099572624182340)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymotohours'
,p_translate_from_text=>'Batterymotohours'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24367944940954800)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099940418182341.111)
,p_translate_from_id=>wwv_flow_api.id(24099940418182341)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterynotes'
,p_translate_from_text=>'Batterynotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24368127151954801)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24114246237457945.111)
,p_translate_from_id=>wwv_flow_api.id(24114246237457945)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountid'
,p_translate_from_text=>'Tiresmountid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24368332717954801)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24114654980457949.111)
,p_translate_from_id=>wwv_flow_api.id(24114654980457949)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24368515317954801)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115086090457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115086090457951)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountdate'
,p_translate_from_text=>'Tiresmountdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24368764426954801)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115486118457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115486118457951)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountnotes'
,p_translate_from_text=>'Tiresmountnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24368990298954801)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24126593498561645.111)
,p_translate_from_id=>wwv_flow_api.id(24126593498561645)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insuranceid'
,p_translate_from_text=>'Insuranceid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24369118033954802)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24126994259561647.111)
,p_translate_from_id=>wwv_flow_api.id(24126994259561647)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24369301237954802)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127314807561648.111)
,p_translate_from_id=>wwv_flow_api.id(24127314807561648)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24369514020954802)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127601593561658.111)
,p_translate_from_id=>wwv_flow_api.id(24127601593561658)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancestartdate'
,p_translate_from_text=>'Insurancestartdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24369776729954802)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128037761561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128037761561659)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insuranceenddate'
,p_translate_from_text=>'Insuranceenddate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24369987720954803)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128407448561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128407448561659)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancepolicy'
,p_translate_from_text=>'Insurancepolicy'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24370123985954803)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128810896561660.111)
,p_translate_from_id=>wwv_flow_api.id(24128810896561660)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancecompany'
,p_translate_from_text=>'Insurancecompany'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24370382869954803)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129257171561660.111)
,p_translate_from_id=>wwv_flow_api.id(24129257171561660)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancetype'
,p_translate_from_text=>'Insurancetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24370591762954803)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129635161561661.111)
,p_translate_from_id=>wwv_flow_api.id(24129635161561661)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancecost'
,p_translate_from_text=>'Insurancecost'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24370743792954803)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130063274561661.111)
,p_translate_from_id=>wwv_flow_api.id(24130063274561661)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancenotes'
,p_translate_from_text=>'Insurancenotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24370951784954804)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242115020464518.111)
,p_translate_from_id=>wwv_flow_api.id(24242115020464518)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24371167386954804)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242529292464533.111)
,p_translate_from_id=>wwv_flow_api.id(24242529292464533)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Vehiclename'
,p_translate_from_text=>'Vehiclename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24371352591954804)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242893157464536.111)
,p_translate_from_id=>wwv_flow_api.id(24242893157464536)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Vehiclenotes'
,p_translate_from_text=>'Vehiclenotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24371521195954804)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24263294372514244.111)
,p_translate_from_id=>wwv_flow_api.id(24263294372514244)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingid'
,p_translate_from_text=>'Fuellingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24371651128954804)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24263612430514254.111)
,p_translate_from_id=>wwv_flow_api.id(24263612430514254)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24371888544954805)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264034124514257.111)
,p_translate_from_id=>wwv_flow_api.id(24264034124514257)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingdate'
,p_translate_from_text=>'Fuellingdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24372019360954805)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264481993514258.111)
,p_translate_from_id=>wwv_flow_api.id(24264481993514258)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingnotes'
,p_translate_from_text=>'Fuellingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24372281109954805)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292049325715242.111)
,p_translate_from_id=>wwv_flow_api.id(24292049325715242)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24372434904954806)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292494152715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292494152715243)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24372660487954806)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292814567715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292814567715243)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Surname'
,p_translate_from_text=>'Surname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24372859490954806)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24293229324715244.111)
,p_translate_from_id=>wwv_flow_api.id(24293229324715244)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Personnotes'
,p_translate_from_text=>'Personnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24373013456954806)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24304515049789045.111)
,p_translate_from_id=>wwv_flow_api.id(24304515049789045)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingid'
,p_translate_from_text=>'Parkingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24373286034954807)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24304972470789046.111)
,p_translate_from_id=>wwv_flow_api.id(24304972470789046)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24373485743954807)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305313405789046.111)
,p_translate_from_id=>wwv_flow_api.id(24305313405789046)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingnum'
,p_translate_from_text=>'Parkingnum'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24373639460954807)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305738868789047.111)
,p_translate_from_id=>wwv_flow_api.id(24305738868789047)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingname'
,p_translate_from_text=>'Parkingname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24373880041954807)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306144412789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306144412789048)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingaddress'
,p_translate_from_text=>'Parkingaddress'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24374013305954808)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306586590789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306586590789048)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingcontract'
,p_translate_from_text=>'Parkingcontract'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24374269242954809)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306956917789049.111)
,p_translate_from_id=>wwv_flow_api.id(24306956917789049)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingnotes'
,p_translate_from_text=>'Parkingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24374499835954809)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307300349789049.111)
,p_translate_from_id=>wwv_flow_api.id(24307300349789049)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingfromdate'
,p_translate_from_text=>'Parkingfromdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24374681904954809)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307708484789050.111)
,p_translate_from_id=>wwv_flow_api.id(24307708484789050)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingtodate'
,p_translate_from_text=>'Parkingtodate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24374849799954810)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Username'
,p_translate_from_text=>'Username'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24375013152954810)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814285737469274.111)
,p_translate_from_id=>wwv_flow_api.id(23814285737469274)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Password'
,p_translate_from_text=>'Password'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24382495279954838)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24101173074182342.111)
,p_translate_from_id=>wwv_flow_api.id(24101173074182342)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24383027203954839)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116656142457953.111)
,p_translate_from_id=>wwv_flow_api.id(24116656142457953)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24383641011954840)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24131237692561663.111)
,p_translate_from_id=>wwv_flow_api.id(24131237692561663)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24384286273954840)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24244093229464543.111)
,p_translate_from_id=>wwv_flow_api.id(24244093229464543)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24384891113954841)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265671314514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265671314514262)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24385499431954842)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294421965715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294421965715245)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24386060309954842)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308992245789052.111)
,p_translate_from_id=>wwv_flow_api.id(24308992245789052)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24389877653954857)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23815360725469286.111)
,p_translate_from_id=>wwv_flow_api.id(23815360725469286)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TMS Application'
,p_translate_from_text=>'TMS Application'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24390096506954857)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040536412012401.111)
,p_translate_from_id=>wwv_flow_api.id(24040536412012401)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'CarsInfo'
,p_translate_from_text=>'CarsInfo'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24390231762954857)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040639155012402.111)
,p_translate_from_id=>wwv_flow_api.id(24040639155012402)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Информация о водителях'
,p_translate_from_text=>'DriversInfo'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24390494213954857)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040787146012403.111)
,p_translate_from_id=>wwv_flow_api.id(24040787146012403)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'AlertsInfo'
,p_translate_from_text=>'AlertsInfo'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24390661017954857)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040909541012405.111)
,p_translate_from_id=>wwv_flow_api.id(24040909541012405)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'SearchReg'
,p_translate_from_text=>'SearchReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24390826215954858)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24001700951301164.111)
,p_translate_from_id=>wwv_flow_api.id(24001700951301164)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24391064477954858)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24002361036301172.111)
,p_translate_from_id=>wwv_flow_api.id(24002361036301172)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'CurrentStatusReg'
,p_translate_from_text=>'CurrentStatusReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24391211501954858)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24004031512359812.111)
,p_translate_from_id=>wwv_flow_api.id(24004031512359812)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24391440528954858)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24004673019359813.111)
,p_translate_from_id=>wwv_flow_api.id(24004673019359813)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TripsLogPageReg'
,p_translate_from_text=>'TripsLogPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24391617248954859)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24009100156466534.111)
,p_translate_from_id=>wwv_flow_api.id(24009100156466534)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24391858755954859)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24009741562466536.111)
,p_translate_from_id=>wwv_flow_api.id(24009741562466536)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'FuellingLogPageReg'
,p_translate_from_text=>'FuellingLogPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24392043074954860)
,p_page_id=>5
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24013504891524965.111)
,p_translate_from_id=>wwv_flow_api.id(24013504891524965)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24392203486954860)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24015361316707112.111)
,p_translate_from_id=>wwv_flow_api.id(24015361316707112)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'CalcFuelConsumptionPageReg'
,p_translate_from_text=>'CalcFuelConsumptionPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24392469028954860)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24016068533707113.111)
,p_translate_from_id=>wwv_flow_api.id(24016068533707113)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Buttons'
,p_translate_from_text=>'Buttons'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24392619815954860)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24020061008707137.111)
,p_translate_from_id=>wwv_flow_api.id(24020061008707137)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24392801883954860)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24024517283805965.111)
,p_translate_from_id=>wwv_flow_api.id(24024517283805965)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24393057444954861)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24025147653805970.111)
,p_translate_from_id=>wwv_flow_api.id(24025147653805970)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24393207903954861)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048408986187406.111)
,p_translate_from_id=>wwv_flow_api.id(24048408986187406)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'BatteriesServiceInfoReg'
,p_translate_from_text=>'BatteriesServiceInfoReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24393450242954861)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048815935187407.111)
,p_translate_from_id=>wwv_flow_api.id(24048815935187407)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TiresServiceInfoReg'
,p_translate_from_text=>'TiresServiceInfoReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24393634550954861)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049630174187412.111)
,p_translate_from_id=>wwv_flow_api.id(24049630174187412)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'MaintenanceInfoReg'
,p_translate_from_text=>'MaintenanceInfoReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24393867500954861)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24050016515187412.111)
,p_translate_from_id=>wwv_flow_api.id(24050016515187412)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'RepairInfoReg'
,p_translate_from_text=>'RepairInfoReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24394046022954862)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040868967012404.111)
,p_translate_from_id=>wwv_flow_api.id(24040868967012404)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'InspectionInfoReg'
,p_translate_from_text=>'InspectionInfoReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24394228250954862)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049297332187410.111)
,p_translate_from_id=>wwv_flow_api.id(24049297332187410)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'InsurancesInfoReg'
,p_translate_from_text=>'InsurancesInfoReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24395244401954863)
,p_page_id=>13
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24236883567306697.111)
,p_translate_from_id=>wwv_flow_api.id(24236883567306697)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24395450516954863)
,p_page_id=>13
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24254262323841463.111)
,p_translate_from_id=>wwv_flow_api.id(24254262323841463)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'FileCabinetSecReg'
,p_translate_from_text=>'FileCabinetSecReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24395615965954863)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24103267309182362.111)
,p_translate_from_id=>wwv_flow_api.id(24103267309182362)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'BatteriesLogPageReg'
,p_translate_from_text=>'BatteriesLogPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24395894491954864)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24107562013182380.111)
,p_translate_from_id=>wwv_flow_api.id(24107562013182380)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24396050528954864)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24094462969182333.111)
,p_translate_from_id=>wwv_flow_api.id(24094462969182333)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'BatteriesLogEditPageReg'
,p_translate_from_text=>'BatteriesLogEditPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24396262211954864)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24108186604182381.111)
,p_translate_from_id=>wwv_flow_api.id(24108186604182381)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24396453667954865)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24118715721457970.111)
,p_translate_from_id=>wwv_flow_api.id(24118715721457970)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TiresLogPageReg'
,p_translate_from_text=>'TiresLogPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24396618889954865)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24121492529457980.111)
,p_translate_from_id=>wwv_flow_api.id(24121492529457980)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24396836168954865)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24111534176457939.111)
,p_translate_from_id=>wwv_flow_api.id(24111534176457939)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TiresLogEditPageReg'
,p_translate_from_text=>'TiresLogEditPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24397087875954865)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24122008992457982.111)
,p_translate_from_id=>wwv_flow_api.id(24122008992457982)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24397258686954866)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24133326757561696.111)
,p_translate_from_id=>wwv_flow_api.id(24133326757561696)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'InsurancesLogPageReg'
,p_translate_from_text=>'InsurancesLogPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24397409354954866)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24138444842561709.111)
,p_translate_from_id=>wwv_flow_api.id(24138444842561709)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24397684031954866)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24123874567561640.111)
,p_translate_from_id=>wwv_flow_api.id(24123874567561640)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'InsurancesLogEditPageReg'
,p_translate_from_text=>'InsurancesLogEditPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24397845304954866)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24139032275561711.111)
,p_translate_from_id=>wwv_flow_api.id(24139032275561711)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24398048255954866)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24245803227464560.111)
,p_translate_from_id=>wwv_flow_api.id(24245803227464560)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'VehiclesPageReg'
,p_translate_from_text=>'VehiclesPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24398270616954867)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24248105951464575.111)
,p_translate_from_id=>wwv_flow_api.id(24248105951464575)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24398499089954867)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24239469141464505.111)
,p_translate_from_id=>wwv_flow_api.id(24239469141464505)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'VehiclesEditPage'
,p_translate_from_text=>'VehiclesEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24398676854954867)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24248761604464577.111)
,p_translate_from_id=>wwv_flow_api.id(24248761604464577)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24398800943954867)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24267774483514280.111)
,p_translate_from_id=>wwv_flow_api.id(24267774483514280)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'FuellingLogPage'
,p_translate_from_text=>'FuellingLogPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24399028384954867)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24270304649514294.111)
,p_translate_from_id=>wwv_flow_api.id(24270304649514294)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24399284391954868)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24260522446514234.111)
,p_translate_from_id=>wwv_flow_api.id(24260522446514234)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'FuellingLogPageEditReg'
,p_translate_from_text=>'FuellingLogPageEditReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24399462597954868)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24270936495514296.111)
,p_translate_from_id=>wwv_flow_api.id(24270936495514296)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24399698607954868)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24296240607715250.111)
,p_translate_from_id=>wwv_flow_api.id(24296240607715250)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Водители'
,p_translate_from_text=>'DriversPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24399806723954868)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24298920772715255.111)
,p_translate_from_id=>wwv_flow_api.id(24298920772715255)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24400096919954869)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24289422646715236.111)
,p_translate_from_id=>wwv_flow_api.id(24289422646715236)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Редактировать водителя'
,p_translate_from_text=>'DriversEditPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24400276381954869)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24299572285715256.111)
,p_translate_from_id=>wwv_flow_api.id(24299572285715256)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24400424092954869)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311031030789058.111)
,p_translate_from_id=>wwv_flow_api.id(24311031030789058)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'ParkingsPage'
,p_translate_from_text=>'ParkingsPage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24400637467954869)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24315797344789067.111)
,p_translate_from_id=>wwv_flow_api.id(24315797344789067)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24400857117954870)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24301829794789040.111)
,p_translate_from_id=>wwv_flow_api.id(24301829794789040)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'ParkingsEditPageReg'
,p_translate_from_text=>'ParkingsEditPageReg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24401073885954870)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24316376388789068.111)
,p_translate_from_id=>wwv_flow_api.id(24316376388789068)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24401268549954870)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814075123469268.111)
,p_translate_from_id=>wwv_flow_api.id(23814075123469268)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Управление транспортом (ГСМ, автошины, АКБ etc.)'
,p_translate_from_text=>'Управление транспортом (ГСМ, автошины, АКБ etc.)'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24401494237954877)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23815360725469286.111)
,p_translate_from_id=>wwv_flow_api.id(23815360725469286)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<p>Управление транспортом, ГСМ, шины, АКБ</p>'
,p_translate_from_text=>'<p>Управление транспортом, ГСМ, шины, АКБ</p>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24401649956954877)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040536412012401.111)
,p_translate_from_id=>wwv_flow_api.id(24040536412012401)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Агрегированная информация об автомобилях'
,p_translate_from_text=>'Агрегированная информация об автомобилях'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24401865548954877)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040639155012402.111)
,p_translate_from_id=>wwv_flow_api.id(24040639155012402)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Агрегированная информация о водителях'
,p_translate_from_text=>'Агрегированная информация о водителях'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24402048165954877)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040787146012403.111)
,p_translate_from_id=>wwv_flow_api.id(24040787146012403)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Агрегированная информация о наступивших или наступающих сроках и мероприятиях'
,p_translate_from_text=>'Агрегированная информация о наступивших или наступающих сроках и мероприятиях'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24402222250954878)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040909541012405.111)
,p_translate_from_id=>wwv_flow_api.id(24040909541012405)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Область поиска, найдется все'
,p_translate_from_text=>'Область поиска, найдется все'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24403077445954878)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24004673019359813.111)
,p_translate_from_id=>wwv_flow_api.id(24004673019359813)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TRIPID,',
'       WAYBILLID,',
'       TRIPQUEUE,',
'       TRIPDISTANCE,',
'       TRIPNAME,',
'       TRIPNOTES',
'  from TTRIPSLOG'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TRIPID,',
'       WAYBILLID,',
'       TRIPQUEUE,',
'       TRIPDISTANCE,',
'       TRIPNAME,',
'       TRIPNOTES',
'  from TTRIPSLOG'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24403471225954879)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24009741562466536.111)
,p_translate_from_id=>wwv_flow_api.id(24009741562466536)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FUELLINGID,',
'       VEHICLEID,',
'       FUELLINGDATE,',
'       FUELLINGNOTES',
'  from TFUELLINGLOG'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FUELLINGID,',
'       VEHICLEID,',
'       FUELLINGDATE,',
'       FUELLINGNOTES',
'  from TFUELLINGLOG'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24404635319954880)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24025147653805970.111)
,p_translate_from_id=>wwv_flow_api.id(24025147653805970)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24404814037954880)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048408986187406.111)
,p_translate_from_id=>wwv_flow_api.id(24048408986187406)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Систематизированная информация о всех имеющихся аккумуляторах и напоминания о сроках их замены'
,p_translate_from_text=>'Систематизированная информация о всех имеющихся аккумуляторах и напоминания о сроках их замены'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24405015250954881)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048815935187407.111)
,p_translate_from_id=>wwv_flow_api.id(24048815935187407)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Уведомления о фактическом износе и плановых сроках замены шин (зима/лето, по пробегу)'
,p_translate_from_text=>'Уведомления о фактическом износе и плановых сроках замены шин (зима/лето, по пробегу)'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24405817795954881)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049297332187410.111)
,p_translate_from_id=>wwv_flow_api.id(24049297332187410)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Информация об ближайшем (по параметру настройки) окончании сроков действия страховых полисов или сроках уплаты очередного взноса'
,p_translate_from_text=>'Информация об ближайшем (по параметру настройки) окончании сроков действия страховых полисов или сроках уплаты очередного взноса'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24407217634954883)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24103267309182362.111)
,p_translate_from_id=>wwv_flow_api.id(24103267309182362)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "BATTERYMOUNTID", ',
'"VEHICLEID",',
'"BATTERYMOUNTDATE",',
'"BATTERYNAME",',
'"BATTERYLIFETIME",',
'"BATTERYMILEAGE",',
'"BATTERYMOTOHOURS",',
'"BATTERYNOTES"',
'from "#OWNER#"."TBATTERIESLOG" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "BATTERYMOUNTID", ',
'"VEHICLEID",',
'"BATTERYMOUNTDATE",',
'"BATTERYNAME",',
'"BATTERYLIFETIME",',
'"BATTERYMILEAGE",',
'"BATTERYMOTOHOURS",',
'"BATTERYNOTES"',
'from "#OWNER#"."TBATTERIESLOG" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24408055129954884)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24118715721457970.111)
,p_translate_from_id=>wwv_flow_api.id(24118715721457970)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TIRESMOUNTID", ',
'"VEHICLEID",',
'"TIRESMOUNTDATE",',
'"TIRESMOUNTNOTES"',
'from "#OWNER#"."TTIRESLOG" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TIRESMOUNTID", ',
'"VEHICLEID",',
'"TIRESMOUNTDATE",',
'"TIRESMOUNTNOTES"',
'from "#OWNER#"."TTIRESLOG" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24408818086954884)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24133326757561696.111)
,p_translate_from_id=>wwv_flow_api.id(24133326757561696)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "INSURANCEID", ',
'"PERSONID",',
'"VEHICLEID",',
'"INSURANCESTARTDATE",',
'"INSURANCEENDDATE",',
'"INSURANCEPOLICY",',
'"INSURANCECOMPANY",',
'"INSURANCETYPE",',
'"INSURANCECOST",',
'"INSURANCENOTES"',
'from "#OWNER#"."TINSURANCESLOG" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "INSURANCEID", ',
'"PERSONID",',
'"VEHICLEID",',
'"INSURANCESTARTDATE",',
'"INSURANCEENDDATE",',
'"INSURANCEPOLICY",',
'"INSURANCECOMPANY",',
'"INSURANCETYPE",',
'"INSURANCECOST",',
'"INSURANCENOTES"',
'from "#OWNER#"."TINSURANCESLOG" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24409655133954885)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24245803227464560.111)
,p_translate_from_id=>wwv_flow_api.id(24245803227464560)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "VEHICLEID", ',
'"VEHICLENAME",',
'"VEHICLENOTES"',
'from "#OWNER#"."TVEHICLES" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "VEHICLEID", ',
'"VEHICLENAME",',
'"VEHICLENOTES"',
'from "#OWNER#"."TVEHICLES" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24410442466954886)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24267774483514280.111)
,p_translate_from_id=>wwv_flow_api.id(24267774483514280)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "FUELLINGID", ',
'"VEHICLEID",',
'"FUELLINGDATE",',
'"FUELLINGNOTES"',
'from "#OWNER#"."TFUELLINGLOG" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "FUELLINGID", ',
'"VEHICLEID",',
'"FUELLINGDATE",',
'"FUELLINGNOTES"',
'from "#OWNER#"."TFUELLINGLOG" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24411235207954887)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24296240607715250.111)
,p_translate_from_id=>wwv_flow_api.id(24296240607715250)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PERSONID", ',
'"NAME",',
'"SURNAME",',
'"PERSONNOTES"',
'from "#OWNER#"."TPERSONS" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PERSONID", ',
'"NAME",',
'"SURNAME",',
'"PERSONNOTES"',
'from "#OWNER#"."TPERSONS" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24412089217954887)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311031030789058.111)
,p_translate_from_id=>wwv_flow_api.id(24311031030789058)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PARKINGID", ',
'"VEHICLEID",',
'"PARKINGNUM",',
'"PARKINGNAME",',
'"PARKINGADDRESS",',
'"PARKINGCONTRACT",',
'"PARKINGNOTES",',
'"PARKINGFROMDATE",',
'"PARKINGTODATE"',
'from "#OWNER#"."TPARKINGS" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PARKINGID", ',
'"VEHICLEID",',
'"PARKINGNUM",',
'"PARKINGNAME",',
'"PARKINGADDRESS",',
'"PARKINGCONTRACT",',
'"PARKINGNOTES",',
'"PARKINGFROMDATE",',
'"PARKINGTODATE"',
'from "#OWNER#"."TPARKINGS" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24412895722954888)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814075123469268.111)
,p_translate_from_id=>wwv_flow_api.id(23814075123469268)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Для залогиниться используйте имя и пароль пользователя apex</p>',
'<p>Для получить информацию, чем же конкретно занимается это приложение, обратитесь к разработчику приложения</p>'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Для залогиниться используйте имя и пароль пользователя apex</p>',
'<p>Для получить информацию, чем же конкретно занимается это приложение, обратитесь к разработчику приложения</p>'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24441563515954953)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814971570469281.111)
,p_translate_from_id=>wwv_flow_api.id(23814971570469281)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Главная [&A01.]'
,p_translate_from_text=>'Home [&A01.]'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24441764705954953)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048035193187394.111)
,p_translate_from_id=>wwv_flow_api.id(24048035193187394)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Обслуживание'
,p_translate_from_text=>'ServiceSecPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24442183897954953)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24235928989306687.111)
,p_translate_from_id=>wwv_flow_api.id(24235928989306687)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Картотека'
,p_translate_from_text=>'FileCabinetSecPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24442330094954954)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24245175898464545.111)
,p_translate_from_id=>wwv_flow_api.id(24245175898464545)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Автомобили'
,p_translate_from_text=>'VehiclesPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24442574592954954)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24266780225514268.111)
,p_translate_from_id=>wwv_flow_api.id(24266780225514268)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал заправок'
,p_translate_from_text=>'FuellingLogPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24442758626954954)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24310079102789056.111)
,p_translate_from_id=>wwv_flow_api.id(24310079102789056)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Места хранения'
,p_translate_from_text=>'ParkingsPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24442979997954954)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24295545939715247.111)
,p_translate_from_id=>wwv_flow_api.id(24295545939715247)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Водители'
,p_translate_from_text=>'DriversPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24443127742954954)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24003366609359810.111)
,p_translate_from_id=>wwv_flow_api.id(24003366609359810)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Поездки'
,p_translate_from_text=>'TripsLogPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24443302073954955)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24008315028466530.111)
,p_translate_from_id=>wwv_flow_api.id(24008315028466530)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал заправок'
,p_translate_from_text=>'FuellingLogPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24443510258954955)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24012747429524963.111)
,p_translate_from_id=>wwv_flow_api.id(24012747429524963)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Оформление путевого листа'
,p_translate_from_text=>'FigurationWayBillPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24443793371954955)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24014661500707111.111)
,p_translate_from_id=>wwv_flow_api.id(24014661500707111)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Расчет расхода топлива'
,p_translate_from_text=>'CalcFuelConsumptionPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24443915925954955)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24023895742805964.111)
,p_translate_from_id=>wwv_flow_api.id(24023895742805964)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPageEntryDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24444108134954955)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24102289866182346.111)
,p_translate_from_id=>wwv_flow_api.id(24102289866182346)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Аккумуляторы'
,p_translate_from_text=>'BatteriesLogPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24444393357954956)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24117775317457957.111)
,p_translate_from_id=>wwv_flow_api.id(24117775317457957)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Шины'
,p_translate_from_text=>'TiresLogPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24444584881954956)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24132345056561667.111)
,p_translate_from_id=>wwv_flow_api.id(24132345056561667)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Договоры страхования'
,p_translate_from_text=>'InsurancesLogPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24444747266954956)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24001320158301144.111)
,p_translate_from_id=>wwv_flow_api.id(24001320158301144)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Эксплуатация'
,p_translate_from_text=>'RunningSecPageDNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24444922330954957)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23813657746469245.111)
,p_translate_from_id=>wwv_flow_api.id(23813657746469245)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Выход'
,p_translate_from_text=>'Log Out'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24445183252954957)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251009443769608.111)
,p_translate_from_id=>wwv_flow_api.id(24251009443769608)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Автомобили'
,p_translate_from_text=>'Vehicles'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24445327110954957)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251465673769610.111)
,p_translate_from_id=>wwv_flow_api.id(24251465673769610)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Аккумуляторы'
,p_translate_from_text=>'Batteries'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24445581339954957)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251887270769611.111)
,p_translate_from_id=>wwv_flow_api.id(24251887270769611)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Водители'
,p_translate_from_text=>'Drivers'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24445724080954957)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24252207211769611.111)
,p_translate_from_id=>wwv_flow_api.id(24252207211769611)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал заправок'
,p_translate_from_text=>'Fuelling log'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24445905740954958)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24252615803769611.111)
,p_translate_from_id=>wwv_flow_api.id(24252615803769611)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Места хранения'
,p_translate_from_text=>'Parkings'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24446104045954958)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24253031605769612.111)
,p_translate_from_id=>wwv_flow_api.id(24253031605769612)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Шины'
,p_translate_from_text=>'Tires'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24529410667955220)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>63
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search Dialog'
,p_translate_from_text=>'Search Dialog'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24530036915955233)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>66
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_translate_from_text=>'<div class="t-PopupLOV-actions t-Form--large">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24530280899955237)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>67
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24530825046955249)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>70
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-links">'
,p_translate_from_text=>'<div class="t-PopupLOV-links">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24531044189955252)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>71
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'</div>'
,p_translate_from_text=>'</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24531283522955256)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>72
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Search'
,p_translate_from_text=>'Search'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24531489878955260)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>73
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Close'
,p_translate_from_text=>'Close'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24531614905955264)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>74
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next &gt;'
,p_translate_from_text=>'Next &gt;'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24531899322955268)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>75
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'&lt; Previous'
,p_translate_from_text=>'&lt; Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24542626727955289)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>78
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_translate_from_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24542873596955289)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814285737469274.111)
,p_translate_from_id=>wwv_flow_api.id(23814285737469274)
,p_translate_column_id=>78
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_translate_from_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24543073919955294)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24086582390144635.111)
,p_translate_from_id=>wwv_flow_api.id(24086582390144635)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Действительно хотите выполнить удаление?'
,p_translate_from_text=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24543271716955299)
,p_translated_flow_id=>111
,p_translate_to_id=>110.111
,p_translate_from_id=>110
,p_translate_column_id=>80
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Управление транспортом'
,p_translate_from_text=>'Управление транспортом'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24543470306955302)
,p_translated_flow_id=>111
,p_translate_to_id=>110.111
,p_translate_from_id=>110
,p_translate_column_id=>81
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application-16x16.png"><link rel="icon" sizes="32x32" '
||'href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application.png">'
,p_translate_from_text=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application-16x16.png"><link rel="icon" sizes="32x32" '
||'href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-database-application.png">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24547158820955372)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23815209113469283.111)
,p_translate_from_id=>wwv_flow_api.id(23815209113469283)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Главная'
,p_translate_from_text=>'HomeEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24547308206955372)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24002153008301169.111)
,p_translate_from_id=>wwv_flow_api.id(24002153008301169)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Эксплуатация'
,p_translate_from_text=>'RunningSecPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24547593022955373)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24004420778359813.111)
,p_translate_from_id=>wwv_flow_api.id(24004420778359813)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Поездки'
,p_translate_from_text=>'TripsLogPageEntry'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24547735167955373)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24009579073466535.111)
,p_translate_from_id=>wwv_flow_api.id(24009579073466535)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Заправки'
,p_translate_from_text=>'FuellingLogPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24547958184955373)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24013982314524965.111)
,p_translate_from_id=>wwv_flow_api.id(24013982314524965)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Оформление путевого листа'
,p_translate_from_text=>'FigurationWayBillPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24548112819955373)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24020411285707138.111)
,p_translate_from_id=>wwv_flow_api.id(24020411285707138)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Расчет расхода топлива'
,p_translate_from_text=>'CalcFuelConsumptionPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24548382441955373)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24024913015805970.111)
,p_translate_from_id=>wwv_flow_api.id(24024913015805970)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24548534977955376)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24081842045044610.111)
,p_translate_from_id=>wwv_flow_api.id(24081842045044610)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Обслуживание'
,p_translate_from_text=>'ServiceSecPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24548798004955376)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24107388770182380.111)
,p_translate_from_id=>wwv_flow_api.id(24107388770182380)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Аккумуляторы'
,p_translate_from_text=>'BatteriesLogPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24548921504955377)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24108507051182382.111)
,p_translate_from_id=>wwv_flow_api.id(24108507051182382)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование аккумулятора'
,p_translate_from_text=>'BatteriesLogEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24549116345955377)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24121266147457980.111)
,p_translate_from_id=>wwv_flow_api.id(24121266147457980)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Шины'
,p_translate_from_text=>'TiresLogPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24549373225955377)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24122462578457982.111)
,p_translate_from_id=>wwv_flow_api.id(24122462578457982)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать шины'
,p_translate_from_text=>'TiresLogEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24549532333955377)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24138270459561709.111)
,p_translate_from_id=>wwv_flow_api.id(24138270459561709)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Договора страхования'
,p_translate_from_text=>'InsurancesLogPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24549755494955377)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24139443388561711.111)
,p_translate_from_id=>wwv_flow_api.id(24139443388561711)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать договор страхования'
,p_translate_from_text=>'InsurancesLogEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24550338212955378)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24237216948306697.111)
,p_translate_from_id=>wwv_flow_api.id(24237216948306697)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Картотека'
,p_translate_from_text=>'FileCabinetSecPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24550576002955379)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24247919363464574.111)
,p_translate_from_id=>wwv_flow_api.id(24247919363464574)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Автомобили'
,p_translate_from_text=>'VehiclesPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24550797909955379)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24249116890464577.111)
,p_translate_from_id=>wwv_flow_api.id(24249116890464577)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать автомобиль'
,p_translate_from_text=>'VehiclesEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24550932020955379)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24270190073514292.111)
,p_translate_from_id=>wwv_flow_api.id(24270190073514292)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Заправки'
,p_translate_from_text=>'FuellingLogPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24551129478955379)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24271357900514296.111)
,p_translate_from_id=>wwv_flow_api.id(24271357900514296)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование заправки'
,p_translate_from_text=>'FuellingLogEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24551338736955380)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24298728191715255.111)
,p_translate_from_id=>wwv_flow_api.id(24298728191715255)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Водители'
,p_translate_from_text=>'DriversPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24551586115955381)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24299933457715256.111)
,p_translate_from_id=>wwv_flow_api.id(24299933457715256)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать водителя'
,p_translate_from_text=>'DriversEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24551766519955381)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24315538068789067.111)
,p_translate_from_id=>wwv_flow_api.id(24315538068789067)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Места хранения'
,p_translate_from_text=>'ParkingsPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24551902465955381)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24316700552789069.111)
,p_translate_from_id=>wwv_flow_api.id(24316700552789069)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактировать место хранения'
,p_translate_from_text=>'ParkingsEditPageEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24591188499955464)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23809038806469156.111)
,p_translate_from_id=>wwv_flow_api.id(23809038806469156)
,p_translate_column_id=>112
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_translate_from_text=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24661140534955613)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24004750754359813.111)
,p_translate_from_id=>wwv_flow_api.id(24004750754359813)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24661399159955613)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24009868652466536.111)
,p_translate_from_id=>wwv_flow_api.id(24009868652466536)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24661522449955613)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24025256682805970.111)
,p_translate_from_id=>wwv_flow_api.id(24025256682805970)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24661917170955613)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24103692387182365.111)
,p_translate_from_id=>wwv_flow_api.id(24103692387182365)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24662146421955614)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24119188366457971.111)
,p_translate_from_id=>wwv_flow_api.id(24119188366457971)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24662321735955614)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24133754798561696.111)
,p_translate_from_id=>wwv_flow_api.id(24133754798561696)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24662587544955614)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24246280445464562.111)
,p_translate_from_id=>wwv_flow_api.id(24246280445464562)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24662745066955614)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268094114514281.111)
,p_translate_from_id=>wwv_flow_api.id(24268094114514281)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24662904398955614)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24296686176715250.111)
,p_translate_from_id=>wwv_flow_api.id(24296686176715250)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24663151178955615)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311483597789058.111)
,p_translate_from_id=>wwv_flow_api.id(24311483597789058)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24663320400955619)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24004750754359813.111)
,p_translate_from_id=>wwv_flow_api.id(24004750754359813)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24663518819955620)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24009868652466536.111)
,p_translate_from_id=>wwv_flow_api.id(24009868652466536)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24663728537955620)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24025256682805970.111)
,p_translate_from_id=>wwv_flow_api.id(24025256682805970)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24664105499955620)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24103692387182365.111)
,p_translate_from_id=>wwv_flow_api.id(24103692387182365)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24664302779955620)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24119188366457971.111)
,p_translate_from_id=>wwv_flow_api.id(24119188366457971)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24664505113955621)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24133754798561696.111)
,p_translate_from_id=>wwv_flow_api.id(24133754798561696)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24664781826955621)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24246280445464562.111)
,p_translate_from_id=>wwv_flow_api.id(24246280445464562)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24664939739955621)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268094114514281.111)
,p_translate_from_id=>wwv_flow_api.id(24268094114514281)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24665178603955621)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24296686176715250.111)
,p_translate_from_id=>wwv_flow_api.id(24296686176715250)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24665321377955621)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311483597789058.111)
,p_translate_from_id=>wwv_flow_api.id(24311483597789058)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24669971364955638)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24005162945359829.111)
,p_translate_from_id=>wwv_flow_api.id(24005162945359829)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripid'
,p_translate_from_text=>'Tripid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24670109639955639)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24005449943359836.111)
,p_translate_from_id=>wwv_flow_api.id(24005449943359836)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24670380961955639)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24005872059359836.111)
,p_translate_from_id=>wwv_flow_api.id(24005872059359836)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripqueue'
,p_translate_from_text=>'Tripqueue'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24670505665955639)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24006251483359837.111)
,p_translate_from_id=>wwv_flow_api.id(24006251483359837)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripdistance'
,p_translate_from_text=>'Tripdistance'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24670780636955639)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24006607649359837.111)
,p_translate_from_id=>wwv_flow_api.id(24006607649359837)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripname'
,p_translate_from_text=>'Tripname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24670978658955640)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24007009209359838.111)
,p_translate_from_id=>wwv_flow_api.id(24007009209359838)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripnotes'
,p_translate_from_text=>'Tripnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24671120202955640)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24010281706466536.111)
,p_translate_from_id=>wwv_flow_api.id(24010281706466536)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingid'
,p_translate_from_text=>'Fuellingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24671360342955640)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24010698392466537.111)
,p_translate_from_id=>wwv_flow_api.id(24010698392466537)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24671545563955640)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24011081419466538.111)
,p_translate_from_id=>wwv_flow_api.id(24011081419466538)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingdate'
,p_translate_from_text=>'Fuellingdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24671746343955641)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24011407825466539.111)
,p_translate_from_id=>wwv_flow_api.id(24011407825466539)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingnotes'
,p_translate_from_text=>'Fuellingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24671905014955641)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24025622942805972.111)
,p_translate_from_id=>wwv_flow_api.id(24025622942805972)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24672162382955641)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24026082190805972.111)
,p_translate_from_id=>wwv_flow_api.id(24026082190805972)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24672362445955641)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24026487583805973.111)
,p_translate_from_id=>wwv_flow_api.id(24026487583805973)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24672548071955641)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24026848206805973.111)
,p_translate_from_id=>wwv_flow_api.id(24026848206805973)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24672740151955642)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24027265696805974.111)
,p_translate_from_id=>wwv_flow_api.id(24027265696805974)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24672917611955642)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24103707952182369.111)
,p_translate_from_id=>wwv_flow_api.id(24103707952182369)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymountid'
,p_translate_from_text=>'Batterymountid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24673102342955642)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24104122011182374.111)
,p_translate_from_id=>wwv_flow_api.id(24104122011182374)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24673305689955642)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24104548231182375.111)
,p_translate_from_id=>wwv_flow_api.id(24104548231182375)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymountdate'
,p_translate_from_text=>'Batterymountdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24673509582955643)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24104929822182376.111)
,p_translate_from_id=>wwv_flow_api.id(24104929822182376)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batteryname'
,p_translate_from_text=>'Batteryname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24673718363955643)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24105332423182377.111)
,p_translate_from_id=>wwv_flow_api.id(24105332423182377)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterylifetime'
,p_translate_from_text=>'Batterylifetime'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24673960137955643)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24105728339182377.111)
,p_translate_from_id=>wwv_flow_api.id(24105728339182377)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymileage'
,p_translate_from_text=>'Batterymileage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24674177875955643)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24106135454182378.111)
,p_translate_from_id=>wwv_flow_api.id(24106135454182378)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymotohours'
,p_translate_from_text=>'Batterymotohours'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24674387150955646)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24106501580182379.111)
,p_translate_from_id=>wwv_flow_api.id(24106501580182379)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterynotes'
,p_translate_from_text=>'Batterynotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24674521808955646)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24119240620457975.111)
,p_translate_from_id=>wwv_flow_api.id(24119240620457975)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountid'
,p_translate_from_text=>'Tiresmountid'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24674736457955646)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24119615546457976.111)
,p_translate_from_id=>wwv_flow_api.id(24119615546457976)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24674933290955647)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24120092125457977.111)
,p_translate_from_id=>wwv_flow_api.id(24120092125457977)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountdate'
,p_translate_from_text=>'Tiresmountdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24675128813955647)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24120419377457978.111)
,p_translate_from_id=>wwv_flow_api.id(24120419377457978)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountnotes'
,p_translate_from_text=>'Tiresmountnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24675302003955647)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24133802061561700.111)
,p_translate_from_id=>wwv_flow_api.id(24133802061561700)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insuranceid'
,p_translate_from_text=>'Insuranceid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24675532678955647)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24134267634561701.111)
,p_translate_from_id=>wwv_flow_api.id(24134267634561701)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24676944513955649)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24246305916464568.111)
,p_translate_from_id=>wwv_flow_api.id(24246305916464568)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24677121833955649)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24246753343464572.111)
,p_translate_from_id=>wwv_flow_api.id(24246753343464572)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Vehiclename'
,p_translate_from_text=>'Vehiclename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24677305954955649)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24247178405464572.111)
,p_translate_from_id=>wwv_flow_api.id(24247178405464572)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Vehiclenotes'
,p_translate_from_text=>'Vehiclenotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24677576026955649)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268132839514288.111)
,p_translate_from_id=>wwv_flow_api.id(24268132839514288)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingid'
,p_translate_from_text=>'Fuellingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24677742365955650)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268529182514289.111)
,p_translate_from_id=>wwv_flow_api.id(24268529182514289)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24677993319955650)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268915021514290.111)
,p_translate_from_id=>wwv_flow_api.id(24268915021514290)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingdate'
,p_translate_from_text=>'Fuellingdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24678186842955650)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24269318253514290.111)
,p_translate_from_id=>wwv_flow_api.id(24269318253514290)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingnotes'
,p_translate_from_text=>'Fuellingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24678344978955650)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24297548338715253.111)
,p_translate_from_id=>wwv_flow_api.id(24297548338715253)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Surname'
,p_translate_from_text=>'Surname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24678553194955651)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24297971064715254.111)
,p_translate_from_id=>wwv_flow_api.id(24297971064715254)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Personnotes'
,p_translate_from_text=>'Personnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24678794488955651)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311526514789059.111)
,p_translate_from_id=>wwv_flow_api.id(24311526514789059)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingid'
,p_translate_from_text=>'Parkingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24678944103955651)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311993172789060.111)
,p_translate_from_id=>wwv_flow_api.id(24311993172789060)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24679177715955651)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24296751771715251.111)
,p_translate_from_id=>wwv_flow_api.id(24296751771715251)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24679391449955652)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24297180456715252.111)
,p_translate_from_id=>wwv_flow_api.id(24297180456715252)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24679530789955652)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24312320435789061.111)
,p_translate_from_id=>wwv_flow_api.id(24312320435789061)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingnum'
,p_translate_from_text=>'Parkingnum'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24679798175955652)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24312724722789062.111)
,p_translate_from_id=>wwv_flow_api.id(24312724722789062)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingname'
,p_translate_from_text=>'Parkingname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24679921620955652)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24313196129789063.111)
,p_translate_from_id=>wwv_flow_api.id(24313196129789063)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingaddress'
,p_translate_from_text=>'Parkingaddress'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24680151708955652)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24313548362789064.111)
,p_translate_from_id=>wwv_flow_api.id(24313548362789064)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingcontract'
,p_translate_from_text=>'Parkingcontract'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24680370363955653)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24313951559789064.111)
,p_translate_from_id=>wwv_flow_api.id(24313951559789064)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingnotes'
,p_translate_from_text=>'Parkingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24680500952955653)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24314341094789065.111)
,p_translate_from_id=>wwv_flow_api.id(24314341094789065)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingfromdate'
,p_translate_from_text=>'Parkingfromdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24680709951955653)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24314729797789066.111)
,p_translate_from_id=>wwv_flow_api.id(24314729797789066)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingtodate'
,p_translate_from_text=>'Parkingtodate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24680941614955653)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24134668732561701.111)
,p_translate_from_id=>wwv_flow_api.id(24134668732561701)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24681126182955654)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24135045666561702.111)
,p_translate_from_id=>wwv_flow_api.id(24135045666561702)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancestartdate'
,p_translate_from_text=>'Insurancestartdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24681319007955654)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24135459206561703.111)
,p_translate_from_id=>wwv_flow_api.id(24135459206561703)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insuranceenddate'
,p_translate_from_text=>'Insuranceenddate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24681583832955654)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24135817789561703.111)
,p_translate_from_id=>wwv_flow_api.id(24135817789561703)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancepolicy'
,p_translate_from_text=>'Insurancepolicy'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24681732322955654)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24136266812561704.111)
,p_translate_from_id=>wwv_flow_api.id(24136266812561704)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancecompany'
,p_translate_from_text=>'Insurancecompany'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24681981449955655)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24136670410561705.111)
,p_translate_from_id=>wwv_flow_api.id(24136670410561705)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancetype'
,p_translate_from_text=>'Insurancetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24682192560955655)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24137025542561705.111)
,p_translate_from_id=>wwv_flow_api.id(24137025542561705)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancecost'
,p_translate_from_text=>'Insurancecost'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24682384740955655)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24137418630561706.111)
,p_translate_from_id=>wwv_flow_api.id(24137418630561706)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancenotes'
,p_translate_from_text=>'Insurancenotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24682549848955661)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24005162945359829.111)
,p_translate_from_id=>wwv_flow_api.id(24005162945359829)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripid'
,p_translate_from_text=>'Tripid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24682728135955662)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24005449943359836.111)
,p_translate_from_id=>wwv_flow_api.id(24005449943359836)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24682951597955662)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24005872059359836.111)
,p_translate_from_id=>wwv_flow_api.id(24005872059359836)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripqueue'
,p_translate_from_text=>'Tripqueue'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24683114072955662)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24006251483359837.111)
,p_translate_from_id=>wwv_flow_api.id(24006251483359837)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripdistance'
,p_translate_from_text=>'Tripdistance'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24683314581955662)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24006607649359837.111)
,p_translate_from_id=>wwv_flow_api.id(24006607649359837)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripname'
,p_translate_from_text=>'Tripname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24683595598955663)
,p_page_id=>3
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24007009209359838.111)
,p_translate_from_id=>wwv_flow_api.id(24007009209359838)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripnotes'
,p_translate_from_text=>'Tripnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24683768615955663)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24010281706466536.111)
,p_translate_from_id=>wwv_flow_api.id(24010281706466536)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingid'
,p_translate_from_text=>'Fuellingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24683973624955663)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24010698392466537.111)
,p_translate_from_id=>wwv_flow_api.id(24010698392466537)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24684150863955663)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24011081419466538.111)
,p_translate_from_id=>wwv_flow_api.id(24011081419466538)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingdate'
,p_translate_from_text=>'Fuellingdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24684393858955663)
,p_page_id=>4
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24011407825466539.111)
,p_translate_from_id=>wwv_flow_api.id(24011407825466539)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingnotes'
,p_translate_from_text=>'Fuellingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24684570202955664)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24025622942805972.111)
,p_translate_from_id=>wwv_flow_api.id(24025622942805972)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24684742899955664)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24026082190805972.111)
,p_translate_from_id=>wwv_flow_api.id(24026082190805972)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24684911695955664)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24026487583805973.111)
,p_translate_from_id=>wwv_flow_api.id(24026487583805973)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24685106914955664)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24026848206805973.111)
,p_translate_from_id=>wwv_flow_api.id(24026848206805973)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24685394900955664)
,p_page_id=>7
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24027265696805974.111)
,p_translate_from_id=>wwv_flow_api.id(24027265696805974)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24685506082955665)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24103707952182369.111)
,p_translate_from_id=>wwv_flow_api.id(24103707952182369)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymountid'
,p_translate_from_text=>'Batterymountid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24685736680955665)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24104122011182374.111)
,p_translate_from_id=>wwv_flow_api.id(24104122011182374)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24685950037955665)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24104548231182375.111)
,p_translate_from_id=>wwv_flow_api.id(24104548231182375)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymountdate'
,p_translate_from_text=>'Batterymountdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24686100023955665)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24104929822182376.111)
,p_translate_from_id=>wwv_flow_api.id(24104929822182376)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batteryname'
,p_translate_from_text=>'Batteryname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24686356184955666)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24105332423182377.111)
,p_translate_from_id=>wwv_flow_api.id(24105332423182377)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterylifetime'
,p_translate_from_text=>'Batterylifetime'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24686540978955666)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24105728339182377.111)
,p_translate_from_id=>wwv_flow_api.id(24105728339182377)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymileage'
,p_translate_from_text=>'Batterymileage'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24686768623955666)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24106135454182378.111)
,p_translate_from_id=>wwv_flow_api.id(24106135454182378)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterymotohours'
,p_translate_from_text=>'Batterymotohours'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24686952860955666)
,p_page_id=>14
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24106501580182379.111)
,p_translate_from_id=>wwv_flow_api.id(24106501580182379)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Batterynotes'
,p_translate_from_text=>'Batterynotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24687192353955666)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24119240620457975.111)
,p_translate_from_id=>wwv_flow_api.id(24119240620457975)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountid'
,p_translate_from_text=>'Tiresmountid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24687397110955667)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24119615546457976.111)
,p_translate_from_id=>wwv_flow_api.id(24119615546457976)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24687597448955667)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24120092125457977.111)
,p_translate_from_id=>wwv_flow_api.id(24120092125457977)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountdate'
,p_translate_from_text=>'Tiresmountdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24687728775955667)
,p_page_id=>16
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24120419377457978.111)
,p_translate_from_id=>wwv_flow_api.id(24120419377457978)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tiresmountnotes'
,p_translate_from_text=>'Tiresmountnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24687972948955667)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24133802061561700.111)
,p_translate_from_id=>wwv_flow_api.id(24133802061561700)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insuranceid'
,p_translate_from_text=>'Insuranceid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24688116630955669)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24134267634561701.111)
,p_translate_from_id=>wwv_flow_api.id(24134267634561701)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24689520456955670)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24246305916464568.111)
,p_translate_from_id=>wwv_flow_api.id(24246305916464568)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24689785239955670)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24246753343464572.111)
,p_translate_from_id=>wwv_flow_api.id(24246753343464572)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Vehiclename'
,p_translate_from_text=>'Vehiclename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24689942490955670)
,p_page_id=>20
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24247178405464572.111)
,p_translate_from_id=>wwv_flow_api.id(24247178405464572)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Vehiclenotes'
,p_translate_from_text=>'Vehiclenotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24690183906955671)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268132839514288.111)
,p_translate_from_id=>wwv_flow_api.id(24268132839514288)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingid'
,p_translate_from_text=>'Fuellingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24690362224955671)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268529182514289.111)
,p_translate_from_id=>wwv_flow_api.id(24268529182514289)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24690518121955671)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24268915021514290.111)
,p_translate_from_id=>wwv_flow_api.id(24268915021514290)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingdate'
,p_translate_from_text=>'Fuellingdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24690745222955672)
,p_page_id=>22
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24269318253514290.111)
,p_translate_from_id=>wwv_flow_api.id(24269318253514290)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuellingnotes'
,p_translate_from_text=>'Fuellingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24690920010955672)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24297548338715253.111)
,p_translate_from_id=>wwv_flow_api.id(24297548338715253)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Surname'
,p_translate_from_text=>'Surname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24691163770955672)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24297971064715254.111)
,p_translate_from_id=>wwv_flow_api.id(24297971064715254)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Personnotes'
,p_translate_from_text=>'Personnotes'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24691385614955672)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311526514789059.111)
,p_translate_from_id=>wwv_flow_api.id(24311526514789059)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingid'
,p_translate_from_text=>'Parkingid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24691533501955672)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24311993172789060.111)
,p_translate_from_id=>wwv_flow_api.id(24311993172789060)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24691743707955673)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24296751771715251.111)
,p_translate_from_id=>wwv_flow_api.id(24296751771715251)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24691941439955673)
,p_page_id=>26
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24297180456715252.111)
,p_translate_from_id=>wwv_flow_api.id(24297180456715252)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Name'
,p_translate_from_text=>'Name'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24692147282955673)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24312320435789061.111)
,p_translate_from_id=>wwv_flow_api.id(24312320435789061)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingnum'
,p_translate_from_text=>'Parkingnum'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24692346546955673)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24312724722789062.111)
,p_translate_from_id=>wwv_flow_api.id(24312724722789062)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingname'
,p_translate_from_text=>'Parkingname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24692525708955674)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24313196129789063.111)
,p_translate_from_id=>wwv_flow_api.id(24313196129789063)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingaddress'
,p_translate_from_text=>'Parkingaddress'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24692745140955674)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24313548362789064.111)
,p_translate_from_id=>wwv_flow_api.id(24313548362789064)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingcontract'
,p_translate_from_text=>'Parkingcontract'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24692954456955674)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24313951559789064.111)
,p_translate_from_id=>wwv_flow_api.id(24313951559789064)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingnotes'
,p_translate_from_text=>'Parkingnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24693180372955674)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24314341094789065.111)
,p_translate_from_id=>wwv_flow_api.id(24314341094789065)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingfromdate'
,p_translate_from_text=>'Parkingfromdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24693300412955674)
,p_page_id=>28
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24314729797789066.111)
,p_translate_from_id=>wwv_flow_api.id(24314729797789066)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Parkingtodate'
,p_translate_from_text=>'Parkingtodate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24693527681955675)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24134668732561701.111)
,p_translate_from_id=>wwv_flow_api.id(24134668732561701)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24693700184955675)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24135045666561702.111)
,p_translate_from_id=>wwv_flow_api.id(24135045666561702)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancestartdate'
,p_translate_from_text=>'Insurancestartdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24693969832955675)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24135459206561703.111)
,p_translate_from_id=>wwv_flow_api.id(24135459206561703)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insuranceenddate'
,p_translate_from_text=>'Insuranceenddate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24694166434955675)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24135817789561703.111)
,p_translate_from_id=>wwv_flow_api.id(24135817789561703)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancepolicy'
,p_translate_from_text=>'Insurancepolicy'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24694350557955676)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24136266812561704.111)
,p_translate_from_id=>wwv_flow_api.id(24136266812561704)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancecompany'
,p_translate_from_text=>'Insurancecompany'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24694560593955676)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24136670410561705.111)
,p_translate_from_id=>wwv_flow_api.id(24136670410561705)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancetype'
,p_translate_from_text=>'Insurancetype'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24694779258955676)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24137025542561705.111)
,p_translate_from_id=>wwv_flow_api.id(24137025542561705)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancecost'
,p_translate_from_text=>'Insurancecost'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24694988810955676)
,p_page_id=>18
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24137418630561706.111)
,p_translate_from_id=>wwv_flow_api.id(24137418630561706)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Insurancenotes'
,p_translate_from_text=>'Insurancenotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24896569480956336)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24017908932707124.111)
,p_translate_from_id=>wwv_flow_api.id(24017908932707124)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24898363494956338)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097192547182337.111)
,p_translate_from_id=>wwv_flow_api.id(24097192547182337)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24898536379956338)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097578801182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097578801182338)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24898965874956339)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098327887182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098327887182339)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24899713905956340)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099940418182341.111)
,p_translate_from_id=>wwv_flow_api.id(24099940418182341)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24899913837956340)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24114246237457945.111)
,p_translate_from_id=>wwv_flow_api.id(24114246237457945)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24900166418956340)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24114654980457949.111)
,p_translate_from_id=>wwv_flow_api.id(24114654980457949)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24900518477956340)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115486118457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115486118457951)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24900782261956341)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24126593498561645.111)
,p_translate_from_id=>wwv_flow_api.id(24126593498561645)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24900919227956341)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24126994259561647.111)
,p_translate_from_id=>wwv_flow_api.id(24126994259561647)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24901125519956341)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127314807561648.111)
,p_translate_from_id=>wwv_flow_api.id(24127314807561648)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24901739744956342)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128407448561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128407448561659)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24901943671956342)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128810896561660.111)
,p_translate_from_id=>wwv_flow_api.id(24128810896561660)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24902115816956342)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129257171561660.111)
,p_translate_from_id=>wwv_flow_api.id(24129257171561660)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24902580178956343)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130063274561661.111)
,p_translate_from_id=>wwv_flow_api.id(24130063274561661)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24902723276956343)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242115020464518.111)
,p_translate_from_id=>wwv_flow_api.id(24242115020464518)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24902941044956343)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242529292464533.111)
,p_translate_from_id=>wwv_flow_api.id(24242529292464533)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24903117954956343)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242893157464536.111)
,p_translate_from_id=>wwv_flow_api.id(24242893157464536)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24903305524956344)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24263294372514244.111)
,p_translate_from_id=>wwv_flow_api.id(24263294372514244)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24903542244956344)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24263612430514254.111)
,p_translate_from_id=>wwv_flow_api.id(24263612430514254)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24903931616956344)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264481993514258.111)
,p_translate_from_id=>wwv_flow_api.id(24264481993514258)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24904174646956344)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292049325715242.111)
,p_translate_from_id=>wwv_flow_api.id(24292049325715242)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24904314086956345)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292494152715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292494152715243)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24904553214956345)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292814567715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292814567715243)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24904775413956345)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24293229324715244.111)
,p_translate_from_id=>wwv_flow_api.id(24293229324715244)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24904907803956345)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24304515049789045.111)
,p_translate_from_id=>wwv_flow_api.id(24304515049789045)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24905186044956345)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24304972470789046.111)
,p_translate_from_id=>wwv_flow_api.id(24304972470789046)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24905314272956346)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305313405789046.111)
,p_translate_from_id=>wwv_flow_api.id(24305313405789046)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24905533091956346)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305738868789047.111)
,p_translate_from_id=>wwv_flow_api.id(24305738868789047)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24905745939956346)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306144412789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306144412789048)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24905918423956346)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306586590789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306586590789048)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24906129943956347)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306956917789049.111)
,p_translate_from_id=>wwv_flow_api.id(24306956917789049)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24906702636956347)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24906931195956347)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814285737469274.111)
,p_translate_from_id=>wwv_flow_api.id(23814285737469274)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24907150967956353)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24017908932707124.111)
,p_translate_from_id=>wwv_flow_api.id(24017908932707124)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24909132342956355)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097578801182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097578801182338)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24909557641956355)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098327887182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098327887182339)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24910376238956356)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099940418182341.111)
,p_translate_from_id=>wwv_flow_api.id(24099940418182341)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24910716830956356)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24114654980457949.111)
,p_translate_from_id=>wwv_flow_api.id(24114654980457949)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24911107146956357)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115486118457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115486118457951)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24911592209956357)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24126994259561647.111)
,p_translate_from_id=>wwv_flow_api.id(24126994259561647)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24911782145956357)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127314807561648.111)
,p_translate_from_id=>wwv_flow_api.id(24127314807561648)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24912385171956358)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128407448561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128407448561659)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24912527142956358)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128810896561660.111)
,p_translate_from_id=>wwv_flow_api.id(24128810896561660)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24912764395956358)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129257171561660.111)
,p_translate_from_id=>wwv_flow_api.id(24129257171561660)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24913127346956359)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130063274561661.111)
,p_translate_from_id=>wwv_flow_api.id(24130063274561661)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24913528640956359)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242529292464533.111)
,p_translate_from_id=>wwv_flow_api.id(24242529292464533)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24913742606956359)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242893157464536.111)
,p_translate_from_id=>wwv_flow_api.id(24242893157464536)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24914183893956360)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24263612430514254.111)
,p_translate_from_id=>wwv_flow_api.id(24263612430514254)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24914522213956360)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264481993514258.111)
,p_translate_from_id=>wwv_flow_api.id(24264481993514258)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24914984278956361)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292494152715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292494152715243)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24915107179956361)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292814567715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292814567715243)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24915366879956361)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24293229324715244.111)
,p_translate_from_id=>wwv_flow_api.id(24293229324715244)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24915773116956362)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24304972470789046.111)
,p_translate_from_id=>wwv_flow_api.id(24304972470789046)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24915959480956362)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305313405789046.111)
,p_translate_from_id=>wwv_flow_api.id(24305313405789046)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24916180763956362)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305738868789047.111)
,p_translate_from_id=>wwv_flow_api.id(24305738868789047)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24916372141956362)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306144412789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306144412789048)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24916551463956362)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306586590789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306586590789048)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24916785769956363)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306956917789049.111)
,p_translate_from_id=>wwv_flow_api.id(24306956917789049)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24917366193956363)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24917584729956363)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814285737469274.111)
,p_translate_from_id=>wwv_flow_api.id(23814285737469274)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24920146861956371)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098327887182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098327887182339)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24920382106956371)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098771122182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098771122182339)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24920520884956371)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099162784182340.111)
,p_translate_from_id=>wwv_flow_api.id(24099162784182340)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24920703456956372)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099572624182340.111)
,p_translate_from_id=>wwv_flow_api.id(24099572624182340)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24920931174956372)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099940418182341.111)
,p_translate_from_id=>wwv_flow_api.id(24099940418182341)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24921744528956373)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115486118457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115486118457951)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24922940854956374)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128407448561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128407448561659)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24923119509956374)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128810896561660.111)
,p_translate_from_id=>wwv_flow_api.id(24128810896561660)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24923380373956374)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129257171561660.111)
,p_translate_from_id=>wwv_flow_api.id(24129257171561660)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24923558389956375)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129635161561661.111)
,p_translate_from_id=>wwv_flow_api.id(24129635161561661)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24923738060956375)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130063274561661.111)
,p_translate_from_id=>wwv_flow_api.id(24130063274561661)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24924124145956375)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242529292464533.111)
,p_translate_from_id=>wwv_flow_api.id(24242529292464533)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24924328929956375)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242893157464536.111)
,p_translate_from_id=>wwv_flow_api.id(24242893157464536)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24925180525956376)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264481993514258.111)
,p_translate_from_id=>wwv_flow_api.id(24264481993514258)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24925542627956377)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292494152715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292494152715243)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24925718104956377)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292814567715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292814567715243)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24925916029956377)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24293229324715244.111)
,p_translate_from_id=>wwv_flow_api.id(24293229324715244)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24926533376956378)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305313405789046.111)
,p_translate_from_id=>wwv_flow_api.id(24305313405789046)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24926771866956378)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305738868789047.111)
,p_translate_from_id=>wwv_flow_api.id(24305738868789047)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24926932999956378)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306144412789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306144412789048)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24927149543956378)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306586590789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306586590789048)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24927363641956379)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306956917789049.111)
,p_translate_from_id=>wwv_flow_api.id(24306956917789049)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24928330705956385)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24017908932707124.111)
,p_translate_from_id=>wwv_flow_api.id(24017908932707124)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24928538967956385)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018362804707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018362804707130)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24928787816956385)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018735877707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018735877707130)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24930503894956387)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097984809182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097984809182338)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24930754385956388)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24098327887182339.111)
,p_translate_from_id=>wwv_flow_api.id(24098327887182339)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24931550801956388)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24099940418182341.111)
,p_translate_from_id=>wwv_flow_api.id(24099940418182341)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24932169341956389)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115086090457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115086090457951)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24932313559956389)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115486118457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115486118457951)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24933176967956390)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127601593561658.111)
,p_translate_from_id=>wwv_flow_api.id(24127601593561658)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24933369069956390)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128037761561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128037761561659)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24933582428956391)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128407448561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128407448561659)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24933735414956391)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128810896561660.111)
,p_translate_from_id=>wwv_flow_api.id(24128810896561660)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24933967548956391)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24129257171561660.111)
,p_translate_from_id=>wwv_flow_api.id(24129257171561660)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24934301256956391)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130063274561661.111)
,p_translate_from_id=>wwv_flow_api.id(24130063274561661)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24934788628956392)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242529292464533.111)
,p_translate_from_id=>wwv_flow_api.id(24242529292464533)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24934916779956392)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24242893157464536.111)
,p_translate_from_id=>wwv_flow_api.id(24242893157464536)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24935572848956393)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264034124514257.111)
,p_translate_from_id=>wwv_flow_api.id(24264034124514257)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24935776594956393)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264481993514258.111)
,p_translate_from_id=>wwv_flow_api.id(24264481993514258)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24936101560956393)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292494152715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292494152715243)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24936395451956393)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24292814567715243.111)
,p_translate_from_id=>wwv_flow_api.id(24292814567715243)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24936540410956394)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24293229324715244.111)
,p_translate_from_id=>wwv_flow_api.id(24293229324715244)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24937154005956394)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305313405789046.111)
,p_translate_from_id=>wwv_flow_api.id(24305313405789046)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24937367853956394)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24305738868789047.111)
,p_translate_from_id=>wwv_flow_api.id(24305738868789047)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24937586754956395)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306144412789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306144412789048)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24937797671956395)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306586590789048.111)
,p_translate_from_id=>wwv_flow_api.id(24306586590789048)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24937956854956395)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24306956917789049.111)
,p_translate_from_id=>wwv_flow_api.id(24306956917789049)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24938145147956395)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307300349789049.111)
,p_translate_from_id=>wwv_flow_api.id(24307300349789049)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24938326826956396)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307708484789050.111)
,p_translate_from_id=>wwv_flow_api.id(24307708484789050)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24938581237956396)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24938912900956401)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24017908932707124.111)
,p_translate_from_id=>wwv_flow_api.id(24017908932707124)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24939177043956401)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018362804707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018362804707130)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24939319139956402)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018735877707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018735877707130)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24941144515956403)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097984809182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097984809182338)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24942632793956405)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115086090457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115086090457951)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24943665855956406)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127601593561658.111)
,p_translate_from_id=>wwv_flow_api.id(24127601593561658)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24943842217956406)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128037761561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128037761561659)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24946073376956408)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264034124514257.111)
,p_translate_from_id=>wwv_flow_api.id(24264034124514257)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24948622136956411)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307300349789049.111)
,p_translate_from_id=>wwv_flow_api.id(24307300349789049)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24948847921956411)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307708484789050.111)
,p_translate_from_id=>wwv_flow_api.id(24307708484789050)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24949042492956411)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24960214927956431)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018362804707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018362804707130)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24960457394956431)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24018735877707130.111)
,p_translate_from_id=>wwv_flow_api.id(24018735877707130)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24962284477956433)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24097984809182338.111)
,p_translate_from_id=>wwv_flow_api.id(24097984809182338)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24963839265956435)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24115086090457951.111)
,p_translate_from_id=>wwv_flow_api.id(24115086090457951)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24964833595956436)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24127601593561658.111)
,p_translate_from_id=>wwv_flow_api.id(24127601593561658)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24965047789956436)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24128037761561659.111)
,p_translate_from_id=>wwv_flow_api.id(24128037761561659)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24967261382956438)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24264034124514257.111)
,p_translate_from_id=>wwv_flow_api.id(24264034124514257)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24969854532956441)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307300349789049.111)
,p_translate_from_id=>wwv_flow_api.id(24307300349789049)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(24970022195956441)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24307708484789050.111)
,p_translate_from_id=>wwv_flow_api.id(24307708484789050)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25003815038956493)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24101514105182343.111)
,p_translate_from_id=>wwv_flow_api.id(24101514105182343)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25004455680956494)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24117085288457953.111)
,p_translate_from_id=>wwv_flow_api.id(24117085288457953)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25005020206956494)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24131613214561664.111)
,p_translate_from_id=>wwv_flow_api.id(24131613214561664)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25005602992956495)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24244439908464544.111)
,p_translate_from_id=>wwv_flow_api.id(24244439908464544)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25006275679956496)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24266041979514263.111)
,p_translate_from_id=>wwv_flow_api.id(24266041979514263)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25006830302956496)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294810878715246.111)
,p_translate_from_id=>wwv_flow_api.id(24294810878715246)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25007479738956497)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24309337062789053.111)
,p_translate_from_id=>wwv_flow_api.id(24309337062789053)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25008290662956498)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814701148469277.111)
,p_translate_from_id=>wwv_flow_api.id(23814701148469277)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25009474262956503)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24100748234182342.111)
,p_translate_from_id=>wwv_flow_api.id(24100748234182342)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TBATTERIESLOG'
,p_translate_from_text=>'TBATTERIESLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25009682636956503)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24101173074182342.111)
,p_translate_from_id=>wwv_flow_api.id(24101173074182342)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TBATTERIESLOG'
,p_translate_from_text=>'TBATTERIESLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25010018929956504)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116254538457952.111)
,p_translate_from_id=>wwv_flow_api.id(24116254538457952)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TTIRESLOG'
,p_translate_from_text=>'TTIRESLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25010241325956504)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116656142457953.111)
,p_translate_from_id=>wwv_flow_api.id(24116656142457953)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TTIRESLOG'
,p_translate_from_text=>'TTIRESLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25010668203956504)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130837868561663.111)
,p_translate_from_id=>wwv_flow_api.id(24130837868561663)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TINSURANCESLOG'
,p_translate_from_text=>'TINSURANCESLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25010812836956505)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24131237692561663.111)
,p_translate_from_id=>wwv_flow_api.id(24131237692561663)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TINSURANCESLOG'
,p_translate_from_text=>'TINSURANCESLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25011287305956505)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24243665547464538.111)
,p_translate_from_id=>wwv_flow_api.id(24243665547464538)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TVEHICLES'
,p_translate_from_text=>'TVEHICLES'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25011490418956505)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24244093229464543.111)
,p_translate_from_id=>wwv_flow_api.id(24244093229464543)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TVEHICLES'
,p_translate_from_text=>'TVEHICLES'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25011829206956506)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265259377514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265259377514262)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TFUELLINGLOG'
,p_translate_from_text=>'TFUELLINGLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25012045905956506)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265671314514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265671314514262)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TFUELLINGLOG'
,p_translate_from_text=>'TFUELLINGLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25012422460956506)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294070045715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294070045715245)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TPERSONS'
,p_translate_from_text=>'TPERSONS'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25012607181956507)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294421965715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294421965715245)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TPERSONS'
,p_translate_from_text=>'TPERSONS'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25013047813956507)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308584064789051.111)
,p_translate_from_id=>wwv_flow_api.id(24308584064789051)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TPARKINGS'
,p_translate_from_text=>'TPARKINGS'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25013264020956507)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308992245789052.111)
,p_translate_from_id=>wwv_flow_api.id(24308992245789052)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TPARKINGS'
,p_translate_from_text=>'TPARKINGS'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25015406734956514)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24100748234182342.111)
,p_translate_from_id=>wwv_flow_api.id(24100748234182342)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P15_BATTERYMOUNTID'
,p_translate_from_text=>'P15_BATTERYMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25015689450956514)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24101173074182342.111)
,p_translate_from_id=>wwv_flow_api.id(24101173074182342)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P15_BATTERYMOUNTID'
,p_translate_from_text=>'P15_BATTERYMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25016076618956514)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116254538457952.111)
,p_translate_from_id=>wwv_flow_api.id(24116254538457952)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P17_TIRESMOUNTID'
,p_translate_from_text=>'P17_TIRESMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25016215587956515)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116656142457953.111)
,p_translate_from_id=>wwv_flow_api.id(24116656142457953)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P17_TIRESMOUNTID'
,p_translate_from_text=>'P17_TIRESMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25016678456956515)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130837868561663.111)
,p_translate_from_id=>wwv_flow_api.id(24130837868561663)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P19_INSURANCEID'
,p_translate_from_text=>'P19_INSURANCEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25016889671956515)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24131237692561663.111)
,p_translate_from_id=>wwv_flow_api.id(24131237692561663)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P19_INSURANCEID'
,p_translate_from_text=>'P19_INSURANCEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25017273462956516)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24243665547464538.111)
,p_translate_from_id=>wwv_flow_api.id(24243665547464538)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P21_VEHICLEID'
,p_translate_from_text=>'P21_VEHICLEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25017401661956516)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24244093229464543.111)
,p_translate_from_id=>wwv_flow_api.id(24244093229464543)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P21_VEHICLEID'
,p_translate_from_text=>'P21_VEHICLEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25017879620956516)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265259377514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265259377514262)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P23_FUELLINGID'
,p_translate_from_text=>'P23_FUELLINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25018064720956517)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265671314514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265671314514262)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P23_FUELLINGID'
,p_translate_from_text=>'P23_FUELLINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25018422101956517)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294070045715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294070045715245)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P27_PERSONID'
,p_translate_from_text=>'P27_PERSONID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25018659278956517)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294421965715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294421965715245)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P27_PERSONID'
,p_translate_from_text=>'P27_PERSONID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25019002918956518)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308584064789051.111)
,p_translate_from_id=>wwv_flow_api.id(24308584064789051)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P29_PARKINGID'
,p_translate_from_text=>'P29_PARKINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25019295042956518)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308992245789052.111)
,p_translate_from_id=>wwv_flow_api.id(24308992245789052)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P29_PARKINGID'
,p_translate_from_text=>'P29_PARKINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25021401832956524)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24100748234182342.111)
,p_translate_from_id=>wwv_flow_api.id(24100748234182342)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BATTERYMOUNTID'
,p_translate_from_text=>'BATTERYMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25021658218956525)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24101173074182342.111)
,p_translate_from_id=>wwv_flow_api.id(24101173074182342)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BATTERYMOUNTID'
,p_translate_from_text=>'BATTERYMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25022082145956525)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116254538457952.111)
,p_translate_from_id=>wwv_flow_api.id(24116254538457952)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TIRESMOUNTID'
,p_translate_from_text=>'TIRESMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25022253920956525)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116656142457953.111)
,p_translate_from_id=>wwv_flow_api.id(24116656142457953)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TIRESMOUNTID'
,p_translate_from_text=>'TIRESMOUNTID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25022666842956526)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24130837868561663.111)
,p_translate_from_id=>wwv_flow_api.id(24130837868561663)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INSURANCEID'
,p_translate_from_text=>'INSURANCEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25022838595956526)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24131237692561663.111)
,p_translate_from_id=>wwv_flow_api.id(24131237692561663)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'INSURANCEID'
,p_translate_from_text=>'INSURANCEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25023233591956526)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24243665547464538.111)
,p_translate_from_id=>wwv_flow_api.id(24243665547464538)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VEHICLEID'
,p_translate_from_text=>'VEHICLEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25023400443956527)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24244093229464543.111)
,p_translate_from_id=>wwv_flow_api.id(24244093229464543)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VEHICLEID'
,p_translate_from_text=>'VEHICLEID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25023882141956527)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265259377514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265259377514262)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FUELLINGID'
,p_translate_from_text=>'FUELLINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25024020564956527)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265671314514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265671314514262)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'FUELLINGID'
,p_translate_from_text=>'FUELLINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25024415820956528)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294070045715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294070045715245)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'PERSONID'
,p_translate_from_text=>'PERSONID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25024670515956528)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294421965715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294421965715245)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'PERSONID'
,p_translate_from_text=>'PERSONID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25025047543956528)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308584064789051.111)
,p_translate_from_id=>wwv_flow_api.id(24308584064789051)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'PARKINGID'
,p_translate_from_text=>'PARKINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25025213418956528)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308992245789052.111)
,p_translate_from_id=>wwv_flow_api.id(24308992245789052)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'PARKINGID'
,p_translate_from_text=>'PARKINGID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25068395802956633)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23771190817469008.111)
,p_translate_from_id=>wwv_flow_api.id(23771190817469008)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25068766873956634)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23771067735469006.111)
,p_translate_from_id=>wwv_flow_api.id(23771067735469006)
,p_translate_column_id=>298
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25069579192956642)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23771190817469008.111)
,p_translate_from_id=>wwv_flow_api.id(23771190817469008)
,p_translate_column_id=>300
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25074379993956674)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23815360725469286.111)
,p_translate_from_id=>wwv_flow_api.id(23815360725469286)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25074510072956674)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040536412012401.111)
,p_translate_from_id=>wwv_flow_api.id(24040536412012401)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25074754223956674)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040639155012402.111)
,p_translate_from_id=>wwv_flow_api.id(24040639155012402)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25074957159956675)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040787146012403.111)
,p_translate_from_id=>wwv_flow_api.id(24040787146012403)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25075108471956675)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040909541012405.111)
,p_translate_from_id=>wwv_flow_api.id(24040909541012405)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25075599503956675)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24002361036301172.111)
,p_translate_from_id=>wwv_flow_api.id(24002361036301172)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25076714772956676)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24015361316707112.111)
,p_translate_from_id=>wwv_flow_api.id(24015361316707112)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25076901595956677)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24016068533707113.111)
,p_translate_from_id=>wwv_flow_api.id(24016068533707113)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25077972725956678)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048815935187407.111)
,p_translate_from_id=>wwv_flow_api.id(24048815935187407)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25078121449956678)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049630174187412.111)
,p_translate_from_id=>wwv_flow_api.id(24049630174187412)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25078352333956678)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24050016515187412.111)
,p_translate_from_id=>wwv_flow_api.id(24050016515187412)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25078532026956678)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040868967012404.111)
,p_translate_from_id=>wwv_flow_api.id(24040868967012404)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25078786419956679)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049297332187410.111)
,p_translate_from_id=>wwv_flow_api.id(24049297332187410)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25080571021956681)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24094462969182333.111)
,p_translate_from_id=>wwv_flow_api.id(24094462969182333)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25081313203956682)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24111534176457939.111)
,p_translate_from_id=>wwv_flow_api.id(24111534176457939)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25082118237956682)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24123874567561640.111)
,p_translate_from_id=>wwv_flow_api.id(24123874567561640)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25082945766956683)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24239469141464505.111)
,p_translate_from_id=>wwv_flow_api.id(24239469141464505)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25083744539956684)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24260522446514234.111)
,p_translate_from_id=>wwv_flow_api.id(24260522446514234)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25084560611956685)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24289422646715236.111)
,p_translate_from_id=>wwv_flow_api.id(24289422646715236)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25085350869956686)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24301829794789040.111)
,p_translate_from_id=>wwv_flow_api.id(24301829794789040)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25085776915956686)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814075123469268.111)
,p_translate_from_id=>wwv_flow_api.id(23814075123469268)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25085998766956691)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23815360725469286.111)
,p_translate_from_id=>wwv_flow_api.id(23815360725469286)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25086111644956691)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040536412012401.111)
,p_translate_from_id=>wwv_flow_api.id(24040536412012401)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25086359460956691)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040639155012402.111)
,p_translate_from_id=>wwv_flow_api.id(24040639155012402)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25086526794956692)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040787146012403.111)
,p_translate_from_id=>wwv_flow_api.id(24040787146012403)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25086793649956692)
,p_page_id=>1
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040909541012405.111)
,p_translate_from_id=>wwv_flow_api.id(24040909541012405)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25087124404956692)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24002361036301172.111)
,p_translate_from_id=>wwv_flow_api.id(24002361036301172)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25088307902956693)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24015361316707112.111)
,p_translate_from_id=>wwv_flow_api.id(24015361316707112)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25088537704956694)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24016068533707113.111)
,p_translate_from_id=>wwv_flow_api.id(24016068533707113)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25089352586956694)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048408986187406.111)
,p_translate_from_id=>wwv_flow_api.id(24048408986187406)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25089585920956695)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048815935187407.111)
,p_translate_from_id=>wwv_flow_api.id(24048815935187407)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25089791874956695)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049630174187412.111)
,p_translate_from_id=>wwv_flow_api.id(24049630174187412)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25089959172956695)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24050016515187412.111)
,p_translate_from_id=>wwv_flow_api.id(24050016515187412)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25090130832956695)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24040868967012404.111)
,p_translate_from_id=>wwv_flow_api.id(24040868967012404)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25090398149956696)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049297332187410.111)
,p_translate_from_id=>wwv_flow_api.id(24049297332187410)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25092114468956697)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24094462969182333.111)
,p_translate_from_id=>wwv_flow_api.id(24094462969182333)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25092906134956698)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24111534176457939.111)
,p_translate_from_id=>wwv_flow_api.id(24111534176457939)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25093737820956699)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24123874567561640.111)
,p_translate_from_id=>wwv_flow_api.id(24123874567561640)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25094505146956700)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24239469141464505.111)
,p_translate_from_id=>wwv_flow_api.id(24239469141464505)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25095345326956701)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24260522446514234.111)
,p_translate_from_id=>wwv_flow_api.id(24260522446514234)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25096178514956701)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24289422646715236.111)
,p_translate_from_id=>wwv_flow_api.id(24289422646715236)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25096988944956702)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24301829794789040.111)
,p_translate_from_id=>wwv_flow_api.id(24301829794789040)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25097319977956703)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814075123469268.111)
,p_translate_from_id=>wwv_flow_api.id(23814075123469268)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'HTML'
,p_translate_from_text=>'HTML'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25098619791956709)
,p_page_id=>2
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24002361036301172.111)
,p_translate_from_id=>wwv_flow_api.id(24002361036301172)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25099838622956710)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24015361316707112.111)
,p_translate_from_id=>wwv_flow_api.id(24015361316707112)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25100058937956710)
,p_page_id=>6
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24016068533707113.111)
,p_translate_from_id=>wwv_flow_api.id(24016068533707113)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25100807681956711)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048408986187406.111)
,p_translate_from_id=>wwv_flow_api.id(24048408986187406)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25101013331956711)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24048815935187407.111)
,p_translate_from_id=>wwv_flow_api.id(24048815935187407)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25101268593956711)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049630174187412.111)
,p_translate_from_id=>wwv_flow_api.id(24049630174187412)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25101441171956711)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24050016515187412.111)
,p_translate_from_id=>wwv_flow_api.id(24050016515187412)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25101822877956712)
,p_page_id=>8
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24049297332187410.111)
,p_translate_from_id=>wwv_flow_api.id(24049297332187410)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25103624575956714)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24094462969182333.111)
,p_translate_from_id=>wwv_flow_api.id(24094462969182333)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25104471733956715)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24111534176457939.111)
,p_translate_from_id=>wwv_flow_api.id(24111534176457939)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25105243699956715)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24123874567561640.111)
,p_translate_from_id=>wwv_flow_api.id(24123874567561640)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25106084034956716)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24239469141464505.111)
,p_translate_from_id=>wwv_flow_api.id(24239469141464505)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25106884103956717)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24260522446514234.111)
,p_translate_from_id=>wwv_flow_api.id(24260522446514234)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25107617901956718)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24289422646715236.111)
,p_translate_from_id=>wwv_flow_api.id(24289422646715236)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25108461926956718)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24301829794789040.111)
,p_translate_from_id=>wwv_flow_api.id(24301829794789040)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25244347325956902)
,p_page_id=>15
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24101173074182342.111)
,p_translate_from_id=>wwv_flow_api.id(24101173074182342)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25244932779956903)
,p_page_id=>17
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24116656142457953.111)
,p_translate_from_id=>wwv_flow_api.id(24116656142457953)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25245537131956903)
,p_page_id=>19
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24131237692561663.111)
,p_translate_from_id=>wwv_flow_api.id(24131237692561663)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25246152357956904)
,p_page_id=>21
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24244093229464543.111)
,p_translate_from_id=>wwv_flow_api.id(24244093229464543)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25246729844956904)
,p_page_id=>23
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24265671314514262.111)
,p_translate_from_id=>wwv_flow_api.id(24265671314514262)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25247390786956905)
,p_page_id=>27
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24294421965715245.111)
,p_translate_from_id=>wwv_flow_api.id(24294421965715245)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25247983254956906)
,p_page_id=>29
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24308992245789052.111)
,p_translate_from_id=>wwv_flow_api.id(24308992245789052)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25348302287957195)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251009443769608.111)
,p_translate_from_id=>wwv_flow_api.id(24251009443769608)
,p_translate_column_id=>376
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'View and edit file Vehicles'
,p_translate_from_text=>'View and edit file Vehicles'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25348569420957195)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251465673769610.111)
,p_translate_from_id=>wwv_flow_api.id(24251465673769610)
,p_translate_column_id=>376
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'List of all batteries that purchased and used'
,p_translate_from_text=>'List of all batteries that purchased and used'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25348723774957195)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251887270769611.111)
,p_translate_from_id=>wwv_flow_api.id(24251887270769611)
,p_translate_column_id=>376
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Сотрудники претендующие на должность водителя'
,p_translate_from_text=>'Employees who can be a car drivers'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25348931313957195)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24252207211769611.111)
,p_translate_from_id=>wwv_flow_api.id(24252207211769611)
,p_translate_column_id=>376
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Fuelling'
,p_translate_from_text=>'Fuelling'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25349185987957196)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24252615803769611.111)
,p_translate_from_id=>wwv_flow_api.id(24252615803769611)
,p_translate_column_id=>376
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'All car parkings'
,p_translate_from_text=>'All car parkings'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25349337177957196)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24253031605769612.111)
,p_translate_from_id=>wwv_flow_api.id(24253031605769612)
,p_translate_column_id=>376
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Just all tires'
,p_translate_from_text=>'Just all tires'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25353134233957203)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251009443769608.111)
,p_translate_from_id=>wwv_flow_api.id(24251009443769608)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'chartIcon'
,p_translate_from_text=>'chartIcon'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25353392280957204)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251465673769610.111)
,p_translate_from_id=>wwv_flow_api.id(24251465673769610)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'chartIcon'
,p_translate_from_text=>'chartIcon'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25353504910957204)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24251887270769611.111)
,p_translate_from_id=>wwv_flow_api.id(24251887270769611)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'reportIcon'
,p_translate_from_text=>'reportIcon'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25353771198957204)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24252207211769611.111)
,p_translate_from_id=>wwv_flow_api.id(24252207211769611)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'chartIcon'
,p_translate_from_text=>'chartIcon'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25353975405957204)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24252615803769611.111)
,p_translate_from_id=>wwv_flow_api.id(24252615803769611)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'reportIcon'
,p_translate_from_text=>'reportIcon'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25354172068957205)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(24253031605769612.111)
,p_translate_from_id=>wwv_flow_api.id(24253031605769612)
,p_translate_column_id=>377
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'chartIcon'
,p_translate_from_text=>'chartIcon'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25450950004957372)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814132908469272.111)
,p_translate_from_id=>wwv_flow_api.id(23814132908469272)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Имя пользователя'
,p_translate_from_text=>'Имя пользователя'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25451112110957372)
,p_page_id=>101
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23814285737469274.111)
,p_translate_from_id=>wwv_flow_api.id(23814285737469274)
,p_translate_column_id=>396
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Пароль'
,p_translate_from_text=>'Пароль'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25451300596957377)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(23813595700469208.111)
,p_translate_from_id=>wwv_flow_api.id(23813595700469208)
,p_translate_column_id=>397
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Desktop'
,p_translate_from_text=>'Desktop'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25626588762291385)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>30.111
,p_translate_from_id=>30
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Ремонты'
,p_translate_from_text=>'BreakageServiceLogPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25626616868291385)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>31.111
,p_translate_from_id=>31
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование ремонта'
,p_translate_from_text=>'BreakageServiceLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25627003535291391)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>30.111
,p_translate_from_id=>30
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Ремонты'
,p_translate_from_text=>'BreakageServiceLogPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25627277071291391)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>31.111
,p_translate_from_id=>31
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование ремонта'
,p_translate_from_text=>'BreakageServiceLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25629934188291417)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>30.111
,p_translate_from_id=>30
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25630197313291417)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>31.111
,p_translate_from_id=>31
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25630574130291423)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25610839971232999.111)
,p_translate_from_id=>wwv_flow_api.id(25610839971232999)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25630795510291423)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25621264663233065.111)
,p_translate_from_id=>wwv_flow_api.id(25621264663233065)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25630961608291424)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25610915648232999.111)
,p_translate_from_id=>wwv_flow_api.id(25610915648232999)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Apply Changes'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25631155201291424)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25611019753233000.111)
,p_translate_from_id=>wwv_flow_api.id(25611019753233000)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25631326383291424)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25611153966233000.111)
,p_translate_from_id=>wwv_flow_api.id(25611153966233000)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25632095392291430)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613129404233007.111)
,p_translate_from_id=>wwv_flow_api.id(25613129404233007)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservid'
,p_translate_from_text=>'Breakageservid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25632274881291431)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613442346233020.111)
,p_translate_from_id=>wwv_flow_api.id(25613442346233020)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25632472200291431)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613896193233024.111)
,p_translate_from_id=>wwv_flow_api.id(25613896193233024)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservdate'
,p_translate_from_text=>'Breakageservdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25632633767291431)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614289801233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614289801233025)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakagename'
,p_translate_from_text=>'Breakagename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25632846677291431)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614660702233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614660702233025)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservcost'
,p_translate_from_text=>'Breakageservcost'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25633086488291432)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615089753233026.111)
,p_translate_from_id=>wwv_flow_api.id(25615089753233026)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservnotes'
,p_translate_from_text=>'Breakageservnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25635142358291448)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25616250142233031.111)
,p_translate_from_id=>wwv_flow_api.id(25616250142233031)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25635630131291457)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25618325782233051.111)
,p_translate_from_id=>wwv_flow_api.id(25618325782233051)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Ремонты'
,p_translate_from_text=>'BreakageServiceLogPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25635852527291457)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25621844257233068.111)
,p_translate_from_id=>wwv_flow_api.id(25621844257233068)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25636083978291458)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25610403740232995.111)
,p_translate_from_id=>wwv_flow_api.id(25610403740232995)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Редактирование ремонта'
,p_translate_from_text=>'BreakageServiceLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25636278375291458)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25622444928233070.111)
,p_translate_from_id=>wwv_flow_api.id(25622444928233070)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25636836711291465)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25618325782233051.111)
,p_translate_from_id=>wwv_flow_api.id(25618325782233051)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "BREAKAGESERVID", ',
'"VEHICLEID",',
'"BREAKAGESERVDATE",',
'"BREAKAGENAME",',
'"BREAKAGESERVCOST",',
'"BREAKAGESERVNOTES"',
'from "#OWNER#"."TBREAKAGESERVICELOG" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "BREAKAGESERVID", ',
'"VEHICLEID",',
'"BREAKAGESERVDATE",',
'"BREAKAGENAME",',
'"BREAKAGESERVCOST",',
'"BREAKAGESERVNOTES"',
'from "#OWNER#"."TBREAKAGESERVICELOG" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25640401133291495)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25617370999233036.111)
,p_translate_from_id=>wwv_flow_api.id(25617370999233036)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Ремонты'
,p_translate_from_text=>'BreakageServiceLogPage2DNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25647197136291765)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25621631871233066.111)
,p_translate_from_id=>wwv_flow_api.id(25621631871233066)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Ремонты'
,p_translate_from_text=>'BreakageServiceLogPage2Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25647209955291765)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25622807281233070.111)
,p_translate_from_id=>wwv_flow_api.id(25622807281233070)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование ремонта'
,p_translate_from_text=>'BreakageServiceLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25658081677291896)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25618774674233051.111)
,p_translate_from_id=>wwv_flow_api.id(25618774674233051)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25658301307291901)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25618774674233051.111)
,p_translate_from_id=>wwv_flow_api.id(25618774674233051)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25659132176291914)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25619630739233062.111)
,p_translate_from_id=>wwv_flow_api.id(25619630739233062)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservdate'
,p_translate_from_text=>'Breakageservdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25659308005291914)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25620038136233063.111)
,p_translate_from_id=>wwv_flow_api.id(25620038136233063)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakagename'
,p_translate_from_text=>'Breakagename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25659595827291914)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25619209727233062.111)
,p_translate_from_id=>wwv_flow_api.id(25619209727233062)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25659756155291915)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25618859877233058.111)
,p_translate_from_id=>wwv_flow_api.id(25618859877233058)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservid'
,p_translate_from_text=>'Breakageservid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25659977078291915)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25620834901233065.111)
,p_translate_from_id=>wwv_flow_api.id(25620834901233065)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservnotes'
,p_translate_from_text=>'Breakageservnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25660179679291915)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25620409695233064.111)
,p_translate_from_id=>wwv_flow_api.id(25620409695233064)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservcost'
,p_translate_from_text=>'Breakageservcost'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25660974036291923)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25619630739233062.111)
,p_translate_from_id=>wwv_flow_api.id(25619630739233062)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservdate'
,p_translate_from_text=>'Breakageservdate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25661189798291923)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25620038136233063.111)
,p_translate_from_id=>wwv_flow_api.id(25620038136233063)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakagename'
,p_translate_from_text=>'Breakagename'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25661306650291923)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25619209727233062.111)
,p_translate_from_id=>wwv_flow_api.id(25619209727233062)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25661550515291927)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25618859877233058.111)
,p_translate_from_id=>wwv_flow_api.id(25618859877233058)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservid'
,p_translate_from_text=>'Breakageservid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25661704662291927)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25620834901233065.111)
,p_translate_from_id=>wwv_flow_api.id(25620834901233065)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservnotes'
,p_translate_from_text=>'Breakageservnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25661961947291927)
,p_page_id=>30
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25620409695233064.111)
,p_translate_from_id=>wwv_flow_api.id(25620409695233064)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Breakageservcost'
,p_translate_from_text=>'Breakageservcost'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25686383119292380)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613129404233007.111)
,p_translate_from_id=>wwv_flow_api.id(25613129404233007)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25686511890292381)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613442346233020.111)
,p_translate_from_id=>wwv_flow_api.id(25613442346233020)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25686919650292381)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614289801233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614289801233025)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25687312000292381)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615089753233026.111)
,p_translate_from_id=>wwv_flow_api.id(25615089753233026)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25688550143292391)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613442346233020.111)
,p_translate_from_id=>wwv_flow_api.id(25613442346233020)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25688984420292391)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614289801233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614289801233025)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25689327186292392)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615089753233026.111)
,p_translate_from_id=>wwv_flow_api.id(25615089753233026)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25690953240292399)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614289801233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614289801233025)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25691118469292399)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614660702233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614660702233025)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25691363641292399)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615089753233026.111)
,p_translate_from_id=>wwv_flow_api.id(25615089753233026)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25692690470292406)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613896193233024.111)
,p_translate_from_id=>wwv_flow_api.id(25613896193233024)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25692813927292406)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614289801233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614289801233025)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25693246604292407)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615089753233026.111)
,p_translate_from_id=>wwv_flow_api.id(25615089753233026)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25694483840292413)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613896193233024.111)
,p_translate_from_id=>wwv_flow_api.id(25613896193233024)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25694636550292414)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25614289801233025.111)
,p_translate_from_id=>wwv_flow_api.id(25614289801233025)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25698087854292426)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25613896193233024.111)
,p_translate_from_id=>wwv_flow_api.id(25613896193233024)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25705226183292452)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25616620605233032.111)
,p_translate_from_id=>wwv_flow_api.id(25616620605233032)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25705762603292457)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615885949233031.111)
,p_translate_from_id=>wwv_flow_api.id(25615885949233031)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TBREAKAGESERVICELOG'
,p_translate_from_text=>'TBREAKAGESERVICELOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25705969801292458)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25616250142233031.111)
,p_translate_from_id=>wwv_flow_api.id(25616250142233031)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TBREAKAGESERVICELOG'
,p_translate_from_text=>'TBREAKAGESERVICELOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25706638111292463)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615885949233031.111)
,p_translate_from_id=>wwv_flow_api.id(25615885949233031)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P31_BREAKAGESERVID'
,p_translate_from_text=>'P31_BREAKAGESERVID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25706884080292463)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25616250142233031.111)
,p_translate_from_id=>wwv_flow_api.id(25616250142233031)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P31_BREAKAGESERVID'
,p_translate_from_text=>'P31_BREAKAGESERVID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25707525586292469)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25615885949233031.111)
,p_translate_from_id=>wwv_flow_api.id(25615885949233031)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BREAKAGESERVID'
,p_translate_from_text=>'BREAKAGESERVID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25707703316292469)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25616250142233031.111)
,p_translate_from_id=>wwv_flow_api.id(25616250142233031)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BREAKAGESERVID'
,p_translate_from_text=>'BREAKAGESERVID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25714172662292574)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25610403740232995.111)
,p_translate_from_id=>wwv_flow_api.id(25610403740232995)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25715308226292580)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25610403740232995.111)
,p_translate_from_id=>wwv_flow_api.id(25610403740232995)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25716577861292587)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25610403740232995.111)
,p_translate_from_id=>wwv_flow_api.id(25610403740232995)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25734881062292663)
,p_page_id=>31
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25616250142233031.111)
,p_translate_from_id=>wwv_flow_api.id(25616250142233031)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25829617225106293)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>32.111
,p_translate_from_id=>32
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25829795241106293)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>33.111
,p_translate_from_id=>33
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25829954275106294)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>34.111
,p_translate_from_id=>34
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TripsLogEditPage2'
,p_translate_from_text=>'TripsLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25830112022106298)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>32.111
,p_translate_from_id=>32
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25830351524106299)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>33.111
,p_translate_from_id=>33
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25830588293106299)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>34.111
,p_translate_from_id=>34
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TripsLogEditPage2'
,p_translate_from_text=>'TripsLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25833057036106321)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>32.111
,p_translate_from_id=>32
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25833217072106322)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>33.111
,p_translate_from_id=>33
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25833458834106322)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>34.111
,p_translate_from_id=>34
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25833679135106327)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25820037053056743.111)
,p_translate_from_id=>wwv_flow_api.id(25820037053056743)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить'
,p_translate_from_text=>'Save'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25833883819106327)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806905588056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806905588056672)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next'
,p_translate_from_text=>'Next'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25834032651106328)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25807006836056672.111)
,p_translate_from_id=>wwv_flow_api.id(25807006836056672)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Previous'
,p_translate_from_text=>'Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25834271240106328)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25820198018056743.111)
,p_translate_from_id=>wwv_flow_api.id(25820198018056743)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25834408399106328)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25801163589056643.111)
,p_translate_from_id=>wwv_flow_api.id(25801163589056643)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25834629926106328)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25819920220056743.111)
,p_translate_from_id=>wwv_flow_api.id(25819920220056743)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25834849968106329)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25820242317056743.111)
,p_translate_from_id=>wwv_flow_api.id(25820242317056743)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25835058845106329)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25801224516056643.111)
,p_translate_from_id=>wwv_flow_api.id(25801224516056643)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить'
,p_translate_from_text=>'Save'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25835261574106329)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25818088608056740.111)
,p_translate_from_id=>wwv_flow_api.id(25818088608056740)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25835490005106329)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25799294770056638.111)
,p_translate_from_id=>wwv_flow_api.id(25799294770056638)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25835669720106329)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25801332357056643.111)
,p_translate_from_id=>wwv_flow_api.id(25801332357056643)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25835852601106330)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25801444996056644.111)
,p_translate_from_id=>wwv_flow_api.id(25801444996056644)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25836089273106335)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25803432438056649.111)
,p_translate_from_id=>wwv_flow_api.id(25803432438056649)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25836246718106336)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25803817315056661.111)
,p_translate_from_id=>wwv_flow_api.id(25803817315056661)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25836428616106336)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25804231582056665.111)
,p_translate_from_id=>wwv_flow_api.id(25804231582056665)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25836604627106336)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25804619471056665.111)
,p_translate_from_id=>wwv_flow_api.id(25804619471056665)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25836834838106336)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805031971056666.111)
,p_translate_from_id=>wwv_flow_api.id(25805031971056666)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25837021827106338)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25809296036056682.111)
,p_translate_from_id=>wwv_flow_api.id(25809296036056682)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID_NEXT'
,p_translate_from_text=>'P33_WAYBILLID_NEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25837249692106338)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25809672031056683.111)
,p_translate_from_id=>wwv_flow_api.id(25809672031056683)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID_PREV'
,p_translate_from_text=>'P33_WAYBILLID_PREV'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25837618212106338)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25822220549056746.111)
,p_translate_from_id=>wwv_flow_api.id(25822220549056746)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripid'
,p_translate_from_text=>'Tripid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25837804006106338)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25822609595056746.111)
,p_translate_from_id=>wwv_flow_api.id(25822609595056746)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25838080629106339)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823008937056747.111)
,p_translate_from_id=>wwv_flow_api.id(25823008937056747)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripqueue'
,p_translate_from_text=>'Tripqueue'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25838297793106339)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823489852056747.111)
,p_translate_from_id=>wwv_flow_api.id(25823489852056747)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripdistance'
,p_translate_from_text=>'Tripdistance'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25838402678106339)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823872994056748.111)
,p_translate_from_id=>wwv_flow_api.id(25823872994056748)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripname'
,p_translate_from_text=>'Tripname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25838615043106339)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25824279567056749.111)
,p_translate_from_id=>wwv_flow_api.id(25824279567056749)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripnotes'
,p_translate_from_text=>'Tripnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25840496844106354)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825426038056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825426038056750)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25841206088106355)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806215359056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806215359056672)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25841635987106365)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25827796952056757.111)
,p_translate_from_id=>wwv_flow_api.id(25827796952056757)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25841860723106365)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25793793195056567.111)
,p_translate_from_id=>wwv_flow_api.id(25793793195056567)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage2Reg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25842049562106365)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25800729923056643.111)
,p_translate_from_id=>wwv_flow_api.id(25800729923056643)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25842240485106365)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25793829161056567.111)
,p_translate_from_id=>wwv_flow_api.id(25793829161056567)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TripsLogPage2'
,p_translate_from_text=>'TripsLogPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25842408548106365)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25828437560056759.111)
,p_translate_from_id=>wwv_flow_api.id(25828437560056759)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25842696096106366)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25819583547056742.111)
,p_translate_from_id=>wwv_flow_api.id(25819583547056742)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'TripsLogEditPage2'
,p_translate_from_text=>'TripsLogEditPage2'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25842844352106366)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25829066292056760.111)
,p_translate_from_id=>wwv_flow_api.id(25829066292056760)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25843291305106372)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25793793195056567.111)
,p_translate_from_id=>wwv_flow_api.id(25793793195056567)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25843659056106373)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25793829161056567.111)
,p_translate_from_id=>wwv_flow_api.id(25793829161056567)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TRIPID,',
'       WAYBILLID,',
'       TRIPQUEUE,',
'       TRIPDISTANCE,',
'       TRIPNAME,',
'       TRIPNOTES',
'  from TTRIPSLOG',
' where TTRIPSLOG.WAYBILLID = :P33_WAYBILLID'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TRIPID,',
'       WAYBILLID,',
'       TRIPQUEUE,',
'       TRIPDISTANCE,',
'       TRIPNAME,',
'       TRIPNOTES',
'  from TTRIPSLOG',
' where TTRIPSLOG.WAYBILLID = :P33_WAYBILLID'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25847233906106401)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25794215225056612.111)
,p_translate_from_id=>wwv_flow_api.id(25794215225056612)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов 2'
,p_translate_from_text=>'WayBillLogPage2DNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25847506358106429)
,p_page_id=>32
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25793793195056567.111)
,p_translate_from_id=>wwv_flow_api.id(25793793195056567)
,p_translate_column_id=>36
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25847907898106430)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25793829161056567.111)
,p_translate_from_id=>wwv_flow_api.id(25793829161056567)
,p_translate_column_id=>36
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25855760173106605)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25807257797056673.111)
,p_translate_from_id=>wwv_flow_api.id(25807257797056673)
,p_translate_column_id=>79
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Are you sure you want to leave this page without saving?'
,p_translate_from_text=>'Are you sure you want to leave this page without saving?'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25855996487106688)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25827508046056755.111)
,p_translate_from_id=>wwv_flow_api.id(25827508046056755)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage2Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25856024064106689)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25829493356056761.111)
,p_translate_from_id=>wwv_flow_api.id(25829493356056761)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TripsLogEditPage2Entry'
,p_translate_from_text=>'TripsLogEditPage2Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25856276154106689)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25828203601056759.111)
,p_translate_from_id=>wwv_flow_api.id(25828203601056759)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage2Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25861209915106721)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25795407182056627.111)
,p_translate_from_id=>wwv_flow_api.id(25795407182056627)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25861333079106721)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25795855997056631.111)
,p_translate_from_id=>wwv_flow_api.id(25795855997056631)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25861509177106722)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25796276558056631.111)
,p_translate_from_id=>wwv_flow_api.id(25796276558056631)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25861796798106722)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25796632683056632.111)
,p_translate_from_id=>wwv_flow_api.id(25796632683056632)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25861927835106722)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25797039873056632.111)
,p_translate_from_id=>wwv_flow_api.id(25797039873056632)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25862135396106722)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25813399913056708.111)
,p_translate_from_id=>wwv_flow_api.id(25813399913056708)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripid'
,p_translate_from_text=>'Tripid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25862383493106722)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25813770598056709.111)
,p_translate_from_id=>wwv_flow_api.id(25813770598056709)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25862552582106723)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25814188984056709.111)
,p_translate_from_id=>wwv_flow_api.id(25814188984056709)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripqueue'
,p_translate_from_text=>'Tripqueue'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25862799821106723)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25814501510056710.111)
,p_translate_from_id=>wwv_flow_api.id(25814501510056710)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripdistance'
,p_translate_from_text=>'Tripdistance'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25862919453106723)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25814948959056710.111)
,p_translate_from_id=>wwv_flow_api.id(25814948959056710)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripname'
,p_translate_from_text=>'Tripname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25863129236106723)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25815303885056711.111)
,p_translate_from_id=>wwv_flow_api.id(25815303885056711)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripnotes'
,p_translate_from_text=>'Tripnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25863394525106728)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25795407182056627.111)
,p_translate_from_id=>wwv_flow_api.id(25795407182056627)
,p_translate_column_id=>107
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_translate_from_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25864331856106729)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25813399913056708.111)
,p_translate_from_id=>wwv_flow_api.id(25813399913056708)
,p_translate_column_id=>107
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_translate_from_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25906886220107306)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25803432438056649.111)
,p_translate_from_id=>wwv_flow_api.id(25803432438056649)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25907678532107307)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805031971056666.111)
,p_translate_from_id=>wwv_flow_api.id(25805031971056666)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25907866480107307)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25809296036056682.111)
,p_translate_from_id=>wwv_flow_api.id(25809296036056682)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25908015560107307)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25809672031056683.111)
,p_translate_from_id=>wwv_flow_api.id(25809672031056683)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25908257368107307)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25810095119056684.111)
,p_translate_from_id=>wwv_flow_api.id(25810095119056684)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25908485103107307)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25822220549056746.111)
,p_translate_from_id=>wwv_flow_api.id(25822220549056746)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25908694066107308)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25822609595056746.111)
,p_translate_from_id=>wwv_flow_api.id(25822609595056746)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25909287740107308)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823872994056748.111)
,p_translate_from_id=>wwv_flow_api.id(25823872994056748)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25909461712107309)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25824279567056749.111)
,p_translate_from_id=>wwv_flow_api.id(25824279567056749)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25910985374107317)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805031971056666.111)
,p_translate_from_id=>wwv_flow_api.id(25805031971056666)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25911458166107317)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25810095119056684.111)
,p_translate_from_id=>wwv_flow_api.id(25810095119056684)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VALUE'
,p_translate_from_text=>'VALUE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25911830642107318)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25822609595056746.111)
,p_translate_from_id=>wwv_flow_api.id(25822609595056746)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VALUE'
,p_translate_from_text=>'VALUE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25912467163107318)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823872994056748.111)
,p_translate_from_id=>wwv_flow_api.id(25823872994056748)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25912676799107319)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25824279567056749.111)
,p_translate_from_id=>wwv_flow_api.id(25824279567056749)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25913533193107325)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25803817315056661.111)
,p_translate_from_id=>wwv_flow_api.id(25803817315056661)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25913706302107325)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25804231582056665.111)
,p_translate_from_id=>wwv_flow_api.id(25804231582056665)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25914147919107326)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805031971056666.111)
,p_translate_from_id=>wwv_flow_api.id(25805031971056666)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25915165351107327)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25822609595056746.111)
,p_translate_from_id=>wwv_flow_api.id(25822609595056746)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25915333077107327)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823008937056747.111)
,p_translate_from_id=>wwv_flow_api.id(25823008937056747)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25915522749107327)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823489852056747.111)
,p_translate_from_id=>wwv_flow_api.id(25823489852056747)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25915721807107328)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823872994056748.111)
,p_translate_from_id=>wwv_flow_api.id(25823872994056748)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25915964613107328)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25824279567056749.111)
,p_translate_from_id=>wwv_flow_api.id(25824279567056749)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25917249842107335)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25804619471056665.111)
,p_translate_from_id=>wwv_flow_api.id(25804619471056665)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25917409396107335)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805031971056666.111)
,p_translate_from_id=>wwv_flow_api.id(25805031971056666)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25918023526107336)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25810095119056684.111)
,p_translate_from_id=>wwv_flow_api.id(25810095119056684)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25919069285107337)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25823872994056748.111)
,p_translate_from_id=>wwv_flow_api.id(25823872994056748)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25919208013107337)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25824279567056749.111)
,p_translate_from_id=>wwv_flow_api.id(25824279567056749)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25920018980107343)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25804619471056665.111)
,p_translate_from_id=>wwv_flow_api.id(25804619471056665)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25925619696107357)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25804619471056665.111)
,p_translate_from_id=>wwv_flow_api.id(25804619471056665)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25936692685107385)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806657377056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806657377056672)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25937465441107386)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825814851056751.111)
,p_translate_from_id=>wwv_flow_api.id(25825814851056751)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25937607141107390)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805863320056670.111)
,p_translate_from_id=>wwv_flow_api.id(25805863320056670)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25937822370107391)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806215359056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806215359056672)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25938279947107391)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25938469650107391)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825042385056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825042385056750)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TTRIPSLOG'
,p_translate_from_text=>'TTRIPSLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25938667050107391)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825426038056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825426038056750)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TTRIPSLOG'
,p_translate_from_text=>'TTRIPSLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25939038484107396)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805863320056670.111)
,p_translate_from_id=>wwv_flow_api.id(25805863320056670)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID'
,p_translate_from_text=>'P33_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25939219440107397)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806215359056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806215359056672)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID'
,p_translate_from_text=>'P33_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25939682689107397)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID'
,p_translate_from_text=>'P33_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25939814315107397)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825042385056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825042385056750)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P34_TRIPID'
,p_translate_from_text=>'P34_TRIPID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25940013605107398)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825426038056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825426038056750)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P34_TRIPID'
,p_translate_from_text=>'P34_TRIPID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25940465741107403)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25805863320056670.111)
,p_translate_from_id=>wwv_flow_api.id(25805863320056670)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25940678045107403)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806215359056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806215359056672)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25941084325107403)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25941234162107403)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825042385056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825042385056750)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TRIPID'
,p_translate_from_text=>'TRIPID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25941491746107404)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825426038056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825426038056750)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TRIPID'
,p_translate_from_text=>'TRIPID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25945182702107420)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>284
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'PERSONID'
,p_translate_from_text=>'PERSONID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25947968997107432)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>286
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID_NEXT'
,p_translate_from_text=>'P33_WAYBILLID_NEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25949386107107439)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>287
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID_PREV'
,p_translate_from_text=>'P33_WAYBILLID_PREV'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25950416130107525)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25800729923056643.111)
,p_translate_from_id=>wwv_flow_api.id(25800729923056643)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25951057065107526)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25819583547056742.111)
,p_translate_from_id=>wwv_flow_api.id(25819583547056742)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25951845262107532)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25800729923056643.111)
,p_translate_from_id=>wwv_flow_api.id(25800729923056643)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25952437420107532)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25819583547056742.111)
,p_translate_from_id=>wwv_flow_api.id(25819583547056742)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25953283681107538)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25800729923056643.111)
,p_translate_from_id=>wwv_flow_api.id(25800729923056643)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25953821276107539)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25819583547056742.111)
,p_translate_from_id=>wwv_flow_api.id(25819583547056742)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25978138981107617)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25806215359056672.111)
,p_translate_from_id=>wwv_flow_api.id(25806215359056672)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25978976757107618)
,p_page_id=>34
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25825426038056750.111)
,p_translate_from_id=>wwv_flow_api.id(25825426038056750)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(25981304527107629)
,p_page_id=>33
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(25811024869056699.111)
,p_translate_from_id=>wwv_flow_api.id(25811024869056699)
,p_translate_column_id=>325
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P33_WAYBILLID_COUNT'
,p_translate_from_text=>'P33_WAYBILLID_COUNT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26048571213220227)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>38.111
,p_translate_from_id=>38
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage3'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26048640687220227)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>39.111
,p_translate_from_id=>39
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage3'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26048894414220232)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>38.111
,p_translate_from_id=>38
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage3'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26049014745220233)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>39.111
,p_translate_from_id=>39
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage3'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26050865723220255)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>38.111
,p_translate_from_id=>38
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26051081972220255)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>39.111
,p_translate_from_id=>39
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26051262464220260)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26018998774217770.111)
,p_translate_from_id=>wwv_flow_api.id(26018998774217770)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26051414418220261)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26038782355217820.111)
,p_translate_from_id=>wwv_flow_api.id(26038782355217820)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить поездку'
,p_translate_from_text=>'Add Row'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26051665835220261)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26038619549217820.111)
,p_translate_from_id=>wwv_flow_api.id(26038619549217820)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить отмеченные'
,p_translate_from_text=>'Delete Checked'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26051894799220261)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26026760023217782.111)
,p_translate_from_id=>wwv_flow_api.id(26026760023217782)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Previous'
,p_translate_from_text=>'Previous'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26052069241220261)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26026633751217782.111)
,p_translate_from_id=>wwv_flow_api.id(26026633751217782)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Next'
,p_translate_from_text=>'Next'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26052243905220262)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26021043570217772.111)
,p_translate_from_id=>wwv_flow_api.id(26021043570217772)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26052457337220262)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26020878528217772.111)
,p_translate_from_id=>wwv_flow_api.id(26020878528217772)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26052669280220262)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26021181399217773.111)
,p_translate_from_id=>wwv_flow_api.id(26021181399217773)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26052889173220262)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26020951474217772.111)
,p_translate_from_id=>wwv_flow_api.id(26020951474217772)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Применить'
,p_translate_from_text=>'Save'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26053072559220268)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26022771052217775.111)
,p_translate_from_id=>wwv_flow_api.id(26022771052217775)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26053247711220269)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023121187217776.111)
,p_translate_from_id=>wwv_flow_api.id(26023121187217776)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26053474802220269)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023501075217776.111)
,p_translate_from_id=>wwv_flow_api.id(26023501075217776)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26053652954220270)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023992732217777.111)
,p_translate_from_id=>wwv_flow_api.id(26023992732217777)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26053801734220270)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26024333391217778.111)
,p_translate_from_id=>wwv_flow_api.id(26024333391217778)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26054022844220270)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26028646131217786.111)
,p_translate_from_id=>wwv_flow_api.id(26028646131217786)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID_NEXT'
,p_translate_from_text=>'P39_WAYBILLID_NEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26054296639220270)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26029033761217786.111)
,p_translate_from_id=>wwv_flow_api.id(26029033761217786)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID_PREV'
,p_translate_from_text=>'P39_WAYBILLID_PREV'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26054683810220277)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26040032946217822.111)
,p_translate_from_id=>wwv_flow_api.id(26040032946217822)
,p_translate_column_id=>16
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#COLUMN_HEADER# must be numeric.'
,p_translate_from_text=>'#COLUMN_HEADER# must be numeric.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26054811660220277)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26040407821217826.111)
,p_translate_from_id=>wwv_flow_api.id(26040407821217826)
,p_translate_column_id=>16
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#COLUMN_HEADER# must be numeric.'
,p_translate_from_text=>'#COLUMN_HEADER# must be numeric.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26056404787220286)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26040786784217826.111)
,p_translate_from_id=>wwv_flow_api.id(26040786784217826)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_translate_from_text=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26056682718220287)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26041115324217827.111)
,p_translate_from_id=>wwv_flow_api.id(26041115324217827)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'#MRD_COUNT# row(s) deleted.'
,p_translate_from_text=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26057042900220287)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025526324217780.111)
,p_translate_from_id=>wwv_flow_api.id(26025526324217780)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26057492346220297)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26013723784217729.111)
,p_translate_from_id=>wwv_flow_api.id(26013723784217729)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage3Reg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26057636709220297)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26047316332217850.111)
,p_translate_from_id=>wwv_flow_api.id(26047316332217850)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26057897669220297)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26020468684217772.111)
,p_translate_from_id=>wwv_flow_api.id(26020468684217772)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage3Reg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26058003721220298)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26033631498217801.111)
,p_translate_from_id=>wwv_flow_api.id(26033631498217801)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Редактирование поездок'
,p_translate_from_text=>'TripsLogPage3Reg'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26058278827220298)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26047956257217853.111)
,p_translate_from_id=>wwv_flow_api.id(26047956257217853)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26058463718220305)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26013723784217729.111)
,p_translate_from_id=>wwv_flow_api.id(26013723784217729)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26058902462220306)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26033631498217801.111)
,p_translate_from_id=>wwv_flow_api.id(26033631498217801)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"TRIPID",',
'"WAYBILLID",',
'"TRIPQUEUE",',
'"TRIPDISTANCE",',
'"TRIPNAME",',
'"TRIPNOTES"',
'from "#OWNER#"."TTRIPSLOG"',
'where "WAYBILLID" = :P39_WAYBILLID',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"TRIPID",',
'"WAYBILLID",',
'"TRIPQUEUE",',
'"TRIPDISTANCE",',
'"TRIPNAME",',
'"TRIPNOTES"',
'from "#OWNER#"."TTRIPSLOG"',
'where "WAYBILLID" = :P39_WAYBILLID',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26061312647220334)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26014167067217761.111)
,p_translate_from_id=>wwv_flow_api.id(26014167067217761)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов 3'
,p_translate_from_text=>'WayBillLogPage3DNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26061541696220362)
,p_page_id=>38
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26013723784217729.111)
,p_translate_from_id=>wwv_flow_api.id(26013723784217729)
,p_translate_column_id=>36
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26062191182220363)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26033631498217801.111)
,p_translate_from_id=>wwv_flow_api.id(26033631498217801)
,p_translate_column_id=>36
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26067071923220602)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26048366459217853.111)
,p_translate_from_id=>wwv_flow_api.id(26048366459217853)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage3Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26067196416220602)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26047178962217848.111)
,p_translate_from_id=>wwv_flow_api.id(26047178962217848)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage3Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26070334424220629)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26015165312217764.111)
,p_translate_from_id=>wwv_flow_api.id(26015165312217764)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26070597908220630)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26015536804217764.111)
,p_translate_from_id=>wwv_flow_api.id(26015536804217764)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26070765846220630)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26015935596217765.111)
,p_translate_from_id=>wwv_flow_api.id(26015935596217765)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26070991713220630)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26016341286217765.111)
,p_translate_from_id=>wwv_flow_api.id(26016341286217765)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26071100891220630)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26016782465217766.111)
,p_translate_from_id=>wwv_flow_api.id(26016782465217766)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26071365453220630)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26034212374217804.111)
,p_translate_from_id=>wwv_flow_api.id(26034212374217804)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripid'
,p_translate_from_text=>'Tripid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26071550970220631)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26034699603217804.111)
,p_translate_from_id=>wwv_flow_api.id(26034699603217804)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26071745395220631)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26035064801217805.111)
,p_translate_from_id=>wwv_flow_api.id(26035064801217805)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripqueue'
,p_translate_from_text=>'Tripqueue'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26071950762220631)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26035447428217806.111)
,p_translate_from_id=>wwv_flow_api.id(26035447428217806)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripdistance'
,p_translate_from_text=>'Tripdistance'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26072155829220631)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26035858476217807.111)
,p_translate_from_id=>wwv_flow_api.id(26035858476217807)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripname'
,p_translate_from_text=>'Tripname'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26072342582220632)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26036211741217808.111)
,p_translate_from_id=>wwv_flow_api.id(26036211741217808)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Tripnotes'
,p_translate_from_text=>'Tripnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26072576794220632)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26043374615217833.111)
,p_translate_from_id=>wwv_flow_api.id(26043374615217833)
,p_translate_column_id=>106
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Select Row'
,p_translate_from_text=>'Select Row'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26072707642220637)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26015165312217764.111)
,p_translate_from_id=>wwv_flow_api.id(26015165312217764)
,p_translate_column_id=>107
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_translate_from_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26101468601221222)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26022771052217775.111)
,p_translate_from_id=>wwv_flow_api.id(26022771052217775)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26102216796221223)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26024333391217778.111)
,p_translate_from_id=>wwv_flow_api.id(26024333391217778)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26102474761221223)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26028646131217786.111)
,p_translate_from_id=>wwv_flow_api.id(26028646131217786)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26102620943221224)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26029033761217786.111)
,p_translate_from_id=>wwv_flow_api.id(26029033761217786)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26102888313221224)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26029439572217787.111)
,p_translate_from_id=>wwv_flow_api.id(26029439572217787)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26103888656221231)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26024333391217778.111)
,p_translate_from_id=>wwv_flow_api.id(26024333391217778)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26104429610221231)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26029439572217787.111)
,p_translate_from_id=>wwv_flow_api.id(26029439572217787)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'VALUE'
,p_translate_from_text=>'VALUE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26104804263221237)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023121187217776.111)
,p_translate_from_id=>wwv_flow_api.id(26023121187217776)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26105022104221238)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023501075217776.111)
,p_translate_from_id=>wwv_flow_api.id(26023501075217776)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26105498996221238)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26024333391217778.111)
,p_translate_from_id=>wwv_flow_api.id(26024333391217778)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26106862815221245)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023992732217777.111)
,p_translate_from_id=>wwv_flow_api.id(26023992732217777)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26107047401221245)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26024333391217778.111)
,p_translate_from_id=>wwv_flow_api.id(26024333391217778)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26107608448221246)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26029439572217787.111)
,p_translate_from_id=>wwv_flow_api.id(26029439572217787)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26108412414221252)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023992732217777.111)
,p_translate_from_id=>wwv_flow_api.id(26023992732217777)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26111650650221264)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26023992732217777.111)
,p_translate_from_id=>wwv_flow_api.id(26023992732217777)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26117850703221288)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025916917217780.111)
,p_translate_from_id=>wwv_flow_api.id(26025916917217780)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26118680728221294)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025129612217779.111)
,p_translate_from_id=>wwv_flow_api.id(26025129612217779)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26118843955221294)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025526324217780.111)
,p_translate_from_id=>wwv_flow_api.id(26025526324217780)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26119281370221294)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26119446922221295)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26040786784217826.111)
,p_translate_from_id=>wwv_flow_api.id(26040786784217826)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TTRIPSLOG'
,p_translate_from_text=>'TTRIPSLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26119651486221295)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26041115324217827.111)
,p_translate_from_id=>wwv_flow_api.id(26041115324217827)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TTRIPSLOG'
,p_translate_from_text=>'TTRIPSLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26119837968221300)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025129612217779.111)
,p_translate_from_id=>wwv_flow_api.id(26025129612217779)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID'
,p_translate_from_text=>'P39_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26119944400221301)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025526324217780.111)
,p_translate_from_id=>wwv_flow_api.id(26025526324217780)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID'
,p_translate_from_text=>'P39_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26120306089221301)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID'
,p_translate_from_text=>'P39_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26120554384221301)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26040786784217826.111)
,p_translate_from_id=>wwv_flow_api.id(26040786784217826)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TRIPID'
,p_translate_from_text=>'TRIPID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26120700334221301)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26041115324217827.111)
,p_translate_from_id=>wwv_flow_api.id(26041115324217827)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TRIPID'
,p_translate_from_text=>'TRIPID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26120927955221306)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025129612217779.111)
,p_translate_from_id=>wwv_flow_api.id(26025129612217779)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26121109890221307)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025526324217780.111)
,p_translate_from_id=>wwv_flow_api.id(26025526324217780)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26121540738221307)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26125159677221324)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>284
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26127541184221334)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>286
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID_NEXT'
,p_translate_from_text=>'P39_WAYBILLID_NEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26128738589221339)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>287
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID_PREV'
,p_translate_from_text=>'P39_WAYBILLID_PREV'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26129624280221415)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26020468684217772.111)
,p_translate_from_id=>wwv_flow_api.id(26020468684217772)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26130617857221421)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26020468684217772.111)
,p_translate_from_id=>wwv_flow_api.id(26020468684217772)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26131659821221427)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26020468684217772.111)
,p_translate_from_id=>wwv_flow_api.id(26020468684217772)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26147433991221498)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26025526324217780.111)
,p_translate_from_id=>wwv_flow_api.id(26025526324217780)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26150122212221509)
,p_page_id=>39
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26030469420217790.111)
,p_translate_from_id=>wwv_flow_api.id(26030469420217790)
,p_translate_column_id=>325
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P39_WAYBILLID_COUNT'
,p_translate_from_text=>'P39_WAYBILLID_COUNT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26186781448284414)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>44.111
,p_translate_from_id=>44
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage4'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26186868477284415)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>43.111
,p_translate_from_id=>43
,p_translate_column_id=>5
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage4'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26187033352284420)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>44.111
,p_translate_from_id=>44
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage4'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26187222040284420)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>43.111
,p_translate_from_id=>43
,p_translate_column_id=>6
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage4'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26189015014284442)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>44.111
,p_translate_from_id=>44
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26189294785284443)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>43.111
,p_translate_from_id=>43
,p_translate_column_id=>12
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No help is available for this page.'
,p_translate_from_text=>'No help is available for this page.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26189476456284448)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26175304005282496.111)
,p_translate_from_id=>wwv_flow_api.id(26175304005282496)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Apply Changes'
,p_translate_from_text=>'Apply Changes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26189652476284448)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26175544212282496.111)
,p_translate_from_id=>wwv_flow_api.id(26175544212282496)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Отмена'
,p_translate_from_text=>'Cancel'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26189819564284448)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26175205188282496.111)
,p_translate_from_id=>wwv_flow_api.id(26175205188282496)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26190059736284449)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26184929546282532.111)
,p_translate_from_id=>wwv_flow_api.id(26184929546282532)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Добавить'
,p_translate_from_text=>'Create'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26190291321284449)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26175461503282496.111)
,p_translate_from_id=>wwv_flow_api.id(26175461503282496)
,p_translate_column_id=>13
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Удалить'
,p_translate_from_text=>'Delete'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26190499588284455)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26177523975282499.111)
,p_translate_from_id=>wwv_flow_api.id(26177523975282499)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26190668600284455)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26177980725282501.111)
,p_translate_from_id=>wwv_flow_api.id(26177980725282501)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
end;
/
begin
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26190844024284455)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26178318995282502.111)
,p_translate_from_id=>wwv_flow_api.id(26178318995282502)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26191049506284456)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26178793341282503.111)
,p_translate_from_id=>wwv_flow_api.id(26178793341282503)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26191218579284456)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179140536282503.111)
,p_translate_from_id=>wwv_flow_api.id(26179140536282503)
,p_translate_column_id=>14
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26192427133284471)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26180317902282506.111)
,p_translate_from_id=>wwv_flow_api.id(26180317902282506)
,p_translate_column_id=>18
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Action Processed.'
,p_translate_from_text=>'Action Processed.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26192614322284480)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26182425304282522.111)
,p_translate_from_id=>wwv_flow_api.id(26182425304282522)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage4Reg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26192890412284480)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26185516895282534.111)
,p_translate_from_id=>wwv_flow_api.id(26185516895282534)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26193042050284480)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26174817963282494.111)
,p_translate_from_id=>wwv_flow_api.id(26174817963282494)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage4Reg'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26193216440284481)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26186147702282535.111)
,p_translate_from_id=>wwv_flow_api.id(26186147702282535)
,p_translate_column_id=>20
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'Y'
,p_translate_to_text=>'Breadcrumb'
,p_translate_from_text=>'Breadcrumb'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26193452650284487)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26182425304282522.111)
,p_translate_from_id=>wwv_flow_api.id(26182425304282522)
,p_translate_column_id=>21
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "WAYBILLID", ',
'"VEHICLEID",',
'"PERSONID",',
'"WAYBILLDATE",',
'"WAYBILLNOTES"',
'from "#OWNER#"."TWAYBILLLOG" ',
'  ',
''))
,p_translate_from_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "WAYBILLID", ',
'"VEHICLEID",',
'"PERSONID",',
'"WAYBILLDATE",',
'"WAYBILLNOTES"',
'from "#OWNER#"."TWAYBILLLOG" ',
'  ',
''))
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26195757216284515)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26181419915282510.111)
,p_translate_from_id=>wwv_flow_api.id(26181419915282510)
,p_translate_column_id=>28
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов 4'
,p_translate_from_text=>'WayBillLogPage4DNMEntry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26200068927284783)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26186585099282536.111)
,p_translate_from_id=>wwv_flow_api.id(26186585099282536)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Редактирование путевого листа'
,p_translate_from_text=>'WayBillLogEditPage4'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26200224778284783)
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26185336423282532.111)
,p_translate_from_id=>wwv_flow_api.id(26185336423282532)
,p_translate_column_id=>100
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Журнал путевых листов'
,p_translate_from_text=>'WayBillLogPage4Entry'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26206842246284909)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26182894175282523.111)
,p_translate_from_id=>wwv_flow_api.id(26182894175282523)
,p_translate_column_id=>146
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_translate_from_text=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26207068638284913)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26182894175282523.111)
,p_translate_from_id=>wwv_flow_api.id(26182894175282523)
,p_translate_column_id=>147
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'No data found.'
,p_translate_from_text=>'No data found.'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26207653832284925)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26183776471282530.111)
,p_translate_from_id=>wwv_flow_api.id(26183776471282530)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26207806379284926)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26182923926282527.111)
,p_translate_from_id=>wwv_flow_api.id(26182923926282527)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26208038274284926)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26184574618282531.111)
,p_translate_from_id=>wwv_flow_api.id(26184574618282531)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26208235931284926)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26184190516282530.111)
,p_translate_from_id=>wwv_flow_api.id(26184190516282530)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26208461092284926)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26183320666282529.111)
,p_translate_from_id=>wwv_flow_api.id(26183320666282529)
,p_translate_column_id=>148
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26208609225284932)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26183776471282530.111)
,p_translate_from_id=>wwv_flow_api.id(26183776471282530)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Водителя'
,p_translate_from_text=>'Personid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26208867454284933)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26182923926282527.111)
,p_translate_from_id=>wwv_flow_api.id(26182923926282527)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillid'
,p_translate_from_text=>'Waybillid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26209073061284933)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26184574618282531.111)
,p_translate_from_id=>wwv_flow_api.id(26184574618282531)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybillnotes'
,p_translate_from_text=>'Waybillnotes'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26209269414284933)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26184190516282530.111)
,p_translate_from_id=>wwv_flow_api.id(26184190516282530)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Waybilldate'
,p_translate_from_text=>'Waybilldate'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26209426706284933)
,p_page_id=>43
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26183320666282529.111)
,p_translate_from_id=>wwv_flow_api.id(26183320666282529)
,p_translate_column_id=>149
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'ID Автомобиля'
,p_translate_from_text=>'Vehicleid'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26222737207285361)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26177523975282499.111)
,p_translate_from_id=>wwv_flow_api.id(26177523975282499)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26223594473285362)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179140536282503.111)
,p_translate_from_id=>wwv_flow_api.id(26179140536282503)
,p_translate_column_id=>268
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26224508947285369)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179140536282503.111)
,p_translate_from_id=>wwv_flow_api.id(26179140536282503)
,p_translate_column_id=>269
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26224922993285375)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26177980725282501.111)
,p_translate_from_id=>wwv_flow_api.id(26177980725282501)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26225155281285375)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26178318995282502.111)
,p_translate_from_id=>wwv_flow_api.id(26178318995282502)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'right'
,p_translate_from_text=>'right'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26225523975285375)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179140536282503.111)
,p_translate_from_id=>wwv_flow_api.id(26179140536282503)
,p_translate_column_id=>270
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26226388173285381)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26178793341282503.111)
,p_translate_from_id=>wwv_flow_api.id(26178793341282503)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'button'
,p_translate_from_text=>'button'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26226555333285382)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179140536282503.111)
,p_translate_from_id=>wwv_flow_api.id(26179140536282503)
,p_translate_column_id=>271
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'BOTH'
,p_translate_from_text=>'BOTH'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26227323875285388)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26178793341282503.111)
,p_translate_from_id=>wwv_flow_api.id(26178793341282503)
,p_translate_column_id=>272
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26229259769285398)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26178793341282503.111)
,p_translate_from_id=>wwv_flow_api.id(26178793341282503)
,p_translate_column_id=>274
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'NONE'
,p_translate_from_text=>'NONE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26233006860285418)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26180795636282506.111)
,p_translate_from_id=>wwv_flow_api.id(26180795636282506)
,p_translate_column_id=>278
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'CLEAR_CACHE_CURRENT_PAGE'
,p_translate_from_text=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26233292906285423)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179928548282505.111)
,p_translate_from_id=>wwv_flow_api.id(26179928548282505)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26233408387285423)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26180317902282506.111)
,p_translate_from_id=>wwv_flow_api.id(26180317902282506)
,p_translate_column_id=>279
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TWAYBILLLOG'
,p_translate_from_text=>'TWAYBILLLOG'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26233886662285428)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179928548282505.111)
,p_translate_from_id=>wwv_flow_api.id(26179928548282505)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P44_WAYBILLID'
,p_translate_from_text=>'P44_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26234026872285428)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26180317902282506.111)
,p_translate_from_id=>wwv_flow_api.id(26180317902282506)
,p_translate_column_id=>280
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'P44_WAYBILLID'
,p_translate_from_text=>'P44_WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26234485610285434)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26179928548282505.111)
,p_translate_from_id=>wwv_flow_api.id(26179928548282505)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26234610467285434)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26180317902282506.111)
,p_translate_from_id=>wwv_flow_api.id(26180317902282506)
,p_translate_column_id=>281
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'WAYBILLID'
,p_translate_from_text=>'WAYBILLID'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26238989843285533)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26174817963282494.111)
,p_translate_from_id=>wwv_flow_api.id(26174817963282494)
,p_translate_column_id=>308
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'N'
,p_translate_from_text=>'N'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26239737899285539)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26174817963282494.111)
,p_translate_from_id=>wwv_flow_api.id(26174817963282494)
,p_translate_column_id=>309
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'TEXT'
,p_translate_from_text=>'TEXT'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26240563815285545)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26174817963282494.111)
,p_translate_from_id=>wwv_flow_api.id(26174817963282494)
,p_translate_column_id=>310
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'Y'
,p_translate_from_text=>'Y'
);
wwv_flow_api.create_translation(
 p_id=>wwv_flow_api.id(26251602533285609)
,p_page_id=>44
,p_translated_flow_id=>111
,p_translate_to_id=>wwv_flow_api.id(26180317902282506.111)
,p_translate_from_id=>wwv_flow_api.id(26180317902282506)
,p_translate_column_id=>323
,p_translate_to_lang_code=>'ru'
,p_translation_specific_to_item=>'NO'
,p_template_translatable=>'N'
,p_translate_to_text=>'I:U:D'
,p_translate_from_text=>'I:U:D'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(24086582390144635)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(25807257797056673)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(23813738664469253)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(23813595700469208)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(23771331330469009)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(23805712104469131)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(23813463607469206)
,p_nav_bar_list_template_id=>wwv_flow_api.id(23805630952469130)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'&APP_NAME.'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(23776719012469048)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160215124510'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23815360725469286)
,p_plug_name=>'TMS Application'
,p_icon_css_classes=>'fa-cab'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23785970146469082)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>'<p>Управление транспортом, ГСМ, шины, АКБ</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24040536412012401)
,p_plug_name=>'CarsInfo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Агрегированная информация об автомобилях'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24040639155012402)
,p_plug_name=>'DriversInfo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Агрегированная информация о водителях'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24040787146012403)
,p_plug_name=>'AlertsInfo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Агрегированная информация о наступивших или наступающих сроках и мероприятиях'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24040909541012405)
,p_plug_name=>'SearchReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Область поиска, найдется все'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'RunningSecPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'RunningSecPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160127125900'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24001700951301164)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24002361036301172)
,p_plug_name=>'CurrentStatusReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'TripsLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'TripsLogPage'
,p_step_sub_title=>'TripsLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160127130920'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24004031512359812)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24004673019359813)
,p_plug_name=>'TripsLogPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TRIPID,',
'       WAYBILLID,',
'       TRIPQUEUE,',
'       TRIPDISTANCE,',
'       TRIPNAME,',
'       TRIPNOTES',
'  from TTRIPSLOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24004750754359813)
,p_name=>'TripsLogPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24004750754359813
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24005162945359829)
,p_db_column_name=>'TRIPID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tripid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24005449943359836)
,p_db_column_name=>'WAYBILLID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Waybillid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24005872059359836)
,p_db_column_name=>'TRIPQUEUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tripqueue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24006251483359837)
,p_db_column_name=>'TRIPDISTANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tripdistance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24006607649359837)
,p_db_column_name=>'TRIPNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tripname'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24007009209359838)
,p_db_column_name=>'TRIPNOTES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tripnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24007443768363167)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240075'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TRIPID:WAYBILLID:TRIPQUEUE:TRIPDISTANCE:TRIPNAME:TRIPNOTES'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'FuellingLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'FuellingLogPage'
,p_step_sub_title=>'FuellingLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160127132723'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24009100156466534)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24009741562466536)
,p_plug_name=>'FuellingLogPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FUELLINGID,',
'       VEHICLEID,',
'       FUELLINGDATE,',
'       FUELLINGNOTES',
'  from TFUELLINGLOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24009868652466536)
,p_name=>'FuellingLogPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'FuellingID'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24009868652466536
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24010281706466536)
,p_db_column_name=>'FUELLINGID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fuellingid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24010698392466537)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24011081419466538)
,p_db_column_name=>'FUELLINGDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fuellingdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24011407825466539)
,p_db_column_name=>'FUELLINGNOTES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fuellingnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24011805759471497)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240119'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FUELLINGID:VEHICLEID:FUELLINGDATE:FUELLINGNOTES'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'FigurationWayBillPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'FigurationWayBillPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160127133618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24013504891524965)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'CalcFuelConsumptionPage'
,p_page_mode=>'MODAL'
,p_step_title=>'CalcFuelConsumptionPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160127141808'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24015361316707112)
,p_plug_name=>'CalcFuelConsumptionPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23779493018469069)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24016068533707113)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23779529478469070)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24020061008707137)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24015744292707113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24016068533707113)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24015813270707113)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24016068533707113)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24017908932707124)
,p_name=>'P6_VEHICLEID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24015361316707112)
,p_prompt=>'aVehicleID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24018362804707130)
,p_name=>'P6_FROMDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24015361316707112)
,p_item_default=>'SYSDATE()'
,p_prompt=>'aFromDate'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24018735877707130)
,p_name=>'P6_TODATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24015361316707112)
,p_item_default=>'SYSDATE()'
,p_prompt=>'aToDate'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24016790645707117)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24015744292707113)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24017204159707121)
,p_event_id=>wwv_flow_api.id(24016790645707117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24019166752707131)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#OWNER#.TMSAPPCOMMON_PKG.CALCFUELCONSUMTION(',
'AVEHICLEID => :P6_EHICLEID,',
'AFROMDATE => :P6_ROMDATE,',
'ATODATE => :P6_ODATE);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24015813270707113)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24019616176707136)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SUBMIT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogPage'
,p_step_sub_title=>'WayBillLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221191447'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24024517283805965)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24025147653805970)
,p_plug_name=>'WayBillLogPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24025256682805970)
,p_name=>'WayBillLogPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'WayBillID'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24025256682805970
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24025622942805972)
,p_db_column_name=>'WAYBILLID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Waybillid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24026082190805972)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24026487583805973)
,p_db_column_name=>'PERSONID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Personid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25770365198445916)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24026848206805973)
,p_db_column_name=>'WAYBILLDATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Waybilldate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24027265696805974)
,p_db_column_name=>'WAYBILLNOTES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Waybillnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24027681314806358)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240277'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'WAYBILLID:VEHICLEID:PERSONID:WAYBILLDATE:WAYBILLNOTES'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'ServiceSecPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'ServiceSecPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160207191726'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24040868967012404)
,p_plug_name=>'InspectionInfoReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24048408986187406)
,p_plug_name=>'BatteriesServiceInfoReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Систематизированная информация о всех имеющихся аккумуляторах и напоминания о сроках их замены'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24048815935187407)
,p_plug_name=>'TiresServiceInfoReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Уведомления о фактическом износе и плановых сроках замены шин (зима/лето, по пробегу)'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24049297332187410)
,p_plug_name=>'InsurancesInfoReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Информация об ближайшем (по параметру настройки) окончании сроков действия страховых полисов или сроках уплаты очередного взноса'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24049630174187412)
,p_plug_name=>'MaintenanceInfoReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24050016515187412)
,p_plug_name=>'RepairInfoReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'FileCabinetSecPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'FileCabinetSecPage'
,p_step_sub_title=>'FileCabinetSecPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221115110'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24236883567306697)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24254262323841463)
,p_plug_name=>'FileCabinetSecReg'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--cols t-MediaList--2cols'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(24250851430769605)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(23804129649469127)
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'BatteriesLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'BatteriesLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221190921'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24103267309182362)
,p_plug_name=>'BatteriesLogPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "BATTERYMOUNTID", ',
'"VEHICLEID",',
'"BATTERYMOUNTDATE",',
'"BATTERYNAME",',
'"BATTERYLIFETIME",',
'"BATTERYMILEAGE",',
'"BATTERYMOTOHOURS",',
'"BATTERYNOTES"',
'from "#OWNER#"."TBATTERIESLOG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24103692387182365)
,p_name=>'BatteriesLogPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_BATTERYMOUNTID:#BATTERYMOUNTID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24103692387182365
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24103707952182369)
,p_db_column_name=>'BATTERYMOUNTID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Batterymountid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24104122011182374)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24104548231182375)
,p_db_column_name=>'BATTERYMOUNTDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Batterymountdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24104929822182376)
,p_db_column_name=>'BATTERYNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Batteryname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24105332423182377)
,p_db_column_name=>'BATTERYLIFETIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Batterylifetime'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24105728339182377)
,p_db_column_name=>'BATTERYMILEAGE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Batterymileage'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24106135454182378)
,p_db_column_name=>'BATTERYMOTOHOURS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Batterymotohours'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24106501580182379)
,p_db_column_name=>'BATTERYNOTES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Batterynotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24108760689183234)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'BATTERYMOUNTID:VEHICLEID:BATTERYMOUNTDATE:BATTERYNAME:BATTERYLIFETIME:BATTERYMILEAGE:BATTERYMOTOHOURS:BATTERYNOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24107562013182380)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24106921649182379)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24103267309182362)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'BatteriesLogEditPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'BatteriesLogEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221190945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24094462969182333)
,p_plug_name=>'BatteriesLogEditPageReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24108186604182381)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24094908418182333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24094462969182333)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P15_BATTERYMOUNTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24095104164182334)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24094462969182333)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24094802540182333)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24094462969182333)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P15_BATTERYMOUNTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24095095197182334)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24094462969182333)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P15_BATTERYMOUNTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24096746702182336)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24097192547182337)
,p_name=>'P15_BATTERYMOUNTID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batterymountid'
,p_source=>'BATTERYMOUNTID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24097578801182338)
,p_name=>'P15_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24097984809182338)
,p_name=>'P15_BATTERYMOUNTDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batterymountdate'
,p_source=>'BATTERYMOUNTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24098327887182339)
,p_name=>'P15_BATTERYNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batteryname'
,p_source=>'BATTERYNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24098771122182339)
,p_name=>'P15_BATTERYLIFETIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batterylifetime'
,p_source=>'BATTERYLIFETIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24099162784182340)
,p_name=>'P15_BATTERYMILEAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batterymileage'
,p_source=>'BATTERYMILEAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24099572624182340)
,p_name=>'P15_BATTERYMOTOHOURS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batterymotohours'
,p_source=>'BATTERYMOTOHOURS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24099940418182341)
,p_name=>'P15_BATTERYNOTES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24094462969182333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batterynotes'
,p_source=>'BATTERYNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24100748234182342)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TBATTERIESLOG'
,p_attribute_02=>'TBATTERIESLOG'
,p_attribute_03=>'P15_BATTERYMOUNTID'
,p_attribute_04=>'BATTERYMOUNTID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24101173074182342)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TBATTERIESLOG'
,p_attribute_02=>'TBATTERIESLOG'
,p_attribute_03=>'P15_BATTERYMOUNTID'
,p_attribute_04=>'BATTERYMOUNTID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24101514105182343)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24095095197182334)
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'TiresLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'TiresLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221191017'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24118715721457970)
,p_plug_name=>'TiresLogPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TIRESMOUNTID", ',
'"VEHICLEID",',
'"TIRESMOUNTDATE",',
'"TIRESMOUNTNOTES"',
'from "#OWNER#"."TTIRESLOG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24119188366457971)
,p_name=>'TiresLogPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_TIRESMOUNTID:#TIRESMOUNTID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24119188366457971
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24119240620457975)
,p_db_column_name=>'TIRESMOUNTID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tiresmountid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24119615546457976)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24120092125457977)
,p_db_column_name=>'TIRESMOUNTDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tiresmountdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24120419377457978)
,p_db_column_name=>'TIRESMOUNTNOTES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tiresmountnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24122652817458637)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TIRESMOUNTID:VEHICLEID:TIRESMOUNTDATE:TIRESMOUNTNOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24121492529457980)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24120857610457979)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24118715721457970)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'TiresLogEditPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'TiresLogEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221191037'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24111534176457939)
,p_plug_name=>'TiresLogEditPageReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24122008992457982)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24112031153457939)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24111534176457939)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P17_TIRESMOUNTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24112235439457939)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24111534176457939)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24111993369457939)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24111534176457939)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P17_TIRESMOUNTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24112147333457939)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24111534176457939)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_TIRESMOUNTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24113886665457943)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24114246237457945)
,p_name=>'P17_TIRESMOUNTID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24111534176457939)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tiresmountid'
,p_source=>'TIRESMOUNTID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24114654980457949)
,p_name=>'P17_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24111534176457939)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24115086090457951)
,p_name=>'P17_TIRESMOUNTDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24111534176457939)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tiresmountdate'
,p_source=>'TIRESMOUNTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24115486118457951)
,p_name=>'P17_TIRESMOUNTNOTES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24111534176457939)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tiresmountnotes'
,p_source=>'TIRESMOUNTNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24116254538457952)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TTIRESLOG'
,p_attribute_02=>'TTIRESLOG'
,p_attribute_03=>'P17_TIRESMOUNTID'
,p_attribute_04=>'TIRESMOUNTID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24116656142457953)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TTIRESLOG'
,p_attribute_02=>'TTIRESLOG'
,p_attribute_03=>'P17_TIRESMOUNTID'
,p_attribute_04=>'TIRESMOUNTID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24117085288457953)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24112147333457939)
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'InsurancesLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'InsurancesLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221190314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24133326757561696)
,p_plug_name=>'InsurancesLogPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "INSURANCEID", ',
'"PERSONID",',
'"VEHICLEID",',
'"INSURANCESTARTDATE",',
'"INSURANCEENDDATE",',
'"INSURANCEPOLICY",',
'"INSURANCECOMPANY",',
'"INSURANCETYPE",',
'"INSURANCECOST",',
'"INSURANCENOTES"',
'from "#OWNER#"."TINSURANCESLOG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24133754798561696)
,p_name=>'InsurancesLogPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_INSURANCEID:#INSURANCEID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24133754798561696
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24133802061561700)
,p_db_column_name=>'INSURANCEID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Insuranceid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24134267634561701)
,p_db_column_name=>'PERSONID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Personid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25770365198445916)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24134668732561701)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24135045666561702)
,p_db_column_name=>'INSURANCESTARTDATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Insurancestartdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24135459206561703)
,p_db_column_name=>'INSURANCEENDDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Insuranceenddate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24135817789561703)
,p_db_column_name=>'INSURANCEPOLICY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Insurancepolicy'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24136266812561704)
,p_db_column_name=>'INSURANCECOMPANY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Insurancecompany'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24136670410561705)
,p_db_column_name=>'INSURANCETYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Insurancetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24137025542561705)
,p_db_column_name=>'INSURANCECOST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Insurancecost'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24137418630561706)
,p_db_column_name=>'INSURANCENOTES'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Insurancenotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24139671363562926)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241397'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'INSURANCEID:PERSONID:VEHICLEID:INSURANCESTARTDATE:INSURANCEENDDATE:INSURANCEPOLICY:INSURANCECOMPANY:INSURANCETYPE:INSURANCECOST:INSURANCENOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24138444842561709)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24137822898561708)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24133326757561696)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'InsurancesLogEditPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'InsurancesLogEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221190406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24123874567561640)
,p_plug_name=>'InsurancesLogEditPageReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24139032275561711)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24124367304561641)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24123874567561640)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P19_INSURANCEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24124534504561641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24123874567561640)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24124216148561640)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24123874567561640)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P19_INSURANCEID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24124498942561641)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24123874567561640)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_INSURANCEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24126156700561644)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24126593498561645)
,p_name=>'P19_INSURANCEID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insuranceid'
,p_source=>'INSURANCEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24126994259561647)
,p_name=>'P19_PERSONID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Personid'
,p_source=>'PERSONID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELPERSONLOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "NAME" as d,',
'       personid as r',
'  from tpersons',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24127314807561648)
,p_name=>'P19_VEHICLEID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24127601593561658)
,p_name=>'P19_INSURANCESTARTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurancestartdate'
,p_source=>'INSURANCESTARTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24128037761561659)
,p_name=>'P19_INSURANCEENDDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insuranceenddate'
,p_source=>'INSURANCEENDDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24128407448561659)
,p_name=>'P19_INSURANCEPOLICY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurancepolicy'
,p_source=>'INSURANCEPOLICY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24128810896561660)
,p_name=>'P19_INSURANCECOMPANY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurancecompany'
,p_source=>'INSURANCECOMPANY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24129257171561660)
,p_name=>'P19_INSURANCETYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurancetype'
,p_source=>'INSURANCETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24129635161561661)
,p_name=>'P19_INSURANCECOST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurancecost'
,p_source=>'INSURANCECOST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24130063274561661)
,p_name=>'P19_INSURANCENOTES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24123874567561640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurancenotes'
,p_source=>'INSURANCENOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24130837868561663)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TINSURANCESLOG'
,p_attribute_02=>'TINSURANCESLOG'
,p_attribute_03=>'P19_INSURANCEID'
,p_attribute_04=>'INSURANCEID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24131237692561663)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TINSURANCESLOG'
,p_attribute_02=>'TINSURANCESLOG'
,p_attribute_03=>'P19_INSURANCEID'
,p_attribute_04=>'INSURANCEID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24131613214561664)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24124498942561641)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'VehiclesPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'VehiclesPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221104610'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24245803227464560)
,p_plug_name=>'VehiclesPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "VEHICLEID", ',
'"VEHICLENAME",',
'"VEHICLENOTES"',
'from "#OWNER#"."TVEHICLES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24246280445464562)
,p_name=>'VehiclesPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::::P21_VEHICLEID:#VEHICLEID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24246280445464562
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24246305916464568)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24246753343464572)
,p_db_column_name=>'VEHICLENAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehiclename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24247178405464572)
,p_db_column_name=>'VEHICLENOTES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Vehiclenotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24250099258471485)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242501'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'VEHICLEID:VEHICLENAME:VEHICLENOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24248105951464575)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24247515603464573)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24245803227464560)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'VehiclesEditPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'VehiclesEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221104501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24239469141464505)
,p_plug_name=>'VehiclesEditPage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24248761604464577)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24239984006464506)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24239469141464505)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P21_VEHICLEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24240122733464506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24239469141464505)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24239895411464505)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24239469141464505)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P21_VEHICLEID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24240057179464506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24239469141464505)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_VEHICLEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24241751611464514)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24242115020464518)
,p_name=>'P21_VEHICLEID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24239469141464505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24242529292464533)
,p_name=>'P21_VEHICLENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24239469141464505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehiclename'
,p_source=>'VEHICLENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24242893157464536)
,p_name=>'P21_VEHICLENOTES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24239469141464505)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehiclenotes'
,p_source=>'VEHICLENOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24243665547464538)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TVEHICLES'
,p_attribute_02=>'TVEHICLES'
,p_attribute_03=>'P21_VEHICLEID'
,p_attribute_04=>'VEHICLEID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24244093229464543)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TVEHICLES'
,p_attribute_02=>'TVEHICLES'
,p_attribute_03=>'P21_VEHICLEID'
,p_attribute_04=>'VEHICLEID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24244439908464544)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24240057179464506)
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'FuellingLogPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'FuellingLogPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221163437'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24267774483514280)
,p_plug_name=>'FuellingLogPage'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "FUELLINGID", ',
'"VEHICLEID",',
'"FUELLINGDATE",',
'"FUELLINGNOTES"',
'from "#OWNER#"."TFUELLINGLOG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24268094114514281)
,p_name=>'FuellingLogPage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_FUELLINGID:#FUELLINGID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24268094114514281
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24268132839514288)
,p_db_column_name=>'FUELLINGID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fuellingid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24268529182514289)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24268915021514290)
,p_db_column_name=>'FUELLINGDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fuellingdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24269318253514290)
,p_db_column_name=>'FUELLINGNOTES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fuellingnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24271517607516375)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242716'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FUELLINGID:VEHICLEID:FUELLINGDATE:FUELLINGNOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24270304649514294)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24269749866514291)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24267774483514280)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'FuellingLogEditPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'FuellingLogEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221172629'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24260522446514234)
,p_plug_name=>'FuellingLogPageEditReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24270936495514296)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24261045945514234)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24260522446514234)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P23_FUELLINGID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24261220216514234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24260522446514234)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24260985108514234)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24260522446514234)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P23_FUELLINGID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24261189700514234)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24260522446514234)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_FUELLINGID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24262831784514243)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24263294372514244)
,p_name=>'P23_FUELLINGID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24260522446514234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fuellingid'
,p_source=>'FUELLINGID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24263612430514254)
,p_name=>'P23_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24260522446514234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24264034124514257)
,p_name=>'P23_FUELLINGDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24260522446514234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fuellingdate'
,p_source=>'FUELLINGDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24264481993514258)
,p_name=>'P23_FUELLINGNOTES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24260522446514234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fuellingnotes'
,p_source=>'FUELLINGNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24265259377514262)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TFUELLINGLOG'
,p_attribute_02=>'TFUELLINGLOG'
,p_attribute_03=>'P23_FUELLINGID'
,p_attribute_04=>'FUELLINGID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24265671314514262)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TFUELLINGLOG'
,p_attribute_02=>'TFUELLINGLOG'
,p_attribute_03=>'P23_FUELLINGID'
,p_attribute_04=>'FUELLINGID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24266041979514263)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24261189700514234)
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'DriversPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'DriversPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221141557'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24296240607715250)
,p_plug_name=>'DriversPageReg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PERSONID", ',
'"NAME",',
'"SURNAME",',
'"PERSONNOTES"',
'from "#OWNER#"."TPERSONS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24296686176715250)
,p_name=>'DriversPageReg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:27:&APP_SESSION.::::P27_PERSONID:#PERSONID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24296686176715250
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24296751771715251)
,p_db_column_name=>'PERSONID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Personid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24297180456715252)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24297548338715253)
,p_db_column_name=>'SURNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24297971064715254)
,p_db_column_name=>'PERSONNOTES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Personnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24300958596729943)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'243010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PERSONID:NAME:SURNAME:PERSONNOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24298920772715255)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24298345445715254)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24296240607715250)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'DriversEditPage'
,p_page_mode=>'MODAL'
,p_step_title=>'DriversEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(23777528360469049)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'480'
,p_dialog_width=>'660'
,p_dialog_max_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160223161056'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24289422646715236)
,p_plug_name=>'DriversEditPage'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(23779493018469069)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26301698855458271)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(23779529478469070)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24289926797715237)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26301698855458271)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P27_PERSONID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24289855512715237)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26301698855458271)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P27_PERSONID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24290116207715237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26301698855458271)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24290007887715237)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26301698855458271)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P27_PERSONID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24291766827715240)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24292049325715242)
,p_name=>'P27_PERSONID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24289422646715236)
,p_use_cache_before_default=>'NO'
,p_source=>'PERSONID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24292494152715243)
,p_name=>'P27_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24289422646715236)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24292814567715243)
,p_name=>'P27_SURNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24289422646715236)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Surname'
,p_source=>'SURNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24293229324715244)
,p_name=>'P27_PERSONNOTES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24289422646715236)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Personnotes'
,p_source=>'PERSONNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26301900293490538)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24290116207715237)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26302392818490540)
,p_event_id=>wwv_flow_api.id(26301900293490538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24294070045715245)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TPERSONS'
,p_attribute_02=>'TPERSONS'
,p_attribute_03=>'P27_PERSONID'
,p_attribute_04=>'PERSONID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24294421965715245)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TPERSONS'
,p_attribute_02=>'TPERSONS'
,p_attribute_03=>'P27_PERSONID'
,p_attribute_04=>'PERSONID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24294810878715246)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24290007887715237)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26303848587565074)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog on Cancel'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24290116207715237)
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'ParkingsPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'ParkingsPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221173122'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24311031030789058)
,p_plug_name=>'ParkingsPage'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PARKINGID", ',
'"VEHICLEID",',
'"PARKINGNUM",',
'"PARKINGNAME",',
'"PARKINGADDRESS",',
'"PARKINGCONTRACT",',
'"PARKINGNOTES",',
'"PARKINGFROMDATE",',
'"PARKINGTODATE"',
'from "#OWNER#"."TPARKINGS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24311483597789058)
,p_name=>'ParkingsPage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_PARKINGID:#PARKINGID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>24311483597789058
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24311526514789059)
,p_db_column_name=>'PARKINGID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Parkingid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24311993172789060)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24312320435789061)
,p_db_column_name=>'PARKINGNUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Parkingnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24312724722789062)
,p_db_column_name=>'PARKINGNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Parkingname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24313196129789063)
,p_db_column_name=>'PARKINGADDRESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Parkingaddress'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24313548362789064)
,p_db_column_name=>'PARKINGCONTRACT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Parkingcontract'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24313951559789064)
,p_db_column_name=>'PARKINGNOTES'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Parkingnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24314341094789065)
,p_db_column_name=>'PARKINGFROMDATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Parkingfromdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24314729797789066)
,p_db_column_name=>'PARKINGTODATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Parkingtodate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24316942687790579)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'243170'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PARKINGID:VEHICLEID:PARKINGNUM:PARKINGNAME:PARKINGADDRESS:PARKINGCONTRACT:PARKINGNOTES:PARKINGFROMDATE:PARKINGTODATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24315797344789067)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24315133879789066)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24311031030789058)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'ParkingsEditPage'
,p_page_mode=>'NORMAL'
,p_step_title=>'ParkingsEditPage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221173341'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24301829794789040)
,p_plug_name=>'ParkingsEditPageReg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24316376388789068)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24302398960789040)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24301829794789040)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P29_PARKINGID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24302562685789040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24301829794789040)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24302248746789040)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24301829794789040)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P29_PARKINGID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24302448261789040)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24301829794789040)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P29_PARKINGID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24304178408789044)
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24304515049789045)
,p_name=>'P29_PARKINGID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingid'
,p_source=>'PARKINGID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24304972470789046)
,p_name=>'P29_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24305313405789046)
,p_name=>'P29_PARKINGNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingnum'
,p_source=>'PARKINGNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24305738868789047)
,p_name=>'P29_PARKINGNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingname'
,p_source=>'PARKINGNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24306144412789048)
,p_name=>'P29_PARKINGADDRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingaddress'
,p_source=>'PARKINGADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24306586590789048)
,p_name=>'P29_PARKINGCONTRACT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingcontract'
,p_source=>'PARKINGCONTRACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24306956917789049)
,p_name=>'P29_PARKINGNOTES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingnotes'
,p_source=>'PARKINGNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24307300349789049)
,p_name=>'P29_PARKINGFROMDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingfromdate'
,p_source=>'PARKINGFROMDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24307708484789050)
,p_name=>'P29_PARKINGTODATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24301829794789040)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Parkingtodate'
,p_source=>'PARKINGTODATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24308584064789051)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TPARKINGS'
,p_attribute_02=>'TPARKINGS'
,p_attribute_03=>'P29_PARKINGID'
,p_attribute_04=>'PARKINGID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24308992245789052)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TPARKINGS'
,p_attribute_02=>'TPARKINGS'
,p_attribute_03=>'P29_PARKINGID'
,p_attribute_04=>'PARKINGID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24309337062789053)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24302448261789040)
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'BreakageServiceLogPage2'
,p_page_mode=>'NORMAL'
,p_step_title=>'BreakageServiceLogPage2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221184103'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25618325782233051)
,p_plug_name=>'BreakageServiceLogPage2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "BREAKAGESERVID", ',
'"VEHICLEID",',
'"BREAKAGESERVDATE",',
'"BREAKAGENAME",',
'"BREAKAGESERVCOST",',
'"BREAKAGESERVNOTES"',
'from "#OWNER#"."TBREAKAGESERVICELOG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25618774674233051)
,p_name=>'BreakageServiceLogPage2'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::P31_BREAKAGESERVID:#BREAKAGESERVID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>25618774674233051
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25618859877233058)
,p_db_column_name=>'BREAKAGESERVID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Breakageservid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25619209727233062)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25619630739233062)
,p_db_column_name=>'BREAKAGESERVDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Breakageservdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25620038136233063)
,p_db_column_name=>'BREAKAGENAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Breakagename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25620409695233064)
,p_db_column_name=>'BREAKAGESERVCOST'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Breakageservcost'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25620834901233065)
,p_db_column_name=>'BREAKAGESERVNOTES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Breakageservnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25623267639236844)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'256233'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'BREAKAGESERVID:VEHICLEID:BREAKAGESERVDATE:BREAKAGENAME:BREAKAGESERVCOST:BREAKAGESERVNOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25621844257233068)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25621264663233065)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25618325782233051)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'BreakageServiceLogEditPage2'
,p_page_mode=>'NORMAL'
,p_step_title=>'BreakageServiceLogEditPage2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160221184137'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25610403740232995)
,p_plug_name=>'BreakageServiceLogEditPage2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25622444928233070)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25610915648232999)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25610403740232995)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_BREAKAGESERVID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25611153966233000)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25610403740232995)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25610839971232999)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25610403740232995)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_BREAKAGESERVID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25611019753233000)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25610403740232995)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_BREAKAGESERVID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25612765701233005)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25613129404233007)
,p_name=>'P31_BREAKAGESERVID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25610403740232995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Breakageservid'
,p_source=>'BREAKAGESERVID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25613442346233020)
,p_name=>'P31_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25610403740232995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25613896193233024)
,p_name=>'P31_BREAKAGESERVDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25610403740232995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Breakageservdate'
,p_source=>'BREAKAGESERVDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25614289801233025)
,p_name=>'P31_BREAKAGENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25610403740232995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Breakagename'
,p_source=>'BREAKAGENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25614660702233025)
,p_name=>'P31_BREAKAGESERVCOST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25610403740232995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Breakageservcost'
,p_source=>'BREAKAGESERVCOST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25615089753233026)
,p_name=>'P31_BREAKAGESERVNOTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25610403740232995)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Breakageservnotes'
,p_source=>'BREAKAGESERVNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1024
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25615885949233031)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TBREAKAGESERVICELOG'
,p_attribute_02=>'TBREAKAGESERVICELOG'
,p_attribute_03=>'P31_BREAKAGESERVID'
,p_attribute_04=>'BREAKAGESERVID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25616250142233031)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TBREAKAGESERVICELOG'
,p_attribute_02=>'TBREAKAGESERVICELOG'
,p_attribute_03=>'P31_BREAKAGESERVID'
,p_attribute_04=>'BREAKAGESERVID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25616620605233032)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25611019753233000)
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogPage2'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogPage2'
,p_step_sub_title=>'WayBillLogPage2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222103716'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25793793195056567)
,p_name=>'WayBillLogPage2Reg'
,p_template=>wwv_flow_api.id(23787520712469085)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(23796331659469105)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25795407182056627)
,p_query_column_id=>1
,p_column_alias=>'WAYBILLID'
,p_column_display_sequence=>1
,p_column_heading=>'Waybillid'
,p_column_link=>'f?p=#APP_ID#:33:#APP_SESSION#::::P33_WAYBILLID:#WAYBILLID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25795855997056631)
,p_query_column_id=>2
,p_column_alias=>'VEHICLEID'
,p_column_display_sequence=>2
,p_column_heading=>'Vehicleid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25796276558056631)
,p_query_column_id=>3
,p_column_alias=>'PERSONID'
,p_column_display_sequence=>3
,p_column_heading=>'Personid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25796632683056632)
,p_query_column_id=>4
,p_column_alias=>'WAYBILLDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Waybilldate'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25797039873056632)
,p_query_column_id=>5
,p_column_alias=>'WAYBILLNOTES'
,p_column_display_sequence=>5
,p_column_heading=>'Waybillnotes'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25827796952056757)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25799294770056638)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25793793195056567)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(25799767120056641)
,p_computation_sequence=>1
,p_computation_item=>'P33_WAYBILLID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogEditPage2'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogEditPage2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222103716'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25793829161056567)
,p_name=>'TripsLogPage2'
,p_template=>wwv_flow_api.id(23787520712469085)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TRIPID,',
'       WAYBILLID,',
'       TRIPQUEUE,',
'       TRIPDISTANCE,',
'       TRIPNAME,',
'       TRIPNOTES',
'  from TTRIPSLOG',
' where TTRIPSLOG.WAYBILLID = :P33_WAYBILLID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P33_WAYBILLID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P33_WAYBILLID'
,p_query_row_template=>wwv_flow_api.id(23796331659469105)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25813399913056708)
,p_query_column_id=>1
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>1
,p_column_heading=>'Tripid'
,p_column_link=>'f?p=#APP_ID#:34:#APP_SESSION#::::P34_TRIPID:#TRIPID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25813770598056709)
,p_query_column_id=>2
,p_column_alias=>'WAYBILLID'
,p_column_display_sequence=>2
,p_column_heading=>'Waybillid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25814188984056709)
,p_query_column_id=>3
,p_column_alias=>'TRIPQUEUE'
,p_column_display_sequence=>3
,p_column_heading=>'Tripqueue'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25814501510056710)
,p_query_column_id=>4
,p_column_alias=>'TRIPDISTANCE'
,p_column_display_sequence=>4
,p_column_heading=>'Tripdistance'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25814948959056710)
,p_query_column_id=>5
,p_column_alias=>'TRIPNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Tripname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25815303885056711)
,p_query_column_id=>6
,p_column_alias=>'TRIPNOTES'
,p_column_display_sequence=>6
,p_column_heading=>'Tripnotes'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25800729923056643)
,p_plug_name=>'WayBillLogEditPage2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25828437560056759)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25801224516056643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25800729923056643)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P33_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25807006836056672)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(25800729923056643)
,p_button_name=>'GET_PREVIOUS_WAYBILLID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808261789469144)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_WAYBILLID'')'
,p_button_condition=>'P33_WAYBILLID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25806905588056672)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(25800729923056643)
,p_button_name=>'GET_NEXT_WAYBILLID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808261789469144)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_WAYBILLID'')'
,p_button_condition=>'P33_WAYBILLID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25801444996056644)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25800729923056643)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25818088608056740)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25793829161056567)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_WAYBILLID:&P33_WAYBILLID.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25801163589056643)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25800729923056643)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P33_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25801332357056643)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25800729923056643)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P33_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25803091178056647)
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25811402330056700)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::P33_WAYBILLID:&P33_WAYBILLID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(25806905588056672)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25811861126056700)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::P33_WAYBILLID:&P33_WAYBILLID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(25807006836056672)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25803432438056649)
,p_name=>'P33_WAYBILLID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillid'
,p_source=>'WAYBILLID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25803817315056661)
,p_name=>'P33_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25804231582056665)
,p_name=>'P33_PERSONID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Personid'
,p_source=>'PERSONID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25804619471056665)
,p_name=>'P33_WAYBILLDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybilldate'
,p_source=>'WAYBILLDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25805031971056666)
,p_name=>'P33_WAYBILLNOTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillnotes'
,p_source=>'WAYBILLNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25809296036056682)
,p_name=>'P33_WAYBILLID_NEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_prompt=>'P33_WAYBILLID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25809672031056683)
,p_name=>'P33_WAYBILLID_PREV'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_prompt=>'P33_WAYBILLID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25810095119056684)
,p_name=>'P33_WAYBILLID_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25800729923056643)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(25818500164056740)
,p_computation_sequence=>1
,p_computation_item=>'P34_TRIPID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25805863320056670)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TWAYBILLLOG'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P33_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25811024869056699)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P33_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
,p_attribute_07=>'PERSONID'
,p_attribute_09=>'P33_WAYBILLID_NEXT'
,p_attribute_10=>'P33_WAYBILLID_PREV'
,p_attribute_13=>'P33_WAYBILLID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25806215359056672)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TWAYBILLLOG'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P33_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25806657377056672)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25801332357056643)
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'TripsLogEditPage2'
,p_page_mode=>'NORMAL'
,p_step_title=>'TripsLogEditPage2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222103716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25819583547056742)
,p_plug_name=>'TripsLogEditPage2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25829066292056760)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25820037053056743)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25819583547056742)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P34_TRIPID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25820242317056743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25819583547056742)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25819920220056743)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25819583547056742)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P34_TRIPID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25820198018056743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25819583547056742)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_TRIPID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25821846326056745)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25822220549056746)
,p_name=>'P34_TRIPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25819583547056742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tripid'
,p_source=>'TRIPID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25822609595056746)
,p_name=>'P34_WAYBILLID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25819583547056742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillid'
,p_source=>'WAYBILLID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_cattributes_element=>'class="fielddatabold"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25823008937056747)
,p_name=>'P34_TRIPQUEUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25819583547056742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tripqueue'
,p_source=>'TRIPQUEUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25823489852056747)
,p_name=>'P34_TRIPDISTANCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25819583547056742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tripdistance'
,p_source=>'TRIPDISTANCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25823872994056748)
,p_name=>'P34_TRIPNAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25819583547056742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tripname'
,p_source=>'TRIPNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25824279567056749)
,p_name=>'P34_TRIPNOTES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25819583547056742)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tripnotes'
,p_source=>'TRIPNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25825042385056750)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TTRIPSLOG'
,p_attribute_02=>'TTRIPSLOG'
,p_attribute_03=>'P34_TRIPID'
,p_attribute_04=>'TRIPID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25825426038056750)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TTRIPSLOG'
,p_attribute_02=>'TTRIPSLOG'
,p_attribute_03=>'P34_TRIPID'
,p_attribute_04=>'TRIPID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25825814851056751)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25820198018056743)
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogPage3'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogPage3'
,p_step_sub_title=>'WayBillLogPage3'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222110407'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26013723784217729)
,p_name=>'WayBillLogPage3Reg'
,p_template=>wwv_flow_api.id(23787520712469085)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WAYBILLID,',
'       VEHICLEID,',
'       PERSONID,',
'       WAYBILLDATE,',
'       WAYBILLNOTES',
'  from TWAYBILLLOG'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(23796331659469105)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26015165312217764)
,p_query_column_id=>1
,p_column_alias=>'WAYBILLID'
,p_column_display_sequence=>1
,p_column_heading=>'Waybillid'
,p_column_link=>'f?p=#APP_ID#:39:#APP_SESSION#:::RP:P39_WAYBILLID:#WAYBILLID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26015536804217764)
,p_query_column_id=>2
,p_column_alias=>'VEHICLEID'
,p_column_display_sequence=>2
,p_column_heading=>'Vehicleid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26015935596217765)
,p_query_column_id=>3
,p_column_alias=>'PERSONID'
,p_column_display_sequence=>3
,p_column_heading=>'Personid'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26016341286217765)
,p_query_column_id=>4
,p_column_alias=>'WAYBILLDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Waybilldate'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26016782465217766)
,p_query_column_id=>5
,p_column_alias=>'WAYBILLNOTES'
,p_column_display_sequence=>5
,p_column_heading=>'Waybillnotes'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26047316332217850)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26018998774217770)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26013723784217729)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(26019410440217770)
,p_computation_sequence=>1
,p_computation_item=>'P39_WAYBILLID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogEditPage3'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogEditPage3'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222122822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26020468684217772)
,p_plug_name=>'WayBillLogEditPage3Reg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26033631498217801)
,p_name=>'TripsLogPage3Reg'
,p_template=>wwv_flow_api.id(23787520712469085)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"TRIPID",',
'"WAYBILLID",',
'"TRIPQUEUE",',
'"TRIPDISTANCE",',
'"TRIPNAME",',
'"TRIPNOTES"',
'from "#OWNER#"."TTRIPSLOG"',
'where "WAYBILLID" = :P39_WAYBILLID',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_display_when_condition=>'P39_WAYBILLID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P39_WAYBILLID'
,p_query_row_template=>wwv_flow_api.id(23796331659469105)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26043374615217833)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26034212374217804)
,p_query_column_id=>2
,p_column_alias=>'TRIPID'
,p_column_display_sequence=>2
,p_column_heading=>'Tripid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'SCASSETS_SCHEMA'
,p_ref_table_name=>'TTRIPSLOG'
,p_ref_column_name=>'TRIPID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26034699603217804)
,p_query_column_id=>3
,p_column_alias=>'WAYBILLID'
,p_column_display_sequence=>3
,p_column_heading=>'Waybillid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_column_default=>'P39_WAYBILLID'
,p_column_default_type=>'ITEM'
,p_ref_schema=>'SCASSETS_SCHEMA'
,p_ref_table_name=>'TTRIPSLOG'
,p_ref_column_name=>'WAYBILLID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26035064801217805)
,p_query_column_id=>4
,p_column_alias=>'TRIPQUEUE'
,p_column_display_sequence=>4
,p_column_heading=>'Tripqueue'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SCASSETS_SCHEMA'
,p_ref_table_name=>'TTRIPSLOG'
,p_ref_column_name=>'TRIPQUEUE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26035447428217806)
,p_query_column_id=>5
,p_column_alias=>'TRIPDISTANCE'
,p_column_display_sequence=>5
,p_column_heading=>'Tripdistance'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SCASSETS_SCHEMA'
,p_ref_table_name=>'TTRIPSLOG'
,p_ref_column_name=>'TRIPDISTANCE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26035858476217807)
,p_query_column_id=>6
,p_column_alias=>'TRIPNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Tripname'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SCASSETS_SCHEMA'
,p_ref_table_name=>'TTRIPSLOG'
,p_ref_column_name=>'TRIPNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26036211741217808)
,p_query_column_id=>7
,p_column_alias=>'TRIPNOTES'
,p_column_display_sequence=>7
,p_column_heading=>'Tripnotes'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SCASSETS_SCHEMA'
,p_ref_table_name=>'TTRIPSLOG'
,p_ref_column_name=>'TRIPNOTES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26047956257217853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26020951474217772)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26020468684217772)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P39_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26038782355217820)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26033631498217801)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Add Row'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26026760023217782)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(26020468684217772)
,p_button_name=>'GET_PREVIOUS_WAYBILLID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808261789469144)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_WAYBILLID'')'
,p_button_condition=>'P39_WAYBILLID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26026633751217782)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(26020468684217772)
,p_button_name=>'GET_NEXT_WAYBILLID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808261789469144)
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_WAYBILLID'')'
,p_button_condition=>'P39_WAYBILLID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26021181399217773)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26020468684217772)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26020878528217772)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26020468684217772)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P39_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26021043570217772)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26020468684217772)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P39_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26038619549217820)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26033631498217801)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."TTRIPSLOG"',
'where "WAYBILLID" = :P39_WAYBILLID'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26043799668217834)
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26038507373217820)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26030871968217790)
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::P39_WAYBILLID:&P39_WAYBILLID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26026633751217782)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26031285867217791)
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::P39_WAYBILLID:&P39_WAYBILLID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26026760023217782)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26026299608217781)
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26022771052217775)
,p_name=>'P39_WAYBILLID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillid'
,p_source=>'WAYBILLID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26023121187217776)
,p_name=>'P39_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26023501075217776)
,p_name=>'P39_PERSONID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Personid'
,p_source=>'PERSONID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELPERSONLOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "NAME" as d,',
'       personid as r',
'  from tpersons',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26023992732217777)
,p_name=>'P39_WAYBILLDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybilldate'
,p_source=>'WAYBILLDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26024333391217778)
,p_name=>'P39_WAYBILLNOTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillnotes'
,p_source=>'WAYBILLNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26028646131217786)
,p_name=>'P39_WAYBILLID_NEXT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_prompt=>'P39_WAYBILLID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26029033761217786)
,p_name=>'P39_WAYBILLID_PREV'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_prompt=>'P39_WAYBILLID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26029439572217787)
,p_name=>'P39_WAYBILLID_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26020468684217772)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26040032946217822)
,p_tabular_form_region_id=>wwv_flow_api.id(26033631498217801)
,p_validation_name=>'TRIPQUEUE must be numeric'
,p_validation_sequence=>30
,p_validation=>'TRIPQUEUE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'TRIPQUEUE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26040407821217826)
,p_tabular_form_region_id=>wwv_flow_api.id(26033631498217801)
,p_validation_name=>'TRIPDISTANCE must be numeric'
,p_validation_sequence=>40
,p_validation=>'TRIPDISTANCE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'TRIPDISTANCE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26025129612217779)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TWAYBILLLOG'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P39_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26030469420217790)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P39_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
,p_attribute_07=>'WAYBILLID'
,p_attribute_09=>'P39_WAYBILLID_NEXT'
,p_attribute_10=>'P39_WAYBILLID_PREV'
,p_attribute_13=>'P39_WAYBILLID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26025526324217780)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TWAYBILLLOG'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P39_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26040786784217826)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26033631498217801)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'TTRIPSLOG'
,p_attribute_03=>'TRIPID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26041115324217827)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26033631498217801)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'TTRIPSLOG'
,p_attribute_03=>'TRIPID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26025916917217780)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26021043570217772)
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogPage4'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogPage4'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222125027'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26182425304282522)
,p_plug_name=>'WayBillLogPage4Reg'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787082064469083)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "WAYBILLID", ',
'"VEHICLEID",',
'"PERSONID",',
'"WAYBILLDATE",',
'"WAYBILLNOTES"',
'from "#OWNER#"."TWAYBILLLOG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26182894175282523)
,p_name=>'WayBillLogPage4Reg'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::P39_WAYBILLID:#WAYBILLID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'SCASSETS_ADMIN'
,p_internal_uid=>26182894175282523
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26182923926282527)
,p_db_column_name=>'WAYBILLID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Waybillid'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26183320666282529)
,p_db_column_name=>'VEHICLEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vehicleid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25576625889549635)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26183776471282530)
,p_db_column_name=>'PERSONID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Personid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(25770365198445916)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26184190516282530)
,p_db_column_name=>'WAYBILLDATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Waybilldate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26184574618282531)
,p_db_column_name=>'WAYBILLNOTES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Waybillnotes'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26271570661288736)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'262716'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'WAYBILLID:VEHICLEID:PERSONID:WAYBILLDATE:WAYBILLNOTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26185516895282534)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26184929546282532)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26182425304282522)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'WayBillLogEditPage4'
,p_page_mode=>'NORMAL'
,p_step_title=>'WayBillLogEditPage4'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160222122735'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26174817963282494)
,p_plug_name=>'WayBillLogEditPage4Reg'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(23787520712469085)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26186147702282535)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23790833953469089)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(23814842776469277)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(23808831762469149)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26175304005282496)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26174817963282494)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P44_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26175544212282496)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26174817963282494)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26175205188282496)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26174817963282494)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P44_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26175461503282496)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26174817963282494)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P44_WAYBILLID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26177157330282498)
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26177523975282499)
,p_name=>'P44_WAYBILLID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26174817963282494)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillid'
,p_source=>'WAYBILLID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26177980725282501)
,p_name=>'P44_VEHICLEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26174817963282494)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vehicleid'
,p_source=>'VEHICLEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELVEHICLELOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vehiclename as d,',
'       vehicleid as r',
'  from tvehicles v',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26178318995282502)
,p_name=>'P44_PERSONID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26174817963282494)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Personid'
,p_source=>'PERSONID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SELPERSONLOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "NAME" as d,',
'       personid as r',
'  from tpersons',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26178793341282503)
,p_name=>'P44_WAYBILLDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26174817963282494)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybilldate'
,p_source=>'WAYBILLDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26179140536282503)
,p_name=>'P44_WAYBILLNOTES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26174817963282494)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Waybillnotes'
,p_source=>'WAYBILLNOTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23807818149469141)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26179928548282505)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TWAYBILLLOG'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P44_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26180317902282506)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TWAYBILLLOG'
,p_attribute_02=>'TWAYBILLLOG'
,p_attribute_03=>'P44_WAYBILLID'
,p_attribute_04=>'WAYBILLID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26180795636282506)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26175461503282496)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(23813595700469208)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Log In | &APP_NAME.'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(23773393729469041)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'SCASSETS_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160216115030'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23814075123469268)
,p_plug_name=>'Управление транспортом (ГСМ, автошины, АКБ etc.)'
,p_icon_css_classes=>'fa-cab'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23787331207469084)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Для залогиниться используйте имя и пароль пользователя apex</p>',
'<p>Для получить информацию, чем же конкретно занимается это приложение, обратитесь к разработчику приложения</p>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23814390507469274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23814075123469268)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23808383794469147)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Поехали'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23814132908469272)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23814075123469268)
,p_prompt=>'Username'
,p_placeholder=>'Имя пользователя'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(23807768938469137)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23814285737469274)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23814075123469268)
,p_prompt=>'Password'
,p_placeholder=>'Пароль'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(23807768938469137)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23819208479351574)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "")'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23819607158351580)
,p_event_id=>wwv_flow_api.id(23819208479351574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23820159783351583)
,p_event_id=>wwv_flow_api.id(23819208479351574)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23814566248469276)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23814498785469276)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23814701148469277)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23814640233469276)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(25570696960086180)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
