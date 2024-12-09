PROTO_0:
  DUPTABLE R2 K2 [{"collectibleItemId", "collectibleItemInstances"}]
  SETTABLEKS R0 R2 K0 ["collectibleItemId"]
  SETTABLEKS R1 R2 K1 ["collectibleItemInstances"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Models"]
  GETTABLEKS R2 R3 K10 ["CollectibleInstance"]
  CALL R1 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K13 ["makeActionCreator"]
  MOVE R3 R2
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K14 ["Name"]
  DUPCLOSURE R5 K15 [PROTO_0]
  CALL R3 2 -1
  RETURN R3 -1
