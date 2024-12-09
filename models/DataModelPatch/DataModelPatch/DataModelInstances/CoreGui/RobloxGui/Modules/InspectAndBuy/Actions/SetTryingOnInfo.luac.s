PROTO_0:
  DUPTABLE R3 K3 [{"tryingOn", "assetId", "assetTypeId"}]
  SETTABLEKS R0 R3 K0 ["tryingOn"]
  SETTABLEKS R1 R3 K1 ["assetId"]
  SETTABLEKS R2 R3 K2 ["assetTypeId"]
  RETURN R3 1

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
  GETIMPORT R4 K10 [script]
  GETTABLEKS R3 R4 K11 ["Name"]
  DUPCLOSURE R4 K12 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
