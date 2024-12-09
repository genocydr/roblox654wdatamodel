PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_2:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  DUPTABLE R3 K16 [{"componentType", "getIsVisible", "getMenuItems", "onUpdateSelectedOption", "readonlyValue", "fieldLabel", "componentName"}]
  LOADK R4 K17 ["dropdown"]
  SETTABLEKS R4 R3 K9 ["componentType"]
  DUPCLOSURE R4 K18 [PROTO_0]
  SETTABLEKS R4 R3 K10 ["getIsVisible"]
  DUPCLOSURE R4 K19 [PROTO_1]
  SETTABLEKS R4 R3 K11 ["getMenuItems"]
  DUPCLOSURE R4 K20 [PROTO_2]
  SETTABLEKS R4 R3 K12 ["onUpdateSelectedOption"]
  GETTABLEKS R4 R2 K21 ["InappropriateContentAbuseReason"]
  SETTABLEKS R4 R3 K13 ["readonlyValue"]
  LOADK R4 K22 ["ReasonForAbuse"]
  SETTABLEKS R4 R3 K14 ["fieldLabel"]
  LOADK R4 K23 ["AbuseReason"]
  SETTABLEKS R4 R3 K15 ["componentName"]
  RETURN R3 1
