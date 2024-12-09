PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"name", "description"}]
  GETTABLEKS R5 R1 K5 ["gameName"]
  SETTABLEKS R5 R4 K2 ["name"]
  GETTABLEKS R5 R1 K6 ["gameDescription"]
  SETTABLEKS R5 R4 K3 ["description"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Cryo"]
  GETTABLEKS R3 R1 K9 ["Rodux"]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R4 K13 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetGameNameAndDescription"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K15 ["createReducer"]
  DUPTABLE R7 K18 [{"name", "description"}]
  LOADK R8 K19 ["Game"]
  SETTABLEKS R8 R7 K16 ["name"]
  LOADK R8 K20 [""]
  SETTABLEKS R8 R7 K17 ["description"]
  NEWTABLE R8 1 0
  GETTABLEKS R9 R5 K16 ["name"]
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  CALL R6 2 -1
  RETURN R6 -1
