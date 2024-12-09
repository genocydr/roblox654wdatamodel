PROTO_0:
  DUPTABLE R2 K2 [{"enabled", "customCallback"}]
  GETTABLEKS R3 R1 K3 ["respawnEnabled"]
  SETTABLEKS R3 R2 K0 ["enabled"]
  GETTABLEKS R3 R1 K1 ["customCallback"]
  SETTABLEKS R3 R2 K1 ["customCallback"]
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
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["Actions"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K12 ["SetRespawnBehaviour"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K13 ["createReducer"]
  DUPTABLE R5 K16 [{"enabled", "customCallback"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K14 ["enabled"]
  LOADNIL R6
  SETTABLEKS R6 R5 K15 ["customCallback"]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R3 K17 ["name"]
  DUPCLOSURE R8 K18 [PROTO_0]
  SETTABLE R8 R6 R7
  CALL R4 2 -1
  RETURN R4 -1
