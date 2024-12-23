PROTO_0:
  GETUPVAL R1 0
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["FFlagDynamicUserIDRecentPage must be enabled to use RecentQuery"]
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
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R2 2
  NAMECALL R2 R2 K16 ["GetUserId"]
  CALL R2 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R1 K18 [tostring]
  CALL R1 -1 1
  JUMP [+4]
  GETUPVAL R1 2
  NAMECALL R1 R1 K16 ["GetUserId"]
  CALL R1 1 1
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
  GETTABLEKS R1 R0 K0 ["RootPlaceId"]
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["GetUserId"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["Id"]
  GETTABLEKS R4 R0 K0 ["RootPlaceId"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["showVerifyAge"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["showAgeRestricted"]
  CALL R1 5 0
  JUMP [+10]
  GETTABLEKS R1 R0 K5 ["FilePath"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K5 ["FilePath"]
  LOADB R4 0
  NAMECALL R1 R1 K6 ["openLocalFile"]
  CALL R1 3 0
  GETUPVAL R1 4
  JUMPIFNOT R1 [+28]
  GETUPVAL R1 5
  GETUPVAL R3 6
  DUPTABLE R4 K11 [{"telemetryType", "telemetrySubtype", "action", "name"}]
  LOADK R5 K12 ["interaction"]
  SETTABLEKS R5 R4 K7 ["telemetryType"]
  LOADK R5 K13 ["place_open"]
  SETTABLEKS R5 R4 K8 ["telemetrySubtype"]
  LOADK R5 K14 ["home_recent_sort"]
  SETTABLEKS R5 R4 K9 ["action"]
  GETTABLEKS R6 R0 K0 ["RootPlaceId"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K15 ["published"]
  JUMP [+6]
  GETTABLEKS R6 R0 K5 ["FilePath"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K16 ["local_file"]
  JUMP [+1]
  LOADK R5 K17 ["unknown"]
  SETTABLEKS R5 R4 K10 ["name"]
  NAMECALL R1 R1 K18 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 4
  GETUPVAL R5 5
  MOVE R6 R0
  DUPTABLE R7 K9 [{"ImageSize", "OnClick", "IsPrivacyVisible", "IsDateModifiedVisible", "IsDropdownMenuVisible", "IsCreatorNameVisible", "KebabMenu"}]
  GETIMPORT R8 K12 [UDim2.new]
  LOADN R9 0
  LOADN R10 200
  LOADN R11 0
  LOADN R12 200
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["ImageSize"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  SETTABLEKS R8 R7 K3 ["OnClick"]
  LOADB R8 1
  SETTABLEKS R8 R7 K4 ["IsPrivacyVisible"]
  LOADB R8 1
  SETTABLEKS R8 R7 K5 ["IsDateModifiedVisible"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["IsDropdownMenuVisible"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["IsCreatorNameVisible"]
  NEWTABLE R8 0 6
  LOADK R9 K13 ["ConfigureExperience"]
  LOADK R10 K14 ["ConfigurePlace"]
  LOADK R11 K15 ["OpenPlace"]
  LOADK R12 K16 ["PublicPrivateToggle"]
  LOADK R13 K17 ["Archive"]
  LOADK R14 K18 ["RemoveRecent"]
  SETLIST R8 R9 6 [1]
  SETTABLEKS R8 R7 K8 ["KebabMenu"]
  CALL R5 2 -1
  CALL R3 -1 -1
  RETURN R3 -1

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["RootPlaceId"]
  JUMPIFNOT R1 [+36]
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["GetUserId"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K2 ["Id"]
  GETTABLEKS R4 R0 K0 ["RootPlaceId"]
  DUPCLOSURE R5 K3 [PROTO_3]
  DUPCLOSURE R6 K4 [PROTO_4]
  CALL R1 5 0
  GETUPVAL R1 2
  JUMPIFNOT R1 [+22]
  GETUPVAL R1 3
  GETUPVAL R3 4
  DUPTABLE R4 K9 [{"telemetryType", "telemetrySubtype", "action", "name"}]
  LOADK R5 K10 ["interaction"]
  SETTABLEKS R5 R4 K5 ["telemetryType"]
  LOADK R5 K11 ["place_open"]
  SETTABLEKS R5 R4 K6 ["telemetrySubtype"]
  LOADK R5 K12 ["home_template_sort"]
  SETTABLEKS R5 R4 K7 ["action"]
  GETTABLEKS R5 R0 K13 ["Name"]
  JUMPIF R5 [+2]
  GETTABLEKS R5 R0 K2 ["Id"]
  SETTABLEKS R5 R4 K8 ["name"]
  NAMECALL R1 R1 K14 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K4 [{"ImageSize", "OnClick"}]
  GETIMPORT R7 K7 [UDim2.new]
  LOADN R8 0
  LOADN R9 200
  LOADN R10 0
  LOADN R11 200
  CALL R7 4 1
  SETTABLEKS R7 R6 K2 ["ImageSize"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLEKS R7 R6 K3 ["OnClick"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "action", "name", "link"}]
  LOADK R5 K6 ["interaction"]
  SETTABLEKS R5 R4 K0 ["telemetryType"]
  LOADK R5 K7 ["momentum"]
  SETTABLEKS R5 R4 K1 ["telemetrySubtype"]
  GETTABLEKS R6 R0 K8 ["Link"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K9 ["open_link"]
  JUMP [+1]
  LOADK R5 K10 ["launch_tutorial"]
  SETTABLEKS R5 R4 K2 ["action"]
  GETTABLEKS R5 R0 K11 ["Name"]
  SETTABLEKS R5 R4 K3 ["name"]
  GETTABLEKS R5 R0 K8 ["Link"]
  SETTABLEKS R5 R4 K4 ["link"]
  NAMECALL R1 R1 K12 ["log"]
  CALL R1 3 0
  GETTABLEKS R1 R0 K8 ["Link"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 2
  GETTABLEKS R3 R0 K8 ["Link"]
  NAMECALL R1 R1 K13 ["openLink"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K14 ["LaunchTutorialOnClick"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 2
  NAMECALL R1 R1 K15 ["startTutorial"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K5 [{"ImageSize", "IsDescriptionVisible", "OnClick"}]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 0
  LOADN R9 200
  LOADN R10 0
  LOADN R11 161
  CALL R7 4 1
  SETTABLEKS R7 R6 K2 ["ImageSize"]
  LOADB R7 1
  SETTABLEKS R7 R6 K3 ["IsDescriptionVisible"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K4 ["OnClick"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+13]
  GETUPVAL R0 0
  GETIMPORT R1 K3 [os.clock]
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 1
  GETIMPORT R1 K5 [os.time]
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_10:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  LOADN R3 0
  JUMPIFLT R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  CALL R1 1 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+69]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFEQKNIL R1 [+68]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+63]
  GETIMPORT R1 K3 [os.clock]
  CALL R1 0 1
  GETUPVAL R2 3
  SETTABLEKS R1 R2 K0 ["current"]
  GETUPVAL R2 4
  GETUPVAL R4 5
  DUPTABLE R5 K9 [{"telemetryType", "telemetrySubtype", "measurementName", "timeElapsedMilliseconds", "context"}]
  LOADK R6 K10 ["performance"]
  SETTABLEKS R6 R5 K4 ["telemetryType"]
  LOADK R6 K11 ["page_load"]
  SETTABLEKS R6 R5 K5 ["telemetrySubtype"]
  LOADK R6 K12 ["initial_load_time"]
  SETTABLEKS R6 R5 K6 ["measurementName"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K0 ["current"]
  SUB R8 R1 R9
  MULK R7 R8 K13 [1000]
  FASTCALL1 MATH_ROUND R7 [+2]
  GETIMPORT R6 K16 [math.round]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["timeElapsedMilliseconds"]
  LOADK R6 K17 ["home_page"]
  SETTABLEKS R6 R5 K8 ["context"]
  NAMECALL R2 R2 K18 ["log"]
  CALL R2 3 0
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFEQKNIL R2 [+23]
  GETUPVAL R2 7
  LOADK R4 K19 ["StartPageBridge"]
  NAMECALL R2 R2 K20 ["GetPluginComponent"]
  CALL R2 2 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K0 ["current"]
  MULK R4 R5 K13 [1000]
  FASTCALL1 MATH_ROUND R4 [+2]
  GETIMPORT R3 K16 [math.round]
  CALL R3 1 1
  MOVE R6 R3
  NAMECALL R4 R2 K21 ["SetStartPageFirstRenderTimeAsync"]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R1 8
  DUPCLOSURE R2 K22 [PROTO_10]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_13:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_12]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["get"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R1 2
  MOVE R2 R0
  GETVARARGS R3 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  GETUPVAL R0 1
  LOADB R2 1
  NAMECALL R0 R0 K0 ["setTutorialBannerClosed"]
  CALL R0 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R4 K6 ["navigation"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K7 ["page"]
  SETTABLEKS R4 R3 K1 ["telemetrySubtype"]
  LOADK R4 K8 ["see_all_recents"]
  SETTABLEKS R4 R3 K2 ["context"]
  LOADK R4 K9 ["Home"]
  SETTABLEKS R4 R3 K3 ["from"]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+2]
  LOADK R4 K10 ["Recents"]
  JUMP [+1]
  LOADK R4 K11 ["Experiences"]
  SETTABLEKS R4 R3 K4 ["to"]
  NAMECALL R0 R0 K12 ["log"]
  CALL R0 3 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K13 ["OnPageSwap"]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+2]
  LOADK R1 K10 ["Recents"]
  JUMP [+1]
  LOADK R1 K11 ["Experiences"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R4 K6 ["navigation"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K7 ["page"]
  SETTABLEKS R4 R3 K1 ["telemetrySubtype"]
  LOADK R4 K8 ["see_all_templates"]
  SETTABLEKS R4 R3 K2 ["context"]
  LOADK R4 K9 ["Home"]
  SETTABLEKS R4 R3 K3 ["from"]
  LOADK R4 K10 ["Templates"]
  SETTABLEKS R4 R3 K4 ["to"]
  NAMECALL R0 R0 K11 ["log"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K12 ["OnPageSwap"]
  LOADK R1 K10 ["Templates"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R2 0
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R3 0
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R3
  NEWTABLE R6 0 0
  CALL R4 2 0
  LOADNIL R4
  GETUPVAL R5 2
  JUMPIFNOT R5 [+8]
  GETUPVAL R5 3
  NAMECALL R5 R5 K0 ["use"]
  CALL R5 1 1
  NAMECALL R5 R5 K1 ["get"]
  CALL R5 1 1
  MOVE R4 R5
  GETUPVAL R5 4
  NAMECALL R5 R5 K0 ["use"]
  CALL R5 1 1
  GETUPVAL R6 5
  NAMECALL R6 R6 K0 ["use"]
  CALL R6 1 1
  GETUPVAL R7 6
  LOADN R8 0
  CALL R7 1 2
  GETUPVAL R10 7
  NAMECALL R10 R10 K2 ["isTutorialBannerClosed"]
  CALL R10 1 1
  NOT R9 R10
  GETIMPORT R10 K4 [game]
  LOADK R12 K5 ["DebugShowStudioTour2"]
  NAMECALL R10 R10 K6 ["GetFastFlag"]
  CALL R10 2 1
  JUMPIF R10 [+7]
  GETIMPORT R10 K4 [game]
  LOADK R12 K7 ["DebugShowStudioTour3"]
  NAMECALL R10 R10 K6 ["GetFastFlag"]
  CALL R10 2 1
  JUMPIFNOT R10 [+1]
  LOADB R9 1
  GETUPVAL R10 6
  MOVE R11 R9
  CALL R10 1 2
  LOADNIL R12
  LOADNIL R13
  GETUPVAL R14 8
  JUMPIF R14 [+5]
  GETUPVAL R14 6
  LOADNIL R15
  CALL R14 1 2
  MOVE R12 R14
  MOVE R13 R15
  GETUPVAL R14 6
  LOADB R15 1
  CALL R14 1 2
  GETUPVAL R16 9
  NEWCLOSURE R17 P1
  CAPTURE VAL R15
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE UPVAL U10
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE VAL R8
  GETUPVAL R19 2
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+5]
  NEWTABLE R18 0 1
  MOVE R19 R7
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  LOADNIL R17
  GETUPVAL R18 2
  JUMPIF R18 [+7]
  GETUPVAL R18 9
  NEWCLOSURE R19 P2
  CAPTURE VAL R8
  NEWTABLE R20 0 0
  CALL R18 2 1
  MOVE R17 R18
  LOADNIL R18
  GETUPVAL R19 8
  JUMPIF R19 [+8]
  LOADN R18 238
  JUMPIFNOT R14 [+1]
  ADDK R18 R18 K8 [400]
  JUMPIFNOT R10 [+4]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R19 R12 K9 ["Y"]
  ADD R18 R18 R19
  GETUPVAL R19 11
  CALL R19 0 1
  GETUPVAL R20 9
  NEWCLOSURE R21 P3
  CAPTURE UPVAL U12
  CAPTURE VAL R6
  CAPTURE UPVAL U13
  NEWTABLE R22 0 1
  NAMECALL R23 R6 K10 ["getLocale"]
  CALL R23 1 -1
  SETLIST R22 R23 -1 [1]
  CALL R20 2 1
  LOADNIL R21
  GETUPVAL R22 2
  JUMPIF R22 [+78]
  LOADN R22 2
  JUMPIFLE R22 R7 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  JUMPIFNOT R21 [+72]
  GETTABLEKS R22 R1 K11 ["current"]
  JUMPIFEQKNIL R22 [+69]
  GETTABLEKS R22 R2 K11 ["current"]
  JUMPIFNOTEQKNIL R22 [+65]
  GETIMPORT R22 K14 [os.clock]
  CALL R22 0 1
  SETTABLEKS R22 R2 K11 ["current"]
  GETUPVAL R25 10
  DUPTABLE R26 K20 [{"telemetryType", "telemetrySubtype", "measurementName", "timeElapsedMilliseconds", "context"}]
  LOADK R27 K21 ["performance"]
  SETTABLEKS R27 R26 K15 ["telemetryType"]
  LOADK R27 K22 ["page_load"]
  SETTABLEKS R27 R26 K16 ["telemetrySubtype"]
  LOADK R27 K23 ["initial_load_time"]
  SETTABLEKS R27 R26 K17 ["measurementName"]
  GETTABLEKS R30 R1 K11 ["current"]
  SUB R29 R22 R30
  MULK R28 R29 K24 [1000]
  FASTCALL1 MATH_ROUND R28 [+2]
  GETIMPORT R27 K27 [math.round]
  CALL R27 1 1
  SETTABLEKS R27 R26 K18 ["timeElapsedMilliseconds"]
  LOADK R27 K28 ["home_page"]
  SETTABLEKS R27 R26 K19 ["context"]
  NAMECALL R23 R5 K29 ["log"]
  CALL R23 3 0
  GETUPVAL R25 14
  GETTABLEKS R24 R25 K30 ["ContextServices"]
  GETTABLEKS R23 R24 K31 ["Plugin"]
  NAMECALL R23 R23 K0 ["use"]
  CALL R23 1 1
  NAMECALL R23 R23 K1 ["get"]
  CALL R23 1 1
  JUMPIFNOT R23 [+20]
  GETTABLEKS R24 R3 K11 ["current"]
  JUMPIFEQKNIL R24 [+17]
  LOADK R26 K32 ["StartPageBridge"]
  NAMECALL R24 R23 K33 ["GetPluginComponent"]
  CALL R24 2 1
  JUMPIFNOT R24 [+11]
  GETTABLEKS R27 R3 K11 ["current"]
  MULK R26 R27 K24 [1000]
  FASTCALL1 MATH_ROUND R26 [+2]
  GETIMPORT R25 K27 [math.round]
  CALL R25 1 1
  MOVE R28 R25
  NAMECALL R26 R24 K34 ["SetStartPageFirstRenderTimeAsync"]
  CALL R26 2 0
  GETUPVAL R23 15
  GETTABLEKS R22 R23 K35 ["createElement"]
  GETUPVAL R23 16
  NEWTABLE R24 8 0
  GETUPVAL R26 8
  JUMPIFNOT R26 [+2]
  LOADNIL R25
  JUMP [+2]
  GETTABLEKS R25 R0 K36 ["Size"]
  SETTABLEKS R25 R24 K36 ["Size"]
  GETUPVAL R26 8
  JUMPIFNOT R26 [+2]
  LOADNIL R25
  JUMP [+2]
  GETTABLEKS R25 R0 K37 ["Position"]
  SETTABLEKS R25 R24 K37 ["Position"]
  GETIMPORT R25 K40 [Enum.AutomaticSize.Y]
  SETTABLEKS R25 R24 K41 ["AutomaticCanvasSize"]
  GETUPVAL R26 8
  JUMPIFNOT R26 [+8]
  GETIMPORT R25 K44 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 0
  CALL R25 4 1
  JUMP [+7]
  GETIMPORT R25 K44 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  MOVE R29 R18
  CALL R25 4 1
  SETTABLEKS R25 R24 K45 ["CanvasSize"]
  LOADN R25 0
  SETTABLEKS R25 R24 K46 ["ScrollBarThickness"]
  GETUPVAL R26 15
  GETTABLEKS R25 R26 K47 ["Tag"]
  GETUPVAL R27 8
  JUMPIFNOT R27 [+2]
  LOADK R26 K48 ["StartPage-HomePageColumn X-Fill"]
  JUMP [+1]
  LOADK R26 K49 ["StartPage-HomePageColumn"]
  SETTABLE R26 R24 R25
  DUPTABLE R25 K55 [{"TutorialBanner", "RecentExperiences", "Templates", "Momentum", "Spacer"}]
  JUMPIFNOT R10 [+100]
  GETUPVAL R27 15
  GETTABLEKS R26 R27 K35 ["createElement"]
  LOADK R27 K56 ["Frame"]
  NEWTABLE R28 4 0
  MOVE R29 R19
  CALL R29 0 1
  SETTABLEKS R29 R28 K57 ["LayoutOrder"]
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K58 ["Change"]
  GETTABLEKS R29 R30 K59 ["AbsoluteSize"]
  GETUPVAL R31 8
  JUMPIFNOT R31 [+2]
  LOADNIL R30
  JUMP [+2]
  NEWCLOSURE R30 P4
  CAPTURE REF R13
  SETTABLE R30 R28 R29
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K47 ["Tag"]
  LOADK R30 K60 ["X-FitY X-Column X-Transparent"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 0 2
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K35 ["createElement"]
  LOADK R31 K56 ["Frame"]
  NEWTABLE R32 1 0
  GETUPVAL R34 15
  GETTABLEKS R33 R34 K47 ["Tag"]
  LOADK R34 K61 ["X-FitY StartPage-LeftPadding32 X-Transparent"]
  SETTABLE R34 R32 R33
  NEWTABLE R33 0 1
  GETUPVAL R35 15
  GETTABLEKS R34 R35 K35 ["createElement"]
  GETUPVAL R36 7
  NAMECALL R36 R36 K62 ["getTutorialVersionForUser"]
  CALL R36 1 1
  JUMPIFNOTEQKS R36 K63 ["StudioTour3"] [+3]
  GETUPVAL R35 17
  JUMP [+1]
  GETUPVAL R35 18
  DUPTABLE R36 K66 [{"HasParentLoaded", "OnClose"}]
  GETUPVAL R38 8
  JUMPIFNOT R38 [+2]
  LOADNIL R37
  JUMP [+1]
  MOVE R37 R21
  SETTABLEKS R37 R36 K64 ["HasParentLoaded"]
  NEWCLOSURE R37 P5
  CAPTURE VAL R11
  CAPTURE UPVAL U7
  SETTABLEKS R37 R36 K65 ["OnClose"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  GETUPVAL R32 15
  GETTABLEKS R31 R32 K35 ["createElement"]
  LOADK R32 K56 ["Frame"]
  NEWTABLE R33 4 0
  MOVE R34 R19
  CALL R34 0 1
  SETTABLEKS R34 R33 K57 ["LayoutOrder"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  LOADN R38 1
  CALL R34 4 1
  SETTABLEKS R34 R33 K36 ["Size"]
  GETUPVAL R35 15
  GETTABLEKS R34 R35 K47 ["Tag"]
  LOADK R35 K67 ["StartPage-BorderColor"]
  SETTABLE R35 R33 R34
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  JUMP [+25]
  GETUPVAL R27 15
  GETTABLEKS R26 R27 K35 ["createElement"]
  LOADK R27 K56 ["Frame"]
  NEWTABLE R28 4 0
  MOVE R29 R19
  CALL R29 0 1
  SETTABLEKS R29 R28 K57 ["LayoutOrder"]
  GETIMPORT R29 K44 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 7
  CALL R29 4 1
  SETTABLEKS R29 R28 K36 ["Size"]
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K47 ["Tag"]
  LOADK R30 K68 ["X-Transparent"]
  SETTABLE R30 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K50 ["TutorialBanner"]
  JUMPIFNOT R14 [+159]
  GETUPVAL R27 15
  GETTABLEKS R26 R27 K35 ["createElement"]
  LOADK R27 K56 ["Frame"]
  NEWTABLE R28 2 0
  MOVE R29 R19
  CALL R29 0 1
  SETTABLEKS R29 R28 K57 ["LayoutOrder"]
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K47 ["Tag"]
  LOADK R30 K69 ["X-FitY StartPage-LeftPadding32 X-ColumnM X-Transparent"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 0 2
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K35 ["createElement"]
  GETUPVAL R31 19
  DUPTABLE R32 K73 [{"Size", "Title", "ButtonText", "HasParentLoaded", "OnButtonClick"}]
  GETUPVAL R34 8
  JUMPIFNOT R34 [+2]
  LOADNIL R33
  JUMP [+7]
  GETIMPORT R33 K44 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  LOADN R37 48
  CALL R33 4 1
  SETTABLEKS R33 R32 K36 ["Size"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K74 ["HomePage.MyRecentExperiences"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K70 ["Title"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K76 ["SeeAll"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K71 ["ButtonText"]
  GETUPVAL R34 8
  JUMPIFNOT R34 [+2]
  LOADNIL R33
  JUMP [+1]
  MOVE R33 R21
  SETTABLEKS R33 R32 K64 ["HasParentLoaded"]
  NEWCLOSURE R33 P6
  CAPTURE VAL R5
  CAPTURE UPVAL U10
  CAPTURE UPVAL U20
  CAPTURE VAL R0
  SETTABLEKS R33 R32 K72 ["OnButtonClick"]
  CALL R30 2 1
  GETUPVAL R32 15
  GETTABLEKS R31 R32 K35 ["createElement"]
  GETUPVAL R32 21
  DUPTABLE R33 K89 [{"Size", "DisplayComponent", "MaxCount", "PageSize", "HasParentLoaded", "ShowRecentAPIGames", "ShowRecentLocalFiles", "OnItemCountUpdated", "InitialContentHasLoaded", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems"}]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  GETUPVAL R39 22
  JUMPIFNOT R39 [+2]
  LOADN R38 99
  JUMP [+1]
  LOADN R38 69
  CALL R34 4 1
  SETTABLEKS R34 R33 K36 ["Size"]
  GETUPVAL R34 23
  SETTABLEKS R34 R33 K77 ["DisplayComponent"]
  LOADN R34 6
  SETTABLEKS R34 R33 K78 ["MaxCount"]
  LOADN R34 10
  SETTABLEKS R34 R33 K79 ["PageSize"]
  GETUPVAL R35 8
  JUMPIFNOT R35 [+2]
  LOADNIL R34
  JUMP [+1]
  MOVE R34 R21
  SETTABLEKS R34 R33 K64 ["HasParentLoaded"]
  LOADB R34 1
  SETTABLEKS R34 R33 K80 ["ShowRecentAPIGames"]
  LOADB R34 1
  SETTABLEKS R34 R33 K81 ["ShowRecentLocalFiles"]
  GETUPVAL R35 2
  JUMPIFNOT R35 [+2]
  MOVE R34 R16
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K82 ["OnItemCountUpdated"]
  GETUPVAL R35 2
  JUMPIF R35 [+2]
  MOVE R34 R16
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K83 ["InitialContentHasLoaded"]
  GETUPVAL R34 24
  SETTABLEKS R34 R33 K84 ["CellComponent"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 224
  LOADN R37 0
  GETUPVAL R39 22
  JUMPIFNOT R39 [+2]
  LOADN R38 92
  JUMP [+1]
  LOADN R38 62
  CALL R34 4 1
  SETTABLEKS R34 R33 K85 ["CellSize"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 16
  LOADN R37 0
  LOADN R38 16
  CALL R34 4 1
  SETTABLEKS R34 R33 K86 ["CellPadding"]
  GETUPVAL R35 25
  JUMPIFNOT R35 [+3]
  GETUPVAL R34 26
  CALL R34 0 1
  JUMP [+1]
  GETUPVAL R34 27
  SETTABLEKS R34 R33 K87 ["Query"]
  GETUPVAL R34 28
  SETTABLEKS R34 R33 K88 ["FetchItems"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K51 ["RecentExperiences"]
  GETUPVAL R27 15
  GETTABLEKS R26 R27 K35 ["createElement"]
  LOADK R27 K56 ["Frame"]
  NEWTABLE R28 2 0
  MOVE R29 R19
  CALL R29 0 1
  SETTABLEKS R29 R28 K57 ["LayoutOrder"]
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K47 ["Tag"]
  LOADK R30 K90 ["StartPage-LeftPadding32 X-FitY X-ColumnM X-Transparent"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 0 2
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K35 ["createElement"]
  GETUPVAL R31 19
  DUPTABLE R32 K92 [{"Size", "Title", "Description", "ButtonText", "HasParentLoaded", "OnButtonClick"}]
  GETUPVAL R34 8
  JUMPIFNOT R34 [+2]
  LOADNIL R33
  JUMP [+7]
  GETIMPORT R33 K44 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  LOADN R37 70
  CALL R33 4 1
  SETTABLEKS R33 R32 K36 ["Size"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K93 ["HomePage.Templates.Heading"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K70 ["Title"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K94 ["HomePage.Templates.Description"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K91 ["Description"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K76 ["SeeAll"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K71 ["ButtonText"]
  GETUPVAL R34 8
  JUMPIFNOT R34 [+2]
  LOADNIL R33
  JUMP [+1]
  MOVE R33 R21
  SETTABLEKS R33 R32 K64 ["HasParentLoaded"]
  NEWCLOSURE R33 P7
  CAPTURE VAL R5
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  SETTABLEKS R33 R32 K72 ["OnButtonClick"]
  CALL R30 2 1
  GETUPVAL R32 15
  GETTABLEKS R31 R32 K35 ["createElement"]
  GETUPVAL R32 21
  DUPTABLE R33 K95 [{"Size", "DisplayComponent", "HasParentLoaded", "MaxCount", "InitialContentHasLoaded", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems"}]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  LOADN R38 8
  CALL R34 4 1
  SETTABLEKS R34 R33 K36 ["Size"]
  GETUPVAL R34 23
  SETTABLEKS R34 R33 K77 ["DisplayComponent"]
  GETUPVAL R35 8
  JUMPIFNOT R35 [+2]
  LOADNIL R34
  JUMP [+1]
  MOVE R34 R21
  SETTABLEKS R34 R33 K64 ["HasParentLoaded"]
  LOADN R34 6
  SETTABLEKS R34 R33 K78 ["MaxCount"]
  GETUPVAL R35 2
  JUMPIFNOT R35 [+2]
  LOADNIL R34
  JUMP [+1]
  MOVE R34 R17
  SETTABLEKS R34 R33 K83 ["InitialContentHasLoaded"]
  GETUPVAL R34 29
  SETTABLEKS R34 R33 K84 ["CellComponent"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 225
  LOADN R37 0
  LOADN R38 252
  CALL R34 4 1
  SETTABLEKS R34 R33 K85 ["CellSize"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 16
  LOADN R37 0
  LOADN R38 16
  CALL R34 4 1
  SETTABLEKS R34 R33 K86 ["CellPadding"]
  GETUPVAL R34 30
  SETTABLEKS R34 R33 K87 ["Query"]
  GETUPVAL R34 31
  SETTABLEKS R34 R33 K88 ["FetchItems"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  SETTABLEKS R26 R25 K52 ["Templates"]
  GETUPVAL R27 15
  GETTABLEKS R26 R27 K35 ["createElement"]
  LOADK R27 K56 ["Frame"]
  NEWTABLE R28 2 0
  MOVE R29 R19
  CALL R29 0 1
  SETTABLEKS R29 R28 K57 ["LayoutOrder"]
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K47 ["Tag"]
  LOADK R30 K90 ["StartPage-LeftPadding32 X-FitY X-ColumnM X-Transparent"]
  SETTABLE R30 R28 R29
  NEWTABLE R29 0 2
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K35 ["createElement"]
  GETUPVAL R31 19
  DUPTABLE R32 K96 [{"Size", "Title", "Description", "HasParentLoaded"}]
  GETIMPORT R33 K44 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  LOADN R37 60
  CALL R33 4 1
  SETTABLEKS R33 R32 K36 ["Size"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K97 ["HomePage.DiscoverStudio.Heading"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K70 ["Title"]
  LOADK R35 K31 ["Plugin"]
  LOADK R36 K98 ["HomePage.DiscoverStudio.Description"]
  NAMECALL R33 R6 K75 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K91 ["Description"]
  GETUPVAL R34 8
  JUMPIFNOT R34 [+2]
  LOADNIL R33
  JUMP [+1]
  MOVE R33 R21
  SETTABLEKS R33 R32 K64 ["HasParentLoaded"]
  CALL R30 2 1
  GETUPVAL R32 15
  GETTABLEKS R31 R32 K35 ["createElement"]
  GETUPVAL R32 21
  DUPTABLE R33 K99 [{"Size", "DisplayComponent", "HasParentLoaded", "InitialContentHasLoaded", "CellComponent", "CellSize", "CellPadding", "Query", "FetchItems"}]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 0
  LOADN R38 14
  CALL R34 4 1
  SETTABLEKS R34 R33 K36 ["Size"]
  GETUPVAL R34 23
  SETTABLEKS R34 R33 K77 ["DisplayComponent"]
  GETUPVAL R35 8
  JUMPIFNOT R35 [+2]
  LOADNIL R34
  JUMP [+1]
  MOVE R34 R21
  SETTABLEKS R34 R33 K64 ["HasParentLoaded"]
  GETUPVAL R35 2
  JUMPIFNOT R35 [+2]
  LOADNIL R34
  JUMP [+1]
  MOVE R34 R17
  SETTABLEKS R34 R33 K83 ["InitialContentHasLoaded"]
  GETUPVAL R34 32
  SETTABLEKS R34 R33 K84 ["CellComponent"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 225
  LOADN R37 0
  LOADN R38 10
  CALL R34 4 1
  SETTABLEKS R34 R33 K85 ["CellSize"]
  GETIMPORT R34 K44 [UDim2.new]
  LOADN R35 0
  LOADN R36 16
  LOADN R37 0
  LOADN R38 16
  CALL R34 4 1
  SETTABLEKS R34 R33 K86 ["CellPadding"]
  GETUPVAL R34 33
  SETTABLEKS R34 R33 K87 ["Query"]
  SETTABLEKS R20 R33 K88 ["FetchItems"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  SETTABLEKS R26 R25 K53 ["Momentum"]
  GETUPVAL R27 8
  JUMPIFNOT R27 [+26]
  GETUPVAL R27 15
  GETTABLEKS R26 R27 K35 ["createElement"]
  LOADK R27 K56 ["Frame"]
  NEWTABLE R28 4 0
  MOVE R29 R19
  CALL R29 0 1
  SETTABLEKS R29 R28 K57 ["LayoutOrder"]
  GETIMPORT R29 K44 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 40
  CALL R29 4 1
  SETTABLEKS R29 R28 K36 ["Size"]
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K47 ["Tag"]
  LOADK R30 K68 ["X-Transparent"]
  SETTABLE R30 R28 R29
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K54 ["Spacer"]
  CALL R22 3 -1
  CLOSEUPVALS R4
  RETURN R22 -1

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
  GETTABLEKS R2 R1 K8 ["useRef"]
  GETTABLEKS R3 R1 K9 ["useState"]
  GETTABLEKS R4 R1 K10 ["useEffect"]
  GETTABLEKS R5 R1 K11 ["useContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["SharedFlags"]
  GETTABLEKS R8 R9 K15 ["getFFlagLuaStartPageNetworkCache"]
  CALL R7 1 1
  CALL R7 0 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["SharedFlags"]
  GETTABLEKS R9 R10 K16 ["getFFlagLuaStartPageQuickLoad"]
  CALL R8 1 1
  CALL R8 0 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["SharedFlags"]
  GETTABLEKS R10 R11 K17 ["getFFlagLuaStartPageAddingRecentsPage"]
  CALL R9 1 1
  CALL R9 0 1
  GETTABLEKS R10 R1 K18 ["useCallback"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K6 ["Packages"]
  GETTABLEKS R12 R13 K19 ["Dash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["join"]
  GETTABLEKS R14 R6 K21 ["Util"]
  GETTABLEKS R13 R14 K22 ["counter"]
  GETTABLEKS R15 R6 K23 ["ContextServices"]
  GETTABLEKS R14 R15 K24 ["Localization"]
  GETTABLEKS R16 R6 K23 ["ContextServices"]
  GETTABLEKS R15 R16 K25 ["Plugin"]
  GETTABLEKS R16 R6 K26 ["UI"]
  GETTABLEKS R17 R16 K27 ["ScrollingFrame"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K13 ["Src"]
  GETTABLEKS R20 R21 K28 ["Components"]
  GETTABLEKS R19 R20 K29 ["HomeSectionHeader"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K13 ["Src"]
  GETTABLEKS R21 R22 K28 ["Components"]
  GETTABLEKS R20 R21 K30 ["InfoTile"]
  CALL R19 1 1
  JUMPIFNOT R7 [+10]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K13 ["Src"]
  GETTABLEKS R22 R23 K28 ["Components"]
  GETTABLEKS R21 R22 K31 ["NetworkView"]
  CALL R20 1 1
  JUMP [+9]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K13 ["Src"]
  GETTABLEKS R22 R23 K28 ["Components"]
  GETTABLEKS R21 R22 K32 ["DEPRECATED_NetworkView"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K13 ["Src"]
  GETTABLEKS R23 R24 K28 ["Components"]
  GETTABLEKS R22 R23 K33 ["ScrollingCarousel"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K13 ["Src"]
  GETTABLEKS R24 R25 K28 ["Components"]
  GETTABLEKS R23 R24 K34 ["TutorialTile"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K13 ["Src"]
  GETTABLEKS R25 R26 K28 ["Components"]
  GETTABLEKS R24 R25 K35 ["Tour3TutorialTile"]
  CALL R23 1 1
  JUMPIFNOT R7 [+10]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K13 ["Src"]
  GETTABLEKS R26 R27 K36 ["Network"]
  GETTABLEKS R25 R26 K37 ["DiscoverExperiences"]
  CALL R24 1 1
  JUMP [+9]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K13 ["Src"]
  GETTABLEKS R26 R27 K38 ["DEPRECATED_Network"]
  GETTABLEKS R25 R26 K37 ["DiscoverExperiences"]
  CALL R24 1 1
  JUMPIFNOT R7 [+10]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K36 ["Network"]
  GETTABLEKS R26 R27 K39 ["DiscoverRecents"]
  CALL R25 1 1
  JUMP [+9]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K13 ["Src"]
  GETTABLEKS R27 R28 K38 ["DEPRECATED_Network"]
  GETTABLEKS R26 R27 K39 ["DiscoverRecents"]
  CALL R25 1 1
  JUMPIFNOT R7 [+10]
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K13 ["Src"]
  GETTABLEKS R28 R29 K36 ["Network"]
  GETTABLEKS R27 R28 K40 ["DiscoverMomentum"]
  CALL R26 1 1
  JUMP [+9]
  GETIMPORT R26 K5 [require]
  GETTABLEKS R29 R0 K13 ["Src"]
  GETTABLEKS R28 R29 K38 ["DEPRECATED_Network"]
  GETTABLEKS R27 R28 K40 ["DiscoverMomentum"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K13 ["Src"]
  GETTABLEKS R29 R30 K36 ["Network"]
  GETTABLEKS R28 R29 K41 ["DiscoverCreatorEligibilityAndOpenPlace"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R31 R0 K13 ["Src"]
  GETTABLEKS R30 R31 K42 ["Resources"]
  GETTABLEKS R29 R30 K43 ["PlaceholderMomentumContent"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R32 R0 K13 ["Src"]
  GETTABLEKS R31 R32 K21 ["Util"]
  GETTABLEKS R30 R31 K44 ["Services"]
  CALL R29 1 1
  GETTABLEKS R30 R29 K45 ["StartPageManager"]
  GETIMPORT R31 K5 [require]
  GETTABLEKS R35 R0 K13 ["Src"]
  GETTABLEKS R34 R35 K21 ["Util"]
  GETTABLEKS R33 R34 K46 ["Telemetry"]
  GETTABLEKS R32 R33 K47 ["TelemetryContext"]
  CALL R31 1 1
  GETIMPORT R32 K5 [require]
  GETTABLEKS R36 R0 K13 ["Src"]
  GETTABLEKS R35 R36 K21 ["Util"]
  GETTABLEKS R34 R35 K46 ["Telemetry"]
  GETTABLEKS R33 R34 K48 ["StartPageTelemetryEvent"]
  CALL R32 1 1
  GETTABLEKS R33 R29 K49 ["StudioService"]
  GETIMPORT R34 K5 [require]
  GETTABLEKS R37 R0 K13 ["Src"]
  GETTABLEKS R36 R37 K21 ["Util"]
  GETTABLEKS R35 R36 K50 ["Dialogs"]
  CALL R34 1 1
  GETIMPORT R35 K5 [require]
  GETTABLEKS R38 R0 K13 ["Src"]
  GETTABLEKS R37 R38 K14 ["SharedFlags"]
  GETTABLEKS R36 R37 K51 ["getFFlagLuaStartPageAtomicTestsFixes"]
  CALL R35 1 1
  GETIMPORT R36 K5 [require]
  GETTABLEKS R39 R0 K13 ["Src"]
  GETTABLEKS R38 R39 K14 ["SharedFlags"]
  GETTABLEKS R37 R38 K52 ["getFFlagLuaStartPageWrappedTitles"]
  CALL R36 1 1
  CALL R36 0 1
  GETIMPORT R37 K5 [require]
  GETTABLEKS R40 R0 K13 ["Src"]
  GETTABLEKS R39 R40 K14 ["SharedFlags"]
  GETTABLEKS R38 R39 K53 ["getFFlagLuaStartPagePlaceOpenAttributionTelemetry"]
  CALL R37 1 1
  CALL R37 0 1
  GETIMPORT R38 K5 [require]
  GETTABLEKS R41 R0 K13 ["Src"]
  GETTABLEKS R40 R41 K14 ["SharedFlags"]
  GETTABLEKS R39 R40 K54 ["getFFlagDynamicUserIDRecentPage"]
  CALL R38 1 1
  CALL R38 0 1
  JUMPIF R38 [+42]
  DUPTABLE R39 K64 [{"searchKey", "search", "creatorType", "creatorTargetId", "isArchived", "isTemplates", "pageSize", "getRecentLocalFiles", "getRecentAPIGames"}]
  LOADK R40 K65 ["Recents"]
  SETTABLEKS R40 R39 K55 ["searchKey"]
  LOADK R40 K66 [""]
  SETTABLEKS R40 R39 K56 ["search"]
  LOADK R40 K67 ["User"]
  SETTABLEKS R40 R39 K57 ["creatorType"]
  MOVE R41 R35
  CALL R41 0 1
  JUMPIFNOT R41 [+8]
  NAMECALL R41 R33 K68 ["GetUserId"]
  CALL R41 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R40 K70 [tostring]
  CALL R40 -1 1
  JUMP [+3]
  NAMECALL R40 R33 K68 ["GetUserId"]
  CALL R40 1 1
  SETTABLEKS R40 R39 K58 ["creatorTargetId"]
  LOADB R40 0
  SETTABLEKS R40 R39 K59 ["isArchived"]
  LOADB R40 0
  SETTABLEKS R40 R39 K60 ["isTemplates"]
  LOADN R40 10
  SETTABLEKS R40 R39 K61 ["pageSize"]
  LOADB R40 1
  SETTABLEKS R40 R39 K62 ["getRecentLocalFiles"]
  LOADB R40 1
  SETTABLEKS R40 R39 K63 ["getRecentAPIGames"]
  JUMP [+1]
  LOADNIL R39
  DUPCLOSURE R40 K71 [PROTO_0]
  CAPTURE VAL R38
  CAPTURE VAL R35
  CAPTURE VAL R33
  DUPTABLE R41 K72 [{"searchKey", "search", "isTemplates", "pageSize"}]
  LOADK R42 K73 ["Templates"]
  SETTABLEKS R42 R41 K55 ["searchKey"]
  LOADK R42 K74 ["All"]
  SETTABLEKS R42 R41 K56 ["search"]
  LOADB R42 1
  SETTABLEKS R42 R41 K60 ["isTemplates"]
  LOADN R42 30
  SETTABLEKS R42 R41 K61 ["pageSize"]
  DUPTABLE R42 K75 [{"searchKey", "pageSize"}]
  LOADK R43 K36 ["Network"]
  SETTABLEKS R43 R42 K55 ["searchKey"]
  LOADN R43 30
  SETTABLEKS R43 R42 K61 ["pageSize"]
  DUPCLOSURE R43 K76 [PROTO_2]
  CAPTURE VAL R31
  CAPTURE VAL R5
  CAPTURE VAL R34
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R27
  CAPTURE VAL R33
  CAPTURE VAL R30
  CAPTURE VAL R37
  CAPTURE VAL R32
  DUPCLOSURE R44 K77 [PROTO_6]
  CAPTURE VAL R31
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R27
  CAPTURE VAL R33
  CAPTURE VAL R37
  CAPTURE VAL R32
  DUPCLOSURE R45 K78 [PROTO_8]
  CAPTURE VAL R31
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R32
  CAPTURE VAL R30
  DUPCLOSURE R46 K79 [PROTO_19]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R31
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R30
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R32
  CAPTURE VAL R13
  CAPTURE VAL R28
  CAPTURE VAL R26
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R18
  CAPTURE VAL R9
  CAPTURE VAL R20
  CAPTURE VAL R36
  CAPTURE VAL R21
  CAPTURE VAL R43
  CAPTURE VAL R38
  CAPTURE VAL R40
  CAPTURE VAL R39
  CAPTURE VAL R25
  CAPTURE VAL R44
  CAPTURE VAL R41
  CAPTURE VAL R24
  CAPTURE VAL R45
  CAPTURE VAL R42
  RETURN R46 1
