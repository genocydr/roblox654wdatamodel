PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K2 [{"label", "identifier"}]
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  SETTABLEKS R2 R1 K0 ["label"]
  SETTABLEKS R0 R1 K1 ["identifier"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["methodOfAbuse"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["AbuseMethods"]
  GETTABLEKS R4 R5 K2 ["VoiceChat"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["PlayerVoiceAbuseTypes"]
  JUMP [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["PlayerAbuseTypes"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["Dictionary"]
  GETTABLEKS R3 R4 K6 ["values"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["List"]
  GETTABLEKS R4 R5 K8 ["map"]
  MOVE R5 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["abuseReason"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R4 R3 K0 ["analyticsDispatch"]
  DUPTABLE R5 K2 [{"type"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K4 ["IncrementReasonChanged"]
  SETTABLEKS R6 R5 K1 ["type"]
  CALL R4 1 0
  GETTABLEKS R4 R3 K0 ["analyticsDispatch"]
  DUPTABLE R5 K6 [{"type", "selection"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K7 ["SetReasonSelection"]
  SETTABLEKS R6 R5 K1 ["type"]
  GETTABLEKS R6 R0 K8 ["identifier"]
  SETTABLEKS R6 R5 K5 ["selection"]
  CALL R4 1 0
  MOVE R4 R2
  DUPTABLE R5 K10 [{"type", "abuseReason"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["PlayerMenuActions"]
  GETTABLEKS R6 R7 K12 ["UpdateAbuseReason"]
  SETTABLEKS R6 R5 K1 ["type"]
  GETTABLEKS R6 R0 K8 ["identifier"]
  SETTABLEKS R6 R5 K9 ["abuseReason"]
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Components"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Components"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Cryo"]
  CALL R4 1 1
  DUPTABLE R5 K22 [{"componentType", "getIsVisible", "getMenuItems", "getSelectedValue", "onUpdateSelectedOption", "fieldLabel", "componentName"}]
  LOADK R6 K23 ["modalSelector"]
  SETTABLEKS R6 R5 K15 ["componentType"]
  DUPCLOSURE R6 K24 [PROTO_0]
  SETTABLEKS R6 R5 K16 ["getIsVisible"]
  DUPCLOSURE R6 K25 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K17 ["getMenuItems"]
  DUPCLOSURE R6 K26 [PROTO_3]
  SETTABLEKS R6 R5 K18 ["getSelectedValue"]
  DUPCLOSURE R6 K27 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K19 ["onUpdateSelectedOption"]
  LOADK R6 K28 ["ReasonForAbuse"]
  SETTABLEKS R6 R5 K20 ["fieldLabel"]
  LOADK R6 K29 ["AbuseReason"]
  SETTABLEKS R6 R5 K21 ["componentName"]
  RETURN R5 1
