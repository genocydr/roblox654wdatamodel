PROTO_0:
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K11 ["Actions"]
  GETTABLEKS R4 R5 K12 ["SetAssets"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K13 ["createReducer"]
  LOADB R5 0
  NEWTABLE R6 1 0
  GETTABLEKS R7 R3 K14 ["name"]
  DUPCLOSURE R8 K15 [PROTO_0]
  SETTABLE R8 R6 R7
  CALL R4 2 1
  RETURN R4 1