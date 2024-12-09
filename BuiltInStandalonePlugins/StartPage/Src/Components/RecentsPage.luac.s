PROTO_0:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["FFlagDynamicRecentsQuery must be enabled to use RecentQuery"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  DUPTABLE R0 K12 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R1 K13 ["Recents"]
  SETTABLEKS R1 R0 K3 ["searchKey"]
  LOADK R1 K14 [""]
  SETTABLEKS R1 R0 K4 ["search"]
  LOADK R1 K15 ["User"]
  SETTABLEKS R1 R0 K5 ["creatorType"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K16 ["GetUserId"]
  CALL R2 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R1 K18 [tostring]
  CALL R1 -1 1
  SETTABLEKS R1 R0 K6 ["creatorTargetId"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["isArchived"]
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["isTemplates"]
  LOADN R1 10
  SETTABLEKS R1 R0 K9 ["pageSize"]
  LOADB R1 1
  SETTABLEKS R1 R0 K10 ["getRecentLocalFiles"]
  LOADB R1 1
  SETTABLEKS R1 R0 K11 ["getRecentAPIGames"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnClick"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K8 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["ImageSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  SETTABLEKS R6 R5 K2 ["OnClick"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["IsPrivacyVisible"]
  SETTABLEKS R6 R5 K3 ["IsPrivacyVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["IsDateModifiedVisible"]
  SETTABLEKS R6 R5 K4 ["IsDateModifiedVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["IsDropdownMenuVisible"]
  SETTABLEKS R6 R5 K5 ["IsDropdownMenuVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["IsCreatorNameVisible"]
  SETTABLEKS R6 R5 K6 ["IsCreatorNameVisible"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["KebabMenu"]
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+43]
  GETUPVAL R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["FFlagDynamicRecentsQuery must be enabled to use RecentQuery"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  DUPTABLE R2 K12 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R3 K13 ["Recents"]
  SETTABLEKS R3 R2 K3 ["searchKey"]
  LOADK R3 K14 [""]
  SETTABLEKS R3 R2 K4 ["search"]
  LOADK R3 K15 ["User"]
  SETTABLEKS R3 R2 K5 ["creatorType"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K16 ["GetUserId"]
  CALL R4 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R3 K18 [tostring]
  CALL R3 -1 1
  SETTABLEKS R3 R2 K6 ["creatorTargetId"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["isArchived"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["isTemplates"]
  LOADN R3 10
  SETTABLEKS R3 R2 K9 ["pageSize"]
  LOADB R3 1
  SETTABLEKS R3 R2 K10 ["getRecentLocalFiles"]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["getRecentAPIGames"]
  JUMP [+1]
  GETUPVAL R2 3
  GETTABLEKS R3 R0 K19 ["BaseQuery"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K20 ["createElement"]
  GETUPVAL R3 5
  GETUPVAL R4 0
  DUPTABLE R5 K26 [{"Query", "CellSize", "CellComponent", "FetchItems", "AdjustQuery"}]
  GETUPVAL R6 0
  MOVE R7 R1
  GETTABLEKS R8 R0 K27 ["NetworkQuery"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["Query"]
  GETTABLEKS R6 R0 K22 ["CellSize"]
  SETTABLEKS R6 R5 K22 ["CellSize"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U0
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K23 ["CellComponent"]
  GETTABLEKS R6 R0 K24 ["FetchItems"]
  SETTABLEKS R6 R5 K24 ["FetchItems"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K25 ["AdjustQuery"]
  GETTABLEKS R6 R0 K28 ["NetworkViewProps"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+40]
  GETTABLEKS R1 R0 K1 ["Id"]
  JUMPIFNOT R1 [+37]
  GETTABLEKS R1 R0 K2 ["RootPlaceId"]
  JUMPIFNOT R1 [+34]
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["GetUserId"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["Id"]
  GETTABLEKS R4 R0 K2 ["RootPlaceId"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["showVerifyAge"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["showAgeRestricted"]
  CALL R1 5 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+46]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K12 ["recents_cloud"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["IsPlaceholder"]
  JUMPIF R1 [+27]
  GETTABLEKS R1 R0 K14 ["FilePath"]
  JUMPIFNOT R1 [+24]
  GETUPVAL R1 6
  GETTABLEKS R3 R0 K14 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K15 ["openLocalFile"]
  CALL R1 3 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 4
  GETUPVAL R3 5
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K6 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K7 ["telemetrySubtype"]
  LOADK R5 K16 ["recents_local"]
  SETTABLEKS R5 R4 K8 ["action"]
  NAMECALL R1 R1 K13 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K13 [{"BaseQuery", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu", "CellSize", "FetchItems", "NetworkQuery", "OnClick", "NetworkViewProps"}]
  GETTABLEKS R6 R0 K2 ["BaseQuery"]
  SETTABLEKS R6 R5 K2 ["BaseQuery"]
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["IsPrivacyVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["IsDateModifiedVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["IsDropdownMenuVisible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["IsCreatorNameVisible"]
  NEWTABLE R6 0 6
  LOADK R7 K14 ["ConfigureExperience"]
  LOADK R8 K15 ["ConfigurePlace"]
  LOADK R9 K16 ["OpenPlace"]
  LOADK R10 K17 ["PublicPrivateToggle"]
  LOADK R11 K18 ["Archive"]
  LOADK R12 K19 ["RemoveRecent"]
  SETLIST R6 R7 6 [1]
  SETTABLEKS R6 R5 K7 ["KebabMenu"]
  GETUPVAL R6 5
  SETTABLEKS R6 R5 K8 ["CellSize"]
  GETUPVAL R6 6
  SETTABLEKS R6 R5 K9 ["FetchItems"]
  DUPTABLE R6 K23 [{"searchKey", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R7 K24 ["Recents"]
  SETTABLEKS R7 R6 K20 ["searchKey"]
  LOADB R7 1
  SETTABLEKS R7 R6 K21 ["getRecentLocalFiles"]
  LOADB R7 1
  SETTABLEKS R7 R6 K22 ["getRecentAPIGames"]
  SETTABLEKS R6 R5 K10 ["NetworkQuery"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R6 R5 K11 ["OnClick"]
  SETTABLEKS R0 R5 K12 ["NetworkViewProps"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K9 [{"Size", "PageName", "HideTabs", "Tabs", "CanSwapBetweenViews", "IsDefaultGridView", "HasSearchBar"}]
  GETUPVAL R6 3
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+2]
  GETTABLEKS R5 R0 K2 ["Size"]
  SETTABLEKS R5 R4 K2 ["Size"]
  LOADK R5 K10 ["Recents"]
  SETTABLEKS R5 R4 K3 ["PageName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["HideTabs"]
  NEWTABLE R5 0 1
  DUPTABLE R6 K16 [{"Title", "FailedTitle", "Key", "PageComponent", "Dropdowns"}]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K18 ["RecentsPage.Title"]
  NAMECALL R7 R1 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Title"]
  LOADK R9 K17 ["Plugin"]
  LOADK R10 K20 ["NoExperiencesToDisplay"]
  NAMECALL R7 R1 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["FailedTitle"]
  LOADK R7 K10 ["Recents"]
  SETTABLEKS R7 R6 K13 ["Key"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K14 ["PageComponent"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K15 ["Dropdowns"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K5 ["Tabs"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["CanSwapBetweenViews"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["IsDefaultGridView"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["HasSearchBar"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useContext"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["SharedFlags"]
  GETTABLEKS R4 R5 K11 ["getFFlagLuaStartPageNetworkCache"]
  CALL R3 1 1
  CALL R3 0 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagLuaStartPageQuickLoad"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["SharedFlags"]
  GETTABLEKS R7 R8 K14 ["getFFlagDynamicRecentsQuery"]
  CALL R6 1 1
  CALL R6 0 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["GamePage"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K17 ["InfoTile"]
  CALL R8 1 1
  JUMPIFNOT R3 [+10]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K18 ["NetworkView"]
  CALL R9 1 1
  JUMP [+9]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K19 ["DEPRECATED_NetworkView"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K6 ["Packages"]
  GETTABLEKS R11 R12 K20 ["Framework"]
  CALL R10 1 1
  GETTABLEKS R12 R10 K21 ["ContextServices"]
  GETTABLEKS R11 R12 K22 ["Localization"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K23 ["Util"]
  GETTABLEKS R13 R14 K24 ["Services"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K25 ["StartPageManager"]
  GETTABLEKS R14 R12 K26 ["StudioService"]
  JUMPIFNOT R3 [+10]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K9 ["Src"]
  GETTABLEKS R17 R18 K27 ["Network"]
  GETTABLEKS R16 R17 K28 ["DiscoverRecents"]
  CALL R15 1 1
  JUMP [+9]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K9 ["Src"]
  GETTABLEKS R17 R18 K29 ["DEPRECATED_Network"]
  GETTABLEKS R16 R17 K28 ["DiscoverRecents"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K27 ["Network"]
  GETTABLEKS R17 R18 K30 ["DiscoverCreatorEligibilityAndOpenPlace"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R21 R0 K9 ["Src"]
  GETTABLEKS R20 R21 K23 ["Util"]
  GETTABLEKS R19 R20 K31 ["Telemetry"]
  GETTABLEKS R18 R19 K32 ["TelemetryContext"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K9 ["Src"]
  GETTABLEKS R21 R22 K23 ["Util"]
  GETTABLEKS R20 R21 K31 ["Telemetry"]
  GETTABLEKS R19 R20 K33 ["StartPageTelemetryEvent"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K9 ["Src"]
  GETTABLEKS R21 R22 K23 ["Util"]
  GETTABLEKS R20 R21 K34 ["Dialogs"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R0 K6 ["Packages"]
  GETTABLEKS R21 R22 K35 ["Dash"]
  CALL R20 1 1
  GETTABLEKS R21 R20 K36 ["join"]
  GETIMPORT R22 K39 [UDim2.new]
  LOADN R23 0
  LOADN R24 200
  LOADN R25 0
  LOADN R26 200
  CALL R22 4 1
  GETIMPORT R23 K39 [UDim2.new]
  LOADN R24 0
  LOADN R25 225
  LOADN R26 0
  LOADN R27 92
  CALL R23 4 1
  JUMPIF R6 [+35]
  DUPTABLE R24 K49 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R25 K50 ["Recents"]
  SETTABLEKS R25 R24 K40 ["searchKey"]
  LOADK R25 K51 [""]
  SETTABLEKS R25 R24 K41 ["search"]
  LOADK R25 K52 ["User"]
  SETTABLEKS R25 R24 K42 ["creatorType"]
  NAMECALL R26 R14 K53 ["GetUserId"]
  CALL R26 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R25 K55 [tostring]
  CALL R25 -1 1
  SETTABLEKS R25 R24 K43 ["creatorTargetId"]
  LOADB R25 0
  SETTABLEKS R25 R24 K44 ["isArchived"]
  LOADB R25 0
  SETTABLEKS R25 R24 K45 ["isTemplates"]
  LOADN R25 10
  SETTABLEKS R25 R24 K46 ["pageSize"]
  LOADB R25 1
  SETTABLEKS R25 R24 K47 ["getRecentLocalFiles"]
  LOADB R25 1
  SETTABLEKS R25 R24 K48 ["getRecentAPIGames"]
  JUMP [+1]
  LOADNIL R24
  DUPCLOSURE R25 K56 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R14
  GETIMPORT R26 K5 [require]
  GETTABLEKS R28 R0 K9 ["Src"]
  GETTABLEKS R27 R28 K57 ["Types"]
  CALL R26 1 1
  DUPCLOSURE R27 K58 [PROTO_4]
  CAPTURE VAL R21
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R24
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R22
  DUPCLOSURE R28 K59 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R27
  CAPTURE VAL R23
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R13
  DUPCLOSURE R29 K60 [PROTO_7]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R28
  RETURN R29 1
