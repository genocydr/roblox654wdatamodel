PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K1 ["SignalAssetTypePurchased"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K1 ["promptRequest"]
  GETTABLEKS R4 R5 K2 ["requestType"]
  GETTABLEKS R5 R3 K3 ["purchaseError"]
  GETTABLEKS R7 R3 K1 ["promptRequest"]
  GETTABLEKS R6 R7 K4 ["id"]
  GETTABLEKS R7 R3 K5 ["hasCompletedPurchase"]
  GETTABLEKS R8 R3 K6 ["nativeUpsell"]
  JUMPIFNOT R8 [+4]
  GETTABLEKS R9 R3 K6 ["nativeUpsell"]
  GETTABLEKS R8 R9 K7 ["robuxProductId"]
  GETTABLEKS R9 R3 K8 ["productInfo"]
  JUMPIFNOT R9 [+4]
  GETTABLEKS R10 R3 K8 ["productInfo"]
  GETTABLEKS R9 R10 K9 ["productId"]
  GETTABLEKS R10 R3 K10 ["promptState"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["U13PaymentModal"]
  JUMPIFNOTEQ R10 R11 [+8]
  GETTABLEKS R10 R2 K12 ["signalScaryModalCanceled"]
  MOVE R11 R9
  LOADK R12 K11 ["U13PaymentModal"]
  MOVE R13 R8
  CALL R10 3 0
  JUMP [+41]
  GETTABLEKS R10 R3 K10 ["promptState"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["U13MonthlyThreshold1Modal"]
  JUMPIFNOTEQ R10 R11 [+8]
  GETTABLEKS R10 R2 K12 ["signalScaryModalCanceled"]
  MOVE R11 R9
  LOADK R12 K13 ["U13MonthlyThreshold1Modal"]
  MOVE R13 R8
  CALL R10 3 0
  JUMP [+27]
  GETTABLEKS R10 R3 K10 ["promptState"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K14 ["U13MonthlyThreshold2Modal"]
  JUMPIFNOTEQ R10 R11 [+8]
  GETTABLEKS R10 R2 K12 ["signalScaryModalCanceled"]
  MOVE R11 R9
  LOADK R12 K14 ["U13MonthlyThreshold2Modal"]
  MOVE R13 R8
  CALL R10 3 0
  JUMP [+13]
  GETTABLEKS R10 R3 K10 ["promptState"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K15 ["ParentalConsentWarningPaymentModal13To17"]
  JUMPIFNOTEQ R10 R11 [+7]
  GETTABLEKS R10 R2 K12 ["signalScaryModalCanceled"]
  MOVE R11 R9
  LOADK R12 K15 ["ParentalConsentWarningPaymentModal13To17"]
  MOVE R13 R8
  CALL R10 3 0
  GETTABLEKS R10 R3 K10 ["promptState"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["PurchaseComplete"]
  JUMPIFNOTEQ R10 R11 [+10]
  GETUPVAL R12 2
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["Success"]
  CALL R12 1 -1
  NAMECALL R10 R0 K18 ["dispatch"]
  CALL R10 -1 0
  JUMP [+24]
  GETTABLEKS R10 R3 K10 ["promptState"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K19 ["Error"]
  JUMPIFNOTEQ R10 R11 [+10]
  GETUPVAL R12 2
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K20 ["Failed"]
  CALL R12 1 -1
  NAMECALL R10 R0 K18 ["dispatch"]
  CALL R10 -1 0
  JUMP [+8]
  GETUPVAL R12 2
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K21 ["Cancelled"]
  CALL R12 1 -1
  NAMECALL R10 R0 K18 ["dispatch"]
  CALL R10 -1 0
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K22 ["Product"]
  JUMPIFNOTEQ R4 R10 [+14]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K23 ["LocalPlayer"]
  GETTABLEKS R10 R11 K24 ["UserId"]
  GETUPVAL R11 6
  MOVE R13 R10
  MOVE R14 R6
  MOVE R15 R7
  NAMECALL R11 R11 K25 ["SignalPromptProductPurchaseFinished"]
  CALL R11 4 0
  JUMP [+96]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K26 ["GamePass"]
  JUMPIFNOTEQ R4 R10 [+11]
  GETUPVAL R10 6
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K23 ["LocalPlayer"]
  MOVE R13 R6
  MOVE R14 R7
  NAMECALL R10 R10 K27 ["SignalPromptGamePassPurchaseFinished"]
  CALL R10 4 0
  JUMP [+81]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K28 ["Bundle"]
  JUMPIFNOTEQ R4 R10 [+11]
  GETUPVAL R10 6
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K23 ["LocalPlayer"]
  MOVE R13 R6
  MOVE R14 R7
  NAMECALL R10 R10 K29 ["SignalPromptBundlePurchaseFinished"]
  CALL R10 4 0
  JUMP [+66]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K30 ["Asset"]
  JUMPIFNOTEQ R4 R10 [+24]
  GETUPVAL R10 6
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K23 ["LocalPlayer"]
  MOVE R13 R6
  MOVE R14 R7
  NAMECALL R10 R10 K31 ["SignalPromptPurchaseFinished"]
  CALL R10 4 0
  GETTABLEKS R11 R3 K8 ["productInfo"]
  GETTABLEKS R10 R11 K32 ["assetTypeId"]
  JUMPIFNOT R7 [+47]
  JUMPIFNOT R10 [+46]
  GETIMPORT R11 K34 [pcall]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R10
  CALL R11 1 0
  JUMP [+38]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K35 ["Premium"]
  JUMPIFNOTEQ R4 R10 [+15]
  GETUPVAL R10 6
  MOVE R12 R7
  JUMPIF R12 [+7]
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K36 ["AlreadyPremium"]
  JUMPIFEQ R5 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  NAMECALL R10 R10 K37 ["SignalPromptPremiumPurchaseFinished"]
  CALL R10 2 0
  JUMP [+19]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K38 ["Subscription"]
  JUMPIFNOTEQ R4 R10 [+15]
  GETUPVAL R10 6
  MOVE R12 R6
  MOVE R13 R7
  JUMPIF R13 [+7]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K39 ["AlreadySubscribed"]
  JUMPIFEQ R5 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  NAMECALL R10 R10 K40 ["SignalPromptSubscriptionPurchaseFinished"]
  CALL R10 3 0
  GETUPVAL R12 8
  CALL R12 0 -1
  NAMECALL R10 R0 K18 ["dispatch"]
  CALL R10 -1 -1
  RETURN R10 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETIMPORT R2 K2 [script]
  GETTABLEKS R1 R2 K3 ["Name"]
  GETUPVAL R2 1
  DUPCLOSURE R3 K4 [PROTO_1]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["Players"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["MarketplaceService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Actions"]
  GETTABLEKS R4 R5 K11 ["CompleteRequest"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K12 ["Enums"]
  GETTABLEKS R5 R6 K13 ["PromptState"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K12 ["Enums"]
  GETTABLEKS R6 R7 K14 ["RequestType"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K15 ["PurchaseError"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K12 ["Enums"]
  GETTABLEKS R8 R9 K16 ["Counter"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K17 ["Thunks"]
  GETTABLEKS R9 R10 K18 ["sendCounter"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K19 ["Services"]
  GETTABLEKS R10 R11 K20 ["Analytics"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R11 R0 K21 ["Thunk"]
  CALL R10 1 1
  NEWTABLE R11 0 1
  MOVE R12 R9
  SETLIST R11 R12 1 [1]
  DUPCLOSURE R12 K22 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R12 1
