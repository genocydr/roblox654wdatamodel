PROTO_0:
  DUPTABLE R2 K2 [{"isClientState", "sessionState"}]
  SETTABLEKS R0 R2 K0 ["isClientState"]
  SETTABLEKS R1 R2 K1 ["sessionState"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["LuauHeap"]
  GETTABLEKS R2 R3 K8 ["LuauHeapTypes"]
  CALL R1 1 1
  MOVE R2 R0
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K9 ["Name"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
