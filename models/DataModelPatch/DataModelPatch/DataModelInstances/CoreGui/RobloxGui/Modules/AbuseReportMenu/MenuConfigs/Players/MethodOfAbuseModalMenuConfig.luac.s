PROTO_0:
  GETTABLEKS R1 R0 K0 ["isVoiceEnabled"]
  JUMPIF R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["getReportAnythingAvatarEnabled"]
  CALL R1 0 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["isVoiceEnabled"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["isEmpty"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K2 ["getRecentUsersInteractionData"]
  CALL R3 1 -1
  CALL R2 -1 1
  NOT R1 R2
  GETUPVAL R2 2
  MOVE R3 R1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["getReportAnythingAvatarEnabled"]
  CALL R4 0 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["methodOfAbuse"]
  RETURN R1 1

PROTO_3:
  MOVE R4 R2
  DUPTABLE R5 K2 [{"type", "methodOfAbuse"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["PlayerMenuActions"]
  GETTABLEKS R6 R7 K4 ["UpdateMethodOfAbuse"]
  SETTABLEKS R6 R5 K0 ["type"]
  GETTABLEKS R6 R0 K5 ["identifier"]
  SETTABLEKS R6 R5 K1 ["methodOfAbuse"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K5 ["identifier"]
  GETTABLEKS R5 R1 K1 ["methodOfAbuse"]
  JUMPIFEQ R4 R5 [+38]
  GETTABLEKS R4 R3 K6 ["reportAnythingDispatch"]
  DUPTABLE R5 K7 [{"type"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["ReportAnythingActions"]
  GETTABLEKS R6 R7 K9 ["ClearAnnotationFlowProperties"]
  SETTABLEKS R6 R5 K0 ["type"]
  CALL R4 1 0
  GETTABLEKS R4 R3 K10 ["analyticsDispatch"]
  DUPTABLE R5 K7 [{"type"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K12 ["IncrementTypeofabuseChanged"]
  SETTABLEKS R6 R5 K0 ["type"]
  CALL R4 1 0
  GETTABLEKS R4 R3 K10 ["analyticsDispatch"]
  DUPTABLE R5 K14 [{"type", "selection"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K15 ["SetTypeOfAbuseSelection"]
  SETTABLEKS R6 R5 K0 ["type"]
  GETTABLEKS R6 R0 K5 ["identifier"]
  SETTABLEKS R6 R5 K13 ["selection"]
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Components"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K12 ["CorePackages"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K13 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K14 ["Utility"]
  GETTABLEKS R6 R7 K15 ["getAvailableMethodsOfAbuse"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K16 ["IXP"]
  GETTABLEKS R7 R8 K17 ["TnSIXPWrapper"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K18 ["RobloxGui"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R7 K19 ["Modules"]
  GETTABLEKS R11 R12 K20 ["VoiceChat"]
  GETTABLEKS R10 R11 K21 ["VoiceChatServiceManager"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K22 ["default"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R3 K23 ["Packages"]
  GETTABLEKS R10 R11 K24 ["Cryo"]
  CALL R9 1 1
  DUPTABLE R10 K32 [{"componentType", "getIsVisible", "getMenuItems", "getSelectedValue", "onUpdateSelectedOption", "fieldLabel", "componentName"}]
  LOADK R11 K33 ["modalSelector"]
  SETTABLEKS R11 R10 K25 ["componentType"]
  DUPCLOSURE R11 K34 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K26 ["getIsVisible"]
  DUPCLOSURE R11 K35 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K27 ["getMenuItems"]
  DUPCLOSURE R11 K36 [PROTO_2]
  SETTABLEKS R11 R10 K28 ["getSelectedValue"]
  DUPCLOSURE R11 K37 [PROTO_3]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K29 ["onUpdateSelectedOption"]
  LOADK R11 K38 ["MethodOfAbuse"]
  SETTABLEKS R11 R10 K30 ["fieldLabel"]
  LOADK R11 K38 ["MethodOfAbuse"]
  SETTABLEKS R11 R10 K31 ["componentName"]
  RETURN R10 1
