PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["screenSize"]
  GETTABLEKS R2 R0 K2 ["AbsoluteSize"]
  JUMPIFEQ R1 R2 [+10]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"screenSize"}]
  GETTABLEKS R4 R0 K2 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K1 ["screenSize"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["restoreSelectedObject"]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["completeRequest"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["screenSize"]
  SETTABLEKS R1 R0 K5 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["changeScreenSize"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["savedSelectedCoreObject"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["endPurchase"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["SelectedCoreObject"]
  SETTABLEKS R1 R0 K1 ["savedSelectedCoreObject"]
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["savedSelectedCoreObject"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R1 R0 K0 ["savedSelectedCoreObject"]
  GETUPVAL R3 1
  NAMECALL R1 R1 K1 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K0 ["savedSelectedCoreObject"]
  SETTABLEKS R2 R1 K2 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["completeRequest"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  NAMECALL R3 R0 K2 ["saveSelectedObject"]
  CALL R3 1 0
  LOADNIL R3
  LOADNIL R4
  GETTABLEKS R5 R1 K3 ["subscriptionPurchaseInfo"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+12]
  JUMPIFEQKNIL R5 [+11]
  GETTABLEKS R3 R5 K4 ["PrimaryPaymentProviderType"]
  GETTABLEKS R6 R5 K5 ["AllPaymentProviderTypes"]
  JUMPIFNOT R6 [+4]
  GETTABLEKS R6 R5 K5 ["AllPaymentProviderTypes"]
  GETTABLEN R4 R6 2
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["createElement"]
  LOADK R7 K7 ["Frame"]
  NEWTABLE R8 4 0
  GETIMPORT R9 K10 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K12 ["Change"]
  GETTABLEKS R9 R10 K13 ["AbsoluteSize"]
  GETTABLEKS R10 R0 K14 ["changeScreenSize"]
  SETTABLE R10 R8 R9
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  DUPTABLE R9 K19 [{"Prompt", "ModalFix", "OnCoreGuiMenuOpened"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K41 [{"screenSize", "promptState", "purchaseError", "subscriptionId", "name", "subscriptionProviderId", "subscriptionProviderName", "priceTier", "displayPrice", "period", "disclaimerText", "description", "itemIcon", "primaryPaymentMethod", "secondaryPaymentMethod", "isGamepadEnabled", "isTestingMode", "promptSubscriptionPurchase", "endPurchase", "onAnalyticEvent", "setCurrentToastMessage"}]
  GETTABLEKS R13 R2 K20 ["screenSize"]
  SETTABLEKS R13 R12 K20 ["screenSize"]
  GETTABLEKS R13 R1 K21 ["promptState"]
  SETTABLEKS R13 R12 K21 ["promptState"]
  GETTABLEKS R13 R1 K22 ["purchaseError"]
  SETTABLEKS R13 R12 K22 ["purchaseError"]
  GETTABLEKS R13 R1 K23 ["subscriptionId"]
  SETTABLEKS R13 R12 K23 ["subscriptionId"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K42 ["Name"]
  SETTABLEKS R13 R12 K24 ["name"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K43 ["SubscriptionProviderId"]
  SETTABLEKS R13 R12 K25 ["subscriptionProviderId"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K44 ["SubscriptionProviderName"]
  SETTABLEKS R13 R12 K26 ["subscriptionProviderName"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K45 ["PriceTier"]
  SETTABLEKS R13 R12 K27 ["priceTier"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K46 ["DisplayPrice"]
  SETTABLEKS R13 R12 K28 ["displayPrice"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K47 ["DisplaySubscriptionPeriod"]
  SETTABLEKS R13 R12 K29 ["period"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K48 ["DisclaimerText"]
  SETTABLEKS R13 R12 K30 ["disclaimerText"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K49 ["Description"]
  SETTABLEKS R13 R12 K31 ["description"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K50 ["ImageUrl"]
  SETTABLEKS R13 R12 K32 ["itemIcon"]
  SETTABLEKS R3 R12 K33 ["primaryPaymentMethod"]
  SETTABLEKS R4 R12 K34 ["secondaryPaymentMethod"]
  GETTABLEKS R13 R1 K35 ["isGamepadEnabled"]
  SETTABLEKS R13 R12 K35 ["isGamepadEnabled"]
  GETTABLEKS R14 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R13 R14 K51 ["IsTestingMode"]
  SETTABLEKS R13 R12 K36 ["isTestingMode"]
  GETTABLEKS R13 R1 K37 ["promptSubscriptionPurchase"]
  SETTABLEKS R13 R12 K37 ["promptSubscriptionPurchase"]
  GETUPVAL R14 0
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETTABLEKS R13 R0 K38 ["endPurchase"]
  JUMP [+2]
  GETTABLEKS R13 R1 K52 ["completeRequest"]
  SETTABLEKS R13 R12 K38 ["endPurchase"]
  GETTABLEKS R13 R1 K39 ["onAnalyticEvent"]
  SETTABLEKS R13 R12 K39 ["onAnalyticEvent"]
  GETTABLEKS R13 R1 K40 ["setCurrentToastMessage"]
  SETTABLEKS R13 R12 K40 ["setCurrentToastMessage"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Prompt"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["createElement"]
  LOADK R11 K53 ["ImageButton"]
  DUPTABLE R12 K55 [{"BackgroundTransparency", "Modal", "Size"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K15 ["BackgroundTransparency"]
  LOADB R13 1
  SETTABLEKS R13 R12 K54 ["Modal"]
  GETIMPORT R13 K10 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["ModalFix"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K58 [{"event", "callback"}]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K59 ["MenuOpened"]
  SETTABLEKS R13 R12 K56 ["event"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K57 ["callback"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["OnCoreGuiMenuOpened"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["requestType"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Subscription"]
  JUMPIFEQ R1 R2 [+3]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 2
  NEWTABLE R3 0 0
  DUPTABLE R4 K5 [{"FocusNavigationEffects"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K8 [{"selectionGroupName", "focusNavigableSurfaceIdentifier"}]
  LOADK R8 K9 ["SubscriptionPurchaseContainer"]
  SETTABLEKS R8 R7 K6 ["selectionGroupName"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K10 ["CentralOverlay"]
  SETTABLEKS R8 R7 K7 ["focusNavigableSurfaceIdentifier"]
  DUPTABLE R8 K11 [{"SubscriptionPurchaseContainer"}]
  NAMECALL R9 R0 K3 ["createElement"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K9 ["SubscriptionPurchaseContainer"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["FocusNavigationEffects"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_8:
  DUPTABLE R1 K6 [{"requestType", "promptState", "purchaseError", "subscriptionPurchaseInfo", "subscriptionId", "isGamepadEnabled"}]
  GETTABLEKS R3 R0 K7 ["promptRequest"]
  GETTABLEKS R2 R3 K0 ["requestType"]
  SETTABLEKS R2 R1 K0 ["requestType"]
  GETTABLEKS R2 R0 K1 ["promptState"]
  SETTABLEKS R2 R1 K1 ["promptState"]
  GETTABLEKS R2 R0 K2 ["purchaseError"]
  SETTABLEKS R2 R1 K2 ["purchaseError"]
  GETTABLEKS R2 R0 K3 ["subscriptionPurchaseInfo"]
  SETTABLEKS R2 R1 K3 ["subscriptionPurchaseInfo"]
  GETTABLEKS R3 R0 K7 ["promptRequest"]
  GETTABLEKS R2 R3 K8 ["id"]
  SETTABLEKS R2 R1 K4 ["subscriptionId"]
  GETTABLEKS R2 R0 K9 ["gamepadEnabled"]
  SETTABLEKS R2 R1 K5 ["isGamepadEnabled"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K4 [{"promptSubscriptionPurchase", "completeRequest", "onAnalyticEvent", "setCurrentToastMessage"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["promptSubscriptionPurchase"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["completeRequest"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["onAnalyticEvent"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["setCurrentToastMessage"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GuiService"]
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
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R2 K10 ["Workspace"]
  GETTABLEKS R8 R9 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["ToastRodux"]
  CALL R6 1 1
  GETIMPORT R7 K4 [game]
  LOADK R9 K16 ["CoreGui"]
  NAMECALL R7 R7 K6 ["GetService"]
  CALL R7 2 1
  LOADK R10 K17 ["RobloxGui"]
  NAMECALL R8 R7 K18 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R2 K10 ["Workspace"]
  GETTABLEKS R12 R13 K11 ["Packages"]
  GETTABLEKS R11 R12 K19 ["CoreScriptsRoactCommon"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K20 ["CoreScriptsRootProvider"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R8 K21 ["Modules"]
  GETTABLEKS R12 R13 K22 ["Common"]
  GETTABLEKS R11 R12 K23 ["FocusNavigationEffectsWrapper"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R2 K10 ["Workspace"]
  GETTABLEKS R13 R14 K11 ["Packages"]
  GETTABLEKS R12 R13 K24 ["FocusNavigationUtils"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K25 ["FocusNavigableSurfaceIdentifierEnum"]
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K26 ["Enums"]
  GETTABLEKS R14 R15 K27 ["RequestType"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K28 ["Thunks"]
  GETTABLEKS R15 R16 K29 ["completeRequest"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R0 K28 ["Thunks"]
  GETTABLEKS R16 R17 K30 ["launchSubscriptionPurchase"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R0 K28 ["Thunks"]
  GETTABLEKS R17 R18 K31 ["sendEvent"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R0 K32 ["connectToStore"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R0 K33 ["Components"]
  GETTABLEKS R20 R21 K34 ["Connection"]
  GETTABLEKS R19 R20 K35 ["ExternalEventConnection"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K36 ["SubscriptionPurchaseOverlay"]
  CALL R19 1 1
  GETTABLEKS R21 R6 K37 ["Actions"]
  GETTABLEKS R20 R21 K38 ["SetCurrentToastMessage"]
  GETTABLEKS R21 R4 K39 ["Component"]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K40 ["Name"]
  NAMECALL R21 R21 K41 ["extend"]
  CALL R21 2 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R24 R0 K42 ["Flags"]
  GETTABLEKS R23 R24 K43 ["GetFFlagFixPlayerGuiSelectionBugOnPromptExit"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R25 R0 K42 ["Flags"]
  GETTABLEKS R24 R25 K44 ["GetFFlagEnableRobloxCreditPurchase"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R26 R0 K42 ["Flags"]
  GETTABLEKS R25 R26 K45 ["GetFFlagEnableSubscriptionPurchaseToast"]
  CALL R24 1 1
  DUPCLOSURE R25 K46 [PROTO_2]
  CAPTURE VAL R22
  SETTABLEKS R25 R21 K47 ["init"]
  DUPCLOSURE R25 K48 [PROTO_3]
  CAPTURE VAL R22
  CAPTURE VAL R1
  SETTABLEKS R25 R21 K49 ["saveSelectedObject"]
  DUPCLOSURE R25 K50 [PROTO_4]
  CAPTURE VAL R22
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R25 R21 K51 ["restoreSelectedObject"]
  DUPCLOSURE R25 K52 [PROTO_6]
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R1
  SETTABLEKS R25 R21 K53 ["createElement"]
  DUPCLOSURE R25 K54 [PROTO_7]
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R25 R21 K55 ["render"]
  MOVE R25 R17
  DUPCLOSURE R26 K56 [PROTO_8]
  DUPCLOSURE R27 K57 [PROTO_13]
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R24
  CAPTURE VAL R20
  CALL R25 2 1
  MOVE R26 R21
  CALL R25 1 1
  MOVE R21 R25
  RETURN R21 1
