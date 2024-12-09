MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"EnableCategoryListing", "InputType", "ReportType", "Category", "Page", "Analytics", "Session"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["EnableCategoryListing"]
  DUPTABLE R1 K11 [{"MouseAndKeyboard", "Touch", "Gamepad"}]
  LOADK R2 K8 ["MouseAndKeyboard"]
  SETTABLEKS R2 R1 K8 ["MouseAndKeyboard"]
  LOADK R2 K9 ["Touch"]
  SETTABLEKS R2 R1 K9 ["Touch"]
  LOADK R2 K10 ["Gamepad"]
  SETTABLEKS R2 R1 K10 ["Gamepad"]
  SETTABLEKS R1 R0 K1 ["InputType"]
  DUPTABLE R1 K15 [{"Any", "Place", "Player"}]
  LOADK R2 K12 ["Any"]
  SETTABLEKS R2 R1 K12 ["Any"]
  LOADK R2 K13 ["Place"]
  SETTABLEKS R2 R1 K13 ["Place"]
  LOADK R2 K14 ["Player"]
  SETTABLEKS R2 R1 K14 ["Player"]
  SETTABLEKS R1 R0 K2 ["ReportType"]
  DUPTABLE R1 K21 [{"None", "Voice", "Text", "Other", "Experience"}]
  LOADK R2 K22 [""]
  SETTABLEKS R2 R1 K16 ["None"]
  LOADK R2 K17 ["Voice"]
  SETTABLEKS R2 R1 K17 ["Voice"]
  LOADK R2 K18 ["Text"]
  SETTABLEKS R2 R1 K18 ["Text"]
  LOADK R2 K19 ["Other"]
  SETTABLEKS R2 R1 K19 ["Other"]
  LOADK R2 K20 ["Experience"]
  SETTABLEKS R2 R1 K20 ["Experience"]
  SETTABLEKS R1 R0 K3 ["Category"]
  DUPTABLE R1 K27 [{"None", "Category", "Listing", "ReportForm", "ReportSent", "ScreenshotDialog"}]
  LOADK R2 K22 [""]
  SETTABLEKS R2 R1 K16 ["None"]
  LOADK R2 K3 ["Category"]
  SETTABLEKS R2 R1 K3 ["Category"]
  LOADK R2 K23 ["Listing"]
  SETTABLEKS R2 R1 K23 ["Listing"]
  LOADK R2 K24 ["ReportForm"]
  SETTABLEKS R2 R1 K24 ["ReportForm"]
  LOADK R2 K25 ["ReportSent"]
  SETTABLEKS R2 R1 K25 ["ReportSent"]
  LOADK R2 K26 ["ScreenshotDialog"]
  SETTABLEKS R2 R1 K26 ["ScreenshotDialog"]
  SETTABLEKS R1 R0 K4 ["Page"]
  DUPTABLE R1 K36 [{"ReportSubmittedName", "ReportSourceInGame", "ReportFlowOpened", "ReportType", "ReportTypeUser", "ReportTypeGame", "ReportFlowAbandoned", "ReportFlowBack", "ReportFlowAdvance"}]
  LOADK R2 K37 ["ingame_menu_report_submitted"]
  SETTABLEKS R2 R1 K28 ["ReportSubmittedName"]
  LOADK R2 K38 ["ingame"]
  SETTABLEKS R2 R1 K29 ["ReportSourceInGame"]
  LOADK R2 K39 ["report_flow_opened"]
  SETTABLEKS R2 R1 K30 ["ReportFlowOpened"]
  LOADK R2 K2 ["ReportType"]
  SETTABLEKS R2 R1 K2 ["ReportType"]
  LOADK R2 K40 ["user"]
  SETTABLEKS R2 R1 K31 ["ReportTypeUser"]
  LOADK R2 K41 ["game"]
  SETTABLEKS R2 R1 K32 ["ReportTypeGame"]
  LOADK R2 K42 ["ingame_menu_report_abandoned"]
  SETTABLEKS R2 R1 K33 ["ReportFlowAbandoned"]
  LOADK R2 K43 ["ingame_menu_report_navigate_back"]
  SETTABLEKS R2 R1 K34 ["ReportFlowBack"]
  LOADK R2 K44 ["ingame_menu_report_advance_to_form"]
  SETTABLEKS R2 R1 K35 ["ReportFlowAdvance"]
  SETTABLEKS R1 R0 K5 ["Analytics"]
  DUPTABLE R1 K47 [{"StructuralIdentifier", "Metadata"}]
  DUPTABLE R2 K50 [{"Level1", "AbuseReport"}]
  LOADK R3 K51 ["level1"]
  SETTABLEKS R3 R2 K48 ["Level1"]
  LOADK R3 K49 ["AbuseReport"]
  SETTABLEKS R3 R2 K49 ["AbuseReport"]
  SETTABLEKS R2 R1 K45 ["StructuralIdentifier"]
  DUPTABLE R2 K54 [{"EntryPoint", "DeleteOnGameLeave"}]
  LOADK R3 K55 ["entryPoint"]
  SETTABLEKS R3 R2 K52 ["EntryPoint"]
  LOADK R3 K56 ["_deleteOnGameLeave"]
  SETTABLEKS R3 R2 K53 ["DeleteOnGameLeave"]
  SETTABLEKS R2 R1 K46 ["Metadata"]
  SETTABLEKS R1 R0 K6 ["Session"]
  RETURN R0 1