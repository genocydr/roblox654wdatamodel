PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["openVngStore"]
  GETTABLEKS R2 R0 K1 ["vngShopRedirectUrl"]
  CALL R1 1 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["UpsellInProgress"]
  CALL R3 1 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["openVngStore"]
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K1 ["UpsellInProgress"]
  CALL R2 1 -1
  NAMECALL R0 R0 K2 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["beginPlatformStorePurchase"]
  GETUPVAL R1 2
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  GETIMPORT R5 K1 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R5 1 2
  MOVE R3 R5
  MOVE R4 R6
  JUMPIFNOT R3 [+4]
  MOVE R5 R0
  MOVE R6 R2
  CALL R5 1 0
  JUMP [+3]
  MOVE R5 R1
  MOVE R6 R4
  CALL R5 1 0
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PlatformPurchaseResult"]
  GETTABLEKS R1 R2 K1 ["PurchaseResult_Success"]
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["signalXboxInGamePurchaseSuccess"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R1 3 0
  JUMP [+22]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PlatformPurchaseResult"]
  GETTABLEKS R1 R2 K3 ["PurchaseResult_UserCancelled"]
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["signalXboxInGamePurchaseCanceled"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R1 3 0
  JUMP [+7]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["signalXboxInGamePurchaseFailure"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R1 3 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PlatformPurchaseResult"]
  GETTABLEKS R1 R2 K1 ["PurchaseResult_Success"]
  JUMPIFEQ R0 R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PlatformPurchaseResult"]
  GETTABLEKS R1 R2 K6 ["PurchaseResult_RobuxUpdated"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETUPVAL R1 5
  GETUPVAL R3 6
  CALL R3 0 -1
  NAMECALL R1 R1 K7 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1
  GETUPVAL R1 5
  GETUPVAL R3 7
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K8 ["UnknownFailure"]
  CALL R3 1 -1
  NAMECALL R1 R1 K7 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R4 1
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLE R4 R1 R5
  GETUPVAL R6 3
  GETTABLE R5 R1 R6
  NAMECALL R6 R0 K0 ["getState"]
  CALL R6 1 1
  GETUPVAL R7 4
  GETTABLEKS R8 R3 K1 ["getPlatform"]
  CALL R8 0 -1
  CALL R7 -1 1
  LOADB R8 0
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K2 ["Web"]
  JUMPIFEQ R7 R9 [+5]
  GETTABLEKS R9 R6 K3 ["nativeUpsell"]
  GETTABLEKS R8 R9 K4 ["robuxProductId"]
  GETTABLEKS R10 R6 K5 ["productInfo"]
  GETTABLEKS R9 R10 K6 ["productId"]
  GETUPVAL R10 6
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R10 7
  MOVE R11 R8
  CALL R10 1 1
  JUMPIF R10 [+9]
  GETUPVAL R12 8
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K7 ["NotEnoughRobuxNoUpsell"]
  CALL R12 1 -1
  NAMECALL R10 R0 K8 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K10 ["U13PaymentModal"]
  JUMPIFNOTEQ R10 R11 [+8]
  GETTABLEKS R10 R2 K11 ["signalScaryModalConfirmed"]
  MOVE R11 R9
  LOADK R12 K10 ["U13PaymentModal"]
  MOVE R13 R8
  CALL R10 3 0
  JUMP [+41]
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K12 ["U13MonthlyThreshold1Modal"]
  JUMPIFNOTEQ R10 R11 [+8]
  GETTABLEKS R10 R2 K11 ["signalScaryModalConfirmed"]
  MOVE R11 R9
  LOADK R12 K12 ["U13MonthlyThreshold1Modal"]
  MOVE R13 R8
  CALL R10 3 0
  JUMP [+27]
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K13 ["U13MonthlyThreshold2Modal"]
  JUMPIFNOTEQ R10 R11 [+8]
  GETTABLEKS R10 R2 K11 ["signalScaryModalConfirmed"]
  MOVE R11 R9
  LOADK R12 K13 ["U13MonthlyThreshold2Modal"]
  MOVE R13 R8
  CALL R10 3 0
  JUMP [+13]
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K14 ["ParentalConsentWarningPaymentModal13To17"]
  JUMPIFNOTEQ R10 R11 [+7]
  GETTABLEKS R10 R2 K11 ["signalScaryModalConfirmed"]
  MOVE R11 R9
  LOADK R12 K15 ["ConfirmedParentalConsentWarningPaymentModal13To17"]
  MOVE R13 R8
  CALL R10 3 0
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K10 ["U13PaymentModal"]
  JUMPIFNOTEQ R10 R11 [+12]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K16 ["Post"]
  MOVE R11 R4
  GETUPVAL R14 11
  GETTABLEKS R13 R14 K17 ["UserActionType"]
  GETTABLEKS R12 R13 K18 ["ConfirmedU13PaymentModal"]
  CALL R10 2 0
  JUMP [+53]
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K12 ["U13MonthlyThreshold1Modal"]
  JUMPIFNOTEQ R10 R11 [+12]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K16 ["Post"]
  MOVE R11 R4
  GETUPVAL R14 11
  GETTABLEKS R13 R14 K17 ["UserActionType"]
  GETTABLEKS R12 R13 K19 ["ConfirmedU13MonthlyThreshold1Modal"]
  CALL R10 2 0
  JUMP [+35]
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K13 ["U13MonthlyThreshold2Modal"]
  JUMPIFNOTEQ R10 R11 [+12]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K16 ["Post"]
  MOVE R11 R4
  GETUPVAL R14 11
  GETTABLEKS R13 R14 K17 ["UserActionType"]
  GETTABLEKS R12 R13 K20 ["ConfirmedU13MonthlyThreshold2Modal"]
  CALL R10 2 0
  JUMP [+17]
  GETTABLEKS R10 R6 K9 ["promptState"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K14 ["ParentalConsentWarningPaymentModal13To17"]
  JUMPIFNOTEQ R10 R11 [+11]
  GETUPVAL R11 11
  GETTABLEKS R10 R11 K16 ["Post"]
  MOVE R11 R4
  GETUPVAL R14 11
  GETTABLEKS R13 R14 K17 ["UserActionType"]
  GETTABLEKS R12 R13 K15 ["ConfirmedParentalConsentWarningPaymentModal13To17"]
  CALL R10 2 0
  GETTABLEKS R10 R3 K21 ["getFFlagDisableRobuxUpsell"]
  CALL R10 0 1
  JUMPIFNOT R10 [+9]
  GETUPVAL R12 8
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K7 ["NotEnoughRobuxNoUpsell"]
  CALL R12 1 -1
  NAMECALL R10 R0 K8 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K2 ["Web"]
  JUMPIFNOTEQ R7 R10 [+102]
  GETTABLEKS R10 R6 K22 ["requestType"]
  GETTABLEKS R11 R2 K23 ["signalProductPurchaseUpsellConfirmed"]
  MOVE R12 R9
  MOVE R13 R10
  GETTABLEKS R15 R6 K3 ["nativeUpsell"]
  GETTABLEKS R14 R15 K6 ["productId"]
  CALL R11 3 0
  GETUPVAL R12 12
  CALL R12 0 1
  GETTABLEKS R11 R12 K24 ["getRedirectBuyRobuxToVNG"]
  CALL R11 0 1
  JUMPIFNOT R11 [+52]
  GETTABLEKS R11 R6 K9 ["promptState"]
  GETUPVAL R13 10
  GETTABLEKS R12 R13 K25 ["LeaveRobloxWarning"]
  JUMPIFNOTEQ R11 R12 [+37]
  GETUPVAL R11 13
  JUMPIFNOT R11 [+22]
  GETTABLEKS R11 R4 K26 ["getVngShopUrl"]
  MOVE R12 R4
  CALL R11 1 1
  NEWCLOSURE R13 P0
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U10
  NAMECALL R11 R11 K27 ["andThen"]
  CALL R11 2 1
  NEWCLOSURE R13 P1
  CAPTURE VAL R5
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  CAPTURE UPVAL U14
  CAPTURE UPVAL U10
  NAMECALL R11 R11 K28 ["catch"]
  CALL R11 2 0
  RETURN R0 0
  GETTABLEKS R11 R5 K29 ["openVngStore"]
  CALL R11 0 0
  GETUPVAL R13 14
  GETUPVAL R15 10
  GETTABLEKS R14 R15 K30 ["UpsellInProgress"]
  CALL R13 1 -1
  NAMECALL R11 R0 K8 ["dispatch"]
  CALL R11 -1 0
  RETURN R0 0
  GETUPVAL R13 14
  GETUPVAL R15 10
  GETTABLEKS R14 R15 K25 ["LeaveRobloxWarning"]
  CALL R13 1 -1
  NAMECALL R11 R0 K8 ["dispatch"]
  CALL R11 -1 0
  RETURN R0 0
  GETTABLEKS R11 R6 K31 ["purchaseFlow"]
  GETUPVAL R13 16
  GETTABLEKS R12 R13 K32 ["RobuxUpsellV2"]
  JUMPIFEQ R11 R12 [+6]
  GETUPVAL R13 16
  GETTABLEKS R12 R13 K33 ["LargeRobuxUpsell"]
  JUMPIFNOTEQ R11 R12 [+9]
  GETTABLEKS R12 R5 K34 ["startRobuxUpsellWeb"]
  GETTABLEKS R14 R6 K3 ["nativeUpsell"]
  GETTABLEKS R13 R14 K6 ["productId"]
  CALL R12 1 0
  JUMP [+3]
  GETTABLEKS R12 R5 K34 ["startRobuxUpsellWeb"]
  CALL R12 0 0
  GETUPVAL R14 14
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K30 ["UpsellInProgress"]
  CALL R14 1 -1
  NAMECALL R12 R0 K8 ["dispatch"]
  CALL R12 -1 0
  RETURN R0 0
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K35 ["Mobile"]
  JUMPIFNOTEQ R7 R10 [+46]
  GETTABLEKS R11 R6 K3 ["nativeUpsell"]
  GETTABLEKS R10 R11 K4 ["robuxProductId"]
  GETTABLEKS R12 R6 K5 ["productInfo"]
  GETTABLEKS R11 R12 K6 ["productId"]
  GETTABLEKS R12 R6 K22 ["requestType"]
  GETUPVAL R14 17
  GETTABLEKS R13 R14 K36 ["LocalPlayer"]
  GETTABLEKS R14 R2 K23 ["signalProductPurchaseUpsellConfirmed"]
  MOVE R15 R11
  MOVE R16 R12
  MOVE R17 R10
  CALL R14 3 0
  GETIMPORT R14 K38 [game]
  LOADK R16 K39 ["NativePurchaseWithLocalPlayer"]
  NAMECALL R14 R14 K40 ["GetEngineFeature"]
  CALL R14 2 1
  JUMPIFNOT R14 [+5]
  GETTABLEKS R14 R5 K41 ["promptNativePurchaseWithLocalPlayer"]
  MOVE R15 R10
  CALL R14 1 0
  JUMP [+5]
  GETTABLEKS R14 R5 K42 ["promptNativePurchase"]
  MOVE R15 R13
  MOVE R16 R10
  CALL R14 2 0
  GETUPVAL R16 14
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K30 ["UpsellInProgress"]
  CALL R16 1 -1
  NAMECALL R14 R0 K8 ["dispatch"]
  CALL R14 -1 0
  RETURN R0 0
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K43 ["Xbox"]
  JUMPIFNOTEQ R7 R10 [+46]
  GETTABLEKS R11 R6 K3 ["nativeUpsell"]
  GETTABLEKS R10 R11 K4 ["robuxProductId"]
  GETTABLEKS R12 R6 K5 ["productInfo"]
  GETTABLEKS R11 R12 K6 ["productId"]
  GETTABLEKS R12 R6 K22 ["requestType"]
  GETTABLEKS R13 R2 K23 ["signalProductPurchaseUpsellConfirmed"]
  MOVE R14 R11
  MOVE R15 R12
  MOVE R16 R10
  CALL R13 3 0
  GETUPVAL R15 14
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K30 ["UpsellInProgress"]
  CALL R15 1 -1
  NAMECALL R13 R0 K8 ["dispatch"]
  CALL R13 -1 0
  GETUPVAL R14 18
  GETTABLEKS R13 R14 K44 ["new"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R5
  CAPTURE VAL R10
  CALL R13 1 1
  NEWCLOSURE R15 P3
  CAPTURE UPVAL U19
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE UPVAL U20
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NAMECALL R13 R13 K27 ["andThen"]
  CALL R13 2 -1
  RETURN R13 -1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K45 ["Unavailable"]
  JUMPIFNOTEQ R7 R10 [+10]
  GETUPVAL R12 8
  GETUPVAL R14 9
  GETTABLEKS R13 R14 K7 ["NotEnoughRobuxNoUpsell"]
  CALL R12 1 -1
  NAMECALL R10 R0 K8 ["dispatch"]
  CALL R10 -1 0
  RETURN R0 0
  GETIMPORT R10 K47 [warn]
  LOADK R11 K48 ["Need more Robux: platform not supported for Robux purchase"]
  CALL R10 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETIMPORT R2 K2 [script]
  GETTABLEKS R1 R2 K3 ["Name"]
  GETUPVAL R2 1
  DUPCLOSURE R3 K4 [PROTO_5]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
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
  LOADK R4 K7 ["CorePackages"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Actions"]
  GETTABLEKS R4 R5 K11 ["ErrorOccurred"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Actions"]
  GETTABLEKS R5 R6 K12 ["SetPromptState"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K13 ["Enums"]
  GETTABLEKS R6 R7 K14 ["UpsellFlow"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K13 ["Enums"]
  GETTABLEKS R7 R8 K15 ["PromptState"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K16 ["PurchaseError"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K13 ["Enums"]
  GETTABLEKS R9 R10 K17 ["PurchaseFlow"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K18 ["NativeUpsell"]
  GETTABLEKS R10 R11 K19 ["getUpsellFlow"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K20 ["Misc"]
  GETTABLEKS R11 R12 K21 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R0 K22 ["Network"]
  GETTABLEKS R12 R13 K23 ["postPurchaseWarningAcknowledge"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R0 K24 ["Services"]
  GETTABLEKS R13 R14 K25 ["Analytics"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K24 ["Services"]
  GETTABLEKS R14 R15 K26 ["ExternalSettings"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K24 ["Services"]
  GETTABLEKS R15 R16 K22 ["Network"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R0 K24 ["Services"]
  GETTABLEKS R16 R17 K27 ["PlatformInterface"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R17 R0 K28 ["Thunk"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R18 R0 K29 ["Promise"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R2 K30 ["Workspace"]
  GETTABLEKS R20 R21 K31 ["Packages"]
  GETTABLEKS R19 R20 K32 ["UniversalAppPolicy"]
  CALL R18 1 1
  GETTABLEKS R19 R18 K33 ["getAppFeaturePolicies"]
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R2 K30 ["Workspace"]
  GETTABLEKS R23 R24 K31 ["Packages"]
  GETTABLEKS R22 R23 K34 ["SharedFlags"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K35 ["FFlagEnablePreSignedVngShopRedirectUrl"]
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R2 K30 ["Workspace"]
  GETTABLEKS R24 R25 K31 ["Packages"]
  GETTABLEKS R23 R24 K34 ["SharedFlags"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K36 ["GetFStringVNGWebshopUrl"]
  GETIMPORT R22 K9 [require]
  GETIMPORT R25 K1 [script]
  GETTABLEKS R24 R25 K2 ["Parent"]
  GETTABLEKS R23 R24 K37 ["retryAfterUpsell"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R2 K30 ["Workspace"]
  GETTABLEKS R25 R26 K31 ["Packages"]
  GETTABLEKS R24 R25 K38 ["IAPExperience"]
  CALL R23 1 1
  GETTABLEKS R24 R23 K39 ["PreparePaymentCheck"]
  GETTABLEKS R25 R23 K40 ["GetEnableConsolePreparePaymentCheck"]
  NEWTABLE R26 0 4
  MOVE R27 R12
  MOVE R28 R13
  MOVE R29 R14
  MOVE R30 R15
  SETLIST R26 R27 4 [1]
  DUPCLOSURE R27 K41 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R26
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R4
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R22
  RETURN R27 1
