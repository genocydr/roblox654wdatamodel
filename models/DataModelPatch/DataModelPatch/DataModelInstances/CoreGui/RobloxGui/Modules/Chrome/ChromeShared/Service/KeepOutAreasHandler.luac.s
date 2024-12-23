PROTO_0:
  NEWTABLE R3 0 0
  GETTABLEKS R4 R0 K0 ["X"]
  GETTABLEKS R5 R0 K1 ["Y"]
  GETTABLEKS R6 R1 K0 ["X"]
  GETTABLEKS R7 R1 K1 ["Y"]
  SUB R8 R7 R5
  MOVE R9 R4
  LOADN R10 0
  GETIMPORT R11 K3 [ipairs]
  MOVE R12 R2
  CALL R11 1 3
  FORGPREP_INEXT R11
  ADD R16 R9 R10
  GETTABLEKS R19 R15 K4 ["position"]
  GETTABLEKS R18 R19 K0 ["X"]
  SUB R17 R18 R16
  DUPTABLE R20 K7 [{"Position", "Size"}]
  DUPTABLE R21 K8 [{"X", "Y"}]
  SETTABLEKS R16 R21 K0 ["X"]
  SETTABLEKS R5 R21 K1 ["Y"]
  SETTABLEKS R21 R20 K5 ["Position"]
  DUPTABLE R21 K8 [{"X", "Y"}]
  SETTABLEKS R17 R21 K0 ["X"]
  SETTABLEKS R8 R21 K1 ["Y"]
  SETTABLEKS R21 R20 K6 ["Size"]
  FASTCALL2 TABLE_INSERT R3 R20 [+4]
  MOVE R19 R3
  GETIMPORT R18 K11 [table.insert]
  CALL R18 2 0
  GETTABLEKS R18 R15 K4 ["position"]
  GETTABLEKS R9 R18 K0 ["X"]
  GETTABLEKS R18 R15 K12 ["size"]
  GETTABLEKS R10 R18 K0 ["X"]
  FORGLOOP R11 2 [inext] [-36]
  ADD R11 R9 R10
  SUB R12 R6 R11
  DUPTABLE R15 K7 [{"Position", "Size"}]
  DUPTABLE R16 K8 [{"X", "Y"}]
  SETTABLEKS R11 R16 K0 ["X"]
  SETTABLEKS R5 R16 K1 ["Y"]
  SETTABLEKS R16 R15 K5 ["Position"]
  DUPTABLE R16 K8 [{"X", "Y"}]
  SETTABLEKS R12 R16 K0 ["X"]
  SETTABLEKS R8 R16 K1 ["Y"]
  SETTABLEKS R16 R15 K6 ["Size"]
  FASTCALL2 TABLE_INSERT R3 R15 [+4]
  MOVE R14 R3
  GETIMPORT R13 K11 [table.insert]
  CALL R13 2 0
  RETURN R3 1

