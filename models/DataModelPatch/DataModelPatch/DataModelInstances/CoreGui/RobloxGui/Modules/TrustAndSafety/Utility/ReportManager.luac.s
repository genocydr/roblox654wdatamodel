PROTO_0:
  GETUPVAL R4 0
  MOVE R5 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Analytics"]
  GETTABLEKS R6 R7 K1 ["ReportSubmittedName"]
  DUPTABLE R7 K7 [{"reportType", "reportedEntityId", "reportSource", "reason", "abuseVector"}]
  SETTABLEKS R0 R7 K2 ["reportType"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K3 ["reportedEntityId"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["Analytics"]
  GETTABLEKS R8 R9 K10 ["ReportSourceInGame"]
  SETTABLEKS R8 R7 K4 ["reportSource"]
  SETTABLEKS R2 R7 K5 ["reason"]
  SETTABLEKS R3 R7 K6 ["abuseVector"]
  CALL R4 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Category"]
  GETTABLEKS R1 R2 K1 ["Voice"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K2 ["voice"]
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Category"]
  GETTABLEKS R1 R2 K3 ["Text"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K4 ["chat"]
  RETURN R1 1
  LOADK R1 K5 ["other"]
  RETURN R1 1

PROTO_2:
  GETGLOBAL R0 K0 ["getAbuseVectorFromReportCategory"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["reportCategory"]
  CALL R0 1 1
  GETUPVAL R1 1
  JUMPIFNOT R1 [+70]
  GETUPVAL R1 2
  GETUPVAL R2 3
  GETUPVAL R3 4
  DUPTABLE R4 K9 [{"localUserId", "abuserUserId", "abuseComment", "abuseReason", "inExpMenuOpenedUnixMilli", "sortedPlayerListUserIds", "abuseVector"}]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K10 ["UserId"]
  SETTABLEKS R5 R4 K2 ["localUserId"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["abusingPlayer"]
  GETTABLEKS R5 R6 K10 ["UserId"]
  SETTABLEKS R5 R4 K3 ["abuserUserId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["comment"]
  SETTABLEKS R5 R4 K4 ["abuseComment"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["reason"]
  SETTABLEKS R5 R4 K5 ["abuseReason"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["beginningTimestamp"]
  MULK R6 R7 K14 [1000]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K18 [math.floor]
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["inExpMenuOpenedUnixMilli"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K19 ["sortedUserIds"]
  SETTABLEKS R5 R4 K7 ["sortedPlayerListUserIds"]
  SETTABLEKS R0 R4 K8 ["abuseVector"]
  CALL R1 3 1
  GETIMPORT R2 K21 [game]
  LOADK R4 K22 ["AbuseReportV3"]
  NAMECALL R2 R2 K23 ["GetEngineFeature"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 3
  GETUPVAL R4 5
  MOVE R5 R1
  NAMECALL R2 R2 K24 ["ReportAbuseV3"]
  CALL R2 3 0
  JUMP [+25]
  GETUPVAL R5 6
  GETTABLEKS R3 R5 K25 ["APIS_URL"]
  LOADK R4 K26 ["/abuse-reporting/v2/abuse-report"]
  CONCAT R2 R3 R4
  GETUPVAL R3 7
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R3 K27 ["PostAsyncFullUrl"]
  CALL R3 3 0
  JUMP [+13]
  GETUPVAL R1 3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["abusingPlayer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["reason"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["comment"]
  NAMECALL R1 R1 K28 ["ReportAbuse"]
  CALL R1 4 0
  GETGLOBAL R1 K29 ["sendAnalytics"]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K30 ["Analytics"]
  GETTABLEKS R2 R3 K31 ["ReportTypeUser"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["abusingPlayer"]
  GETTABLEKS R3 R4 K10 ["UserId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["reason"]
  MOVE R5 R0
  CALL R1 4 0
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K32 ["endAbuseReportSession"]
  CALL R1 0 0
  GETUPVAL R1 10
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 10
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K2 [coroutine.wrap]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R0 1 1
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["reportCategory"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Category"]
  GETTABLEKS R4 R5 K2 ["Voice"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["LocalPlayer"]
  JUMPIFNOT R3 [+15]
  GETIMPORT R4 K5 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CALL R4 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsStudio"]
  CALL R0 1 1
  JUMPIF R0 [+33]
  GETIMPORT R0 K3 [string.format]
  LOADK R2 K4 ["User Report: 
    %s 
"]
  LOADK R3 K5 ["Place Title: 
    %s 
"]
  LOADK R4 K6 ["PlaceId: 
    %s 
"]
  LOADK R5 K7 ["Place Description: 
    %s 
"]
  CONCAT R1 R2 R5
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["comment"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["placeName"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["placeId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K12 [tostring]
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["placeDescription"]
  CALL R0 5 1
  GETUPVAL R1 2
  LOADNIL R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K14 ["reason"]
  MOVE R5 R0
  NAMECALL R1 R1 K15 ["ReportAbuse"]
  CALL R1 4 0
  GETGLOBAL R0 K16 ["sendAnalytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K17 ["Analytics"]
  GETTABLEKS R1 R2 K18 ["ReportTypeGame"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["placeId"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K14 ["reason"]
  CALL R0 3 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K19 ["endAbuseReportSession"]
  CALL R0 0 0
  GETUPVAL R0 5
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 5
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["placeName"]
  JUMPIFEQKS R2 K1 [""] [+12]
  GETIMPORT R2 K4 [coroutine.wrap]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R2 1 1
  CALL R2 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpRbxApiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["Players"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["CorePackages"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["RunService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R4 K12 ["Packages"]
  GETTABLEKS R7 R8 K13 ["Dash"]
  CALL R6 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R2 K14 ["Modules"]
  GETTABLEKS R10 R11 K15 ["VoiceChat"]
  GETTABLEKS R9 R10 K16 ["VoiceChatServiceManager"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["default"]
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R2 K14 ["Modules"]
  GETTABLEKS R10 R11 K15 ["VoiceChat"]
  GETTABLEKS R9 R10 K18 ["createVoiceAbuseReportRequest"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R12 R2 K14 ["Modules"]
  GETTABLEKS R11 R12 K19 ["Common"]
  GETTABLEKS R10 R11 K20 ["Url"]
  CALL R9 1 1
  GETIMPORT R12 K22 [script]
  GETTABLEKS R11 R12 K23 ["Parent"]
  GETTABLEKS R10 R11 K23 ["Parent"]
  GETIMPORT R11 K11 [require]
  GETTABLEKS R13 R10 K24 ["Resources"]
  GETTABLEKS R12 R13 K25 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R14 R10 K26 ["Utility"]
  GETTABLEKS R13 R14 K27 ["SendAnalytics"]
  CALL R12 1 1
  GETIMPORT R13 K11 [require]
  GETTABLEKS R15 R10 K26 ["Utility"]
  GETTABLEKS R14 R15 K28 ["SessionUtility"]
  CALL R13 1 1
  DUPCLOSURE R14 K29 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETGLOBAL R14 K30 ["sendAnalytics"]
  DUPCLOSURE R14 K31 [PROTO_1]
  CAPTURE VAL R11
  SETGLOBAL R14 K32 ["getAbuseVectorFromReportCategory"]
  DUPCLOSURE R14 K33 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETGLOBAL R14 K34 ["submitUserAbuseReport"]
  DUPCLOSURE R14 K35 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETGLOBAL R14 K36 ["submitPlaceAbuseReport"]
  DUPTABLE R14 K37 [{"submitUserAbuseReport", "submitPlaceAbuseReport"}]
  GETGLOBAL R15 K34 ["submitUserAbuseReport"]
  SETTABLEKS R15 R14 K34 ["submitUserAbuseReport"]
  GETGLOBAL R15 K36 ["submitPlaceAbuseReport"]
  SETTABLEKS R15 R14 K36 ["submitPlaceAbuseReport"]
  RETURN R14 1
