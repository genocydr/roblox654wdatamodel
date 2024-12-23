PROTO_0:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["isEligible"]
  JUMPIFEQKNIL R1 [+5]
  GETTABLEKS R1 R0 K1 ["failureReason"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADB R1 0
  JUMP [+11]
  GETTABLEKS R2 R0 K0 ["isEligible"]
  JUMPIFEQKNIL R2 [+5]
  GETTABLEKS R2 R0 K1 ["failureReason"]
  JUMPIFNOTEQKNIL R2 [+3]
  LOADB R1 0
  JUMP [+1]
  LOADB R1 1
  JUMPIFNOTEQKB R1 FALSE [+11]
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["UnknownFailure"]
  CALL R3 1 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K0 ["isEligible"]
  JUMPIFNOTEQKB R1 TRUE [+8]
  GETUPVAL R1 0
  GETUPVAL R3 3
  CALL R3 0 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K1 ["failureReason"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K4 ["PurchaseNotEnabled"]
  JUMPIFNOTEQ R1 R2 [+16]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K5 ["signalUserSettingEligibilityModal"]
  LOADK R2 K4 ["PurchaseNotEnabled"]
  CALL R1 1 0
  GETUPVAL R1 0
  GETUPVAL R3 6
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K6 ["EnablePurchaseVPCModal"]
  CALL R3 1 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K1 ["failureReason"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["SpendLimitExceeded"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R1 0
  GETUPVAL R3 3
  CALL R3 0 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["UnknownFailure"]
  CALL R3 1 -1
  NAMECALL R1 R1 K3 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["UnknownFailure"]
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R4 1
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLE R4 R1 R5
  GETTABLEKS R5 R4 K0 ["isStudio"]
  CALL R5 0 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R8 3
  CALL R8 0 -1
  NAMECALL R6 R0 K1 ["dispatch"]
  CALL R6 -1 -1
  RETURN R6 -1
  GETUPVAL R6 4
  GETTABLEKS R7 R4 K2 ["getPlatform"]
  CALL R7 0 -1
  CALL R6 -1 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K3 ["Web"]
  JUMPIFNOTEQ R6 R7 [+7]
  GETUPVAL R9 3
  CALL R9 0 -1
  NAMECALL R7 R0 K1 ["dispatch"]
  CALL R7 -1 -1
  RETURN R7 -1
  GETUPVAL R7 6
  MOVE R8 R2
  CALL R7 1 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U3
  CAPTURE UPVAL U9
  CAPTURE VAL R3
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NAMECALL R7 R7 K4 ["andThen"]
  CALL R7 2 1
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NAMECALL R7 R7 K5 ["catch"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETIMPORT R2 K2 [script]
  GETTABLEKS R1 R2 K3 ["Name"]
  GETUPVAL R2 1
  DUPCLOSURE R3 K4 [PROTO_3]
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
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["UpsellFlow"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Services"]
  GETTABLEKS R3 R4 K8 ["Network"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["Network"]
  GETTABLEKS R4 R5 K9 ["checkUserPurchaseSettings"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K10 ["NativeUpsell"]
  GETTABLEKS R5 R6 K11 ["getUpsellFlow"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K7 ["Services"]
  GETTABLEKS R6 R7 K12 ["Analytics"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K7 ["Services"]
  GETTABLEKS R7 R8 K13 ["ExternalSettings"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K14 ["Actions"]
  GETTABLEKS R8 R9 K15 ["ErrorOccurred"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K5 ["Enums"]
  GETTABLEKS R9 R10 K16 ["PurchaseError"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R0 K17 ["Thunk"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K18 ["Thunks"]
  GETTABLEKS R11 R12 K19 ["initiatePurchasePrecheck"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K14 ["Actions"]
  GETTABLEKS R12 R13 K20 ["SetPromptState"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K5 ["Enums"]
  GETTABLEKS R13 R14 K21 ["PromptState"]
  CALL R12 1 1
  NEWTABLE R13 0 3
  MOVE R14 R5
  MOVE R15 R2
  MOVE R16 R6
  SETLIST R13 R14 3 [1]
  DUPCLOSURE R14 K22 [PROTO_0]
  DUPTABLE R15 K26 [{"None", "PurchaseNotEnabled", "SpendLimitExceeded"}]
  LOADK R16 K23 ["None"]
  SETTABLEKS R16 R15 K23 ["None"]
  LOADK R16 K24 ["PurchaseNotEnabled"]
  SETTABLEKS R16 R15 K24 ["PurchaseNotEnabled"]
  LOADK R16 K25 ["SpendLimitExceeded"]
  SETTABLEKS R16 R15 K25 ["SpendLimitExceeded"]
  DUPCLOSURE R16 K27 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  RETURN R16 1
