PROTO_0:
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R4 R3 K0 ["analyticsDispatch"]
  DUPTABLE R5 K3 [{"type", "commentAdded"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["AnalyticsActions"]
  GETTABLEKS R6 R7 K5 ["SetCommentAdded"]
  SETTABLEKS R6 R5 K1 ["type"]
  LENGTH R7 R0
  LOADN R8 0
  JUMPIFLT R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["commentAdded"]
  CALL R4 1 0
  MOVE R4 R2
  DUPTABLE R5 K7 [{"type", "comment"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["PlayerMenuActions"]
  GETTABLEKS R6 R7 K9 ["UpdateComment"]
  SETTABLEKS R6 R5 K1 ["type"]
  SETTABLEKS R0 R5 K6 ["comment"]
  CALL R4 1 0
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
  DUPTABLE R3 K13 [{"componentType", "getIsVisible", "onUpdate", "componentName"}]
  LOADK R4 K14 ["freeComments"]
  SETTABLEKS R4 R3 K9 ["componentType"]
  DUPCLOSURE R4 K15 [PROTO_0]
  SETTABLEKS R4 R3 K10 ["getIsVisible"]
  DUPCLOSURE R4 K16 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["onUpdate"]
  LOADK R4 K17 ["FreeComments"]
  SETTABLEKS R4 R3 K12 ["componentName"]
  RETURN R3 1
