PROTO_0:
  GETUPVAL R4 0
  GETUPVAL R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CanPurchase"]
  JUMPIFNOTEQKB R2 FALSE [+10]
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["AlreadySubscribed"]
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 -1
  RETURN R2 -1
  GETUPVAL R4 4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K3 ["PromptSubscriptionPurchase"]
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETIMPORT R3 K2 [script]
  GETTABLEKS R2 R3 K3 ["Name"]
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Actions"]
  GETTABLEKS R2 R3 K6 ["SetPromptState"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Actions"]
  GETTABLEKS R3 R4 K7 ["ErrorOccurred"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Actions"]
  GETTABLEKS R4 R5 K8 ["SubscriptionPurchaseInfoReceived"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Enums"]
  GETTABLEKS R5 R6 K10 ["PromptState"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K9 ["Enums"]
  GETTABLEKS R6 R7 K11 ["PurchaseError"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R0 K12 ["Thunk"]
  CALL R6 1 1
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R7 1
