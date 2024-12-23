PROTO_0:
  LOADNIL R3
  LOADK R4 K0 [9000000000]
  LOADN R7 1
  LENGTH R5 R2
  LOADN R6 1
  FORNPREP R5
  GETTABLE R9 R2 R7
  GETTABLEN R8 R9 2
  JUMPIFNOTEQ R8 R1 [+15]
  GETTABLE R11 R2 R7
  GETTABLEN R10 R11 1
  SUB R9 R0 R10
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K3 [math.abs]
  CALL R8 1 1
  JUMPIFNOTLT R8 R4 [+7]
  MOVE R4 R8
  GETTABLE R9 R2 R7
  GETTABLEN R3 R9 1
  JUMP [+1]
  RETURN R3 1
  FORNLOOP R5
  RETURN R3 1

PROTO_1:
  GETTABLE R3 R2 R0
  JUMPIFEQKNIL R3 [+2]
  RETURN R0 0
  LOADB R3 1
  SETTABLE R3 R2 R0
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R3 R3 K0 ["removeItemFromTable"]
  CALL R3 3 1
  JUMPIFNOT R3 [+1]
  JUMPBACK [-8]
  NAMECALL R3 R0 K1 ["GetChildren"]
  CALL R3 1 1
  LOADN R6 1
  LENGTH R4 R3
  LOADN R5 1
  FORNPREP R4
  GETUPVAL R7 1
  GETTABLE R8 R3 R6
  MOVE R9 R1
  MOVE R10 R2
  CALL R7 3 0
  FORNLOOP R4
  RETURN R0 0

PROTO_2:
  NEWTABLE R1 0 0
  SETUPVAL R1 0
  NEWTABLE R1 0 0
  SETUPVAL R1 1
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["getFilteredSelection"]
  CALL R1 1 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K1 [0] [+2]
  RETURN R0 0
  GETUPVAL R2 3
  NAMECALL R2 R2 K2 ["getGuiObjects"]
  CALL R2 1 1
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+33]
  NEWTABLE R3 0 0
  LOADN R6 1
  LENGTH R4 R1
  LOADN R5 1
  FORNPREP R4
  GETUPVAL R7 4
  GETTABLE R8 R1 R6
  MOVE R9 R2
  MOVE R10 R3
  CALL R7 3 0
  FORNLOOP R4
  LOADN R6 1
  LENGTH R4 R2
  LOADN R5 1
  FORNPREP R4
  GETUPVAL R7 5
  GETTABLE R9 R2 R6
  NAMECALL R7 R7 K3 ["getExtentsFromGui"]
  CALL R7 2 1
  GETUPVAL R9 0
  FASTCALL2 TABLE_INSERT R9 R7 [+4]
  MOVE R10 R7
  GETIMPORT R8 K6 [table.insert]
  CALL R8 2 0
  GETUPVAL R8 1
  GETTABLE R9 R2 R6
  SETTABLE R9 R8 R7
  FORNLOOP R4
  GETUPVAL R4 0
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K7 ["new"]
  GETIMPORT R6 K9 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  GETUPVAL R7 6
  NAMECALL R7 R7 K10 ["getScreenSize"]
  CALL R7 1 -1
  CALL R5 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K6 [table.insert]
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 1
  ADDK R0 R1 K0 [1]
  SETUPVAL R0 0
  LOADN R0 0
  SETUPVAL R0 2
  NEWTABLE R0 0 0
  SETUPVAL R0 3
  RETURN R0 0

