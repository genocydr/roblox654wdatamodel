PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 2
  JUMPIF R1 [+2]
  LOADNIL R3
  RETURN R3 1
  DUPTABLE R3 K8 [{"productId", "mobileProductId", "robuxAmount", "isSubscriptionOnly", "premiumFeatureTypeName", "description", "price", "currencySymbol"}]
  GETTABLEKS R4 R0 K0 ["productId"]
  SETTABLEKS R4 R3 K0 ["productId"]
  GETTABLEKS R4 R0 K1 ["mobileProductId"]
  SETTABLEKS R4 R3 K1 ["mobileProductId"]
  GETTABLEKS R4 R0 K2 ["robuxAmount"]
  SETTABLEKS R4 R3 K2 ["robuxAmount"]
  GETTABLEKS R4 R0 K3 ["isSubscriptionOnly"]
  SETTABLEKS R4 R3 K3 ["isSubscriptionOnly"]
  GETTABLEKS R4 R0 K4 ["premiumFeatureTypeName"]
  SETTABLEKS R4 R3 K4 ["premiumFeatureTypeName"]
  GETTABLEKS R4 R0 K5 ["description"]
  SETTABLEKS R4 R3 K5 ["description"]
  GETTABLEKS R5 R0 K6 ["price"]
  GETTABLEKS R4 R5 K9 ["amount"]
  SETTABLEKS R4 R3 K6 ["price"]
  GETTABLEKS R6 R0 K6 ["price"]
  GETTABLEKS R5 R6 K10 ["currency"]
  GETTABLEKS R4 R5 K7 ["currencySymbol"]
  SETTABLEKS R4 R3 K7 ["currencySymbol"]
  RETURN R3 1

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
  GETTABLEKS R3 R2 K12 ["t"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R0 K13 ["strict"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K14 ["interface"]
  DUPTABLE R6 K22 [{"productId", "mobileProductId", "robuxAmount", "isSubscriptionOnly", "premiumFeatureTypeName", "description", "price"}]
  GETTABLEKS R7 R3 K23 ["number"]
  SETTABLEKS R7 R6 K15 ["productId"]
  GETTABLEKS R7 R3 K24 ["string"]
  SETTABLEKS R7 R6 K16 ["mobileProductId"]
  GETTABLEKS R7 R3 K23 ["number"]
  SETTABLEKS R7 R6 K17 ["robuxAmount"]
  GETTABLEKS R7 R3 K25 ["boolean"]
  SETTABLEKS R7 R6 K18 ["isSubscriptionOnly"]
  GETTABLEKS R7 R3 K24 ["string"]
  SETTABLEKS R7 R6 K19 ["premiumFeatureTypeName"]
  GETTABLEKS R7 R3 K24 ["string"]
  SETTABLEKS R7 R6 K20 ["description"]
  GETTABLEKS R7 R3 K14 ["interface"]
  DUPTABLE R8 K28 [{"amount", "currency"}]
  GETTABLEKS R9 R3 K23 ["number"]
  SETTABLEKS R9 R8 K26 ["amount"]
  GETTABLEKS R9 R3 K14 ["interface"]
  DUPTABLE R10 K30 [{"currencySymbol"}]
  GETTABLEKS R11 R3 K24 ["string"]
  SETTABLEKS R11 R10 K29 ["currencySymbol"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K27 ["currency"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K21 ["price"]
  CALL R5 1 1
  DUPCLOSURE R6 K31 [PROTO_0]
  CAPTURE VAL R5
  RETURN R6 1
