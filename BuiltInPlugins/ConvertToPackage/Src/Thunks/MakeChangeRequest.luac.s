PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R3 1 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R3 4
  GETUPVAL R4 3
  GETUPVAL R5 1
  CALL R3 2 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Src"]
  GETTABLEKS R1 R2 K4 ["Actions"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["AddChange"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["ClearChange"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1