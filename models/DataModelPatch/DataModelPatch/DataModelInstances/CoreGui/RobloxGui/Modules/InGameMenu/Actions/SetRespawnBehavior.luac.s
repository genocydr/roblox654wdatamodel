PROTO_0:
  DUPTABLE R2 K2 [{"respawnEnabled", "customCallback"}]
  SETTABLEKS R0 R2 K0 ["respawnEnabled"]
  SETTABLEKS R1 R2 K1 ["customCallback"]
  RETURN R2 1

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
  MOVE R2 R1
  LOADK R3 K9 ["SET_RESPAWN_BEHAVIOR"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