PROTO_4:
  GETUPVAL R5 0
  MOVE R7 R0
  MOVE R8 R1
  NAMECALL R5 R5 K0 ["distance"]
  CALL R5 3 1
  SUB R6 R1 R0
  GETUPVAL R7 1
  JUMPIFNOTLT R5 R7 [+20]
  NEWTABLE R7 0 0
  SETUPVAL R7 2
  SETUPVAL R5 1
  SETUPVAL R6 3
  GETUPVAL R8 2
  NEWTABLE R9 0 3
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  SETLIST R9 R10 3 [1]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K3 [table.insert]
  CALL R7 2 0
  RETURN R0 0
  GETUPVAL R7 1
  JUMPIFNOTEQ R5 R7 [+17]
  GETUPVAL R7 3
  JUMPIFNOTEQ R6 R7 [+14]
  GETUPVAL R8 2
  NEWTABLE R9 0 3
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  SETLIST R9 R10 3 [1]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K3 [table.insert]
  CALL R7 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["canSeeThrough"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADN R3 1
  GETUPVAL R4 1
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETUPVAL R5 1
  GETTABLE R4 R5 R3
  JUMPIFNOTEQ R0 R4 [+3]
  LOADB R4 1
  RETURN R4 1
  FORNLOOP R1
  LOADB R1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K0 ["cloneTable"]
  CALL R3 2 1
  MOVE R1 R3
  NEWTABLE R3 0 0
  LOADB R4 0
  LOADB R5 0
  LOADNIL R6
  LOADNIL R7
  NEWTABLE R8 0 0
  NEWCLOSURE R9 P0
  CAPTURE REF R6
  CAPTURE UPVAL U1
  CAPTURE REF R7
  CAPTURE REF R8
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U0
  CAPTURE REF R6
  CAPTURE REF R8
  CAPTURE REF R7
  GETUPVAL R12 2
  LENGTH R11 R12
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+30]
  GETUPVAL R11 3
  NAMECALL R11 R11 K1 ["getFilteredSelection"]
  CALL R11 1 1
  NEWCLOSURE R12 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R11
  LOADN R15 1
  GETUPVAL R16 5
  LENGTH R13 R16
  LOADN R14 1
  FORNPREP R13
  GETUPVAL R17 2
  GETUPVAL R19 5
  GETTABLE R18 R19 R15
  GETTABLE R16 R17 R18
  JUMPIFEQKNIL R16 [+8]
  GETUPVAL R18 5
  GETTABLE R17 R18 R15
  MOVE R19 R16
  MOVE R20 R12
  NAMECALL R17 R17 K2 ["refreshVisibility"]
  CALL R17 3 0
  FORNLOOP R13
  NEWTABLE R13 0 0
  SETUPVAL R13 2
  GETUPVAL R11 6
  MOVE R13 R2
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K3 ["MoveX"]
  NAMECALL R11 R11 K4 ["containsType"]
  CALL R11 3 1
  JUMPIFNOT R11 [+291]
  GETUPVAL R11 1
  ADDK R6 R11 K5 [1]
  LOADN R7 0
  NEWTABLE R8 0 0
  LOADN R13 1
  GETUPVAL R14 5
  LENGTH R11 R14
  LOADN R12 1
  FORNPREP R11
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K6 ["LeftVisible"]
  JUMPIFNOT R14 [+94]
  MOVE R14 R10
  GETTABLEKS R15 R1 K7 ["Left"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K7 ["Left"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K7 ["Left"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K7 ["Left"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  MOVE R14 R10
  GETTABLEKS R15 R1 K19 ["Right"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K7 ["Left"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K7 ["Left"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K7 ["Left"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K20 ["RightVisible"]
  JUMPIFNOT R14 [+94]
  MOVE R14 R10
  GETTABLEKS R15 R1 K7 ["Left"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K19 ["Right"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K19 ["Right"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K19 ["Right"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  MOVE R14 R10
  GETTABLEKS R15 R1 K19 ["Right"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K19 ["Right"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K19 ["Right"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K19 ["Right"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K21 ["CenterVisible"]
  JUMPIFNOT R14 [+55]
  MOVE R14 R10
  GETTABLEKS R16 R1 K22 ["Center"]
  GETTABLEKS R15 R16 K23 ["X"]
  GETUPVAL R19 5
  GETTABLE R18 R19 R13
  GETTABLEKS R17 R18 K22 ["Center"]
  GETTABLEKS R16 R17 K23 ["X"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K22 ["Center"]
  GETTABLEKS R18 R19 K23 ["X"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K22 ["Center"]
  GETTABLEKS R19 R20 K23 ["X"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 8
  CALL R14 5 0
  FORNLOOP R11
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R11 9
  MOVE R13 R1
  GETIMPORT R14 K10 [Vector2.new]
  MOVE R15 R7
  LOADN R16 0
  CALL R14 2 -1
  NAMECALL R11 R11 K25 ["translate"]
  CALL R11 -1 1
  MOVE R1 R11
  GETUPVAL R11 0
  MOVE R13 R3
  MOVE R14 R8
  NAMECALL R11 R11 K26 ["joinTables"]
  CALL R11 3 1
  MOVE R3 R11
  GETUPVAL R11 6
  MOVE R13 R2
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K27 ["MoveY"]
  NAMECALL R11 R11 K4 ["containsType"]
  CALL R11 3 1
  JUMPIFNOT R11 [+291]
  GETUPVAL R11 1
  ADDK R6 R11 K5 [1]
  LOADN R7 0
  NEWTABLE R8 0 0
  LOADN R13 1
  GETUPVAL R14 5
  LENGTH R11 R14
  LOADN R12 1
  FORNPREP R11
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K28 ["TopVisible"]
  JUMPIFNOT R14 [+94]
  MOVE R14 R10
  GETTABLEKS R15 R1 K12 ["Top"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K12 ["Top"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K12 ["Top"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K12 ["Top"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  MOVE R14 R10
  GETTABLEKS R15 R1 K16 ["Bottom"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K12 ["Top"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K12 ["Top"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K12 ["Top"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K29 ["BottomVisible"]
  JUMPIFNOT R14 [+94]
  MOVE R14 R10
  GETTABLEKS R15 R1 K12 ["Top"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K16 ["Bottom"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K16 ["Bottom"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K16 ["Bottom"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  MOVE R14 R10
  GETTABLEKS R15 R1 K16 ["Bottom"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K16 ["Bottom"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K16 ["Bottom"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K16 ["Bottom"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K21 ["CenterVisible"]
  JUMPIFNOT R14 [+55]
  MOVE R14 R10
  GETTABLEKS R16 R1 K22 ["Center"]
  GETTABLEKS R15 R16 K30 ["Y"]
  GETUPVAL R19 5
  GETTABLE R18 R19 R13
  GETTABLEKS R17 R18 K22 ["Center"]
  GETTABLEKS R16 R17 K30 ["Y"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K22 ["Center"]
  GETTABLEKS R19 R20 K30 ["Y"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K22 ["Center"]
  GETTABLEKS R20 R21 K30 ["Y"]
  CALL R18 2 1
  GETUPVAL R19 8
  CALL R14 5 0
  FORNLOOP R11
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R11 9
  MOVE R13 R1
  GETIMPORT R14 K10 [Vector2.new]
  LOADN R15 0
  MOVE R16 R7
  CALL R14 2 -1
  NAMECALL R11 R11 K25 ["translate"]
  CALL R11 -1 1
  MOVE R1 R11
  GETUPVAL R11 0
  MOVE R13 R3
  MOVE R14 R8
  NAMECALL R11 R11 K26 ["joinTables"]
  CALL R11 3 1
  MOVE R3 R11
  GETUPVAL R11 6
  MOVE R13 R2
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K31 ["ResizeXp"]
  NAMECALL R11 R11 K4 ["containsType"]
  CALL R11 3 1
  JUMPIFNOT R11 [+131]
  GETUPVAL R11 1
  ADDK R6 R11 K5 [1]
  LOADN R7 0
  NEWTABLE R8 0 0
  LOADN R13 1
  GETUPVAL R14 5
  LENGTH R11 R14
  LOADN R12 1
  FORNPREP R11
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K6 ["LeftVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K19 ["Right"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K7 ["Left"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K7 ["Left"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K7 ["Left"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K20 ["RightVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K19 ["Right"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K19 ["Right"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K19 ["Right"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K19 ["Right"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  FORNLOOP R11
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R12 R1 K19 ["Right"]
  ADD R11 R12 R7
  SETTABLEKS R11 R1 K19 ["Right"]
  GETUPVAL R11 0
  MOVE R13 R3
  MOVE R14 R8
  NAMECALL R11 R11 K26 ["joinTables"]
  CALL R11 3 1
  MOVE R3 R11
  GETUPVAL R11 6
  MOVE R13 R2
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K32 ["ResizeXn"]
  NAMECALL R11 R11 K4 ["containsType"]
  CALL R11 3 1
  JUMPIFNOT R11 [+131]
  GETUPVAL R11 1
  ADDK R6 R11 K5 [1]
  LOADN R7 0
  NEWTABLE R8 0 0
  LOADN R13 1
  GETUPVAL R14 5
  LENGTH R11 R14
  LOADN R12 1
  FORNPREP R11
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K6 ["LeftVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K7 ["Left"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K7 ["Left"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K7 ["Left"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K7 ["Left"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K20 ["RightVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K7 ["Left"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K19 ["Right"]
  GETIMPORT R17 K10 [Vector2.new]
  GETUPVAL R20 5
  GETTABLE R19 R20 R13
  GETTABLEKS R18 R19 K19 ["Right"]
  GETTABLEKS R21 R1 K12 ["Top"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K12 ["Top"]
  FASTCALL2 MATH_MIN R21 R22 [+3]
  GETIMPORT R20 K15 [math.min]
  CALL R20 2 1
  SUBK R19 R20 K11 [10]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K19 ["Right"]
  GETTABLEKS R22 R1 K16 ["Bottom"]
  GETUPVAL R25 5
  GETTABLE R24 R25 R13
  GETTABLEKS R23 R24 K16 ["Bottom"]
  FASTCALL2 MATH_MAX R22 R23 [+3]
  GETIMPORT R21 K18 [math.max]
  CALL R21 2 1
  ADDK R20 R21 K11 [10]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  FORNLOOP R11
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R12 R1 K7 ["Left"]
  ADD R11 R12 R7
  SETTABLEKS R11 R1 K7 ["Left"]
  GETUPVAL R11 0
  MOVE R13 R3
  MOVE R14 R8
  NAMECALL R11 R11 K26 ["joinTables"]
  CALL R11 3 1
  MOVE R3 R11
  GETUPVAL R11 6
  MOVE R13 R2
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K33 ["ResizeYp"]
  NAMECALL R11 R11 K4 ["containsType"]
  CALL R11 3 1
  JUMPIFNOT R11 [+131]
  GETUPVAL R11 1
  ADDK R6 R11 K5 [1]
  LOADN R7 0
  NEWTABLE R8 0 0
  LOADN R13 1
  GETUPVAL R14 5
  LENGTH R11 R14
  LOADN R12 1
  FORNPREP R11
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K28 ["TopVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K16 ["Bottom"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K12 ["Top"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K12 ["Top"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K12 ["Top"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K29 ["BottomVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K16 ["Bottom"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K16 ["Bottom"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K16 ["Bottom"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K16 ["Bottom"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  FORNLOOP R11
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R12 R1 K16 ["Bottom"]
  ADD R11 R12 R7
  SETTABLEKS R11 R1 K16 ["Bottom"]
  GETUPVAL R11 0
  MOVE R13 R3
  MOVE R14 R8
  NAMECALL R11 R11 K26 ["joinTables"]
  CALL R11 3 1
  MOVE R3 R11
  GETUPVAL R11 6
  MOVE R13 R2
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K34 ["ResizeYn"]
  NAMECALL R11 R11 K4 ["containsType"]
  CALL R11 3 1
  JUMPIFNOT R11 [+131]
  GETUPVAL R11 1
  ADDK R6 R11 K5 [1]
  LOADN R7 0
  NEWTABLE R8 0 0
  LOADN R13 1
  GETUPVAL R14 5
  LENGTH R11 R14
  LOADN R12 1
  FORNPREP R11
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K28 ["TopVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K12 ["Top"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K12 ["Top"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K12 ["Top"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K12 ["Top"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  GETUPVAL R16 5
  GETTABLE R15 R16 R13
  GETTABLEKS R14 R15 K29 ["BottomVisible"]
  JUMPIFNOT R14 [+47]
  MOVE R14 R10
  GETTABLEKS R15 R1 K12 ["Top"]
  GETUPVAL R18 5
  GETTABLE R17 R18 R13
  GETTABLEKS R16 R17 K16 ["Bottom"]
  GETIMPORT R17 K10 [Vector2.new]
  GETTABLEKS R20 R1 K7 ["Left"]
  GETUPVAL R23 5
  GETTABLE R22 R23 R13
  GETTABLEKS R21 R22 K7 ["Left"]
  FASTCALL2 MATH_MIN R20 R21 [+3]
  GETIMPORT R19 K15 [math.min]
  CALL R19 2 1
  SUBK R18 R19 K11 [10]
  GETUPVAL R21 5
  GETTABLE R20 R21 R13
  GETTABLEKS R19 R20 K16 ["Bottom"]
  CALL R17 2 1
  GETIMPORT R18 K10 [Vector2.new]
  GETTABLEKS R21 R1 K19 ["Right"]
  GETUPVAL R24 5
  GETTABLE R23 R24 R13
  GETTABLEKS R22 R23 K19 ["Right"]
  FASTCALL2 MATH_MAX R21 R22 [+3]
  GETIMPORT R20 K18 [math.max]
  CALL R20 2 1
  ADDK R19 R20 K11 [10]
  GETUPVAL R22 5
  GETTABLE R21 R22 R13
  GETTABLEKS R20 R21 K16 ["Bottom"]
  CALL R18 2 1
  GETUPVAL R19 7
  CALL R14 5 0
  FORNLOOP R11
  JUMPIFNOTEQKN R7 K24 [0] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R12 R1 K12 ["Top"]
  ADD R11 R12 R7
  SETTABLEKS R11 R1 K12 ["Top"]
  GETUPVAL R11 0
  MOVE R13 R3
  MOVE R14 R8
  NAMECALL R11 R11 K26 ["joinTables"]
  CALL R11 3 1
  MOVE R3 R11
  MOVE R11 R1
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  CLOSEUPVALS R6
  RETURN R11 4

PROTO_7:
  SETUPVAL R1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Extents2D"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["FFlag"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["GlobalValues"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K8 ["InstanceInfo"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Select"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K10 ["SelectionManager"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Set"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K12 ["Utility"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K13 ["Enum"]
  GETTABLEKS R9 R10 K14 ["SnappingType"]
  CALL R8 1 1
  NEWTABLE R9 0 0
  NEWTABLE R10 0 0
  LOADN R11 1
  DUPCLOSURE R12 K15 [PROTO_0]
  DUPCLOSURE R13 K16 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R13
  NEWTABLE R14 4 0
  NEWCLOSURE R15 P2
  CAPTURE REF R9
  CAPTURE REF R10
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R15 R14 K17 ["generateSnappingLines"]
  GETIMPORT R15 K20 [Color3.new]
  LOADN R16 1
  LOADK R17 K21 [0.0313725490196078]
  LOADK R18 K22 [0.403921568627451]
  CALL R15 3 1
  GETIMPORT R16 K20 [Color3.new]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R16 3 1
  NEWCLOSURE R17 P3
  CAPTURE VAL R7
  CAPTURE REF R11
  CAPTURE REF R10
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE REF R9
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R0
  SETTABLEKS R17 R14 K23 ["snapExtents"]
  NEWCLOSURE R17 P4
  CAPTURE REF R11
  SETTABLEKS R17 R14 K24 ["setThreshold"]
  CLOSEUPVALS R9
  RETURN R14 1
