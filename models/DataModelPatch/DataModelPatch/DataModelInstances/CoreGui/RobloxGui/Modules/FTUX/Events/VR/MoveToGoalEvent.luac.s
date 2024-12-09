PROTO_0:
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Part"]
  CALL R2 1 1
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["Anchored"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["CanCollide"]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["Transparency"]
  GETTABLEKS R6 R1 K7 ["X"]
  GETTABLEKS R7 R0 K7 ["X"]
  SUB R5 R6 R7
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K10 [math.abs]
  CALL R4 1 1
  LOADN R5 1
  GETTABLEKS R8 R1 K11 ["Z"]
  GETTABLEKS R9 R0 K11 ["Z"]
  SUB R7 R8 R9
  FASTCALL1 MATH_ABS R7 [+2]
  GETIMPORT R6 K10 [math.abs]
  CALL R6 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K13 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K14 ["Size"]
  GETTABLEKS R6 R1 K7 ["X"]
  GETTABLEKS R7 R0 K7 ["X"]
  ADD R5 R6 R7
  DIVK R4 R5 K15 [2]
  LOADK R5 K16 [6.3]
  GETTABLEKS R8 R1 K11 ["Z"]
  GETTABLEKS R9 R0 K11 ["Z"]
  ADD R7 R8 R9
  DIVK R6 R7 K15 [2]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K13 [Vector3.new]
  CALL R3 3 1
  SETTABLEKS R3 R2 K17 ["Position"]
  GETIMPORT R3 K19 [workspace]
  SETTABLEKS R3 R2 K20 ["Parent"]
  RETURN R2 1

PROTO_1:
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["Players"]
  GETTABLEKS R3 R0 K3 ["Parent"]
  NAMECALL R1 R1 K4 ["GetPlayerFromCharacter"]
  CALL R1 2 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R2 0
  NAMECALL R2 R2 K5 ["Destroy"]
  CALL R2 1 0
  GETIMPORT R2 K8 [task.wait]
  LOADK R3 K9 [0.2]
  CALL R2 1 0
  GETUPVAL R2 1
  CALL R2 0 0
  GETUPVAL R2 2
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 2
  NAMECALL R2 R2 K10 ["Disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETUPVAL R2 2
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADK R2 K0 [{-8, 6.3, -31}]
  LOADK R3 K1 [{9, 6.3, -49}]
  CALL R1 2 1
  GETIMPORT R2 K4 [task.wait]
  LOADN R3 1
  CALL R2 1 0
  GETTABLEKS R2 R1 K5 ["Touched"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R2 R2 K6 ["Connect"]
  CALL R2 2 1
  SETUPVAL R2 1
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["EventType"]
  CALL R0 1 1
  DUPTABLE R1 K7 [{"Name"}]
  LOADK R2 K8 ["MoveToGoalEvent"]
  SETTABLEKS R2 R1 K6 ["Name"]
  LOADNIL R2
  DUPCLOSURE R3 K9 [PROTO_0]
  NEWCLOSURE R4 P1
  CAPTURE VAL R3
  CAPTURE REF R2
  SETTABLEKS R4 R1 K10 ["StartEvent"]
  NEWCLOSURE R4 P2
  CAPTURE REF R2
  SETTABLEKS R4 R1 K11 ["StopEvent"]
  CLOSEUPVALS R2
  RETURN R1 1
