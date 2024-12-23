PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Web"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K0 ["Web"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Apple"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K2 ["AppleAppStore"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["Google"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K4 ["GooglePlayStore"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["Amazon"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K6 ["AmazonStore"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["UWP"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K8 ["WindowsStore"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["Xbox"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K10 ["XboxStore"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["Maquettes"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K12 ["MaquettesStore"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K13 ["Palisades"]
  JUMPIFNOTEQ R0 R1 [+3]
  LOADK R1 K14 ["PalisadesStore"]
  RETURN R1 1
  LOADK R1 K15 ["None"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["fromJson"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["resolve"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["reject"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["UnknownFailure"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reject"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["UnknownFailure"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Web"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K0 ["Web"]
  JUMP [+51]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Apple"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K2 ["AppleAppStore"]
  JUMP [+44]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Google"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K4 ["GooglePlayStore"]
  JUMP [+37]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Amazon"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K6 ["AmazonStore"]
  JUMP [+30]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["UWP"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K8 ["WindowsStore"]
  JUMP [+23]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["Xbox"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K10 ["XboxStore"]
  JUMP [+16]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["Maquettes"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K12 ["MaquettesStore"]
  JUMP [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K13 ["Palisades"]
  JUMPIFNOTEQ R3 R5 [+3]
  LOADK R4 K14 ["PalisadesStore"]
  JUMP [+2]
  LOADK R4 K15 ["None"]
  JUMP [0]
  GETTABLEKS R5 R0 K16 ["getRobuxUpsellProduct"]
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R4
  CALL R5 3 1
  DUPCLOSURE R7 K17 [PROTO_1]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R5 R5 K18 ["andThen"]
  CALL R5 2 1
  DUPCLOSURE R7 K19 [PROTO_2]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R5 R5 K20 ["catch"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["PurchaseError"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Enums"]
  GETTABLEKS R3 R4 K7 ["PaymentPlatform"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["Models"]
  GETTABLEKS R4 R5 K9 ["RobuxUpsell"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K10 ["Promise"]
  CALL R4 1 1
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R6 K12 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R6 1