PROTO_1:
  LOADB R2 0
  GETTABLEKS R4 R0 K0 ["position"]
  GETTABLEKS R3 R4 K1 ["X"]
  GETTABLEKS R5 R1 K0 ["position"]
  GETTABLEKS R4 R5 K1 ["X"]
  JUMPIFNOTLT R3 R4 [+23]
  GETTABLEKS R5 R0 K0 ["position"]
  GETTABLEKS R4 R5 K1 ["X"]
  GETTABLEKS R6 R0 K2 ["size"]
  GETTABLEKS R5 R6 K1 ["X"]
  ADD R3 R4 R5
  GETTABLEKS R6 R1 K2 ["size"]
  GETTABLEKS R5 R6 K1 ["X"]
  GETTABLEKS R7 R1 K0 ["position"]
  GETTABLEKS R6 R7 K1 ["X"]
  ADD R4 R5 R6
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [pairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_NEXT R4
  DUPTABLE R11 K5 [{"id", "size", "position"}]
  GETTABLEKS R12 R8 K2 ["id"]
  SETTABLEKS R12 R11 K2 ["id"]
  GETTABLEKS R12 R8 K3 ["size"]
  SETTABLEKS R12 R11 K3 ["size"]
  GETTABLEKS R12 R8 K4 ["position"]
  SETTABLEKS R12 R11 K4 ["position"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K8 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-20]
  GETIMPORT R4 K10 [table.sort]
  MOVE R5 R3
  DUPCLOSURE R6 K11 [PROTO_1]
  CALL R4 2 0
  GETUPVAL R4 0
  NAMECALL R4 R4 K12 ["GetGuiInset"]
  CALL R4 1 2
  GETIMPORT R6 K15 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  GETIMPORT R7 K15 [Vector2.new]
  GETTABLEKS R8 R0 K16 ["X"]
  GETTABLEKS R9 R4 K17 ["Y"]
  CALL R7 2 1
  GETUPVAL R8 1
  MOVE R9 R6
  MOVE R10 R7
  MOVE R11 R3
  CALL R8 3 1
  MOVE R2 R8
  LOADNIL R8
  GETIMPORT R9 K19 [ipairs]
  MOVE R10 R2
  CALL R9 1 3
  FORGPREP_INEXT R9
  JUMPIFNOT R8 [+8]
  GETTABLEKS R15 R13 K20 ["Size"]
  GETTABLEKS R14 R15 K16 ["X"]
  GETTABLEKS R15 R8 K21 ["Width"]
  JUMPIFNOTLT R15 R14 [+31]
  GETIMPORT R14 K23 [Rect.new]
  GETTABLEKS R16 R13 K24 ["Position"]
  GETTABLEKS R15 R16 K16 ["X"]
  GETTABLEKS R17 R13 K24 ["Position"]
  GETTABLEKS R16 R17 K17 ["Y"]
  GETTABLEKS R19 R13 K24 ["Position"]
  GETTABLEKS R18 R19 K16 ["X"]
  GETTABLEKS R20 R13 K20 ["Size"]
  GETTABLEKS R19 R20 K16 ["X"]
  ADD R17 R18 R19
  GETTABLEKS R20 R13 K24 ["Position"]
  GETTABLEKS R19 R20 K17 ["Y"]
  GETTABLEKS R21 R13 K20 ["Size"]
  GETTABLEKS R20 R21 K17 ["Y"]
  ADD R18 R19 R20
  CALL R14 4 1
  MOVE R8 R14
  FORGLOOP R9 2 [inext] [-40]
  RETURN R8 1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K0 ["SetTopbarInset"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["displayOptions"]
  GETTABLEKS R1 R2 K1 ["screenSize"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["displayOptions"]
  GETTABLEKS R1 R2 K1 ["keepOutAreas"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+12]
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InGameChromeSignalAPI"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIFNOT R0 [+17]
  GETUPVAL R0 1
  NAMECALL R0 R0 K4 ["IsStudio"]
  CALL R0 1 1
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 2
  GETUPVAL R1 3
  GETUPVAL R2 4
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 5
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["SetTopbarInset"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPCLOSURE R2 K0 [PROTO_4]
  CALL R1 1 1
  GETUPVAL R2 0
  DUPCLOSURE R3 K1 [PROTO_5]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useEffect"]
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  GETUPVAL R5 6
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 -1
  CALL R3 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K10 ["Workspace"]
  GETTABLEKS R6 R7 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["RoactUtils"]
  CALL R4 1 1
  GETTABLEKS R7 R4 K12 ["Hooks"]
  GETTABLEKS R6 R7 K13 ["RoactRodux"]
  GETTABLEKS R5 R6 K14 ["useSelector"]
  GETTABLEKS R7 R4 K12 ["Hooks"]
  GETTABLEKS R6 R7 K15 ["dependencyArray"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R0 K10 ["Workspace"]
  GETTABLEKS R10 R11 K8 ["Packages"]
  GETTABLEKS R9 R10 K16 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["GetFFlagFixKeepOutAreasCompatibility"]
  DUPCLOSURE R8 K18 [PROTO_0]
  DUPCLOSURE R9 K19 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R8
  DUPCLOSURE R10 K20 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R1
  DUPCLOSURE R11 K21 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETGLOBAL R11 K22 ["KeepOutAreasHandler"]
  GETGLOBAL R11 K22 ["KeepOutAreasHandler"]
  RETURN R11 1
