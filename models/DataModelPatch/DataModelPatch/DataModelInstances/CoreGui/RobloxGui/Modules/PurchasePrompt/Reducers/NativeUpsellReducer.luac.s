PROTO_0:
  DUPTABLE R2 K3 [{"robuxProductId", "productId", "robuxPurchaseAmount"}]
  GETTABLEKS R3 R1 K0 ["robuxProductId"]
  SETTABLEKS R3 R2 K0 ["robuxProductId"]
  GETTABLEKS R3 R1 K1 ["productId"]
  SETTABLEKS R3 R2 K1 ["productId"]
  GETTABLEKS R3 R1 K2 ["robuxPurchaseAmount"]
  SETTABLEKS R3 R2 K2 ["robuxPurchaseAmount"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["CorePackages"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Workspace"]
  GETTABLEKS R4 R5 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["PurchasePromptDeps"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["Rodux"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K13 ["Actions"]
  GETTABLEKS R5 R6 K14 ["PromptNativeUpsell"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K15 ["createReducer"]
  NEWTABLE R6 0 0
  NEWTABLE R7 1 0
  GETTABLEKS R8 R4 K16 ["name"]
  DUPCLOSURE R9 K17 [PROTO_0]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  RETURN R5 1
