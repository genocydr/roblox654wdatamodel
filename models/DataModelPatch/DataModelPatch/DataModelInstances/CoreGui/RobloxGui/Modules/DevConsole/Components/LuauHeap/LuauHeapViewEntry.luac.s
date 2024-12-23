PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"Label", "LeftBorder"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K9 [{"text", "size", "pos", "richText"}]
  GETTABLEKS R6 R0 K5 ["text"]
  SETTABLEKS R6 R5 K5 ["text"]
  GETTABLEKS R6 R0 K6 ["size"]
  SETTABLEKS R6 R5 K6 ["size"]
  GETTABLEKS R6 R0 K7 ["pos"]
  SETTABLEKS R6 R5 K7 ["pos"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["richText"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["Label"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  LOADK R4 K10 ["Frame"]
  DUPTABLE R5 K16 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R6 K19 [UDim2.new]
  GETIMPORT R7 K21 [UDim.new]
  LOADN R8 0
  GETUPVAL R9 2
  CALL R7 2 1
  GETTABLEKS R9 R0 K6 ["size"]
  GETTABLEKS R8 R9 K22 ["Y"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["Size"]
  GETIMPORT R7 K24 [UDim2.fromOffset]
  GETUPVAL R9 3
  MINUS R8 R9
  LOADN R9 0
  CALL R7 2 1
  GETTABLEKS R8 R0 K7 ["pos"]
  ADD R6 R7 R8
  SETTABLEKS R6 R5 K12 ["Position"]
  GETIMPORT R6 K26 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["AnchorPoint"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K14 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K15 ["BorderSizePixel"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["LeftBorder"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R1 K1 [{"expanded"}]
  GETTABLEKS R3 R0 K0 ["expanded"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["expanded"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_1]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"expandedEllipsis"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["expandedEllipsis"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  DUPTABLE R5 K2 [{"showTooltip", "tooltipPos"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K0 ["showTooltip"]
  GETIMPORT R6 K5 [UDim2.fromOffset]
  MOVE R7 R1
  MOVE R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["tooltipPos"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  DUPTABLE R5 K2 [{"showTooltip", "tooltipPos"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K0 ["showTooltip"]
  GETIMPORT R6 K5 [UDim2.fromOffset]
  MOVE R7 R1
  MOVE R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["tooltipPos"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showTooltip"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showTooltip"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K4 [{"expanded", "expandedEllipsis", "showTooltip", "tooltipPos"}]
  GETTABLEKS R4 R0 K5 ["props"]
  GETTABLEKS R3 R4 K6 ["depth"]
  JUMPIFEQKN R3 K7 [0] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["expanded"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["expandedEllipsis"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["showTooltip"]
  GETIMPORT R2 K10 [UDim2.fromOffset]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["tooltipPos"]
  SETTABLEKS R1 R0 K11 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onButtonPress"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onExpandEllipsis"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onMouseEnter"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["onMouseMove"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["onMouseLeave"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+14]
  GETIMPORT R1 K1 [ipairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R0 K2 ["Name"]
  GETTABLEKS R7 R5 K2 ["Name"]
  JUMPIFNOTEQ R6 R7 [+2]
  RETURN R5 1
  FORGLOOP R1 2 [inext] [-8]
  LOADNIL R1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["expanded"]
  JUMPIF R3 [+3]
  NEWTABLE R3 0 0
  RETURN R3 1
  LOADB R3 1
  LENGTH R4 R1
  JUMPIFNOTEQKN R4 K2 [0] [+9]
  LOADB R3 0
  JUMPIFEQKNIL R2 [+6]
  LENGTH R4 R2
  JUMPIFNOTEQKN R4 K2 [0] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIF R3 [+3]
  NEWTABLE R4 0 0
  RETURN R4 1
  NEWTABLE R4 0 0
  GETTABLEKS R7 R0 K3 ["props"]
  GETTABLEKS R6 R7 K4 ["data"]
  GETTABLEKS R5 R6 K5 ["TotalSize"]
  GETTABLEKS R8 R0 K3 ["props"]
  GETTABLEKS R7 R8 K7 ["depth"]
  ADDK R6 R7 K6 [1]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  GETIMPORT R11 K9 [ipairs]
  MOVE R12 R1
  CALL R11 1 3
  FORGPREP_INEXT R11
  JUMPIFNOT R2 [+15]
  GETIMPORT R17 K9 [ipairs]
  MOVE R18 R2
  CALL R17 1 3
  FORGPREP_INEXT R17
  GETTABLEKS R22 R15 K10 ["Name"]
  GETTABLEKS R23 R21 K10 ["Name"]
  JUMPIFNOTEQ R22 R23 [+3]
  MOVE R16 R21
  JUMP [+3]
  FORGLOOP R17 2 [inext] [-9]
  LOADNIL R16
  GETTABLEKS R17 R15 K5 ["TotalSize"]
  LOADN R18 128
  JUMPIFNOTLE R17 R18 [+18]
  LENGTH R17 R1
  LOADN R18 4
  JUMPIFNOTLT R18 R17 [+14]
  GETTABLEKS R18 R0 K0 ["state"]
  GETTABLEKS R17 R18 K11 ["expandedEllipsis"]
  JUMPIF R17 [+8]
  GETTABLEKS R17 R15 K5 ["TotalSize"]
  ADD R7 R7 R17
  JUMPIFNOT R16 [+23]
  GETTABLEKS R17 R16 K5 ["TotalSize"]
  ADD R8 R8 R17
  JUMP [+19]
  ADDK R9 R9 K6 [1]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 1
  DUPTABLE R19 K15 [{"layoutOrder", "depth", "data", "compare"}]
  GETTABLEKS R21 R15 K5 ["TotalSize"]
  SUB R20 R5 R21
  SETTABLEKS R20 R19 K13 ["layoutOrder"]
  SETTABLEKS R6 R19 K7 ["depth"]
  SETTABLEKS R15 R19 K4 ["data"]
  SETTABLEKS R16 R19 K14 ["compare"]
  CALL R17 2 1
  SETTABLE R17 R4 R9
  FORGLOOP R11 2 [inext] [-59]
  LOADN R11 0
  JUMPIFNOTLT R11 R7 [+48]
  ADDK R9 R9 K6 [1]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K17 [{"layoutOrder", "depth", "data", "compare", "customButtonPress"}]
  SETTABLEKS R5 R13 K13 ["layoutOrder"]
  SETTABLEKS R6 R13 K7 ["depth"]
  DUPTABLE R14 K20 [{"Size", "TotalSize", "Name", "Children"}]
  SETTABLEKS R7 R14 K18 ["Size"]
  SETTABLEKS R7 R14 K5 ["TotalSize"]
  LOADK R15 K21 ["..."]
  SETTABLEKS R15 R14 K10 ["Name"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K19 ["Children"]
  SETTABLEKS R14 R13 K4 ["data"]
  JUMPIFNOT R2 [+13]
  DUPTABLE R14 K20 [{"Size", "TotalSize", "Name", "Children"}]
  SETTABLEKS R8 R14 K18 ["Size"]
  SETTABLEKS R8 R14 K5 ["TotalSize"]
  LOADK R15 K21 ["..."]
  SETTABLEKS R15 R14 K10 ["Name"]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K19 ["Children"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K14 ["compare"]
  GETTABLEKS R14 R0 K22 ["onExpandEllipsis"]
  SETTABLEKS R14 R13 K16 ["customButtonPress"]
  CALL R11 2 1
  SETTABLE R11 R4 R9
  JUMPIFNOT R2 [+60]
  GETIMPORT R11 K9 [ipairs]
  MOVE R12 R2
  CALL R11 1 3
  FORGPREP_INEXT R11
  LOADB R16 0
  GETIMPORT R17 K9 [ipairs]
  MOVE R18 R1
  CALL R17 1 3
  FORGPREP_INEXT R17
  GETTABLEKS R22 R21 K10 ["Name"]
  GETTABLEKS R23 R15 K10 ["Name"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADB R16 1
  JUMP [+2]
  FORGLOOP R17 2 [inext] [-9]
  JUMPIF R16 [+36]
  NEWTABLE R17 8 0
  LOADN R18 0
  SETTABLEKS R18 R17 K18 ["Size"]
  LOADN R18 0
  SETTABLEKS R18 R17 K5 ["TotalSize"]
  GETTABLEKS R18 R15 K10 ["Name"]
  SETTABLEKS R18 R17 K10 ["Name"]
  GETTABLEKS R18 R15 K23 ["Source"]
  SETTABLEKS R18 R17 K23 ["Source"]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K19 ["Children"]
  ADDK R9 R9 K6 [1]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 1
  DUPTABLE R20 K15 [{"layoutOrder", "depth", "data", "compare"}]
  SETTABLEKS R5 R20 K13 ["layoutOrder"]
  SETTABLEKS R6 R20 K7 ["depth"]
  SETTABLEKS R17 R20 K4 ["data"]
  SETTABLEKS R15 R20 K14 ["compare"]
  CALL R18 2 1
  SETTABLE R18 R4 R9
  FORGLOOP R11 2 [inext] [-54]
  RETURN R4 1

PROTO_10:
  NEWTABLE R2 0 0
  GETIMPORT R3 K2 [UDim2.new]
  GETUPVAL R4 0
  GETUPVAL R6 1
  MINUS R5 R6
  LOADN R6 0
  GETUPVAL R7 2
  CALL R3 4 1
  GETIMPORT R4 K2 [UDim2.new]
  GETUPVAL R7 0
  LENGTH R8 R1
  MUL R6 R7 R8
  SUBRK R5 R3 K6 ["tostring"]
  GETUPVAL R6 1
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  GETIMPORT R5 K5 [ipairs]
  MOVE R6 R1
  CALL R5 1 3
  FORGPREP_INEXT R5
  FASTCALL1 TOSTRING R8 [+3]
  MOVE R11 R8
  GETIMPORT R10 K7 [tostring]
  CALL R10 1 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K12 [{"text", "size", "pos"}]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R15 R9
  GETIMPORT R14 K7 [tostring]
  CALL R14 1 1
  SETTABLEKS R14 R13 K9 ["text"]
  SETTABLEKS R3 R13 K10 ["size"]
  GETIMPORT R15 K14 [UDim2.fromScale]
  GETUPVAL R17 0
  SUBK R18 R8 K3 [1]
  MUL R16 R17 R18
  LOADN R17 0
  CALL R15 2 1
  ADD R14 R4 R15
  SETTABLEKS R14 R13 K11 ["pos"]
  CALL R11 2 1
  SETTABLE R11 R2 R10
  FORGLOOP R5 2 [inext] [-32]
  RETURN R2 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["size"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  GETUPVAL R6 0
  CALL R2 4 1
  GETTABLEKS R3 R1 K5 ["depth"]
  GETTABLEKS R5 R1 K7 ["layoutOrder"]
  ORK R4 R5 K6 [0]
  GETUPVAL R6 1
  MUL R5 R3 R6
  GETTABLEKS R6 R1 K8 ["data"]
  GETTABLEKS R7 R1 K9 ["compare"]
  LOADK R8 K10 [""]
  LOADK R9 K10 [""]
  JUMPIFNOT R7 [+37]
  GETTABLEKS R10 R7 K11 ["TotalSize"]
  GETTABLEKS R11 R6 K11 ["TotalSize"]
  JUMPIFEQ R10 R11 [+32]
  GETIMPORT R10 K14 [string.format]
  LOADK R11 K15 ["%d <font color=\"#%s\">(%s%d)</font>"]
  GETTABLEKS R12 R6 K11 ["TotalSize"]
  GETTABLEKS R14 R7 K11 ["TotalSize"]
  GETTABLEKS R15 R6 K11 ["TotalSize"]
  JUMPIFNOTLT R15 R14 [+3]
  LOADK R13 K16 ["0f0"]
  JUMP [+1]
  LOADK R13 K17 ["f00"]
  GETTABLEKS R15 R7 K11 ["TotalSize"]
  GETTABLEKS R16 R6 K11 ["TotalSize"]
  JUMPIFNOTLT R16 R15 [+3]
  LOADK R14 K10 [""]
  JUMP [+1]
  LOADK R14 K18 ["+"]
  GETTABLEKS R16 R6 K11 ["TotalSize"]
  GETTABLEKS R17 R7 K11 ["TotalSize"]
  SUB R15 R16 R17
  CALL R10 5 1
  MOVE R8 R10
  JUMP [+7]
  GETIMPORT R10 K14 [string.format]
  LOADK R11 K19 ["%.0f"]
  GETTABLEKS R12 R6 K11 ["TotalSize"]
  CALL R10 2 1
  MOVE R8 R10
  JUMPIFNOT R7 [+37]
  GETTABLEKS R10 R7 K20 ["Size"]
  GETTABLEKS R11 R6 K20 ["Size"]
  JUMPIFEQ R10 R11 [+32]
  GETIMPORT R10 K14 [string.format]
  LOADK R11 K15 ["%d <font color=\"#%s\">(%s%d)</font>"]
  GETTABLEKS R12 R6 K20 ["Size"]
  GETTABLEKS R14 R7 K20 ["Size"]
  GETTABLEKS R15 R6 K20 ["Size"]
  JUMPIFNOTLT R15 R14 [+3]
  LOADK R13 K16 ["0f0"]
  JUMP [+1]
  LOADK R13 K17 ["f00"]
  GETTABLEKS R15 R7 K20 ["Size"]
  GETTABLEKS R16 R6 K20 ["Size"]
  JUMPIFNOTLT R16 R15 [+3]
  LOADK R14 K10 [""]
  JUMP [+1]
  LOADK R14 K18 ["+"]
  GETTABLEKS R16 R6 K20 ["Size"]
  GETTABLEKS R17 R7 K20 ["Size"]
  SUB R15 R16 R17
  CALL R10 5 1
  MOVE R9 R10
  JUMP [+7]
  GETIMPORT R10 K14 [string.format]
  LOADK R11 K19 ["%.0f"]
  GETTABLEKS R12 R6 K20 ["Size"]
  CALL R10 2 1
  MOVE R9 R10
  NEWTABLE R10 0 2
  MOVE R11 R8
  MOVE R12 R9
  SETLIST R10 R11 2 [1]
  JUMPIFNOTEQKN R3 K6 [0] [+3]
  LOADK R11 K21 ["<root>"]
  JUMP [+1]
  LOADK R11 K22 ["<anonymous>"]
  GETTABLEKS R13 R6 K23 ["Name"]
  JUMPIFNOT R13 [+5]
  GETTABLEKS R14 R6 K23 ["Name"]
  LENGTH R13 R14
  JUMPIFNOTEQKN R13 K6 [0] [+3]
  MOVE R12 R11
  JUMP [+2]
  GETTABLEKS R12 R6 K23 ["Name"]
  GETTABLEKS R14 R6 K24 ["Source"]
  JUMPIFNOT R14 [+5]
  GETTABLEKS R15 R6 K24 ["Source"]
  LENGTH R14 R15
  JUMPIFNOTEQKN R14 K6 [0] [+3]
  MOVE R13 R12
  JUMP [+2]
  GETTABLEKS R13 R6 K24 ["Source"]
  GETIMPORT R14 K26 [UDim.new]
  GETUPVAL R17 2
  LENGTH R18 R10
  MUL R16 R17 R18
  SUBRK R15 R27 K16 ["0f0"]
  GETUPVAL R18 3
  ADD R17 R18 R5
  MINUS R16 R17
  CALL R14 2 1
  LOADB R15 1
  GETTABLEKS R17 R6 K28 ["Children"]
  LENGTH R16 R17
  JUMPIFNOTEQKN R16 K6 [0] [+15]
  JUMPIFEQKNIL R7 [+7]
  LOADB R15 1
  GETTABLEKS R17 R7 K28 ["Children"]
  LENGTH R16 R17
  JUMPIFNOTEQKN R16 K6 [0] [+7]
  GETTABLEKS R16 R1 K29 ["customButtonPress"]
  JUMPIFNOTEQKNIL R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  GETTABLEKS R17 R1 K29 ["customButtonPress"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R1 K29 ["customButtonPress"]
  JUMP [+2]
  GETTABLEKS R16 R0 K30 ["onButtonPress"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K31 ["createElement"]
  LOADK R18 K32 ["Frame"]
  DUPTABLE R19 K36 [{"Size", "BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
  SETTABLEKS R2 R19 K20 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K33 ["BackgroundTransparency"]
  SETTABLEKS R4 R19 K34 ["LayoutOrder"]
  GETIMPORT R20 K39 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K35 ["AutomaticSize"]
  DUPTABLE R20 K44 [{"tooltip", "layout", "button", "children"}]
  GETTABLEKS R23 R0 K45 ["state"]
  GETTABLEKS R22 R23 K46 ["showTooltip"]
  JUMPIFNOT R22 [+15]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K31 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K49 [{"text", "pos"}]
  SETTABLEKS R13 R23 K47 ["text"]
  GETTABLEKS R25 R0 K45 ["state"]
  GETTABLEKS R24 R25 K50 ["tooltipPos"]
  SETTABLEKS R24 R23 K48 ["pos"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K40 ["tooltip"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K31 ["createElement"]
  LOADK R22 K51 ["UIListLayout"]
  DUPTABLE R23 K55 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R24 K57 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K52 ["FillDirection"]
  GETIMPORT R24 K59 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R24 R23 K53 ["HorizontalAlignment"]
  GETIMPORT R24 K60 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K54 ["SortOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K41 ["layout"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K31 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K67 [{"size", "inset", "isExpanded", "isExpandable", "onButtonPress", "onMouseEnter", "onMouseLeave", "onMouseMove", "layoutOrder"}]
  GETIMPORT R24 K4 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  GETUPVAL R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K1 ["size"]
  SETTABLEKS R5 R23 K61 ["inset"]
  GETTABLEKS R25 R0 K45 ["state"]
  GETTABLEKS R24 R25 K68 ["expanded"]
  SETTABLEKS R24 R23 K62 ["isExpanded"]
  SETTABLEKS R15 R23 K63 ["isExpandable"]
  SETTABLEKS R16 R23 K30 ["onButtonPress"]
  GETTABLEKS R24 R0 K64 ["onMouseEnter"]
  SETTABLEKS R24 R23 K64 ["onMouseEnter"]
  GETTABLEKS R24 R0 K65 ["onMouseLeave"]
  SETTABLEKS R24 R23 K65 ["onMouseLeave"]
  GETTABLEKS R24 R0 K66 ["onMouseMove"]
  SETTABLEKS R24 R23 K66 ["onMouseMove"]
  LOADN R24 255
  SETTABLEKS R24 R23 K7 ["layoutOrder"]
  DUPTABLE R24 K71 [{"name", "values"}]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K31 ["createElement"]
  GETUPVAL R26 7
  DUPTABLE R27 K72 [{"text", "size", "pos"}]
  SETTABLEKS R12 R27 K47 ["text"]
  GETIMPORT R28 K4 [UDim2.new]
  MOVE R29 R14
  GETIMPORT R30 K26 [UDim.new]
  LOADN R31 1
  LOADN R32 0
  CALL R30 2 -1
  CALL R28 -1 1
  SETTABLEKS R28 R27 K1 ["size"]
  GETIMPORT R28 K4 [UDim2.new]
  LOADN R29 0
  GETUPVAL R31 3
  ADD R30 R31 R5
  LOADN R31 0
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K48 ["pos"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K69 ["name"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K73 ["createFragment"]
  MOVE R28 R10
  NAMECALL R26 R0 K74 ["renderValues"]
  CALL R26 2 -1
  CALL R25 -1 1
  SETTABLEKS R25 R24 K70 ["values"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K42 ["button"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K73 ["createFragment"]
  GETTABLEKS R24 R6 K28 ["Children"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R25 R7 K28 ["Children"]
  JUMP [+1]
  LOADNIL R25
  NAMECALL R22 R0 K75 ["renderChildren"]
  CALL R22 3 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K43 ["children"]
  CALL R17 3 -1
  RETURN R17 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["Components"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K12 ["CellLabel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K13 ["BannerButton"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K14 ["Tooltip"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K9 [script]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K15 ["LuauHeapTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R12 K9 [script]
  GETTABLEKS R11 R12 K10 ["Parent"]
  GETTABLEKS R10 R11 K10 ["Parent"]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K17 ["GeneralFormatting"]
  GETTABLEKS R8 R9 K18 ["LineWidth"]
  GETTABLEKS R10 R7 K17 ["GeneralFormatting"]
  GETTABLEKS R9 R10 K19 ["LineColor"]
  GETTABLEKS R11 R7 K20 ["LuauHeapFormatting"]
  GETTABLEKS R10 R11 K21 ["GraphEntryFrameHeight"]
  GETTABLEKS R12 R7 K20 ["LuauHeapFormatting"]
  GETTABLEKS R11 R12 K22 ["DepthIndent"]
  GETTABLEKS R13 R7 K20 ["LuauHeapFormatting"]
  GETTABLEKS R12 R13 K23 ["ValueCellWidth"]
  GETTABLEKS R14 R7 K20 ["LuauHeapFormatting"]
  GETTABLEKS R13 R14 K24 ["CellPadding"]
  GETTABLEKS R15 R7 K20 ["LuauHeapFormatting"]
  GETTABLEKS R14 R15 K25 ["ValuePadding"]
  GETTABLEKS R15 R1 K26 ["PureComponent"]
  LOADK R17 K27 ["LuauHeapViewEntry"]
  NAMECALL R15 R15 K28 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K29 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R9
  DUPCLOSURE R17 K30 [PROTO_7]
  SETTABLEKS R17 R15 K31 ["init"]
  DUPCLOSURE R17 K32 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R15
  SETTABLEKS R17 R15 K33 ["renderChildren"]
  DUPCLOSURE R17 K34 [PROTO_10]
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R16
  SETTABLEKS R17 R15 K35 ["renderValues"]
  DUPCLOSURE R17 K36 [PROTO_11]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R17 R15 K37 ["render"]
  RETURN R15 1
