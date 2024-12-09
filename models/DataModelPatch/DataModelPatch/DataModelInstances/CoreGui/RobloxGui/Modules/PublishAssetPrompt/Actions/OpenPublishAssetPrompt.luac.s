PROTO_0:
  DUPTABLE R5 K1 [{"promptInfo"}]
  DUPTABLE R6 K7 [{"promptType", "assetInstance", "assetType", "guid", "scopes"}]
  SETTABLEKS R0 R6 K2 ["promptType"]
  SETTABLEKS R1 R6 K3 ["assetInstance"]
  SETTABLEKS R2 R6 K4 ["assetType"]
  SETTABLEKS R3 R6 K5 ["guid"]
  SETTABLEKS R4 R6 K6 ["scopes"]
  SETTABLEKS R6 R5 K0 ["promptInfo"]
  RETURN R5 1

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
