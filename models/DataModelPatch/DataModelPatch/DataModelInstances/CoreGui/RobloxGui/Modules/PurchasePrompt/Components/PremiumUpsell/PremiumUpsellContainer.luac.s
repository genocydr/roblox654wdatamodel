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
  GETTABLEKS R3 R1 K2 ["requestType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Premium"]
  JUMPIFEQ R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  NAMECALL R3 R0 K4 ["saveSelectedObject"]
  CALL R3 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["createElement"]
  LOADK R4 K6 ["Frame"]
  NEWTABLE R5 4 0
  GETIMPORT R6 K9 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["Size"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["Change"]
  GETTABLEKS R6 R7 K12 ["AbsoluteSize"]
  GETTABLEKS R7 R0 K13 ["changeScreenSize"]
  SETTABLE R7 R5 R6
  LOADN R6 1
  SETTABLEKS R6 R5 K14 ["BackgroundTransparency"]
  DUPTABLE R6 K18 [{"Prompt", "ModalFix", "OnCoreGuiMenuOpened"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K30 [{"screenSize", "promptState", "purchaseError", "currencySymbol", "robuxPrice", "robuxAmount", "isGamepadEnabled", "promptPremiumPurchase", "dispatchPremiumPrecheck", "endPurchase", "onAnalyticEvent"}]
  GETTABLEKS R10 R2 K19 ["screenSize"]
  SETTABLEKS R10 R9 K19 ["screenSize"]
  GETTABLEKS R10 R1 K20 ["promptState"]
  SETTABLEKS R10 R9 K20 ["promptState"]
  GETTABLEKS R10 R1 K21 ["purchaseError"]
  SETTABLEKS R10 R9 K21 ["purchaseError"]
  GETTABLEKS R11 R1 K31 ["premiumProductInfo"]
  GETTABLEKS R10 R11 K22 ["currencySymbol"]
  SETTABLEKS R10 R9 K22 ["currencySymbol"]
  GETTABLEKS R11 R1 K31 ["premiumProductInfo"]
  GETTABLEKS R10 R11 K32 ["price"]
  SETTABLEKS R10 R9 K23 ["robuxPrice"]
  GETTABLEKS R11 R1 K31 ["premiumProductInfo"]
  GETTABLEKS R10 R11 K24 ["robuxAmount"]
  SETTABLEKS R10 R9 K24 ["robuxAmount"]
  GETTABLEKS R10 R1 K25 ["isGamepadEnabled"]
  SETTABLEKS R10 R9 K25 ["isGamepadEnabled"]
  GETTABLEKS R10 R1 K26 ["promptPremiumPurchase"]
  SETTABLEKS R10 R9 K26 ["promptPremiumPurchase"]
  GETTABLEKS R10 R1 K27 ["dispatchPremiumPrecheck"]
  SETTABLEKS R10 R9 K27 ["dispatchPremiumPrecheck"]
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R0 K28 ["endPurchase"]
  JUMP [+2]
  GETTABLEKS R10 R1 K33 ["completeRequest"]
  SETTABLEKS R10 R9 K28 ["endPurchase"]
  GETTABLEKS R10 R1 K29 ["onAnalyticEvent"]
  SETTABLEKS R10 R9 K29 ["onAnalyticEvent"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["Prompt"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K34 ["ImageButton"]
  DUPTABLE R9 K36 [{"BackgroundTransparency", "Modal", "Size"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  LOADB R10 1
  SETTABLEKS R10 R9 K35 ["Modal"]
  GETIMPORT R10 K9 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K10 ["Size"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["ModalFix"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K39 [{"event", "callback"}]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K40 ["MenuOpened"]
  SETTABLEKS R10 R9 K37 ["event"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K38 ["callback"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["OnCoreGuiMenuOpened"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+31]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 2
  NEWTABLE R3 0 0
  DUPTABLE R4 K2 [{"FocusNavigationEffects"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K5 [{"selectionGroupName", "focusNavigableSurfaceIdentifier"}]
  LOADK R8 K6 ["PremiumUpsellContainer"]
  SETTABLEKS R8 R7 K3 ["selectionGroupName"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K7 ["CentralOverlay"]
  SETTABLEKS R8 R7 K4 ["focusNavigableSurfaceIdentifier"]
  DUPTABLE R8 K8 [{"PremiumUpsellContainer"}]
  NAMECALL R9 R0 K0 ["createElement"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K6 ["PremiumUpsellContainer"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["FocusNavigationEffects"]
  CALL R1 3 -1
  RETURN R1 -1
  NAMECALL R1 R0 K0 ["createElement"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  DUPTABLE R1 K5 [{"requestType", "promptState", "purchaseError", "premiumProductInfo", "isGamepadEnabled"}]
  GETTABLEKS R3 R0 K6 ["promptRequest"]
  GETTABLEKS R2 R3 K0 ["requestType"]
  SETTABLEKS R2 R1 K0 ["requestType"]
  GETTABLEKS R2 R0 K1 ["promptState"]
  SETTABLEKS R2 R1 K1 ["promptState"]
  GETTABLEKS R2 R0 K2 ["purchaseError"]
  SETTABLEKS R2 R1 K2 ["purchaseError"]
  GETTABLEKS R2 R0 K3 ["premiumProductInfo"]
  SETTABLEKS R2 R1 K3 ["premiumProductInfo"]
  GETTABLEKS R2 R0 K7 ["gamepadEnabled"]
  SETTABLEKS R2 R1 K4 ["isGamepadEnabled"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

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
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_13:
  DUPTABLE R1 K4 [{"promptPremiumPurchase", "completeRequest", "onAnalyticEvent", "dispatchPremiumPrecheck"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["promptPremiumPurchase"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["completeRequest"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["onAnalyticEvent"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchPremiumPrecheck"]
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
  GETIMPORT R6 K4 [game]
  LOADK R8 K15 ["CoreGui"]
  NAMECALL R6 R6 K6 ["GetService"]
  CALL R6 2 1
  LOADK R9 K16 ["RobloxGui"]
  NAMECALL R7 R6 K17 ["WaitForChild"]
  CALL R7 2 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R2 K10 ["Workspace"]
  GETTABLEKS R11 R12 K11 ["Packages"]
  GETTABLEKS R10 R11 K18 ["CoreScriptsRoactCommon"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K19 ["CoreScriptsRootProvider"]
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R7 K20 ["Modules"]
  GETTABLEKS R11 R12 K21 ["Common"]
  GETTABLEKS R10 R11 K22 ["FocusNavigationEffectsWrapper"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R2 K10 ["Workspace"]
  GETTABLEKS R12 R13 K11 ["Packages"]
  GETTABLEKS R11 R12 K23 ["FocusNavigationUtils"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K24 ["FocusNavigableSurfaceIdentifierEnum"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R0 K25 ["Enums"]
  GETTABLEKS R13 R14 K26 ["RequestType"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K27 ["Thunks"]
  GETTABLEKS R14 R15 K28 ["completeRequest"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K27 ["Thunks"]
  GETTABLEKS R15 R16 K29 ["launchPremiumUpsell"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R0 K27 ["Thunks"]
  GETTABLEKS R16 R17 K30 ["sendEvent"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R0 K31 ["connectToStore"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R19 R0 K27 ["Thunks"]
  GETTABLEKS R18 R19 K32 ["initiatePremiumPrecheck"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R0 K33 ["Components"]
  GETTABLEKS R20 R21 K34 ["Connection"]
  GETTABLEKS R19 R20 K35 ["ExternalEventConnection"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K36 ["PremiumUpsellOverlay"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R22 R0 K37 ["Flags"]
  GETTABLEKS R21 R22 K38 ["GetFFLagUseCoreScriptsRootProviderForUpsellModal"]
  CALL R20 1 1
  GETTABLEKS R21 R4 K39 ["Component"]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K40 ["Name"]
  NAMECALL R21 R21 K41 ["extend"]
  CALL R21 2 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R24 R0 K37 ["Flags"]
  GETTABLEKS R23 R24 K42 ["GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium"]
  CALL R22 1 1
  DUPCLOSURE R23 K43 [PROTO_2]
  CAPTURE VAL R22
  SETTABLEKS R23 R21 K44 ["init"]
  DUPCLOSURE R23 K45 [PROTO_3]
  CAPTURE VAL R22
  CAPTURE VAL R1
  SETTABLEKS R23 R21 K46 ["saveSelectedObject"]
  DUPCLOSURE R23 K47 [PROTO_4]
  CAPTURE VAL R22
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R23 R21 K48 ["restoreSelectedObject"]
  DUPCLOSURE R23 K49 [PROTO_6]
  CAPTURE VAL R12
  CAPTURE VAL R22
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R1
  SETTABLEKS R23 R21 K50 ["createElement"]
  DUPCLOSURE R23 K51 [PROTO_7]
  CAPTURE VAL R20
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R23 R21 K52 ["render"]
  MOVE R23 R16
  DUPCLOSURE R24 K53 [PROTO_8]
  DUPCLOSURE R25 K54 [PROTO_13]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R17
  CALL R23 2 1
  MOVE R24 R21
  CALL R23 1 1
  MOVE R21 R23
  RETURN R21 1
