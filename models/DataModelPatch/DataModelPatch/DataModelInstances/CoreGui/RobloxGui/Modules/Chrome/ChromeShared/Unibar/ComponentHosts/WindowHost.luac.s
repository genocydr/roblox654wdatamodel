PROTO_0:
  LOADNIL R0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["displayOptions"]
  GETTABLEKS R1 R2 K1 ["menuOpen"]
  JUMPIF R1 [+4]
  GETTABLEKS R2 R0 K0 ["displayOptions"]
  GETTABLEKS R1 R2 K2 ["inspectMenuOpen"]
  RETURN R1 1

PROTO_2:
  GETIMPORT R1 K2 [Vector2.new]
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["getValue"]
  CALL R2 1 1
  GETUPVAL R3 1
  NAMECALL R3 R3 K3 ["getValue"]
  CALL R3 1 -1
  CALL R1 -1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["integration"]
  GETTABLEKS R3 R4 K4 ["integration"]
  GETTABLEKS R2 R3 K5 ["windowAnchorPoint"]
  JUMPIF R2 [+2]
  GETIMPORT R2 K7 [Vector2.zero]
  MUL R0 R1 R2
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getValue"]
  CALL R0 1 1
  JUMPIFNOTEQKN R0 K1 [0] [+13]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["instant"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["X"]
  GETTABLEKS R2 R3 K4 ["Offset"]
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["spring"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["X"]
  GETTABLEKS R2 R3 K4 ["Offset"]
  GETUPVAL R3 4
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getValue"]
  CALL R0 1 1
  JUMPIFNOTEQKN R0 K1 [0] [+13]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["instant"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Y"]
  GETTABLEKS R2 R3 K4 ["Offset"]
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["spring"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Y"]
  GETTABLEKS R2 R3 K4 ["Offset"]
  GETUPVAL R3 4
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["Position"]
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R3 2 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETUPVAL R4 2
  SUB R3 R2 R4
  DUPTABLE R4 K3 [{"X", "Y"}]
  GETUPVAL R8 3
  ADD R7 R3 R8
  GETTABLEKS R6 R7 K1 ["X"]
  LOADN R7 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K1 ["X"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K6 [math.clamp]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["X"]
  GETUPVAL R8 3
  ADD R7 R3 R8
  GETTABLEKS R6 R7 K2 ["Y"]
  LOADN R7 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K2 ["Y"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K6 [math.clamp]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Y"]
  GETUPVAL R5 5
  GETIMPORT R6 K9 [UDim2.fromOffset]
  GETTABLEKS R7 R4 K1 ["X"]
  GETTABLEKS R8 R4 K2 ["Y"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["Position"]
  RETURN R0 0

PROTO_6:
  LOADNIL R0
  LOADNIL R1
  GETUPVAL R2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["integration"]
  GETTABLEKS R4 R5 K1 ["id"]
  NAMECALL R2 R2 K2 ["dragConnection"]
  CALL R2 2 1
  GETUPVAL R3 2
  JUMPIFNOT R3 [+1]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R0 R2 K3 ["connection"]
  GETTABLEKS R1 R2 K4 ["inputObject"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["current"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K7 [assert]
  CALL R3 1 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["current"]
  GETTABLEKS R5 R6 K8 ["Parent"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K7 [assert]
  CALL R3 1 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["current"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["current"]
  LOADK R6 K9 ["ScreenGui"]
  NAMECALL R4 R4 K10 ["FindFirstAncestorWhichIsA"]
  CALL R4 2 1
  GETTABLEKS R5 R4 K11 ["AbsoluteSize"]
  JUMPIFEQKNIL R0 [+105]
  SETUPVAL R0 4
  GETUPVAL R6 5
  LOADB R7 1
  CALL R6 1 0
  GETUPVAL R6 4
  JUMPIFNOT R6 [+180]
  GETUPVAL R6 6
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K12 ["instant"]
  LOADN R8 42
  CALL R7 1 1
  CALL R6 1 0
  GETUPVAL R6 8
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K12 ["instant"]
  LOADN R8 42
  CALL R7 1 1
  CALL R6 1 0
  GETIMPORT R6 K15 [task.defer]
  GETUPVAL R7 6
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K16 ["spring"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K17 ["X"]
  GETTABLEKS R9 R10 K18 ["Offset"]
  GETUPVAL R10 10
  CALL R8 2 -1
  CALL R6 -1 0
  GETIMPORT R6 K15 [task.defer]
  GETUPVAL R7 8
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K16 ["spring"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K19 ["Y"]
  GETTABLEKS R9 R10 K18 ["Offset"]
  GETUPVAL R10 10
  CALL R8 2 -1
  CALL R6 -1 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["current"]
  GETTABLEKS R8 R9 K20 ["AbsolutePosition"]
  GETTABLEKS R7 R8 K17 ["X"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K5 ["current"]
  GETTABLEKS R9 R10 K20 ["AbsolutePosition"]
  GETTABLEKS R8 R9 K19 ["Y"]
  LOADN R9 0
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K23 [Vector3.new]
  CALL R6 3 1
  GETUPVAL R7 11
  JUMPIFNOT R7 [+18]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K24 ["default"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["integration"]
  GETTABLEKS R9 R10 K1 ["id"]
  GETIMPORT R10 K26 [Vector2.new]
  GETTABLEKS R11 R6 K17 ["X"]
  GETTABLEKS R12 R6 K19 ["Y"]
  CALL R10 2 -1
  NAMECALL R7 R7 K27 ["setWindowDefaultPosition"]
  CALL R7 -1 0
  GETUPVAL R7 4
  GETUPVAL R9 13
  GETTABLEKS R8 R9 K28 ["InputChanged"]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U14
  CAPTURE REF R1
  CAPTURE VAL R6
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  NAMECALL R8 R8 K29 ["Connect"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K5 ["current"]
  JUMP [+82]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K30 ["position"]
  JUMPIF R6 [+3]
  GETIMPORT R6 K32 [UDim2.new]
  CALL R6 0 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["integration"]
  GETTABLEKS R8 R9 K0 ["integration"]
  GETTABLEKS R7 R8 K33 ["cachePosition"]
  JUMPIFNOT R7 [+41]
  GETUPVAL R7 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["integration"]
  GETTABLEKS R9 R10 K1 ["id"]
  NAMECALL R7 R7 K34 ["windowPosition"]
  CALL R7 2 1
  JUMPIF R7 [+3]
  GETIMPORT R7 K32 [UDim2.new]
  CALL R7 0 1
  GETTABLEKS R10 R7 K17 ["X"]
  GETTABLEKS R9 R10 K35 ["Scale"]
  JUMPIFNOTEQKN R9 K36 [1] [+4]
  GETTABLEKS R8 R5 K17 ["X"]
  JUMP [+1]
  LOADN R8 0
  GETIMPORT R9 K32 [UDim2.new]
  LOADN R10 0
  GETTABLEKS R13 R7 K17 ["X"]
  GETTABLEKS R12 R13 K18 ["Offset"]
  ADD R11 R8 R12
  LOADN R12 0
  GETTABLEKS R14 R7 K19 ["Y"]
  GETTABLEKS R13 R14 K18 ["Offset"]
  CALL R9 4 1
  MOVE R7 R9
  SETTABLEKS R7 R3 K37 ["Position"]
  JUMP [+26]
  GETTABLEKS R9 R6 K17 ["X"]
  GETTABLEKS R8 R9 K35 ["Scale"]
  JUMPIFNOTEQKN R8 K36 [1] [+4]
  GETTABLEKS R7 R5 K17 ["X"]
  JUMP [+1]
  LOADN R7 0
  GETIMPORT R8 K32 [UDim2.new]
  LOADN R9 0
  GETTABLEKS R12 R6 K17 ["X"]
  GETTABLEKS R11 R12 K18 ["Offset"]
  ADD R10 R7 R11
  LOADN R11 0
  GETTABLEKS R13 R6 K19 ["Y"]
  GETTABLEKS R12 R13 K18 ["Offset"]
  CALL R8 4 1
  SETTABLEKS R8 R3 K37 ["Position"]
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["integration"]
  GETTABLEKS R2 R3 K0 ["integration"]
  GETTABLEKS R1 R2 K1 ["cachePosition"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["integration"]
  GETTABLEKS R3 R4 K2 ["id"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["updateWindowPosition"]
  CALL R1 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VREnabled"]
  JUMPIF R0 [+9]
  LOADB R0 1
  SETUPVAL R0 1
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["push"]
  GETUPVAL R1 3
  GETIMPORT R2 K5 [Enum.OverrideMouseIconBehavior.ForceShow]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["pop"]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K0 ["Position"]
  GETUPVAL R4 2
  SUB R3 R2 R4
  GETUPVAL R4 3
  JUMPIFNOT R4 [+5]
  GETUPVAL R4 4
  GETTABLEKS R5 R3 K1 ["Magnitude"]
  ADD R4 R4 R5
  SETUPVAL R4 4
  GETUPVAL R4 3
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 4
  GETUPVAL R5 5
  JUMPIFNOTLT R5 R4 [+79]
  GETUPVAL R4 6
  LOADB R5 1
  CALL R4 1 0
  DUPTABLE R4 K4 [{"X", "Y"}]
  GETUPVAL R8 7
  ADD R7 R3 R8
  GETTABLEKS R6 R7 K2 ["X"]
  GETUPVAL R8 8
  GETTABLEKS R7 R8 K2 ["X"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K2 ["X"]
  GETUPVAL R11 10
  NAMECALL R11 R11 K5 ["getValue"]
  CALL R11 1 1
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K2 ["X"]
  SUB R10 R11 R12
  SUB R8 R9 R10
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K8 [math.clamp]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["X"]
  GETUPVAL R8 7
  ADD R7 R3 R8
  GETTABLEKS R6 R7 K3 ["Y"]
  GETUPVAL R8 8
  GETTABLEKS R7 R8 K3 ["Y"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K3 ["Y"]
  GETUPVAL R11 11
  NAMECALL R11 R11 K5 ["getValue"]
  CALL R11 1 1
  GETUPVAL R13 8
  GETTABLEKS R12 R13 K3 ["Y"]
  SUB R10 R11 R12
  SUB R8 R9 R10
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K8 [math.clamp]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Y"]
  GETUPVAL R5 12
  GETIMPORT R6 K11 [UDim2.fromOffset]
  GETTABLEKS R7 R4 K2 ["X"]
  GETTABLEKS R8 R4 K3 ["Y"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["Position"]
  GETUPVAL R5 13
  JUMPIFNOT R5 [+12]
  GETUPVAL R6 14
  GETTABLEKS R5 R6 K12 ["default"]
  GETUPVAL R9 15
  GETTABLEKS R8 R9 K13 ["integration"]
  GETTABLEKS R7 R8 K14 ["id"]
  MOVE R8 R2
  NAMECALL R5 R5 K15 ["onWindowDrag"]
  CALL R5 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["current"]
  GETTABLEKS R4 R5 K3 ["Parent"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K2 [assert]
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  LOADK R5 K4 ["ScreenGui"]
  NAMECALL R3 R3 K5 ["FindFirstAncestorWhichIsA"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K6 ["AbsoluteSize"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMP [+25]
  GETIMPORT R6 K9 [Vector2.new]
  GETUPVAL R7 3
  NAMECALL R7 R7 K10 ["getValue"]
  CALL R7 1 1
  GETUPVAL R8 4
  NAMECALL R8 R8 K10 ["getValue"]
  CALL R8 1 -1
  CALL R6 -1 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K11 ["integration"]
  GETTABLEKS R8 R9 K11 ["integration"]
  GETTABLEKS R7 R8 K12 ["windowAnchorPoint"]
  JUMPIF R7 [+5]
  GETIMPORT R7 K9 [Vector2.new]
  LOADK R8 K13 [0.5]
  LOADK R9 K13 [0.5]
  CALL R7 2 1
  MUL R5 R6 R7
  GETTABLEKS R6 R1 K14 ["Position"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["current"]
  GETTABLEKS R10 R11 K15 ["AbsolutePosition"]
  GETTABLEKS R9 R10 K16 ["X"]
  GETTABLEKS R10 R5 K16 ["X"]
  ADD R8 R9 R10
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["current"]
  GETTABLEKS R11 R12 K15 ["AbsolutePosition"]
  GETTABLEKS R10 R11 K17 ["Y"]
  GETTABLEKS R11 R5 K17 ["Y"]
  ADD R9 R10 R11
  LOADN R10 0
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K19 [Vector3.new]
  CALL R7 3 1
  GETTABLEKS R8 R1 K20 ["UserInputType"]
  GETIMPORT R9 K23 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R8 R9 [+7]
  GETTABLEKS R8 R1 K20 ["UserInputType"]
  GETIMPORT R9 K25 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R8 R9 [+114]
  GETUPVAL R8 6
  JUMPIFNOT R8 [+28]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K26 ["default"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K11 ["integration"]
  GETTABLEKS R10 R11 K27 ["id"]
  GETIMPORT R11 K9 [Vector2.new]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["current"]
  GETTABLEKS R13 R14 K15 ["AbsolutePosition"]
  GETTABLEKS R12 R13 K16 ["X"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["current"]
  GETTABLEKS R14 R15 K15 ["AbsolutePosition"]
  GETTABLEKS R13 R14 K17 ["Y"]
  CALL R11 2 -1
  NAMECALL R8 R8 K28 ["onWindowTouchBegan"]
  CALL R8 -1 0
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K0 ["current"]
  JUMPIF R8 [+79]
  GETUPVAL R8 9
  NAMECALL R8 R8 K10 ["getValue"]
  CALL R8 1 1
  JUMPIF R8 [+74]
  DUPTABLE R8 K29 [{"X", "Y"}]
  GETTABLEKS R10 R7 K16 ["X"]
  LOADN R11 0
  GETTABLEKS R13 R4 K16 ["X"]
  GETUPVAL R15 3
  NAMECALL R15 R15 K10 ["getValue"]
  CALL R15 1 1
  GETTABLEKS R16 R5 K16 ["X"]
  SUB R14 R15 R16
  SUB R12 R13 R14
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R9 K32 [math.clamp]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["X"]
  GETTABLEKS R10 R7 K17 ["Y"]
  LOADN R11 0
  GETTABLEKS R13 R4 K17 ["Y"]
  GETUPVAL R15 4
  NAMECALL R15 R15 K10 ["getValue"]
  CALL R15 1 1
  GETTABLEKS R16 R5 K17 ["Y"]
  SUB R14 R15 R16
  SUB R12 R13 R14
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R9 K32 [math.clamp]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Y"]
  GETIMPORT R9 K35 [UDim2.fromOffset]
  GETTABLEKS R10 R8 K16 ["X"]
  GETTABLEKS R11 R8 K17 ["Y"]
  CALL R9 2 1
  SETTABLEKS R9 R2 K14 ["Position"]
  GETUPVAL R9 8
  GETUPVAL R11 10
  GETTABLEKS R10 R11 K36 ["InputChanged"]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  NAMECALL R10 R10 K37 ["Connect"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K0 ["current"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["Parent"]
  GETTABLEKS R4 R0 K1 ["Position"]
  GETTABLEKS R3 R4 K2 ["X"]
  GETTABLEKS R2 R3 K3 ["Offset"]
  GETTABLEKS R5 R0 K1 ["Position"]
  GETTABLEKS R4 R5 K4 ["Y"]
  GETTABLEKS R3 R4 K3 ["Offset"]
  GETUPVAL R5 0
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMP [+25]
  GETIMPORT R5 K7 [Vector2.new]
  GETUPVAL R6 2
  NAMECALL R6 R6 K8 ["getValue"]
  CALL R6 1 1
  GETUPVAL R7 3
  NAMECALL R7 R7 K8 ["getValue"]
  CALL R7 1 -1
  CALL R5 -1 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K9 ["integration"]
  GETTABLEKS R7 R8 K9 ["integration"]
  GETTABLEKS R6 R7 K10 ["windowAnchorPoint"]
  JUMPIF R6 [+5]
  GETIMPORT R6 K7 [Vector2.new]
  LOADK R7 K11 [0.5]
  LOADK R8 K11 [0.5]
  CALL R6 2 1
  MUL R4 R5 R6
  GETTABLEKS R5 R1 K12 ["AbsoluteSize"]
  LOADB R6 1
  GETTABLEKS R7 R4 K2 ["X"]
  JUMPIFLT R2 R7 [+33]
  LOADB R6 1
  GETTABLEKS R8 R5 K2 ["X"]
  GETUPVAL R10 2
  NAMECALL R10 R10 K8 ["getValue"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K2 ["X"]
  SUB R9 R10 R11
  SUB R7 R8 R9
  JUMPIFLT R7 R2 [+20]
  LOADB R6 1
  GETTABLEKS R7 R4 K4 ["Y"]
  JUMPIFLT R3 R7 [+15]
  GETTABLEKS R8 R5 K4 ["Y"]
  GETUPVAL R10 3
  NAMECALL R10 R10 K8 ["getValue"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K4 ["Y"]
  SUB R9 R10 R11
  SUB R7 R8 R9
  JUMPIFLT R7 R3 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  RETURN R6 1

PROTO_13:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 1
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R1 1
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["current"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["current"]
  GETTABLEKS R3 R4 K3 ["Parent"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R4 R1 K4 ["Position"]
  GETTABLEKS R3 R4 K5 ["X"]
  GETTABLEKS R2 R3 K6 ["Offset"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R4 R5 K7 ["Y"]
  GETTABLEKS R3 R4 K6 ["Offset"]
  GETUPVAL R4 2
  JUMPIFNOT R4 [+11]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["PlaybackState"]
  GETIMPORT R5 K11 [Enum.PlaybackState.Playing]
  JUMPIFNOTEQ R4 R5 [+5]
  GETUPVAL R4 2
  NAMECALL R4 R4 K12 ["Cancel"]
  CALL R4 1 0
  GETUPVAL R4 3
  MOVE R5 R1
  CALL R4 1 1
  JUMPIFNOT R4 [+155]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["current"]
  GETTABLEKS R4 R5 K3 ["Parent"]
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+3]
  GETUPVAL R5 5
  CALL R5 0 1
  JUMP [+25]
  GETIMPORT R6 K15 [Vector2.new]
  GETUPVAL R7 6
  NAMECALL R7 R7 K16 ["getValue"]
  CALL R7 1 1
  GETUPVAL R8 7
  NAMECALL R8 R8 K16 ["getValue"]
  CALL R8 1 -1
  CALL R6 -1 1
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K17 ["integration"]
  GETTABLEKS R8 R9 K17 ["integration"]
  GETTABLEKS R7 R8 K18 ["windowAnchorPoint"]
  JUMPIF R7 [+5]
  GETIMPORT R7 K15 [Vector2.new]
  LOADK R8 K19 [0.5]
  LOADK R9 K19 [0.5]
  CALL R7 2 1
  MUL R5 R6 R7
  GETTABLEKS R6 R4 K20 ["AbsoluteSize"]
  LOADN R7 0
  LOADN R8 0
  GETTABLEKS R9 R6 K5 ["X"]
  GETUPVAL R10 6
  NAMECALL R10 R10 K16 ["getValue"]
  CALL R10 1 1
  JUMPIFNOTLT R10 R9 [+20]
  GETTABLEKS R11 R5 K5 ["X"]
  GETTABLEKS R13 R6 K5 ["X"]
  GETUPVAL R15 6
  NAMECALL R15 R15 K16 ["getValue"]
  CALL R15 1 1
  GETTABLEKS R16 R5 K5 ["X"]
  SUB R14 R15 R16
  SUB R12 R13 R14
  FASTCALL3 MATH_CLAMP R2 R11 R12
  MOVE R10 R2
  GETIMPORT R9 K23 [math.clamp]
  CALL R9 3 1
  MOVE R7 R9
  GETTABLEKS R9 R6 K7 ["Y"]
  GETUPVAL R10 7
  NAMECALL R10 R10 K16 ["getValue"]
  CALL R10 1 1
  JUMPIFNOTLT R10 R9 [+20]
  GETTABLEKS R11 R5 K7 ["Y"]
  GETTABLEKS R13 R6 K7 ["Y"]
  GETUPVAL R15 7
  NAMECALL R15 R15 K16 ["getValue"]
  CALL R15 1 1
  GETTABLEKS R16 R5 K7 ["Y"]
  SUB R14 R15 R16
  SUB R12 R13 R14
  FASTCALL3 MATH_CLAMP R3 R11 R12
  MOVE R10 R3
  GETIMPORT R9 K23 [math.clamp]
  CALL R9 3 1
  MOVE R8 R9
  GETIMPORT R9 K25 [UDim2.new]
  LOADN R10 0
  MOVE R11 R7
  LOADN R12 0
  MOVE R13 R8
  CALL R9 4 1
  GETUPVAL R10 9
  MOVE R11 R9
  CALL R10 1 0
  JUMPIF R0 [+44]
  GETUPVAL R10 10
  LOADB R11 1
  CALL R10 1 0
  GETIMPORT R10 K27 [TweenInfo.new]
  LOADK R11 K28 [0.35]
  GETIMPORT R12 K31 [Enum.EasingStyle.Quad]
  GETIMPORT R13 K34 [Enum.EasingDirection.InOut]
  CALL R10 3 1
  GETUPVAL R11 11
  MOVE R13 R1
  MOVE R14 R10
  DUPTABLE R15 K35 [{"Position"}]
  SETTABLEKS R9 R15 K4 ["Position"]
  NAMECALL R11 R11 K36 ["Create"]
  CALL R11 4 1
  SETUPVAL R11 2
  GETUPVAL R13 2
  JUMPIFNOTEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  FASTCALL1 ASSERT R12 [+2]
  GETIMPORT R11 K2 [assert]
  CALL R11 1 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K37 ["Completed"]
  NEWCLOSURE R13 P0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U2
  NAMECALL R11 R11 K38 ["Connect"]
  CALL R11 2 0
  GETUPVAL R11 2
  NAMECALL R11 R11 K39 ["Play"]
  CALL R11 1 0
  RETURN R0 0
  SETTABLEKS R9 R1 K4 ["Position"]
  RETURN R0 0
  GETUPVAL R4 9
  GETIMPORT R5 K25 [UDim2.new]
  LOADN R6 0
  MOVE R7 R2
  LOADN R8 0
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+2]
  LOADN R2 0
  SETUPVAL R2 1
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R2 R3 [+7]
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+69]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["current"]
  JUMPIFNOT R2 [+35]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+33]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["default"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K8 ["integration"]
  GETTABLEKS R4 R5 K9 ["id"]
  GETIMPORT R5 K12 [Vector2.new]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["current"]
  GETTABLEKS R7 R8 K13 ["AbsolutePosition"]
  GETTABLEKS R6 R7 K14 ["X"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["current"]
  GETTABLEKS R8 R9 K13 ["AbsolutePosition"]
  GETTABLEKS R7 R8 K15 ["Y"]
  CALL R5 2 1
  GETUPVAL R6 6
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["current"]
  CALL R6 1 1
  NAMECALL R2 R2 K16 ["onWindowTouchEnded"]
  CALL R2 4 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K6 ["current"]
  JUMPIFNOT R2 [+25]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K6 ["current"]
  NAMECALL R2 R2 K17 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 7
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["current"]
  GETUPVAL R2 8
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R2 9
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K8 ["integration"]
  GETTABLEKS R4 R5 K9 ["id"]
  LOADNIL R5
  NAMECALL R2 R2 K18 ["gesture"]
  CALL R2 3 0
  GETUPVAL R2 10
  CALL R2 0 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  LOADB R2 1
  CALL R1 1 0
  GETIMPORT R1 K2 [UDim2.fromOffset]
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  CALL R1 2 -1
  RETURN R1 -1

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["integration"]
  GETTABLEKS R2 R3 K0 ["integration"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useRef"]
  LOADNIL R4
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useBinding"]
  LOADB R5 0
  CALL R4 1 2
  LOADN R6 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["useMemo"]
  DUPCLOSURE R8 K4 [PROTO_0]
  NEWTABLE R9 0 0
  CALL R7 2 1
  GETUPVAL R9 2
  JUMPIFNOT R9 [+4]
  GETUPVAL R8 3
  DUPCLOSURE R9 K5 [PROTO_1]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["useBinding"]
  LOADB R10 0
  CALL R9 1 2
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K6 ["useAnimatedBinding"]
  GETTABLEKS R13 R1 K7 ["X"]
  GETTABLEKS R12 R13 K8 ["Offset"]
  CALL R11 1 2
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K6 ["useAnimatedBinding"]
  GETTABLEKS R15 R1 K9 ["Y"]
  GETTABLEKS R14 R15 K8 ["Offset"]
  CALL R13 1 2
  GETUPVAL R16 5
  CALL R16 0 1
  JUMPIFNOT R16 [+17]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K10 ["useCallback"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R0
  NEWTABLE R17 0 3
  MOVE R18 R11
  MOVE R19 R13
  GETTABLEKS R20 R0 K0 ["integration"]
  SETLIST R17 R18 3 [1]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K11 ["useEffect"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  NEWTABLE R18 0 1
  GETTABLEKS R20 R1 K7 ["X"]
  GETTABLEKS R19 R20 K8 ["Offset"]
  SETLIST R18 R19 1 [1]
  CALL R16 2 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K11 ["useEffect"]
  NEWCLOSURE R17 P4
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  NEWTABLE R18 0 1
  GETTABLEKS R20 R1 K9 ["Y"]
  GETTABLEKS R19 R20 K8 ["Offset"]
  SETLIST R18 R19 1 [1]
  CALL R16 2 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K11 ["useEffect"]
  NEWCLOSURE R17 P5
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE VAL R2
  CAPTURE REF R3
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE UPVAL U4
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  NEWTABLE R18 0 0
  CALL R16 2 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["useCallback"]
  NEWCLOSURE R17 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  NEWTABLE R18 0 1
  GETTABLEKS R19 R0 K0 ["integration"]
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  GETUPVAL R18 13
  CALL R18 0 1
  JUMPIFNOT R18 [+10]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["useCallback"]
  NEWCLOSURE R18 P7
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CALL R17 1 1
  JUMP [+1]
  LOADNIL R17
  GETUPVAL R19 13
  CALL R19 0 1
  JUMPIFNOT R19 [+9]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K10 ["useCallback"]
  NEWCLOSURE R19 P8
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CALL R18 1 1
  JUMP [+1]
  LOADNIL R18
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K10 ["useCallback"]
  NEWCLOSURE R20 P9
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE REF R3
  CAPTURE VAL R9
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U18
  CAPTURE REF R6
  CAPTURE UPVAL U19
  CAPTURE VAL R5
  NEWTABLE R21 0 1
  MOVE R22 R15
  SETLIST R21 R22 1 [1]
  CALL R19 2 1
  NEWCLOSURE R20 P10
  CAPTURE UPVAL U5
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R0
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K10 ["useCallback"]
  NEWCLOSURE R22 P11
  CAPTURE UPVAL U20
  CAPTURE VAL R2
  CAPTURE REF R7
  CAPTURE VAL R20
  CAPTURE UPVAL U5
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE UPVAL U21
  NEWTABLE R23 0 1
  MOVE R24 R15
  SETLIST R23 R24 1 [1]
  CALL R21 2 1
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K10 ["useCallback"]
  NEWCLOSURE R23 P12
  CAPTURE UPVAL U18
  CAPTURE REF R6
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE VAL R20
  CAPTURE REF R3
  CAPTURE VAL R5
  CAPTURE UPVAL U7
  CAPTURE VAL R21
  NEWTABLE R24 0 0
  CALL R22 2 1
  GETUPVAL R23 22
  GETUPVAL R25 23
  GETTABLEKS R24 R25 K12 ["createPortal"]
  DUPTABLE R25 K14 [{"Name"}]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K15 ["createElement"]
  LOADK R27 K16 ["ScreenGui"]
  NEWTABLE R28 4 0
  GETUPVAL R33 24
  GETTABLEKS R30 R33 K17 ["WINDOW_HOST_GUI_NAME"]
  LOADK R31 K18 [":"]
  GETTABLEKS R33 R0 K0 ["integration"]
  GETTABLEKS R32 R33 K19 ["id"]
  CONCAT R29 R30 R32
  SETTABLEKS R29 R28 K13 ["Name"]
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K20 ["Change"]
  GETTABLEKS R29 R30 K21 ["AbsoluteSize"]
  GETUPVAL R30 25
  NEWCLOSURE R31 P13
  CAPTURE VAL R21
  LOADK R32 K22 [0.2]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  GETUPVAL R30 2
  JUMPIF R30 [+2]
  LOADN R29 100
  JUMP [+4]
  JUMPIFNOT R8 [+2]
  LOADN R29 255
  JUMP [+1]
  MOVE R29 R23
  SETTABLEKS R29 R28 K23 ["DisplayOrder"]
  GETIMPORT R29 K27 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R29 R28 K25 ["ZIndexBehavior"]
  DUPTABLE R29 K29 [{"WindowFrame"}]
  GETUPVAL R31 1
  GETTABLEKS R30 R31 K15 ["createElement"]
  LOADK R31 K30 ["Frame"]
  DUPTABLE R32 K37 [{"Size", "LayoutOrder", "ref", "BorderSizePixel", "AnchorPoint", "BackgroundTransparency"}]
  GETUPVAL R34 1
  GETTABLEKS R33 R34 K38 ["joinBindings"]
  NEWTABLE R34 0 2
  MOVE R35 R11
  MOVE R36 R13
  SETLIST R34 R35 2 [1]
  CALL R33 1 1
  NEWCLOSURE R35 P14
  CAPTURE VAL R21
  NAMECALL R33 R33 K39 ["map"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K31 ["Size"]
  LOADN R33 1
  SETTABLEKS R33 R32 K32 ["LayoutOrder"]
  SETTABLEKS R2 R32 K33 ["ref"]
  LOADN R33 0
  SETTABLEKS R33 R32 K34 ["BorderSizePixel"]
  GETTABLEKS R36 R0 K0 ["integration"]
  GETTABLEKS R35 R36 K0 ["integration"]
  GETTABLEKS R34 R35 K40 ["windowAnchorPoint"]
  JUMPIFNOT R34 [+7]
  GETTABLEKS R35 R0 K0 ["integration"]
  GETTABLEKS R34 R35 K0 ["integration"]
  GETTABLEKS R33 R34 K40 ["windowAnchorPoint"]
  JUMP [+10]
  GETUPVAL R34 5
  CALL R34 0 1
  JUMPIFNOT R34 [+2]
  LOADNIL R33
  JUMP [+5]
  GETIMPORT R33 K43 [Vector2.new]
  LOADK R34 K44 [0.5]
  LOADK R35 K44 [0.5]
  CALL R33 2 1
  SETTABLEKS R33 R32 K35 ["AnchorPoint"]
  LOADN R33 1
  SETTABLEKS R33 R32 K36 ["BackgroundTransparency"]
  DUPTABLE R33 K46 [{"WindowWrapper"}]
  GETUPVAL R35 1
  GETTABLEKS R34 R35 K15 ["createElement"]
  LOADK R35 K30 ["Frame"]
  DUPTABLE R36 K47 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R37 K49 [UDim2.new]
  LOADN R38 1
  LOADN R39 0
  LOADN R40 1
  LOADN R41 0
  CALL R37 4 1
  SETTABLEKS R37 R36 K31 ["Size"]
  LOADN R37 1
  SETTABLEKS R37 R36 K36 ["BackgroundTransparency"]
  LOADN R37 0
  SETTABLEKS R37 R36 K34 ["BorderSizePixel"]
  DUPTABLE R37 K53 [{"Integration", "InputShield", "InputWrapper"}]
  GETTABLEKS R40 R0 K0 ["integration"]
  GETTABLEKS R39 R40 K55 ["component"]
  MOVE R40 R0
  CALL R39 1 1
  ORK R38 R39 K54 []
  SETTABLEKS R38 R37 K50 ["Integration"]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K15 ["createElement"]
  GETUPVAL R39 26
  DUPTABLE R40 K58 [{"ZIndex", "Size", "BackgroundTransparency", "Visible"}]
  GETUPVAL R42 27
  GETTABLEKS R41 R42 K59 ["INPUT_SHIELD"]
  SETTABLEKS R41 R40 K56 ["ZIndex"]
  GETIMPORT R41 K61 [UDim2.fromScale]
  LOADN R42 1
  LOADN R43 1
  CALL R41 2 1
  SETTABLEKS R41 R40 K31 ["Size"]
  LOADN R41 1
  SETTABLEKS R41 R40 K36 ["BackgroundTransparency"]
  SETTABLEKS R4 R40 K57 ["Visible"]
  CALL R38 2 1
  SETTABLEKS R38 R37 K51 ["InputShield"]
  GETUPVAL R39 1
  GETTABLEKS R38 R39 K15 ["createElement"]
  LOADK R39 K30 ["Frame"]
  NEWTABLE R40 8 0
  GETUPVAL R42 27
  GETTABLEKS R41 R42 K62 ["INPUT_WRAPPER"]
  SETTABLEKS R41 R40 K56 ["ZIndex"]
  GETIMPORT R41 K61 [UDim2.fromScale]
  LOADN R42 1
  LOADN R43 1
  CALL R41 2 1
  SETTABLEKS R41 R40 K31 ["Size"]
  LOADN R41 1
  SETTABLEKS R41 R40 K36 ["BackgroundTransparency"]
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K63 ["Event"]
  GETTABLEKS R41 R42 K64 ["InputBegan"]
  SETTABLE R19 R40 R41
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K63 ["Event"]
  GETTABLEKS R41 R42 K65 ["InputEnded"]
  SETTABLE R22 R40 R41
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K63 ["Event"]
  GETTABLEKS R41 R42 K66 ["MouseEnter"]
  GETUPVAL R43 13
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  MOVE R42 R17
  JUMP [+1]
  LOADNIL R42
  SETTABLE R42 R40 R41
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K63 ["Event"]
  GETTABLEKS R41 R42 K67 ["MouseLeave"]
  GETUPVAL R43 13
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  MOVE R42 R18
  JUMP [+1]
  LOADNIL R42
  SETTABLE R42 R40 R41
  GETUPVAL R43 1
  GETTABLEKS R42 R43 K63 ["Event"]
  GETTABLEKS R41 R42 K68 ["Destroying"]
  GETUPVAL R43 13
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  MOVE R42 R18
  JUMP [+1]
  LOADNIL R42
  SETTABLE R42 R40 R41
  CALL R38 2 1
  SETTABLEKS R38 R37 K52 ["InputWrapper"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K45 ["WindowWrapper"]
  CALL R30 3 1
  SETTABLEKS R30 R29 K28 ["WindowFrame"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K13 ["Name"]
  GETUPVAL R26 28
  CALL R24 2 -1
  CLOSEUPVALS R3
  RETURN R24 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ChromeShared"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [game]
  LOADK R6 K13 ["CoreGui"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K5 [game]
  LOADK R7 K14 ["UserInputService"]
  NAMECALL R5 R5 K7 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K5 [game]
  LOADK R8 K15 ["TweenService"]
  NAMECALL R6 R6 K7 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K5 [game]
  LOADK R9 K16 ["VRService"]
  NAMECALL R7 R7 K7 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R1 K10 ["Packages"]
  GETTABLEKS R9 R10 K17 ["ReactOtter"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R1 K10 ["Packages"]
  GETTABLEKS R10 R11 K18 ["UIBlox"]
  CALL R9 1 1
  GETTABLEKS R12 R9 K19 ["Core"]
  GETTABLEKS R11 R12 K20 ["Control"]
  GETTABLEKS R10 R11 K21 ["Interactable"]
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R1 K22 ["InGameServices"]
  GETTABLEKS R12 R13 K23 ["MouseIconOverrideService"]
  CALL R11 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K24 ["Workspace"]
  GETTABLEKS R15 R16 K10 ["Packages"]
  GETTABLEKS R14 R15 K25 ["AppCommonLib"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K26 ["Symbol"]
  GETTABLEKS R13 R12 K27 ["named"]
  LOADK R14 K28 ["SelfieViewCursorOverride"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K29 ["Utility"]
  GETTABLEKS R15 R16 K30 ["debounce"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R16 R0 K31 ["Service"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R0 K32 ["Unibar"]
  GETTABLEKS R17 R18 K33 ["Constants"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R19 R0 K31 ["Service"]
  GETTABLEKS R18 R19 K34 ["Types"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R20 R0 K35 ["Analytics"]
  GETTABLEKS R19 R20 K36 ["ChromeAnalytics"]
  CALL R18 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R1 K24 ["Workspace"]
  GETTABLEKS R22 R23 K10 ["Packages"]
  GETTABLEKS R21 R22 K37 ["SharedFlags"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K38 ["GetFFlagEnableChromeAnalytics"]
  CALL R19 0 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R1 K24 ["Workspace"]
  GETTABLEKS R23 R24 K10 ["Packages"]
  GETTABLEKS R22 R23 K37 ["SharedFlags"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K39 ["GetFFlagSelfViewFixes"]
  CALL R20 0 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R1 K24 ["Workspace"]
  GETTABLEKS R24 R25 K10 ["Packages"]
  GETTABLEKS R23 R24 K37 ["SharedFlags"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K40 ["GetFFlagWindowFixes"]
  CALL R21 0 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R24 R0 K29 ["Utility"]
  GETTABLEKS R23 R24 K41 ["shouldRejectMultiTouch"]
  CALL R22 1 1
  GETIMPORT R26 K9 [require]
  GETTABLEKS R29 R1 K24 ["Workspace"]
  GETTABLEKS R28 R29 K10 ["Packages"]
  GETTABLEKS R27 R28 K42 ["RoactUtils"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K43 ["Hooks"]
  GETTABLEKS R24 R25 K44 ["RoactRodux"]
  GETTABLEKS R23 R24 K45 ["useSelector"]
  GETIMPORT R25 K9 [require]
  GETTABLEKS R28 R1 K24 ["Workspace"]
  GETTABLEKS R27 R28 K10 ["Packages"]
  GETTABLEKS R26 R27 K37 ["SharedFlags"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K46 ["GetFFlagSelfViewAssertFix"]
  GETIMPORT R26 K9 [require]
  GETTABLEKS R29 R1 K24 ["Workspace"]
  GETTABLEKS R28 R29 K10 ["Packages"]
  GETTABLEKS R27 R28 K37 ["SharedFlags"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K47 ["GetFFlagSelfieViewMoreFixMigration"]
  GETIMPORT R26 K5 [game]
  LOADK R28 K48 ["ChromeWindowLayoutOrder"]
  LOADN R29 2
  NAMECALL R26 R26 K49 ["DefineFastInt"]
  CALL R26 3 1
  GETIMPORT R27 K5 [game]
  LOADK R29 K50 ["WindowDragDetection"]
  LOADB R30 0
  NAMECALL R27 R27 K51 ["DefineFastFlag"]
  CALL R27 3 1
  GETIMPORT R28 K5 [game]
  LOADK R30 K52 ["WindowMinDragDistance"]
  LOADN R31 25
  NAMECALL R28 R28 K49 ["DefineFastInt"]
  CALL R28 3 1
  GETIMPORT R30 K9 [require]
  GETTABLEKS R33 R1 K24 ["Workspace"]
  GETTABLEKS R32 R33 K10 ["Packages"]
  GETTABLEKS R31 R32 K37 ["SharedFlags"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K53 ["GetFFlagChromeDefaultWindowStartingPosition"]
  GETIMPORT R30 K9 [require]
  GETTABLEKS R32 R0 K43 ["Hooks"]
  GETTABLEKS R31 R32 K54 ["useWindowSize"]
  CALL R30 1 1
  DUPTABLE R31 K57 [{"dampingRatio", "frequency"}]
  LOADN R32 1
  SETTABLEKS R32 R31 K55 ["dampingRatio"]
  LOADN R32 3
  SETTABLEKS R32 R31 K56 ["frequency"]
  DUPTABLE R32 K62 [{"INTEGRATION", "CLOSE_BUTTON", "INPUT_SHIELD", "INPUT_WRAPPER"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K58 ["INTEGRATION"]
  LOADN R33 2
  SETTABLEKS R33 R32 K59 ["CLOSE_BUTTON"]
  LOADN R33 3
  SETTABLEKS R33 R32 K60 ["INPUT_SHIELD"]
  LOADN R33 4
  SETTABLEKS R33 R32 K61 ["INPUT_WRAPPER"]
  LOADB R33 0
  NEWCLOSURE R34 P0
  CAPTURE VAL R30
  CAPTURE VAL R2
  CAPTURE VAL R20
  CAPTURE VAL R23
  CAPTURE VAL R8
  CAPTURE VAL R29
  CAPTURE VAL R31
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R7
  CAPTURE REF R33
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R24
  CAPTURE VAL R6
  CAPTURE VAL R26
  CAPTURE VAL R3
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R32
  CAPTURE VAL R4
  CLOSEUPVALS R33
  RETURN R34 1