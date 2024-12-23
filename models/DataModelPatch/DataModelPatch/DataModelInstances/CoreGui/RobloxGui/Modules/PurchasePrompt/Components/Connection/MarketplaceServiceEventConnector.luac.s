PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PromptPurchaseRequestedV2"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PromptCollectiblesPurchaseRequested"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["PromptCollectibleBundlePurchaseRequested"]
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["onPurchaseRequest"]
  GETTABLEKS R2 R0 K1 ["onPurchaseRequestV2"]
  GETTABLEKS R3 R0 K2 ["onProductPurchaseRequest"]
  GETTABLEKS R4 R0 K3 ["onPurchaseGamePassRequest"]
  GETTABLEKS R5 R0 K4 ["onServerPurchaseVerification"]
  GETTABLEKS R6 R0 K5 ["onBundlePurchaseRequest"]
  GETTABLEKS R7 R0 K6 ["onPremiumPurchaseRequest"]
  GETTABLEKS R8 R0 K7 ["onRobloxPurchaseRequest"]
  GETTABLEKS R9 R0 K8 ["onPromptCollectiblesPurchaseRequest"]
  GETTABLEKS R10 R0 K9 ["onSubscriptionPurchaseRequest"]
  GETTABLEKS R11 R0 K10 ["onCollectibleBundlePurchaseRequest"]
  DUPCLOSURE R12 K11 [PROTO_0]
  CAPTURE UPVAL U0
  LOADNIL R13
  GETUPVAL R14 1
  CALL R14 0 1
  JUMPIF R14 [+8]
  GETUPVAL R14 2
  CALL R14 0 1
  JUMPIFNOT R14 [+20]
  GETIMPORT R14 K13 [pcall]
  MOVE R15 R12
  CALL R14 1 1
  JUMPIFNOT R14 [+15]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K14 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K17 [{"event", "callback"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K18 ["PromptPurchaseRequestedV2"]
  SETTABLEKS R17 R16 K15 ["event"]
  SETTABLEKS R2 R16 K16 ["callback"]
  CALL R14 2 1
  MOVE R13 R14
  JUMP [+14]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K14 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K17 [{"event", "callback"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K19 ["PromptPurchaseRequested"]
  SETTABLEKS R17 R16 K15 ["event"]
  SETTABLEKS R1 R16 K16 ["callback"]
  CALL R14 2 1
  MOVE R13 R14
  DUPCLOSURE R14 K20 [PROTO_1]
  CAPTURE UPVAL U0
  LOADNIL R15
  GETIMPORT R16 K13 [pcall]
  MOVE R17 R14
  CALL R16 1 1
  JUMPIFNOT R16 [+14]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K14 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K17 [{"event", "callback"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K21 ["PromptCollectiblesPurchaseRequested"]
  SETTABLEKS R19 R18 K15 ["event"]
  SETTABLEKS R9 R18 K16 ["callback"]
  CALL R16 2 1
  MOVE R15 R16
  DUPCLOSURE R16 K22 [PROTO_2]
  CAPTURE UPVAL U0
  LOADNIL R17
  GETIMPORT R18 K13 [pcall]
  MOVE R19 R16
  CALL R18 1 1
  JUMPIFNOT R18 [+14]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K14 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K17 [{"event", "callback"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K23 ["PromptCollectibleBundlePurchaseRequested"]
  SETTABLEKS R21 R20 K15 ["event"]
  SETTABLEKS R11 R20 K16 ["callback"]
  CALL R18 2 1
  MOVE R17 R18
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K24 ["createFragment"]
  NEWTABLE R19 1 9
  MOVE R20 R13
  MOVE R21 R15
  MOVE R22 R17
  SETLIST R19 R20 3 [1]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K14 ["createElement"]
  GETUPVAL R30 4
  DUPTABLE R31 K17 [{"event", "callback"}]
  GETUPVAL R33 0
  GETTABLEKS R32 R33 K25 ["PromptRobloxPurchaseRequested"]
  SETTABLEKS R32 R31 K15 ["event"]
  SETTABLEKS R8 R31 K16 ["callback"]
  CALL R29 2 1
  SETTABLEKS R29 R19 K26 ["RobloxPurchase"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K14 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K17 [{"event", "callback"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K27 ["PromptProductPurchaseRequested"]
  SETTABLEKS R23 R22 K15 ["event"]
  SETTABLEKS R3 R22 K16 ["callback"]
  CALL R20 2 1
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K14 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K17 [{"event", "callback"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K28 ["PromptGamePassPurchaseRequested"]
  SETTABLEKS R24 R23 K15 ["event"]
  SETTABLEKS R4 R23 K16 ["callback"]
  CALL R21 2 1
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K14 ["createElement"]
  GETUPVAL R23 4
  DUPTABLE R24 K17 [{"event", "callback"}]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K29 ["ServerPurchaseVerification"]
  SETTABLEKS R25 R24 K15 ["event"]
  SETTABLEKS R5 R24 K16 ["callback"]
  CALL R22 2 1
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K14 ["createElement"]
  GETUPVAL R24 4
  DUPTABLE R25 K17 [{"event", "callback"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K30 ["PromptBundlePurchaseRequested"]
  SETTABLEKS R26 R25 K15 ["event"]
  SETTABLEKS R6 R25 K16 ["callback"]
  CALL R23 2 1
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K14 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K17 [{"event", "callback"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K31 ["PromptPremiumPurchaseRequested"]
  SETTABLEKS R27 R26 K15 ["event"]
  SETTABLEKS R7 R26 K16 ["callback"]
  CALL R24 2 1
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K14 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K17 [{"event", "callback"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K32 ["PromptSubscriptionPurchaseRequested"]
  SETTABLEKS R28 R27 K15 ["event"]
  SETTABLEKS R10 R27 K16 ["callback"]
  CALL R25 2 -1
  SETLIST R19 R20 -1 [4]
  CALL R18 1 -1
  RETURN R18 -1

PROTO_4:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R4 [+12]
  GETUPVAL R4 1
  GETUPVAL R5 2
  MOVE R6 R1
  GETIMPORT R7 K4 [Enum.InfoType.Asset]
  MOVE R8 R2
  LOADB R9 0
  LOADK R10 K5 [""]
  LOADK R11 K5 [""]
  CALL R5 6 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R6 [+12]
  GETUPVAL R6 1
  GETUPVAL R7 2
  MOVE R8 R1
  GETIMPORT R9 K4 [Enum.InfoType.Asset]
  MOVE R10 R2
  LOADB R11 0
  MOVE R12 R4
  MOVE R13 R5
  CALL R7 6 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  GETIMPORT R5 K3 [Enum.InfoType.Asset]
  MOVE R6 R1
  LOADB R7 1
  CALL R3 4 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R4 [+9]
  GETUPVAL R4 1
  GETUPVAL R5 2
  MOVE R6 R1
  GETIMPORT R7 K4 [Enum.InfoType.Product]
  MOVE R8 R2
  CALL R5 3 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R2 [+9]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R1
  GETIMPORT R5 K4 [Enum.InfoType.GamePass]
  LOADB R6 0
  CALL R3 3 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R8 [+16]
  GETUPVAL R8 1
  GETUPVAL R9 2
  MOVE R10 R1
  GETIMPORT R11 K4 [Enum.InfoType.Asset]
  LOADB R12 0
  LOADB R13 1
  MOVE R14 R6
  MOVE R15 R7
  MOVE R16 R2
  MOVE R17 R3
  MOVE R18 R4
  MOVE R19 R5
  CALL R9 10 -1
  CALL R8 -1 0
  RETURN R0 0

PROTO_10:
  JUMPIF R0 [+8]
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["UnknownFailure"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["playerId"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R3 R0 K1 ["playerId"]
  FASTCALL1 TONUMBER R3 [+2]
  GETIMPORT R2 K3 [tonumber]
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["LocalPlayer"]
  GETTABLEKS R2 R3 K5 ["UserId"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R2 0
  GETUPVAL R3 4
  CALL R3 0 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R2 [+6]
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R8 [+12]
  GETUPVAL R8 1
  GETUPVAL R9 2
  MOVE R10 R1
  MOVE R11 R6
  MOVE R12 R7
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R4
  MOVE R16 R5
  CALL R9 7 -1
  CALL R8 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LocalPlayer"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R6 P5
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R7 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  NEWCLOSURE R8 P7
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NEWCLOSURE R9 P8
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NEWCLOSURE R10 P9
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  NEWCLOSURE R11 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  DUPTABLE R12 K11 [{"onPurchaseRequest", "onPurchaseRequestV2", "onRobloxPurchaseRequest", "onProductPurchaseRequest", "onPurchaseGamePassRequest", "onServerPurchaseVerification", "onBundlePurchaseRequest", "onPremiumPurchaseRequest", "onPromptCollectiblesPurchaseRequest", "onSubscriptionPurchaseRequest", "onCollectibleBundlePurchaseRequest"}]
  SETTABLEKS R1 R12 K0 ["onPurchaseRequest"]
  SETTABLEKS R2 R12 K1 ["onPurchaseRequestV2"]
  SETTABLEKS R3 R12 K2 ["onRobloxPurchaseRequest"]
  SETTABLEKS R4 R12 K3 ["onProductPurchaseRequest"]
  SETTABLEKS R5 R12 K4 ["onPurchaseGamePassRequest"]
  SETTABLEKS R7 R12 K5 ["onServerPurchaseVerification"]
  SETTABLEKS R8 R12 K6 ["onBundlePurchaseRequest"]
  SETTABLEKS R10 R12 K7 ["onPremiumPurchaseRequest"]
  SETTABLEKS R6 R12 K8 ["onPromptCollectiblesPurchaseRequest"]
  SETTABLEKS R11 R12 K9 ["onSubscriptionPurchaseRequest"]
  SETTABLEKS R9 R12 K10 ["onCollectibleBundlePurchaseRequest"]
  RETURN R12 1

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
  LOADK R4 K7 ["Players"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K8 ["CorePackages"]
  NAMECALL R3 R3 K6 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R7 R3 K11 ["Workspace"]
  GETTABLEKS R6 R7 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["PurchasePromptDeps"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["Roact"]
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R0 K15 ["Actions"]
  GETTABLEKS R7 R8 K16 ["ErrorOccurred"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R0 K17 ["Enums"]
  GETTABLEKS R8 R9 K18 ["PurchaseError"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R0 K19 ["Thunks"]
  GETTABLEKS R9 R10 K20 ["completePurchase"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R11 R0 K19 ["Thunks"]
  GETTABLEKS R10 R11 K21 ["initiatePurchase"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R12 R0 K19 ["Thunks"]
  GETTABLEKS R11 R12 K22 ["initiateBundlePurchase"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R13 R0 K19 ["Thunks"]
  GETTABLEKS R12 R13 K23 ["initiatePremiumPurchase"]
  CALL R11 1 1
  GETIMPORT R12 K10 [require]
  GETTABLEKS R14 R0 K19 ["Thunks"]
  GETTABLEKS R13 R14 K24 ["initiateSubscriptionPurchase"]
  CALL R12 1 1
  GETIMPORT R13 K10 [require]
  GETTABLEKS R14 R0 K25 ["connectToStore"]
  CALL R13 1 1
  GETIMPORT R14 K10 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K2 ["Parent"]
  GETTABLEKS R15 R16 K26 ["ExternalEventConnection"]
  CALL R14 1 1
  GETIMPORT R15 K10 [require]
  GETTABLEKS R17 R0 K27 ["Flags"]
  GETTABLEKS R16 R17 K28 ["GetFFlagEnablePromptPurchaseRequestedV2"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R18 R0 K27 ["Flags"]
  GETTABLEKS R17 R18 K29 ["GetFFlagEnablePromptPurchaseRequestedV2Take2"]
  CALL R16 1 1
  DUPCLOSURE R17 K30 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R14
  MOVE R18 R13
  LOADNIL R19
  DUPCLOSURE R20 K31 [PROTO_15]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CALL R18 2 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  RETURN R17 1
