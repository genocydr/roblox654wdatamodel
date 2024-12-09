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
  GETTABLEKS R3 R2 K12 ["enumerate"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K13 ["Utils"]
  GETTABLEKS R5 R6 K14 ["addRawValueMethodToEnum"]
  CALL R4 1 1
  DUPTABLE R5 K21 [{"None", "Product", "RobuxUpsell", "RobuxUpsellV2", "LargeRobuxUpsell", "PremiumUpsell"}]
  LOADK R6 K15 ["None"]
  SETTABLEKS R6 R5 K15 ["None"]
  LOADK R6 K16 ["Product"]
  SETTABLEKS R6 R5 K16 ["Product"]
  LOADK R6 K17 ["RobuxUpsell"]
  SETTABLEKS R6 R5 K17 ["RobuxUpsell"]
  LOADK R6 K18 ["RobuxUpsellV2"]
  SETTABLEKS R6 R5 K18 ["RobuxUpsellV2"]
  LOADK R6 K19 ["LargeRobuxUpsell"]
  SETTABLEKS R6 R5 K19 ["LargeRobuxUpsell"]
  LOADK R6 K20 ["PremiumUpsell"]
  SETTABLEKS R6 R5 K20 ["PremiumUpsell"]
  MOVE R6 R3
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K22 ["Name"]
  MOVE R8 R5
  CALL R6 2 1
  MOVE R7 R4
  MOVE R8 R6
  MOVE R9 R5
  CALL R7 2 0
  RETURN R6 1
