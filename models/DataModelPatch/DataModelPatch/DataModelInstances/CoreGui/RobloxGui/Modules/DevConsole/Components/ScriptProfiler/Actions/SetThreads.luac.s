PROTO_0:
  DUPTABLE R2 K2 [{"isClient", "state"}]
  SETTABLEKS R0 R2 K0 ["isClient"]
  SETTABLEKS R1 R2 K1 ["state"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R3 K6 ["ScriptProfiler"]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["Name"]
  CONCAT R2 R3 R4
  DUPCLOSURE R3 K8 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
