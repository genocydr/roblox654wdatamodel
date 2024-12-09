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
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Workspace"]
  GETTABLEKS R5 R6 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ToastLite"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K13 ["Rodux"]
  GETIMPORT R5 K8 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K14 ["PromptRequestReducer"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K15 ["PurchaseFlowReducer"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K16 ["ProductInfoReducer"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K17 ["PremiumProductsReducer"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K18 ["NativeUpsellReducer"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K19 ["PromptStateReducer"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K20 ["PurchaseErrorReducer"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K21 ["AccountInfoReducer"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K22 ["PurchasingStartTimeReducer"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K2 ["Parent"]
  GETTABLEKS R15 R16 K23 ["HasCompletedPurchaseReducer"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K2 ["Parent"]
  GETTABLEKS R16 R17 K24 ["GamepadEnabledReducer"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETIMPORT R19 K1 [script]
  GETTABLEKS R18 R19 K2 ["Parent"]
  GETTABLEKS R17 R18 K25 ["ABVariationReducer"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K2 ["Parent"]
  GETTABLEKS R18 R19 K26 ["WindowStateReducer"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K2 ["Parent"]
  GETTABLEKS R19 R20 K27 ["ButtonStateReducer"]
  CALL R18 1 1
  GETIMPORT R19 K8 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K28 ["SubscriptionPurchaseInfoReducer"]
  CALL R19 1 1
  GETTABLEKS R21 R3 K29 ["Reducers"]
  GETTABLEKS R20 R21 K30 ["CurrentToastMessagesReducer"]
  GETIMPORT R21 K8 [require]
  GETTABLEKS R23 R0 K31 ["Flags"]
  GETTABLEKS R22 R23 K32 ["GetFFlagEnableToastLiteRender"]
  CALL R21 1 1
  GETTABLEKS R22 R4 K33 ["combineReducers"]
  DUPTABLE R23 K50 [{"promptRequest", "purchaseFlow", "productInfo", "premiumProductInfo", "nativeUpsell", "promptState", "purchaseError", "accountInfo", "purchasingStartTime", "hasCompletedPurchase", "gamepadEnabled", "abVariations", "windowState", "buttonState", "subscriptionPurchaseInfo", "currentToastMessages"}]
  SETTABLEKS R5 R23 K34 ["promptRequest"]
  SETTABLEKS R6 R23 K35 ["purchaseFlow"]
  SETTABLEKS R7 R23 K36 ["productInfo"]
  SETTABLEKS R8 R23 K37 ["premiumProductInfo"]
  SETTABLEKS R9 R23 K38 ["nativeUpsell"]
  SETTABLEKS R10 R23 K39 ["promptState"]
  SETTABLEKS R11 R23 K40 ["purchaseError"]
  SETTABLEKS R12 R23 K41 ["accountInfo"]
  SETTABLEKS R13 R23 K42 ["purchasingStartTime"]
  SETTABLEKS R14 R23 K43 ["hasCompletedPurchase"]
  SETTABLEKS R15 R23 K44 ["gamepadEnabled"]
  SETTABLEKS R16 R23 K45 ["abVariations"]
  SETTABLEKS R17 R23 K46 ["windowState"]
  SETTABLEKS R18 R23 K47 ["buttonState"]
  SETTABLEKS R19 R23 K48 ["subscriptionPurchaseInfo"]
  MOVE R25 R21
  CALL R25 0 1
  JUMPIFNOT R25 [+2]
  MOVE R24 R20
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K49 ["currentToastMessages"]
  CALL R22 1 1
  RETURN R22 1
