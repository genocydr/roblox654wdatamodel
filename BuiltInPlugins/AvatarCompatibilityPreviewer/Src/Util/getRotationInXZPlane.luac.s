PROTO_0:
  NAMECALL R1 R0 K0 ["GetComponents"]
  CALL R1 1 12
  LOADN R16 0
  FASTCALL3 VECTOR R6 R16 R12
  MOVE R15 R6
  MOVE R17 R12
  GETIMPORT R14 K3 [Vector3.new]
  CALL R14 3 1
  GETTABLEKS R13 R14 K4 ["Unit"]
  JUMPIFEQ R13 R13 [+2]
  RETURN R0 1
  LOADK R14 K5 [{0, 1, 0}]
  MOVE R16 R13
  NAMECALL R14 R14 K6 ["Cross"]
  CALL R14 2 1
  GETIMPORT R15 K8 [CFrame.new]
  GETTABLEKS R16 R0 K9 ["X"]
  GETTABLEKS R17 R0 K10 ["Y"]
  GETTABLEKS R18 R0 K11 ["Z"]
  GETTABLEKS R19 R14 K9 ["X"]
  LOADK R21 K5 [{0, 1, 0}]
  GETTABLEKS R20 R21 K9 ["X"]
  GETTABLEKS R21 R13 K9 ["X"]
  GETTABLEKS R22 R14 K10 ["Y"]
  LOADK R24 K5 [{0, 1, 0}]
  GETTABLEKS R23 R24 K10 ["Y"]
  GETTABLEKS R24 R13 K10 ["Y"]
  GETTABLEKS R25 R14 K11 ["Z"]
  LOADK R27 K5 [{0, 1, 0}]
  GETTABLEKS R26 R27 K11 ["Z"]
  GETTABLEKS R27 R13 K11 ["Z"]
  CALL R15 12 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
