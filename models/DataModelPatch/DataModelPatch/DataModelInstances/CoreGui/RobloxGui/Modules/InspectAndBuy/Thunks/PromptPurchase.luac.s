PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R5 1
  GETUPVAL R6 2
  GETUPVAL R7 3
  CALL R5 2 -1
  NAMECALL R3 R0 K0 ["dispatch"]
  CALL R3 -1 0
  LOADB R3 0
  GETUPVAL R4 4
  JUMPIFEQKNIL R4 [+11]
  GETUPVAL R4 3
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K1 ["ItemType"]
  GETTABLEKS R5 R6 K2 ["Bundle"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+23]
  GETUPVAL R4 6
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K3 ["LocalPlayer"]
  GETUPVAL R7 2
  GETUPVAL R8 8
  GETUPVAL R9 9
  GETUPVAL R10 4
  GETUPVAL R11 10
  NAMECALL R4 R4 K4 ["PromptCollectiblesPurchase"]
  CALL R4 7 0
  GETUPVAL R6 11
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K5 ["Counters"]
  GETTABLEKS R7 R8 K6 ["PromptLimitedCollectiblesPurchase"]
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  JUMP [+88]
  GETUPVAL R4 3
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K1 ["ItemType"]
  GETTABLEKS R5 R6 K2 ["Bundle"]
  JUMPIFNOTEQ R4 R5 [+20]
  GETUPVAL R4 6
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K3 ["LocalPlayer"]
  GETUPVAL R7 2
  NAMECALL R4 R4 K7 ["PromptBundlePurchase"]
  CALL R4 3 0
  GETUPVAL R6 11
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K5 ["Counters"]
  GETTABLEKS R7 R8 K7 ["PromptBundlePurchase"]
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  JUMP [+61]
  GETUPVAL R4 3
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K1 ["ItemType"]
  GETTABLEKS R5 R6 K8 ["Asset"]
  JUMPIFNOTEQ R4 R5 [+44]
  GETUPVAL R5 12
  NOT R4 R5
  GETUPVAL R5 8
  JUMPIFEQKNIL R5 [+22]
  JUMPIFNOT R4 [+20]
  GETUPVAL R5 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K3 ["LocalPlayer"]
  GETUPVAL R8 2
  LOADB R9 0
  NAMECALL R5 R5 K9 ["PromptPurchase"]
  CALL R5 4 0
  GETUPVAL R7 11
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K5 ["Counters"]
  GETTABLEKS R8 R9 K10 ["PromptUnlimitedCollectiblePurchase"]
  CALL R7 1 -1
  NAMECALL R5 R0 K0 ["dispatch"]
  CALL R5 -1 0
  JUMP [+27]
  GETUPVAL R5 6
  GETUPVAL R7 2
  LOADB R8 0
  NAMECALL R5 R5 K11 ["PromptRobloxPurchase"]
  CALL R5 3 0
  GETUPVAL R7 11
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K5 ["Counters"]
  GETTABLEKS R8 R9 K11 ["PromptRobloxPurchase"]
  CALL R7 1 -1
  NAMECALL R5 R0 K0 ["dispatch"]
  CALL R5 -1 0
  JUMP [+10]
  GETUPVAL R6 11
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K5 ["Counters"]
  GETTABLEKS R7 R8 K12 ["PromptPurchaseUnknownItemType"]
  CALL R6 1 -1
  NAMECALL R4 R0 K0 ["dispatch"]
  CALL R4 -1 0
  GETTABLEKS R4 R2 K13 ["reportPurchaseAttempt"]
  GETUPVAL R5 3
  GETUPVAL R6 2
  CALL R4 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["new"]
  GETIMPORT R9 K2 [script]
  GETTABLEKS R8 R9 K3 ["Name"]
  GETUPVAL R9 1
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE UPVAL U7
  CAPTURE VAL R6
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["MarketplaceService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Thunk"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K11 ["Services"]
  GETTABLEKS R5 R6 K12 ["Analytics"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R2 K14 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetItemBeingPurchased"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R2 K16 ["Thunks"]
  GETTABLEKS R8 R9 K17 ["SendCounter"]
  CALL R7 1 1
  NEWTABLE R8 0 1
  MOVE R9 R4
  SETLIST R8 R9 1 [1]
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R7
  RETURN R9 1