PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Uri"]
  NAMECALL R0 R0 K1 ["deregister"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Uri"]
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Uri"]
  MOVE R4 R0
  NAMECALL R1 R1 K2 ["register"]
  CALL R1 3 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Disabled"]
  JUMPIF R2 [+17]
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["cancelShowTooltip"]
  CALL R2 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["OnSelect"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Uri"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETTABLEKS R3 R0 K0 ["ForwardRef"]
  OR R1 R3 R1
  GETTABLEKS R4 R0 K1 ["MenuData"]
  GETTABLEKS R3 R4 K2 ["isOpen"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R5 R0 K1 ["MenuData"]
  GETTABLEKS R4 R5 K3 ["widgetUriString"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["toString"]
  GETTABLEKS R6 R0 K5 ["Uri"]
  CALL R5 1 1
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R4 3
  NEWCLOSURE R5 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K5 ["Uri"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  GETTABLEKS R5 R0 K7 ["IconSide"]
  ORK R4 R5 K6 ["Left"]
  GETTABLEKS R6 R0 K8 ["Icon"]
  JUMPIFNOT R6 [+7]
  GETTABLEKS R5 R0 K8 ["Icon"]
  LOADK R7 K9 ["/"]
  NAMECALL R5 R5 K10 ["find"]
  CALL R5 2 1
  JUMP [+1]
  LOADNIL R5
  GETTABLEKS R7 R0 K8 ["Icon"]
  JUMPIFNOT R7 [+12]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R0 K8 ["Icon"]
  JUMP [+9]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K11 ["getPathForIcon"]
  GETTABLEKS R7 R0 K8 ["Icon"]
  LOADK R8 K12 ["Small"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  GETUPVAL R7 5
  DUPTABLE R8 K16 [{"Uri", "Title", "Text", "Shortcuts"}]
  GETTABLEKS R9 R0 K5 ["Uri"]
  SETTABLEKS R9 R8 K5 ["Uri"]
  GETTABLEKS R9 R0 K17 ["TooltipTitle"]
  SETTABLEKS R9 R8 K13 ["Title"]
  GETTABLEKS R9 R0 K18 ["Tooltip"]
  SETTABLEKS R9 R8 K14 ["Text"]
  GETTABLEKS R9 R0 K15 ["Shortcuts"]
  SETTABLEKS R9 R8 K15 ["Shortcuts"]
  CALL R7 1 2
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K19 ["createElement"]
  LOADK R10 K20 ["TextButton"]
  NEWTABLE R11 8 0
  SETTABLEKS R1 R11 K21 ["ref"]
  GETTABLEKS R12 R0 K22 ["LayoutOrder"]
  SETTABLEKS R12 R11 K22 ["LayoutOrder"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K23 ["Event"]
  GETTABLEKS R12 R13 K24 ["InputBegan"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R0 K25 ["Visible"]
  SETTABLEKS R12 R11 K25 ["Visible"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K23 ["Event"]
  GETTABLEKS R12 R13 K26 ["MouseEnter"]
  SETTABLE R7 R11 R12
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K23 ["Event"]
  GETTABLEKS R12 R13 K27 ["MouseLeave"]
  SETTABLE R8 R11 R12
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K28 ["Tag"]
  GETUPVAL R13 8
  LOADK R14 K29 ["Component-RibbonSelectInput Role-Surface X-CornerS X-Row X-Middle"]
  GETTABLEKS R16 R0 K30 ["Disabled"]
  JUMPIFNOT R16 [+2]
  LOADK R15 K31 ["State-Disabled"]
  JUMP [+1]
  LOADK R15 K32 ["State-Default"]
  JUMPIFNOT R3 [+2]
  LOADK R16 K33 ["State-Focus"]
  JUMP [+1]
  LOADNIL R16
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K28 ["Tag"]
  GETTABLE R17 R0 R18
  CALL R13 4 1
  SETTABLE R13 R11 R12
  DUPTABLE R12 K36 [{"Value", "DropdownIcon"}]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K19 ["createElement"]
  LOADK R14 K37 ["Frame"]
  NEWTABLE R15 1 0
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K28 ["Tag"]
  GETUPVAL R17 8
  LOADK R18 K38 ["Role-Surface X-Fill X-Row X-RowSpace50 X-Middle"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  DUPTABLE R16 K39 [{"Icon", "Text"}]
  JUMPIFNOT R6 [+18]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K19 ["createElement"]
  LOADK R18 K40 ["ImageLabel"]
  NEWTABLE R19 2 0
  SETTABLEKS R6 R19 K41 ["Image"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K28 ["Tag"]
  GETUPVAL R21 8
  LOADK R22 K42 ["Role-Surface"]
  MOVE R23 R4
  CALL R21 2 1
  SETTABLE R21 R19 R20
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K8 ["Icon"]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K19 ["createElement"]
  LOADK R18 K43 ["TextLabel"]
  NEWTABLE R19 2 0
  GETTABLEKS R20 R0 K14 ["Text"]
  SETTABLEKS R20 R19 K14 ["Text"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K28 ["Tag"]
  GETUPVAL R21 8
  LOADK R22 K44 ["Role-Surface X-Fill"]
  CALL R21 1 1
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Text"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K34 ["Value"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K19 ["createElement"]
  LOADK R14 K40 ["ImageLabel"]
  NEWTABLE R15 1 0
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K28 ["Tag"]
  GETUPVAL R17 8
  LOADK R18 K42 ["Role-Surface"]
  JUMPIFNOT R3 [+2]
  LOADK R19 K45 ["Icon-Up"]
  JUMP [+1]
  LOADNIL R19
  CALL R17 2 1
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["DropdownIcon"]
  CALL R9 3 -1
  CLOSEUPVALS R1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useEffect"]
  GETTABLEKS R3 R1 K9 ["useRef"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["IconHelper"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K12 ["Util"]
  GETTABLEKS R8 R9 K15 ["StudioUri"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K16 ["Hooks"]
  GETTABLEKS R9 R10 K17 ["TooltipSettings"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K16 ["Hooks"]
  GETTABLEKS R10 R11 K18 ["useWidgets"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K16 ["Hooks"]
  GETTABLEKS R11 R12 K19 ["useTooltip"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K16 ["Hooks"]
  GETTABLEKS R12 R13 K20 ["useMenu"]
  CALL R11 1 1
  GETTABLEKS R12 R4 K21 ["Styling"]
  GETTABLEKS R13 R12 K22 ["joinTags"]
  DUPCLOSURE R14 K23 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R13
  RETURN R14 1