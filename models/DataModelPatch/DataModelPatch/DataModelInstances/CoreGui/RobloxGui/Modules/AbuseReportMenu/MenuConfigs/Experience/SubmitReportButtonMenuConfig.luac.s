PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  LOADK R1 K0 [""]
  RETURN R1 1

PROTO_2:
  LOADK R1 K0 ["SubmitButton"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["PlaceId"]
  GETIMPORT R3 K6 [Enum.InfoType.Asset]
  NAMECALL R0 R0 K7 ["GetProductInfo"]
  CALL R0 3 1
  GETTABLEKS R1 R0 K8 ["Name"]
  SETUPVAL R1 1
  GETTABLEKS R1 R0 K9 ["Description"]
  SETUPVAL R1 2
  RETURN R0 0

PROTO_4:
  GETIMPORT R5 K1 [game]
  GETTABLEKS R4 R5 K2 ["PlaceId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K4 [tostring]
  CALL R3 1 1
  MOVE R0 R3
  LOADK R1 K5 ["N/A"]
  LOADK R2 K5 ["N/A"]
  GETIMPORT R3 K7 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE REF R1
  CAPTURE REF R2
  CALL R3 1 0
  GETIMPORT R3 K10 [string.format]
  LOADK R5 K11 ["User Report: 
    %s 
"]
  LOADK R6 K12 ["Place Title: 
    %s 
"]
  LOADK R7 K13 ["PlaceId: 
    %s 
"]
  LOADK R8 K14 ["Place Description: 
    %s 
"]
  CONCAT R4 R5 R8
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["comment"]
  MOVE R6 R1
  MOVE R7 R0
  MOVE R8 R2
  CALL R3 5 1
  GETUPVAL R4 2
  LOADNIL R6
  GETUPVAL R7 3
  MOVE R8 R3
  NAMECALL R4 R4 K16 ["ReportAbuse"]
  CALL R4 4 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["abuseReason"]
  JUMPIFEQKNIL R3 [+111]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["LocalPlayer"]
  JUMPIFEQKNIL R4 [+106]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["getReportAnythingExperienceEnabled"]
  CALL R4 0 1
  JUMPIFNOT R4 [+74]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["buildExperienceReportRequest"]
  DUPTABLE R5 K9 [{"localUserId", "placeId", "abuseComment", "abuseReason", "menuEntryPoint", "variant"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["LocalPlayer"]
  GETTABLEKS R6 R7 K10 ["UserId"]
  SETTABLEKS R6 R5 K4 ["localUserId"]
  GETIMPORT R7 K12 [game]
  GETTABLEKS R6 R7 K13 ["PlaceId"]
  SETTABLEKS R6 R5 K5 ["placeId"]
  GETTABLEKS R6 R0 K14 ["comment"]
  SETTABLEKS R6 R5 K6 ["abuseComment"]
  SETTABLEKS R3 R5 K0 ["abuseReason"]
  GETUPVAL R6 3
  NAMECALL R6 R6 K15 ["getAbuseReportSessionEntryPoint"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["menuEntryPoint"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K16 ["Constants"]
  GETTABLEKS R7 R8 K17 ["Variant"]
  GETTABLEKS R6 R7 K18 ["NM"]
  SETTABLEKS R6 R5 K8 ["variant"]
  GETTABLEKS R6 R2 K19 ["reportAnythingState"]
  GETTABLEKS R8 R2 K20 ["reportAnythingAnalytics"]
  GETTABLEKS R7 R8 K21 ["getAccumulatedParameters"]
  CALL R7 0 -1
  CALL R4 -1 1
  GETUPVAL R5 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["LocalPlayer"]
  MOVE R8 R4
  NAMECALL R5 R5 K22 ["ReportAbuseV3"]
  CALL R5 3 0
  GETTABLEKS R5 R2 K23 ["analyticsDispatch"]
  DUPTABLE R6 K25 [{"type"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K26 ["AnalyticsActions"]
  GETTABLEKS R7 R8 K27 ["SetSubmissionCompleted"]
  SETTABLEKS R7 R6 K24 ["type"]
  CALL R5 1 0
  GETUPVAL R5 5
  MOVE R6 R3
  LOADB R7 1
  CALL R5 2 1
  GETTABLEKS R6 R2 K28 ["onReportComplete"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0
  GETIMPORT R4 K30 [spawn]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CALL R4 1 0
  GETTABLEKS R4 R2 K23 ["analyticsDispatch"]
  DUPTABLE R5 K25 [{"type"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K26 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K27 ["SetSubmissionCompleted"]
  SETTABLEKS R6 R5 K24 ["type"]
  CALL R4 1 0
  GETUPVAL R4 5
  MOVE R5 R3
  CALL R4 1 1
  GETTABLEKS R5 R2 K28 ["onReportComplete"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["MarketplaceService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["Players"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Components"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Components"]
  GETTABLEKS R5 R6 K13 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R0 K14 ["IXP"]
  GETTABLEKS R6 R7 K15 ["TnSIXPWrapper"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R0 K16 ["ReportAnything"]
  GETTABLEKS R8 R9 K17 ["Utility"]
  GETTABLEKS R7 R8 K18 ["AbuseReportBuilder"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R0 K19 ["Analytics"]
  GETTABLEKS R8 R9 K20 ["ReportAbuseAnalytics"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R0 K21 ["MenuConfigs"]
  GETTABLEKS R9 R10 K22 ["getToastMessageFromAbuseReason"]
  CALL R8 1 1
  DUPTABLE R9 K31 [{"componentType", "getIsVisible", "variant", "getIconSrc", "getButtonLabel", "onClick", "fieldLabel", "componentName"}]
  LOADK R10 K32 ["button"]
  SETTABLEKS R10 R9 K23 ["componentType"]
  DUPCLOSURE R10 K33 [PROTO_0]
  SETTABLEKS R10 R9 K24 ["getIsVisible"]
  LOADK R10 K34 ["primary"]
  SETTABLEKS R10 R9 K25 ["variant"]
  DUPCLOSURE R10 K35 [PROTO_1]
  SETTABLEKS R10 R9 K26 ["getIconSrc"]
  DUPCLOSURE R10 K36 [PROTO_2]
  SETTABLEKS R10 R9 K27 ["getButtonLabel"]
  DUPCLOSURE R10 K37 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K28 ["onClick"]
  LOADK R10 K38 [""]
  SETTABLEKS R10 R9 K29 ["fieldLabel"]
  LOADK R10 K39 ["SubmitButton"]
  SETTABLEKS R10 R9 K30 ["componentName"]
  RETURN R9 1
