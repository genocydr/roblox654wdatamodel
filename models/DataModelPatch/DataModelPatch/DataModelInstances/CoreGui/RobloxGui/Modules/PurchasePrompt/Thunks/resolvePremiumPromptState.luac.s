PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R4 1
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLE R4 R1 R5
  GETTABLEKS R5 R3 K0 ["getPlatform"]
  CALL R5 0 1
  GETUPVAL R8 3
  GETUPVAL R9 4
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 5
  GETUPVAL R9 6
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R8 7
  GETUPVAL R9 8
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 9
  JUMPIFNOTEQKB R6 FALSE [+10]
  GETTABLEKS R6 R4 K2 ["signalPremiumUpsellPrecheckFail"]
  CALL R6 0 0
  GETUPVAL R8 10
  CALL R8 0 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1
  GETTABLEKS R6 R3 K3 ["isStudio"]
  CALL R6 0 1
  JUMPIFNOT R6 [+19]
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K4 ["LocalPlayer"]
  GETTABLEKS R6 R7 K5 ["MembershipType"]
  GETIMPORT R7 K8 [Enum.MembershipType.Premium]
  JUMPIFNOTEQ R6 R7 [+27]
  GETUPVAL R8 12
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K9 ["AlreadyPremium"]
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1
  JUMP [+16]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K10 ["isPremium"]
  JUMPIFNOT R6 [+12]
  GETTABLEKS R6 R4 K11 ["signalPremiumUpsellShownPremium"]
  CALL R6 0 0
  GETUPVAL R8 12
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K9 ["AlreadyPremium"]
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1
  GETIMPORT R6 K14 [Enum.Platform.XBoxOne]
  JUMPIFNOTEQ R5 R6 [+13]
  GETTABLEKS R6 R4 K15 ["signalPremiumUpsellInvalidPlatform"]
  CALL R6 0 0
  GETUPVAL R8 12
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K16 ["PremiumUnavailablePlatform"]
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1
  GETUPVAL R6 4
  JUMPIFNOTEQKNIL R6 [+13]
  GETTABLEKS R6 R4 K17 ["signalPremiumUpsellInvalidProducts"]
  CALL R6 0 0
  GETUPVAL R8 12
  GETUPVAL R10 13
  GETTABLEKS R9 R10 K18 ["PremiumUnavailable"]
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1
  GETTABLEKS R6 R3 K3 ["isStudio"]
  CALL R6 0 1
  JUMPIF R6 [+6]
  GETTABLEKS R6 R4 K19 ["signalPremiumUpsellShownNonPremium"]
  CALL R6 0 0
  GETUPVAL R6 14
  MOVE R7 R2
  CALL R6 1 0
  GETUPVAL R8 15
  GETUPVAL R10 16
  GETTABLEKS R9 R10 K20 ["PremiumUpsell"]
  CALL R8 1 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  GETIMPORT R6 K2 [script]
  GETTABLEKS R5 R6 K3 ["Name"]
  GETUPVAL R6 1
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["Players"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["SetPromptState"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Actions"]
  GETTABLEKS R4 R5 K11 ["ErrorOccurred"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Actions"]
  GETTABLEKS R5 R6 K12 ["PremiumInfoRecieved"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Actions"]
  GETTABLEKS R6 R7 K13 ["AccountInfoReceived"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Actions"]
  GETTABLEKS R7 R8 K14 ["BalanceInfoRecieved"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K15 ["Enums"]
  GETTABLEKS R8 R9 K16 ["PromptState"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R0 K15 ["Enums"]
  GETTABLEKS R9 R10 K17 ["PurchaseError"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R0 K18 ["Services"]
  GETTABLEKS R10 R11 K19 ["Analytics"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R0 K18 ["Services"]
  GETTABLEKS R11 R12 K20 ["ExternalSettings"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R13 R0 K18 ["Services"]
  GETTABLEKS R12 R13 K21 ["Network"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R0 K21 ["Network"]
  GETTABLEKS R13 R14 K22 ["postPremiumImpression"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R0 K23 ["Thunks"]
  GETTABLEKS R14 R15 K24 ["completeRequest"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R15 R0 K25 ["Thunk"]
  CALL R14 1 1
  NEWTABLE R15 0 3
  MOVE R16 R11
  MOVE R17 R10
  MOVE R18 R9
  SETLIST R15 R16 3 [1]
  DUPCLOSURE R16 K26 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R7
  RETURN R16 1
