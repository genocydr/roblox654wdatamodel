PROTO_0:
  DUPTABLE R6 K6 [{"isClientView", "usePercentages", "clientSessionState", "serverSessionState", "isExporting", "isShowingMobileSettings"}]
  SETTABLEKS R0 R6 K0 ["isClientView"]
  SETTABLEKS R1 R6 K1 ["usePercentages"]
  SETTABLEKS R2 R6 K2 ["clientSessionState"]
  SETTABLEKS R3 R6 K3 ["serverSessionState"]
  SETTABLEKS R4 R6 K4 ["isExporting"]
  SETTABLEKS R5 R6 K5 ["isShowingMobileSettings"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
