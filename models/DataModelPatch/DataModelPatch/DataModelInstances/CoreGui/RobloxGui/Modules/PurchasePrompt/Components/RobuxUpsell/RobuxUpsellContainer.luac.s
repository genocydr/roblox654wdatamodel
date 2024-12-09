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
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["completeRequest"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["purchaseFlow"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["RobuxUpsellV2"]
  JUMPIFEQ R3 R4 [+10]
  GETTABLEKS R3 R1 K2 ["purchaseFlow"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["LargeRobuxUpsell"]
  JUMPIFEQ R3 R4 [+3]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R3 1
  CALL R3 0 1
  GETTABLEKS R5 R1 K5 ["productInfo"]
  GETTABLEKS R4 R5 K6 ["imageUrl"]
  GETIMPORT R5 K9 [string.find]
  GETTABLEKS R7 R1 K5 ["productInfo"]
  GETTABLEKS R6 R7 K6 ["imageUrl"]
  LOADK R7 K10 ["assetid=0"]
  CALL R5 2 1
  JUMPIFNOT R5 [+1]
  LOADNIL R4
  GETUPVAL R6 2
  JUMPIFNOT R6 [+15]
  GETUPVAL R5 3
  GETTABLEKS R6 R1 K5 ["productInfo"]
  GETTABLEKS R9 R1 K11 ["accountInfo"]
  GETTABLEKS R8 R9 K12 ["membershipType"]
  JUMPIFEQKN R8 K13 [4] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETTABLEKS R8 R1 K14 ["expectedPrice"]
  CALL R5 3 1
  JUMPIF R5 [+12]
  GETUPVAL R5 3
  GETTABLEKS R6 R1 K5 ["productInfo"]
  GETTABLEKS R9 R1 K11 ["accountInfo"]
  GETTABLEKS R8 R9 K12 ["membershipType"]
  JUMPIFEQKN R8 K13 [4] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  CALL R5 2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K15 ["createElement"]
  LOADK R7 K16 ["Frame"]
  NEWTABLE R8 4 0
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K20 ["Size"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K21 ["Change"]
  GETTABLEKS R9 R10 K22 ["AbsoluteSize"]
  GETTABLEKS R10 R0 K23 ["changeScreenSize"]
  SETTABLE R10 R8 R9
  LOADN R9 1
  SETTABLEKS R9 R8 K24 ["BackgroundTransparency"]
  DUPTABLE R9 K28 [{"Prompt", "ModalFix", "OnCoreGuiMenuOpened"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K51 [{"screenSize", "requestType", "promptState", "purchaseFlow", "purchaseError", "robuxProviderId", "robuxProductId", "itemIcon", "itemName", "itemRobuxCost", "iapRobuxAmount", "beforeRobuxBalance", "isTestPurchase", "isGamepadEnabled", "purchaseItem", "promptRobuxPurchase", "openRobuxStore", "openTermsOfUse", "openSecuritySettings", "dispatchFetchPurchaseWarning", "endPurchase", "onAnalyticEvent", "humanoidModel"}]
  GETTABLEKS R13 R2 K29 ["screenSize"]
  SETTABLEKS R13 R12 K29 ["screenSize"]
  GETTABLEKS R13 R1 K30 ["requestType"]
  SETTABLEKS R13 R12 K30 ["requestType"]
  GETTABLEKS R13 R1 K31 ["promptState"]
  SETTABLEKS R13 R12 K31 ["promptState"]
  GETTABLEKS R13 R1 K2 ["purchaseFlow"]
  SETTABLEKS R13 R12 K2 ["purchaseFlow"]
  GETTABLEKS R13 R1 K32 ["purchaseError"]
  SETTABLEKS R13 R12 K32 ["purchaseError"]
  GETTABLEKS R14 R1 K52 ["nativeUpsell"]
  GETTABLEKS R13 R14 K34 ["robuxProductId"]
  SETTABLEKS R13 R12 K33 ["robuxProviderId"]
  GETTABLEKS R14 R1 K52 ["nativeUpsell"]
  GETTABLEKS R13 R14 K53 ["productId"]
  SETTABLEKS R13 R12 K34 ["robuxProductId"]
  SETTABLEKS R4 R12 K35 ["itemIcon"]
  GETTABLEKS R14 R1 K5 ["productInfo"]
  GETTABLEKS R13 R14 K54 ["name"]
  SETTABLEKS R13 R12 K36 ["itemName"]
  SETTABLEKS R5 R12 K37 ["itemRobuxCost"]
  GETTABLEKS R15 R1 K52 ["nativeUpsell"]
  GETTABLEKS R14 R15 K56 ["robuxPurchaseAmount"]
  ORK R13 R14 K55 [0]
  SETTABLEKS R13 R12 K38 ["iapRobuxAmount"]
  GETTABLEKS R14 R1 K11 ["accountInfo"]
  GETTABLEKS R13 R14 K57 ["balance"]
  SETTABLEKS R13 R12 K39 ["beforeRobuxBalance"]
  GETTABLEKS R13 R1 K40 ["isTestPurchase"]
  SETTABLEKS R13 R12 K40 ["isTestPurchase"]
  GETTABLEKS R13 R1 K41 ["isGamepadEnabled"]
  SETTABLEKS R13 R12 K41 ["isGamepadEnabled"]
  GETTABLEKS R13 R1 K42 ["purchaseItem"]
  SETTABLEKS R13 R12 K42 ["purchaseItem"]
  GETTABLEKS R13 R1 K43 ["promptRobuxPurchase"]
  SETTABLEKS R13 R12 K43 ["promptRobuxPurchase"]
  GETTABLEKS R13 R1 K44 ["openRobuxStore"]
  SETTABLEKS R13 R12 K44 ["openRobuxStore"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R13 R1 K45 ["openTermsOfUse"]
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K45 ["openTermsOfUse"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R13 R1 K46 ["openSecuritySettings"]
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K46 ["openSecuritySettings"]
  GETTABLEKS R13 R1 K47 ["dispatchFetchPurchaseWarning"]
  SETTABLEKS R13 R12 K47 ["dispatchFetchPurchaseWarning"]
  GETTABLEKS R13 R1 K58 ["completeRequest"]
  SETTABLEKS R13 R12 K48 ["endPurchase"]
  GETTABLEKS R13 R1 K49 ["onAnalyticEvent"]
  SETTABLEKS R13 R12 K49 ["onAnalyticEvent"]
  GETUPVAL R14 6
  JUMPIFNOT R14 [+3]
  GETTABLEKS R13 R1 K50 ["humanoidModel"]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K50 ["humanoidModel"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["Prompt"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K59 ["ImageButton"]
  DUPTABLE R12 K61 [{"BackgroundTransparency", "Modal", "Size"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K24 ["BackgroundTransparency"]
  LOADB R13 1
  SETTABLEKS R13 R12 K60 ["Modal"]
  GETIMPORT R13 K19 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K20 ["Size"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["ModalFix"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K64 [{"event", "callback"}]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K65 ["MenuOpened"]
  SETTABLEKS R13 R12 K62 ["event"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K63 ["callback"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["OnCoreGuiMenuOpened"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
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
  LOADK R8 K6 ["RobuxUpsellContainer"]
  SETTABLEKS R8 R7 K3 ["selectionGroupName"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K7 ["CentralOverlay"]
  SETTABLEKS R8 R7 K4 ["focusNavigableSurfaceIdentifier"]
  DUPTABLE R8 K8 [{"RobuxUpsellContainer"}]
  NAMECALL R9 R0 K0 ["createElement"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K6 ["RobuxUpsellContainer"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["FocusNavigationEffects"]
  CALL R1 3 -1
  RETURN R1 -1
  NAMECALL R1 R0 K0 ["createElement"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["promptRequest"]
  GETTABLEKS R1 R2 K1 ["humanoidModel"]
  JUMP [+1]
  LOADNIL R1
  GETUPVAL R2 1
  JUMPIFNOT R2 [+48]
  DUPTABLE R2 K12 [{"purchaseFlow", "requestType", "expectedPrice", "promptState", "purchaseError", "productInfo", "accountInfo", "nativeUpsell", "isTestPurchase", "isGamepadEnabled", "humanoidModel"}]
  GETTABLEKS R3 R0 K2 ["purchaseFlow"]
  SETTABLEKS R3 R2 K2 ["purchaseFlow"]
  GETTABLEKS R4 R0 K0 ["promptRequest"]
  GETTABLEKS R3 R4 K3 ["requestType"]
  SETTABLEKS R3 R2 K3 ["requestType"]
  GETTABLEKS R4 R0 K0 ["promptRequest"]
  GETTABLEKS R3 R4 K4 ["expectedPrice"]
  SETTABLEKS R3 R2 K4 ["expectedPrice"]
  GETTABLEKS R3 R0 K5 ["promptState"]
  SETTABLEKS R3 R2 K5 ["promptState"]
  GETTABLEKS R3 R0 K6 ["purchaseError"]
  SETTABLEKS R3 R2 K6 ["purchaseError"]
  GETTABLEKS R3 R0 K7 ["productInfo"]
  SETTABLEKS R3 R2 K7 ["productInfo"]
  GETTABLEKS R3 R0 K8 ["accountInfo"]
  SETTABLEKS R3 R2 K8 ["accountInfo"]
  GETTABLEKS R3 R0 K9 ["nativeUpsell"]
  SETTABLEKS R3 R2 K9 ["nativeUpsell"]
  GETUPVAL R3 2
  CALL R3 0 1
  SETTABLEKS R3 R2 K10 ["isTestPurchase"]
  GETTABLEKS R3 R0 K13 ["gamepadEnabled"]
  SETTABLEKS R3 R2 K11 ["isGamepadEnabled"]
  SETTABLEKS R1 R2 K1 ["humanoidModel"]
  RETURN R2 1
  DUPTABLE R2 K14 [{"purchaseFlow", "requestType", "promptState", "purchaseError", "productInfo", "accountInfo", "nativeUpsell", "isTestPurchase", "isGamepadEnabled", "humanoidModel"}]
  GETTABLEKS R3 R0 K2 ["purchaseFlow"]
  SETTABLEKS R3 R2 K2 ["purchaseFlow"]
  GETTABLEKS R4 R0 K0 ["promptRequest"]
  GETTABLEKS R3 R4 K3 ["requestType"]
  SETTABLEKS R3 R2 K3 ["requestType"]
  GETTABLEKS R3 R0 K5 ["promptState"]
  SETTABLEKS R3 R2 K5 ["promptState"]
  GETTABLEKS R3 R0 K6 ["purchaseError"]
  SETTABLEKS R3 R2 K6 ["purchaseError"]
  GETTABLEKS R3 R0 K7 ["productInfo"]
  SETTABLEKS R3 R2 K7 ["productInfo"]
  GETTABLEKS R3 R0 K8 ["accountInfo"]
  SETTABLEKS R3 R2 K8 ["accountInfo"]
  GETTABLEKS R3 R0 K9 ["nativeUpsell"]
  SETTABLEKS R3 R2 K9 ["nativeUpsell"]
  GETUPVAL R3 2
  CALL R3 0 1
  SETTABLEKS R3 R2 K10 ["isTestPurchase"]
  GETTABLEKS R3 R0 K13 ["gamepadEnabled"]
  SETTABLEKS R3 R2 K11 ["isGamepadEnabled"]
  SETTABLEKS R1 R2 K1 ["humanoidModel"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

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
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1
  GETUPVAL R0 1
  GETUPVAL R1 3
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["SelectedCoreObject"]
  GETUPVAL R0 1
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_13:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_14:
  DUPTABLE R1 K8 [{"purchaseItem", "promptRobuxPurchase", "openRobuxStore", "openSecuritySettings", "openTermsOfUse", "dispatchFetchPurchaseWarning", "completeRequest", "onAnalyticEvent"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["purchaseItem"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["promptRobuxPurchase"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["openRobuxStore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["openSecuritySettings"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["openTermsOfUse"]
  NEWCLOSURE R2 P5
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K5 ["dispatchFetchPurchaseWarning"]
  NEWCLOSURE R2 P6
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  SETTABLEKS R2 R1 K6 ["completeRequest"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  SETTABLEKS R2 R1 K7 ["onAnalyticEvent"]
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
  GETTABLEKS R13 R14 K26 ["PurchaseFlow"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K27 ["Thunks"]
  GETTABLEKS R14 R15 K28 ["completeRequest"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K27 ["Thunks"]
  GETTABLEKS R15 R16 K29 ["purchaseItem"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R0 K27 ["Thunks"]
  GETTABLEKS R16 R17 K30 ["launchRobuxUpsell"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R0 K27 ["Thunks"]
  GETTABLEKS R17 R18 K31 ["openRobuxStore"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R19 R0 K27 ["Thunks"]
  GETTABLEKS R18 R19 K32 ["openSecuritySettings"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R20 R0 K27 ["Thunks"]
  GETTABLEKS R19 R20 K33 ["openTermsOfUse"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R21 R0 K27 ["Thunks"]
  GETTABLEKS R20 R21 K34 ["initiatePurchasePrecheck"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R22 R0 K27 ["Thunks"]
  GETTABLEKS R21 R22 K35 ["initiateUserPurchaseSettingsPrecheck"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R23 R0 K27 ["Thunks"]
  GETTABLEKS R22 R23 K36 ["sendEvent"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R24 R0 K37 ["Utils"]
  GETTABLEKS R23 R24 K38 ["isMockingPurchases"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R25 R0 K37 ["Utils"]
  GETTABLEKS R24 R25 K39 ["getPlayerPrice"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R26 R0 K37 ["Utils"]
  GETTABLEKS R25 R26 K40 ["isLinksAllowed"]
  CALL R24 1 1
  GETIMPORT R25 K9 [require]
  GETTABLEKS R26 R0 K41 ["connectToStore"]
  CALL R25 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R29 R0 K42 ["Components"]
  GETTABLEKS R28 R29 K43 ["Connection"]
  GETTABLEKS R27 R28 K44 ["ExternalEventConnection"]
  CALL R26 1 1
  GETIMPORT R27 K9 [require]
  GETTABLEKS R30 R7 K20 ["Modules"]
  GETTABLEKS R29 R30 K45 ["PublishAssetPrompt"]
  GETTABLEKS R28 R29 K46 ["FFlagPublishAvatarPromptEnabled"]
  CALL R27 1 1
  GETIMPORT R28 K9 [require]
  GETTABLEKS R31 R7 K20 ["Modules"]
  GETTABLEKS R30 R31 K45 ["PublishAssetPrompt"]
  GETTABLEKS R29 R30 K47 ["FFlagPublishAvatarPromptEnabledAllPlatforms"]
  CALL R28 1 1
  GETIMPORT R29 K9 [require]
  GETTABLEKS R31 R0 K48 ["Flags"]
  GETTABLEKS R30 R31 K49 ["GetFFLagUseCoreScriptsRootProviderForUpsellModal"]
  CALL R29 1 1
  GETIMPORT R30 K9 [require]
  GETIMPORT R33 K1 [script]
  GETTABLEKS R32 R33 K2 ["Parent"]
  GETTABLEKS R31 R32 K50 ["RobuxUpsellOverlay"]
  CALL R30 1 1
  GETTABLEKS R31 R4 K51 ["Component"]
  GETIMPORT R34 K1 [script]
  GETTABLEKS R33 R34 K52 ["Name"]
  NAMECALL R31 R31 K53 ["extend"]
  CALL R31 2 1
  GETIMPORT R32 K4 [game]
  LOADK R34 K54 ["FixLimitedUMobilePurchasePrompt"]
  LOADB R35 0
  NAMECALL R32 R32 K55 ["DefineFastFlag"]
  CALL R32 3 1
  GETIMPORT R33 K9 [require]
  GETTABLEKS R35 R0 K48 ["Flags"]
  GETTABLEKS R34 R35 K56 ["GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow"]
  CALL R33 1 1
  DUPCLOSURE R34 K57 [PROTO_1]
  SETTABLEKS R34 R31 K58 ["init"]
  DUPCLOSURE R34 K59 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R24
  CAPTURE VAL R32
  CAPTURE VAL R23
  CAPTURE VAL R4
  CAPTURE VAL R30
  CAPTURE VAL R28
  CAPTURE VAL R26
  CAPTURE VAL R1
  SETTABLEKS R34 R31 K60 ["createElement"]
  DUPCLOSURE R34 K61 [PROTO_4]
  CAPTURE VAL R29
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R34 R31 K62 ["render"]
  MOVE R34 R25
  DUPCLOSURE R35 K63 [PROTO_5]
  CAPTURE VAL R28
  CAPTURE VAL R32
  CAPTURE VAL R22
  DUPCLOSURE R36 K64 [PROTO_14]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R33
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R21
  CALL R34 2 1
  MOVE R35 R31
  CALL R34 1 1
  MOVE R31 R34
  RETURN R31 1
