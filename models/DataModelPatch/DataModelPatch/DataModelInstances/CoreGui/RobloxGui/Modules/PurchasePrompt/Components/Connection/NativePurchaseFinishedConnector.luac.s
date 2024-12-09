PROTO_0:
  GETTABLEKS R1 R0 K0 ["nativePurchaseFinished"]
  GETTABLEKS R2 R0 K1 ["nativePurchaseFinishedWithLocalPlayer"]
  GETIMPORT R3 K3 [game]
  LOADK R5 K4 ["NativePurchaseWithLocalPlayer"]
  NAMECALL R3 R3 K5 ["GetEngineFeature"]
  CALL R3 2 1
  JUMPIFNOT R3 [+36]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["createFragment"]
  DUPTABLE R4 K8 [{"NativePurchase", "NativePurchaseWithLocalPlayer"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K12 [{"event", "callback"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["NativePurchaseFinished"]
  SETTABLEKS R8 R7 K10 ["event"]
  SETTABLEKS R1 R7 K11 ["callback"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["NativePurchase"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K12 [{"event", "callback"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["NativePurchaseFinishedWithLocalPlayer"]
  SETTABLEKS R8 R7 K10 ["event"]
  SETTABLEKS R2 R7 K11 ["callback"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["NativePurchaseWithLocalPlayer"]
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K12 [{"event", "callback"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K13 ["NativePurchaseFinished"]
  SETTABLEKS R6 R5 K10 ["event"]
  SETTABLEKS R1 R5 K11 ["callback"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R4 0 -1
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["InvalidFundsUnknown"]
  CALL R4 1 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K1 ["UpsellFailedNativePurchase"]
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R3 0 -1
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["InvalidFundsUnknown"]
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 4
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K1 ["UpsellFailedNativePurchase"]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K2 [{"nativePurchaseFinished", "nativePurchaseFinishedWithLocalPlayer"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K0 ["nativePurchaseFinished"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K1 ["nativePurchaseFinishedWithLocalPlayer"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["MarketplaceService"]
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
  GETTABLEKS R7 R0 K14 ["Actions"]
  GETTABLEKS R6 R7 K15 ["ErrorOccurred"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K16 ["Enums"]
  GETTABLEKS R7 R8 K17 ["PurchaseError"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K18 ["Thunks"]
  GETTABLEKS R8 R9 K19 ["retryAfterUpsell"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R0 K20 ["connectToStore"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K16 ["Enums"]
  GETTABLEKS R10 R11 K21 ["Counter"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K18 ["Thunks"]
  GETTABLEKS R11 R12 K22 ["sendCounter"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K23 ["ExternalEventConnection"]
  CALL R11 1 1
  DUPCLOSURE R12 K24 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R1
  DUPCLOSURE R13 K25 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R9
  MOVE R14 R8
  LOADNIL R15
  MOVE R16 R13
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 1
  MOVE R12 R14
  RETURN R12 1
