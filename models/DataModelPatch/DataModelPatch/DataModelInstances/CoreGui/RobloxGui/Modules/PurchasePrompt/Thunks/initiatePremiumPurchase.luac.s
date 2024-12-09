PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K0 ["accountInfo"]
  GETTABLEKS R5 R0 K1 ["balanceInfo"]
  GETTABLEKS R6 R0 K2 ["premiumProductInfo"]
  GETTABLEKS R7 R0 K3 ["canShowUpsell"]
  CALL R3 4 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R4 1
  GETTABLE R3 R1 R4
  GETUPVAL R4 2
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 -1
  CALL R4 -1 1
  JUMPIFNOT R4 [+2]
  LOADNIL R4
  RETURN R4 1
  GETUPVAL R6 3
  CALL R6 0 -1
  NAMECALL R4 R0 K1 ["dispatch"]
  CALL R4 -1 0
  GETTABLEKS R4 R3 K2 ["getFlagOrder66"]
  CALL R4 0 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R6 4
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K3 ["PurchaseDisabled"]
  CALL R6 1 -1
  NAMECALL R4 R0 K1 ["dispatch"]
  CALL R4 -1 0
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R5 R3 K4 ["isStudio"]
  CALL R5 0 1
  NOT R4 R5
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K5 ["all"]
  DUPTABLE R6 K10 [{"canShowUpsell", "premiumProductInfo", "accountInfo", "balanceInfo"}]
  JUMPIFNOT R4 [+4]
  GETUPVAL R7 7
  MOVE R8 R2
  CALL R7 1 1
  JUMPIF R7 [+5]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K11 ["resolve"]
  LOADB R8 1
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["canShowUpsell"]
  GETUPVAL R7 8
  MOVE R8 R2
  CALL R7 1 1
  SETTABLEKS R7 R6 K7 ["premiumProductInfo"]
  GETUPVAL R7 9
  MOVE R8 R2
  MOVE R9 R3
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["accountInfo"]
  GETUPVAL R7 10
  MOVE R8 R2
  MOVE R9 R3
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["balanceInfo"]
  CALL R5 1 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  NAMECALL R5 R5 K12 ["andThen"]
  CALL R5 2 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NAMECALL R5 R5 K13 ["catch"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  GETIMPORT R5 K2 [script]
  GETTABLEKS R4 R5 K3 ["Name"]
  GETUPVAL R5 1
  DUPCLOSURE R6 K4 [PROTO_2]
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
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Promise"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["Thunk"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Enums"]
  GETTABLEKS R4 R5 K8 ["PurchaseError"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Actions"]
  GETTABLEKS R5 R6 K10 ["RequestPremiumPurchase"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K9 ["Actions"]
  GETTABLEKS R6 R7 K11 ["ErrorOccurred"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K12 ["Network"]
  GETTABLEKS R7 R8 K13 ["getPremiumUpsellPrecheck"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K12 ["Network"]
  GETTABLEKS R8 R9 K14 ["getPremiumProductInfo"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K12 ["Network"]
  GETTABLEKS R9 R10 K15 ["getAccountInfo"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K12 ["Network"]
  GETTABLEKS R10 R11 K16 ["getBalanceInfo"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K17 ["Services"]
  GETTABLEKS R11 R12 K12 ["Network"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K17 ["Services"]
  GETTABLEKS R12 R13 K18 ["ExternalSettings"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K19 ["Thunks"]
  GETTABLEKS R13 R14 K20 ["resolvePremiumPromptState"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K21 ["Utils"]
  GETTABLEKS R14 R15 K22 ["hasPendingRequest"]
  CALL R13 1 1
  NEWTABLE R14 0 2
  MOVE R15 R10
  MOVE R16 R11
  SETLIST R14 R15 2 [1]
  DUPCLOSURE R15 K23 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R12
  RETURN R15 1