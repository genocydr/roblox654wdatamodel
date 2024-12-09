PROTO_0:
  DUPTABLE R3 K1 [{"promptInfo"}]
  DUPTABLE R4 K5 [{"promptType", "guid", "scopes"}]
  SETTABLEKS R0 R4 K2 ["promptType"]
  SETTABLEKS R1 R4 K3 ["guid"]
  SETTABLEKS R2 R4 K4 ["scopes"]
  SETTABLEKS R4 R3 K0 ["promptInfo"]
  RETURN R3 1

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
  GETTABLEKS R2 R1 K8 ["makeActionCreator"]
  GETIMPORT R4 K10 [script]
  GETTABLEKS R3 R4 K11 ["Name"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
