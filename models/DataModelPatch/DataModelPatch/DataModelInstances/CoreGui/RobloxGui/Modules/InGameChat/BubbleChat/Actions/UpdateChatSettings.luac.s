PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["table"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  DUPTABLE R1 K2 [{"settings"}]
  SETTABLEKS R0 R1 K1 ["settings"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K8 ["makeActionCreator"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R8 K11 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Helpers"]
  GETTABLEKS R4 R5 K14 ["maybeAssert"]
  CALL R3 1 1
  MOVE R4 R1
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K15 ["Name"]
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CALL R4 2 -1
  RETURN R4 -1
