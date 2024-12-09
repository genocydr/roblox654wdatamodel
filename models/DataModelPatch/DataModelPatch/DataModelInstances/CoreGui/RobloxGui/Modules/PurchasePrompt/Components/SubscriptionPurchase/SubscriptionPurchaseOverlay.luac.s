PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["promptState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["PromptSubscriptionPurchase"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETTABLEKS R2 R0 K3 ["promptSubscriptionPurchase"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["PurchaseComplete"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETTABLEKS R2 R0 K5 ["endPurchase"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["Error"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETTABLEKS R2 R0 K5 ["endPurchase"]
  CALL R2 0 0
  RETURN R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["endPurchase"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["confirmButtonPressed"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["cancelButtonPressed"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["promptState"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["PromptSubscriptionPurchase"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PurchaseModal"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Error"]
  JUMPIFNOTEQ R2 R3 [+19]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETTABLEKS R3 R1 K5 ["purchaseError"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K6 ["VpcRequired"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["PurchaseVPCModal"]
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Error"]
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["None"]
  RETURN R3 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["AlreadySubscribed"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["AlreadySubscribed"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["SubscriptionExceededUserSpendLimit"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["SubscriptionExceededUserSpendLimit"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["SubscriptionUnsupportedLocale"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["SubscriptionUnsupportedLocale"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["RestrictedUser"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["RestrictedUser"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["SubscriptionPurchasePlatformNotSupported"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["SubscriptionPurchasePlatformNotSupported"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["SubscriptionInvalidSaleLocation"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["SubscriptionInvalidSaleLocation"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["SubscriptionNotForSale"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["SubscriptionNotForSale"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["VpcRequired"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["VpcRequired"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["ExceedParentalSpendLimit"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["ExceedParentalSpendLimit"]
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K11 ["Unknown"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PurchaseVPCModal"]
  JUMPIFNOTEQ R1 R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["toRawValue"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["EnablePurchase"]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["toRawValue"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["None"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  NAMECALL R2 R0 K1 ["getFlowState"]
  CALL R2 1 1
  NAMECALL R3 R0 K2 ["getErrorType"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K27 [{"screenSize", "purchaseState", "errorType", "purchaseVPCType", "subscriptionId", "name", "subscriptionProviderId", "subscriptionProviderName", "priceTier", "displayPrice", "period", "disclaimerText", "description", "itemIcon", "primaryPaymentMethod", "secondaryPaymentMethod", "acceptControllerIcon", "isTestingMode", "purchaseSubscription", "cancelPurchase", "flowComplete", "onAnalyticEvent", "eventPrefix"}]
  GETTABLEKS R7 R1 K4 ["screenSize"]
  SETTABLEKS R7 R6 K4 ["screenSize"]
  SETTABLEKS R2 R6 K5 ["purchaseState"]
  SETTABLEKS R3 R6 K6 ["errorType"]
  MOVE R9 R2
  NAMECALL R7 R0 K28 ["getVPCModalType"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["purchaseVPCType"]
  GETTABLEKS R7 R1 K8 ["subscriptionId"]
  SETTABLEKS R7 R6 K8 ["subscriptionId"]
  GETTABLEKS R7 R1 K9 ["name"]
  SETTABLEKS R7 R6 K9 ["name"]
  GETTABLEKS R7 R1 K10 ["subscriptionProviderId"]
  SETTABLEKS R7 R6 K10 ["subscriptionProviderId"]
  GETTABLEKS R7 R1 K11 ["subscriptionProviderName"]
  SETTABLEKS R7 R6 K11 ["subscriptionProviderName"]
  GETTABLEKS R7 R1 K12 ["priceTier"]
  SETTABLEKS R7 R6 K12 ["priceTier"]
  GETTABLEKS R7 R1 K13 ["displayPrice"]
  SETTABLEKS R7 R6 K13 ["displayPrice"]
  GETTABLEKS R7 R1 K14 ["period"]
  SETTABLEKS R7 R6 K14 ["period"]
  GETTABLEKS R7 R1 K15 ["disclaimerText"]
  SETTABLEKS R7 R6 K15 ["disclaimerText"]
  GETTABLEKS R7 R1 K16 ["description"]
  SETTABLEKS R7 R6 K16 ["description"]
  GETTABLEKS R7 R1 K17 ["itemIcon"]
  SETTABLEKS R7 R6 K17 ["itemIcon"]
  GETTABLEKS R7 R1 K18 ["primaryPaymentMethod"]
  SETTABLEKS R7 R6 K18 ["primaryPaymentMethod"]
  GETTABLEKS R7 R1 K19 ["secondaryPaymentMethod"]
  SETTABLEKS R7 R6 K19 ["secondaryPaymentMethod"]
  GETTABLEKS R8 R1 K29 ["isGamepadEnabled"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K30 ["rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K20 ["acceptControllerIcon"]
  GETTABLEKS R7 R1 K21 ["isTestingMode"]
  SETTABLEKS R7 R6 K21 ["isTestingMode"]
  GETTABLEKS R7 R1 K31 ["promptSubscriptionPurchase"]
  SETTABLEKS R7 R6 K22 ["purchaseSubscription"]
  GETTABLEKS R7 R1 K32 ["endPurchase"]
  SETTABLEKS R7 R6 K23 ["cancelPurchase"]
  GETTABLEKS R7 R1 K32 ["endPurchase"]
  SETTABLEKS R7 R6 K24 ["flowComplete"]
  GETTABLEKS R7 R1 K25 ["onAnalyticEvent"]
  SETTABLEKS R7 R6 K25 ["onAnalyticEvent"]
  LOADK R7 K33 ["InGame"]
  SETTABLEKS R7 R6 K26 ["eventPrefix"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_7:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+39]
  NAMECALL R1 R0 K0 ["getFlowState"]
  CALL R1 1 1
  NAMECALL R2 R0 K1 ["getErrorType"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Error"]
  JUMPIFNOTEQ R1 R3 [+29]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["Unknown"]
  JUMPIFNOTEQ R2 R3 [+24]
  GETTABLEKS R4 R0 K4 ["props"]
  GETTABLEKS R3 R4 K5 ["setCurrentToastMessage"]
  DUPTABLE R4 K8 [{"toastTitle", "toastType"}]
  GETUPVAL R5 3
  LOADK R7 K9 ["Feature.Subscription.Error.GenericSubscribeError"]
  NAMECALL R5 R5 K10 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["toastTitle"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K11 ["NetworkingError"]
  SETTABLEKS R5 R4 K7 ["toastType"]
  CALL R3 1 0
  GETTABLEKS R4 R0 K4 ["props"]
  GETTABLEKS R3 R4 K12 ["endPurchase"]
  CALL R3 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["ContextActionService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["CorePackages"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R2 K10 ["Workspace"]
  GETTABLEKS R5 R6 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["PurchasePromptDeps"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R2 K10 ["Workspace"]
  GETTABLEKS R6 R7 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["ToastRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K14 ["Enums"]
  GETTABLEKS R6 R7 K15 ["PromptState"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K14 ["Enums"]
  GETTABLEKS R7 R8 K16 ["PurchaseError"]
  CALL R6 1 1
  GETIMPORT R7 K4 [game]
  LOADK R9 K17 ["CoreGui"]
  NAMECALL R7 R7 K6 ["GetService"]
  CALL R7 2 1
  LOADK R10 K18 ["RobloxGui"]
  NAMECALL R8 R7 K19 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R8 K20 ["Modules"]
  GETTABLEKS R10 R11 K21 ["RobloxTranslator"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K22 ["Roact"]
  GETTABLEKS R12 R4 K14 ["Enums"]
  GETTABLEKS R11 R12 K23 ["ToastType"]
  GETTABLEKS R12 R3 K24 ["IAPExperience"]
  GETTABLEKS R14 R12 K25 ["PurchaseFlow"]
  GETTABLEKS R13 R14 K26 ["SubscriptionPurchaseFlow"]
  GETTABLEKS R15 R12 K25 ["PurchaseFlow"]
  GETTABLEKS R14 R15 K27 ["SubscriptionPurchaseFlowState"]
  GETTABLEKS R16 R12 K25 ["PurchaseFlow"]
  GETTABLEKS R15 R16 K28 ["PurchaseErrorType"]
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R0 K14 ["Enums"]
  GETTABLEKS R17 R18 K29 ["VPCModalType"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R19 R0 K30 ["Flags"]
  GETTABLEKS R18 R19 K31 ["GetFFlagEnableSubscriptionPurchaseToast"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R20 R0 K30 ["Flags"]
  GETTABLEKS R19 R20 K32 ["GetFFlagEnableVpcForInExperienceSubscriptionPurchase"]
  CALL R18 1 1
  GETTABLEKS R19 R10 K33 ["PureComponent"]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K34 ["Name"]
  NAMECALL R19 R19 K35 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K36 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K37 ["init"]
  DUPCLOSURE R20 K38 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R6
  SETTABLEKS R20 R19 K39 ["getFlowState"]
  DUPCLOSURE R20 K40 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K41 ["getErrorType"]
  DUPCLOSURE R20 K42 [PROTO_5]
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R20 R19 K43 ["getVPCModalType"]
  DUPCLOSURE R20 K44 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R13
  SETTABLEKS R20 R19 K45 ["render"]
  DUPCLOSURE R20 K46 [PROTO_7]
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R20 R19 K47 ["didUpdate"]
  RETURN R19 1
