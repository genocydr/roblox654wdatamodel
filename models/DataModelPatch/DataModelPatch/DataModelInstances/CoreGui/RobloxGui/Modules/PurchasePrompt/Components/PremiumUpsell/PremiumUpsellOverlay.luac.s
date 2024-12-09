PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["promptState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["PremiumUpsell"]
  JUMPIFNOTEQ R1 R2 [+12]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K3 ["dispatchPremiumPrecheck"]
  CALL R2 0 0
  RETURN R0 0
  GETTABLEKS R2 R0 K4 ["promptPremiumPurchase"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["PurchaseComplete"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETTABLEKS R2 R0 K6 ["endPurchase"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["Error"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETTABLEKS R2 R0 K6 ["endPurchase"]
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
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["confirmButtonPressed"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["cancelButtonPressed"]
  RETURN R0 0

PROTO_3:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["confirmButtonPressed"]
  CALL R3 0 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["cancelButtonPressed"]
  CALL R3 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  LOADK R3 K0 ["PremiumPurchaseConfirmButtonBind"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  LOADB R5 0
  GETIMPORT R6 K4 [Enum.KeyCode.ButtonA]
  NAMECALL R1 R1 K5 ["BindCoreAction"]
  CALL R1 5 0
  GETUPVAL R1 0
  LOADK R3 K6 ["PremiumPurchaseCancelButtonBind"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  LOADB R5 0
  GETIMPORT R6 K8 [Enum.KeyCode.ButtonB]
  NAMECALL R1 R1 K5 ["BindCoreAction"]
  CALL R1 5 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["PremiumPurchaseConfirmButtonBind"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K2 ["PremiumPurchaseCancelButtonBind"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["promptState"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["PremiumUpsell"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PurchaseModal"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["Error"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Error"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["EnablePurchaseVPCModal"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["PurchaseVPCModal"]
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["None"]
  RETURN R3 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["AlreadyPremium"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["AlreadyPremium"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["purchaseError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["PremiumUnavailablePlatform"]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["PremiumPlatformUnavailable"]
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["Unknown"]
  RETURN R2 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["promptState"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["EnablePurchaseVPCModal"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["toRawValue"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["EnablePurchase"]
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["toRawValue"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["None"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K16 [{"screenSize", "isCatalog", "currencySymbol", "robuxPrice", "robuxAmount", "purchaseState", "errorType", "purchaseVPCType", "acceptControllerIcon", "purchasePremium", "cancelPurchase", "flowComplete", "onAnalyticEvent", "eventPrefix"}]
  GETTABLEKS R5 R1 K2 ["screenSize"]
  SETTABLEKS R5 R4 K2 ["screenSize"]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["isCatalog"]
  GETTABLEKS R5 R1 K4 ["currencySymbol"]
  SETTABLEKS R5 R4 K4 ["currencySymbol"]
  GETTABLEKS R5 R1 K5 ["robuxPrice"]
  SETTABLEKS R5 R4 K5 ["robuxPrice"]
  GETTABLEKS R5 R1 K6 ["robuxAmount"]
  SETTABLEKS R5 R4 K6 ["robuxAmount"]
  NAMECALL R5 R0 K17 ["getFlowState"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["purchaseState"]
  NAMECALL R5 R0 K18 ["getErrorType"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["errorType"]
  NAMECALL R5 R0 K19 ["getVPCModalType"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["purchaseVPCType"]
  GETTABLEKS R6 R1 K20 ["isGamepadEnabled"]
  JUMPIFNOT R6 [+2]
  LOADK R5 K21 ["rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["acceptControllerIcon"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K22 ["dispatchPremiumPrecheck"]
  JUMP [+2]
  GETTABLEKS R5 R1 K23 ["promptPremiumPurchase"]
  SETTABLEKS R5 R4 K11 ["purchasePremium"]
  GETTABLEKS R5 R1 K24 ["endPurchase"]
  SETTABLEKS R5 R4 K12 ["cancelPurchase"]
  GETTABLEKS R5 R1 K24 ["endPurchase"]
  SETTABLEKS R5 R4 K13 ["flowComplete"]
  GETTABLEKS R5 R1 K14 ["onAnalyticEvent"]
  SETTABLEKS R5 R4 K14 ["onAnalyticEvent"]
  LOADK R5 K25 ["InGame"]
  SETTABLEKS R5 R4 K15 ["eventPrefix"]
  CALL R2 2 -1
  RETURN R2 -1

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
  GETTABLEKS R4 R3 K13 ["Roact"]
  GETTABLEKS R5 R3 K14 ["IAPExperience"]
  GETTABLEKS R7 R5 K15 ["PurchaseFlow"]
  GETTABLEKS R6 R7 K16 ["PremiumUpsellFlow"]
  GETTABLEKS R8 R5 K15 ["PurchaseFlow"]
  GETTABLEKS R7 R8 K17 ["PremiumUpsellFlowState"]
  GETTABLEKS R9 R5 K15 ["PurchaseFlow"]
  GETTABLEKS R8 R9 K18 ["PurchaseErrorType"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K19 ["Enums"]
  GETTABLEKS R10 R11 K20 ["PromptState"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K19 ["Enums"]
  GETTABLEKS R11 R12 K21 ["PurchaseError"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R0 K19 ["Enums"]
  GETTABLEKS R12 R13 K22 ["VPCModalType"]
  CALL R11 1 1
  GETTABLEKS R12 R4 K23 ["PureComponent"]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K24 ["Name"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K26 ["Flags"]
  GETTABLEKS R14 R15 K27 ["GetFFlagEnableVpcForInExperiencePremiumUpsell"]
  CALL R13 1 1
  GETIMPORT R14 K4 [game]
  LOADK R16 K28 ["CoreGui"]
  NAMECALL R14 R14 K6 ["GetService"]
  CALL R14 2 1
  LOADK R17 K29 ["RobloxGui"]
  NAMECALL R15 R14 K30 ["WaitForChild"]
  CALL R15 2 1
  DUPCLOSURE R16 K31 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R13
  SETTABLEKS R16 R12 K32 ["init"]
  DUPCLOSURE R16 K33 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R16 R12 K34 ["didMount"]
  DUPCLOSURE R16 K35 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R16 R12 K36 ["willUnmount"]
  DUPCLOSURE R16 K37 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R16 R12 K38 ["getFlowState"]
  DUPCLOSURE R16 K39 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R16 R12 K40 ["getErrorType"]
  DUPCLOSURE R16 K41 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R16 R12 K42 ["getVPCModalType"]
  DUPCLOSURE R16 K43 [PROTO_10]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R13
  SETTABLEKS R16 R12 K44 ["render"]
  RETURN R12 1
