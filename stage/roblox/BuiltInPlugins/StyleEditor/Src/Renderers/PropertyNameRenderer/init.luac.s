PROTO_0:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["allProperties"]
  GETTABLE R8 R9 R6
  GETTABLE R7 R8 R1
  JUMPIFEQKNIL R7 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-10]
  LOADB R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["CanMatchAnyClass"]
  JUMPIFNOT R1 [+11]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["possiblePropertyTypes"]
  GETTABLE R1 R2 R0
  JUMPIFNOTEQKNIL R1 [+30]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["DoesNotExist"]
  RETURN R1 1
  JUMP [+24]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["PossibleClasses"]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["allProperties"]
  GETTABLE R9 R10 R7
  GETTABLE R8 R9 R0
  JUMPIFEQKNIL R8 [+3]
  LOADB R1 1
  JUMP [+3]
  FORGLOOP R3 2 [-10]
  LOADB R1 0
  JUMPIF R1 [+4]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["DoesNotExistOnType"]
  RETURN R1 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["Value"]
  JUMPIFNOTEQ R2 R0 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  LOADB R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["Properties"]
  GETTABLE R3 R4 R0
  JUMPIFEQKNIL R3 [+2]
  MOVE R2 R1
  JUMPIFNOT R2 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["AlreadyDefined"]
  RETURN R3 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["None"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CanMatchAnyClass"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["possiblePropertyTypes"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+30]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["DoesNotExist"]
  JUMP [+48]
  JUMP [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["PossibleClasses"]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["allProperties"]
  GETTABLE R10 R11 R8
  GETTABLE R9 R10 R0
  JUMPIFEQKNIL R9 [+3]
  LOADB R2 1
  JUMP [+3]
  FORGLOOP R4 2 [-10]
  LOADB R2 0
  JUMPIF R2 [+4]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["DoesNotExistOnType"]
  JUMP [+23]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["Value"]
  JUMPIFNOTEQ R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADB R3 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Properties"]
  GETTABLE R4 R5 R0
  JUMPIFEQKNIL R4 [+2]
  MOVE R3 R2
  JUMPIFNOT R3 [+4]
  GETUPVAL R4 2
  GETTABLEKS R1 R4 K8 ["AlreadyDefined"]
  JUMP [+3]
  GETUPVAL R4 2
  GETTABLEKS R1 R4 K9 ["None"]
  GETUPVAL R2 4
  DUPTABLE R3 K12 [{"text", "error"}]
  SETTABLEKS R0 R3 K10 ["text"]
  SETTABLEKS R1 R3 K11 ["error"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CanMatchAnyClass"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["possiblePropertyTypes"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+30]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["DoesNotExist"]
  JUMP [+48]
  JUMP [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["PossibleClasses"]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["allProperties"]
  GETTABLE R10 R11 R8
  GETTABLE R9 R10 R0
  JUMPIFEQKNIL R9 [+3]
  LOADB R2 1
  JUMP [+3]
  FORGLOOP R4 2 [-10]
  LOADB R2 0
  JUMPIF R2 [+4]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K5 ["DoesNotExistOnType"]
  JUMP [+23]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["Value"]
  JUMPIFNOTEQ R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADB R3 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Properties"]
  GETTABLE R4 R5 R0
  JUMPIFEQKNIL R4 [+2]
  MOVE R3 R2
  JUMPIFNOT R3 [+4]
  GETUPVAL R4 2
  GETTABLEKS R1 R4 K8 ["AlreadyDefined"]
  JUMP [+3]
  GETUPVAL R4 2
  GETTABLEKS R1 R4 K9 ["None"]
  GETUPVAL R2 4
  DUPTABLE R3 K12 [{"text", "error"}]
  SETTABLEKS R0 R3 K10 ["text"]
  SETTABLEKS R1 R3 K11 ["error"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["CanMatchAnyClass"]
  JUMPIFNOT R3 [+11]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["possiblePropertyTypes"]
  GETTABLE R3 R4 R0
  JUMPIFNOTEQKNIL R3 [+30]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["DoesNotExist"]
  JUMP [+48]
  JUMP [+24]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["PossibleClasses"]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K4 ["allProperties"]
  GETTABLE R11 R12 R9
  GETTABLE R10 R11 R0
  JUMPIFEQKNIL R10 [+3]
  LOADB R3 1
  JUMP [+3]
  FORGLOOP R5 2 [-10]
  LOADB R3 0
  JUMPIF R3 [+4]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["DoesNotExistOnType"]
  JUMP [+23]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K6 ["Value"]
  JUMPIFNOTEQ R4 R0 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  LOADB R4 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["Properties"]
  GETTABLE R5 R6 R0
  JUMPIFEQKNIL R5 [+2]
  MOVE R4 R3
  JUMPIFNOT R4 [+4]
  GETUPVAL R5 2
  GETTABLEKS R2 R5 K8 ["AlreadyDefined"]
  JUMP [+3]
  GETUPVAL R5 2
  GETTABLEKS R2 R5 K9 ["None"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["None"]
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["Value"]
  JUMPIFEQ R3 R0 [+7]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K10 ["OnChanged"]
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["Value"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["CanMatchAnyClass"]
  JUMPIFNOT R5 [+11]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["possiblePropertyTypes"]
  GETTABLE R5 R6 R3
  JUMPIFNOTEQKNIL R5 [+30]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["DoesNotExist"]
  JUMP [+48]
  JUMP [+24]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["PossibleClasses"]
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K4 ["allProperties"]
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R3
  JUMPIFEQKNIL R12 [+3]
  LOADB R5 1
  JUMP [+3]
  FORGLOOP R7 2 [-10]
  LOADB R5 0
  JUMPIF R5 [+4]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["DoesNotExistOnType"]
  JUMP [+23]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["Value"]
  JUMPIFNOTEQ R6 R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  LOADB R6 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["Properties"]
  GETTABLE R7 R8 R3
  JUMPIFEQKNIL R7 [+2]
  MOVE R6 R5
  JUMPIFNOT R6 [+4]
  GETUPVAL R7 2
  GETTABLEKS R4 R7 K8 ["AlreadyDefined"]
  JUMP [+3]
  GETUPVAL R7 2
  GETTABLEKS R4 R7 K9 ["None"]
  GETUPVAL R5 4
  DUPTABLE R6 K13 [{"text", "error"}]
  SETTABLEKS R3 R6 K11 ["text"]
  SETTABLEKS R4 R6 K12 ["error"]
  CALL R5 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Value"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CanMatchAnyClass"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["possiblePropertyTypes"]
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+30]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K3 ["DoesNotExist"]
  JUMP [+48]
  JUMP [+24]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["PossibleClasses"]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["allProperties"]
  GETTABLE R10 R11 R8
  GETTABLE R9 R10 R0
  JUMPIFEQKNIL R9 [+3]
  LOADB R2 1
  JUMP [+3]
  FORGLOOP R4 2 [-10]
  LOADB R2 0
  JUMPIF R2 [+4]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K6 ["DoesNotExistOnType"]
  JUMP [+23]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFNOTEQ R3 R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADB R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["Properties"]
  GETTABLE R4 R5 R0
  JUMPIFEQKNIL R4 [+2]
  MOVE R3 R2
  JUMPIFNOT R3 [+4]
  GETUPVAL R4 3
  GETTABLEKS R1 R4 K8 ["AlreadyDefined"]
  JUMP [+3]
  GETUPVAL R4 3
  GETTABLEKS R1 R4 K9 ["None"]
  GETUPVAL R2 4
  DUPTABLE R3 K12 [{"text", "error"}]
  SETTABLEKS R0 R3 K10 ["text"]
  SETTABLEKS R1 R3 K11 ["error"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  LOADB R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFEQ R0 R3 [+9]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Properties"]
  GETTABLE R3 R4 R0
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["CanMatchAnyClass"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["getPropertyNames"]
  LOADK R3 K2 [""]
  CALL R2 1 1
  MOVE R1 R2
  JUMP [+24]
  NEWTABLE R2 0 0
  GETUPVAL R6 0
  GETTABLEKS R3 R6 K3 ["PossibleClasses"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["getPropertyNames"]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP R8
  LOADB R13 1
  SETTABLE R13 R2 R12
  FORGLOOP R8 2 [-3]
  FORGLOOP R3 2 [-11]
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  MOVE R1 R3
  GETUPVAL R2 3
  MOVE R3 R1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CALL R2 2 1
  GETUPVAL R3 5
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getPropertySchema"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Value"]
  MOVE R4 R0
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["Schema"]
  GETTABLEKS R1 R2 K1 ["StyleRuleInfo"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETTABLEKS R3 R2 K2 ["Localization"]
  JUMPIF R1 [+57]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 2
  NEWTABLE R6 0 0
  DUPTABLE R7 K5 [{"Input"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 3
  NEWTABLE R10 8 0
  LOADB R11 1
  SETTABLEKS R11 R10 K6 ["Disabled"]
  GETTABLEKS R12 R0 K7 ["AutomaticSize"]
  JUMPIFNOT R12 [+10]
  GETIMPORT R11 K10 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R16 R0 K12 ["MinimumHeight"]
  ORK R15 R16 K11 [24]
  CALL R11 4 1
  JUMP [+5]
  GETIMPORT R11 K14 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Size"]
  GETTABLEKS R11 R0 K16 ["Value"]
  SETTABLEKS R11 R10 K17 ["Text"]
  LOADK R13 K18 ["Table"]
  LOADK R14 K19 ["PropertyNamePlaceholder"]
  NAMECALL R11 R3 K20 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["PlaceholderText"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K22 ["Tag"]
  LOADK R12 K23 ["PropertyCellDisabled"]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["Input"]
  CALL R4 3 -1
  RETURN R4 -1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K24 [+4]
  LOADK R6 K24 ["expecting valid StyleRuleInfo"]
  GETIMPORT R4 K26 [assert]
  CALL R4 2 0
  GETUPVAL R4 4
  DUPTABLE R5 K29 [{"text", "error"}]
  GETTABLEKS R6 R0 K16 ["Value"]
  SETTABLEKS R6 R5 K27 ["text"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K30 ["None"]
  SETTABLEKS R6 R5 K28 ["error"]
  CALL R4 1 2
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R5
  NEWCLOSURE R8 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R5
  NEWCLOSURE R9 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R5
  GETUPVAL R10 7
  NEWCLOSURE R11 P4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  NEWTABLE R12 0 2
  GETTABLEKS R13 R0 K0 ["Schema"]
  GETTABLEKS R14 R0 K16 ["Value"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  NEWCLOSURE R10 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K31 ["getPossiblePropertyTypes"]
  GETTABLEKS R12 R4 K27 ["text"]
  CALL R11 1 1
  NEWTABLE R12 0 0
  LENGTH R13 R11
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+11]
  MOVE R14 R12
  GETIMPORT R15 K34 [table.concat]
  MOVE R16 R11
  LOADK R17 K35 [", "]
  CALL R15 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K37 [table.insert]
  CALL R13 -1 0
  GETTABLEKS R13 R1 K38 ["CanMatchAnyClass"]
  JUMPIF R13 [+25]
  GETUPVAL R13 9
  GETTABLEKS R14 R1 K39 ["PossibleClasses"]
  NEWCLOSURE R15 P6
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CALL R13 2 1
  GETIMPORT R14 K34 [table.concat]
  MOVE R15 R13
  LOADK R16 K35 [", "]
  CALL R14 2 1
  MOVE R16 R12
  LOADK R19 K40 ["Label"]
  LOADK R20 K41 ["PropertyAppliesTo"]
  DUPTABLE R21 K43 [{"classList"}]
  SETTABLEKS R14 R21 K42 ["classList"]
  NAMECALL R17 R3 K20 ["getText"]
  CALL R17 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R15 K37 [table.insert]
  CALL R15 -1 0
  GETTABLEKS R14 R4 K28 ["error"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K30 ["None"]
  JUMPIFNOTEQ R14 R15 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETUPVAL R14 11
  MOVE R15 R3
  GETTABLEKS R16 R4 K28 ["error"]
  DUPTABLE R17 K45 [{"type"}]
  GETIMPORT R18 K34 [table.concat]
  GETTABLEKS R19 R1 K39 ["PossibleClasses"]
  LOADK R20 K35 [", "]
  CALL R18 2 1
  SETTABLEKS R18 R17 K44 ["type"]
  CALL R14 3 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K3 ["createElement"]
  GETUPVAL R16 2
  NEWTABLE R17 0 0
  DUPTABLE R18 K47 [{"Input", "Tooltip"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K3 ["createElement"]
  GETUPVAL R20 3
  NEWTABLE R21 8 0
  GETTABLEKS R22 R0 K6 ["Disabled"]
  SETTABLEKS R22 R21 K6 ["Disabled"]
  SETTABLEKS R8 R21 K48 ["OnTextChanged"]
  SETTABLEKS R9 R21 K49 ["OnFocusLost"]
  GETTABLEKS R23 R0 K7 ["AutomaticSize"]
  JUMPIFNOT R23 [+10]
  GETIMPORT R22 K10 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  GETTABLEKS R27 R0 K12 ["MinimumHeight"]
  ORK R26 R27 K11 [24]
  CALL R22 4 1
  JUMP [+5]
  GETIMPORT R22 K14 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K15 ["Size"]
  GETTABLEKS R22 R4 K27 ["text"]
  SETTABLEKS R22 R21 K17 ["Text"]
  SETTABLEKS R10 R21 K50 ["GetAutocompleteItems"]
  LOADK R24 K18 ["Table"]
  LOADK R25 K19 ["PropertyNamePlaceholder"]
  NAMECALL R22 R3 K20 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K21 ["PlaceholderText"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K22 ["Tag"]
  JUMPIFNOT R13 [+6]
  GETTABLEKS R25 R0 K0 ["Schema"]
  GETTABLEKS R24 R25 K52 ["ErrorStyle"]
  ORK R23 R24 K51 ["PropertyCellError"]
  JUMP [+1]
  LOADNIL R23
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K4 ["Input"]
  LOADB R19 0
  GETTABLEKS R21 R4 K27 ["text"]
  LENGTH R20 R21
  LOADN R21 0
  JUMPIFNOTLT R21 R20 [+20]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K3 ["createElement"]
  GETUPVAL R20 12
  DUPTABLE R21 K54 [{"Text", "MaxWidth"}]
  JUMPIFNOT R13 [+2]
  MOVE R22 R14
  JUMP [+5]
  GETIMPORT R22 K34 [table.concat]
  MOVE R23 R12
  LOADK R24 K55 ["
"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K17 ["Text"]
  GETUPVAL R22 13
  SETTABLEKS R22 R21 K53 ["MaxWidth"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K46 ["Tooltip"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useState"]
  GETTABLEKS R3 R1 K8 ["useEffect"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K10 ["UI"]
  GETTABLEKS R5 R6 K11 ["Tooltip"]
  GETTABLEKS R7 R4 K10 ["UI"]
  GETTABLEKS R6 R7 K12 ["Pane"]
  GETTABLEKS R8 R4 K10 ["UI"]
  GETTABLEKS R7 R8 K13 ["TextInput"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K5 ["Packages"]
  GETTABLEKS R9 R10 K14 ["Dash"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K15 ["filter"]
  GETTABLEKS R10 R8 K16 ["keys"]
  GETIMPORT R11 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K17 ["localizePropertyNameError"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K18 ["Src"]
  GETTABLEKS R14 R15 K19 ["Renderers"]
  GETTABLEKS R13 R14 K20 ["RendererTypes"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K21 ["Util"]
  GETTABLEKS R14 R15 K22 ["getAutocompleteItems"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K23 ["Enums"]
  GETTABLEKS R15 R16 K24 ["PropertyNameValidationError"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K18 ["Src"]
  GETTABLEKS R17 R18 K21 ["Util"]
  GETTABLEKS R16 R17 K25 ["StyleSchema"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K26 ["Hooks"]
  GETTABLEKS R17 R18 K27 ["useFrameworkContext"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K18 ["Src"]
  GETTABLEKS R19 R20 K28 ["Resources"]
  GETTABLEKS R18 R19 K29 ["PluginStyles"]
  CALL R17 1 1
  LOADK R20 K30 ["TooltipMaxWidth"]
  NAMECALL R18 R17 K31 ["GetAttribute"]
  CALL R18 2 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R21 R0 K18 ["Src"]
  GETTABLEKS R20 R21 K32 ["Types"]
  CALL R19 1 1
  DUPCLOSURE R20 K33 [PROTO_0]
  CAPTURE VAL R15
  DUPCLOSURE R21 K34 [PROTO_9]
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R18
  RETURN R21 1