MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["strict"]
  CALL R1 1 1
  MOVE R2 R1
  DUPTABLE R3 K10 [{"ABTests", "PlatformPurchaseResult", "PurchaseFailureReason", "ProductType"}]
  MOVE R4 R1
  DUPTABLE R5 K16 [{"PRODUCT_PURCHASE", "PRODUCT_PURCHASE_UPSELL", "PRODUCT_PURCHASE_UPSELL_UWP", "PRODUCT_PURCHASE_UPSELL_AMAZON", "PRODUCT_PURCHASE_UPSELL_XBOX"}]
  LOADK R6 K17 ["AllUsers.Payments.ProductPurchaseABTest"]
  SETTABLEKS R6 R5 K11 ["PRODUCT_PURCHASE"]
  LOADK R6 K18 ["AllUsers.Payments.ProductPurchaseRobuxUpsellABTest"]
  SETTABLEKS R6 R5 K12 ["PRODUCT_PURCHASE_UPSELL"]
  LOADK R6 K19 ["AllUsers.Payments.ProductPurchaseRobuxUpsellABTestUWP"]
  SETTABLEKS R6 R5 K13 ["PRODUCT_PURCHASE_UPSELL_UWP"]
  LOADK R6 K20 ["AllUsers.Payments.ProductPurchaseRobuxUpsellABTestAmazon"]
  SETTABLEKS R6 R5 K14 ["PRODUCT_PURCHASE_UPSELL_AMAZON"]
  LOADK R6 K21 ["AllUsers.Payments.ProductPurchaseRobuxUpsellABTestXbox"]
  SETTABLEKS R6 R5 K15 ["PRODUCT_PURCHASE_UPSELL_XBOX"]
  LOADK R6 K22 ["Constants.ABTests"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["ABTests"]
  MOVE R4 R1
  DUPTABLE R5 K29 [{"PurchaseResult_Error", "PurchaseResult_Success", "PurchaseResult_UserCancelled", "PurchaseResult_ConsumeRequestFail", "PurchaseResult_RobuxUpdated", "PurcahseResult_NoActionNeeded"}]
  LOADN R6 255
  SETTABLEKS R6 R5 K23 ["PurchaseResult_Error"]
  LOADN R6 0
  SETTABLEKS R6 R5 K24 ["PurchaseResult_Success"]
  LOADN R6 1
  SETTABLEKS R6 R5 K25 ["PurchaseResult_UserCancelled"]
  LOADN R6 2
  SETTABLEKS R6 R5 K26 ["PurchaseResult_ConsumeRequestFail"]
  LOADN R6 3
  SETTABLEKS R6 R5 K27 ["PurchaseResult_RobuxUpdated"]
  LOADN R6 4
  SETTABLEKS R6 R5 K28 ["PurcahseResult_NoActionNeeded"]
  LOADK R6 K30 ["Constants.PlatformPurchaseResult"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["PlatformPurchaseResult"]
  MOVE R4 R1
  DUPTABLE R5 K33 [{"TwoStepVerificationRequired", "EconomyDisabled"}]
  LOADK R6 K31 ["TwoStepVerificationRequired"]
  SETTABLEKS R6 R5 K31 ["TwoStepVerificationRequired"]
  LOADK R6 K32 ["EconomyDisabled"]
  SETTABLEKS R6 R5 K32 ["EconomyDisabled"]
  LOADK R6 K34 ["Constants.TransactionStatus"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["PurchaseFailureReason"]
  MOVE R4 R1
  DUPTABLE R5 K37 [{"CollectibleItem", "DeveloperProduct"}]
  LOADK R6 K38 ["Collectible Item"]
  SETTABLEKS R6 R5 K35 ["CollectibleItem"]
  LOADK R6 K39 ["Developer Product"]
  SETTABLEKS R6 R5 K36 ["DeveloperProduct"]
  LOADK R6 K40 ["Constants.ProductType"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["ProductType"]
  LOADK R4 K41 ["Constants"]
  CALL R2 2 -1
  RETURN R2 -1
