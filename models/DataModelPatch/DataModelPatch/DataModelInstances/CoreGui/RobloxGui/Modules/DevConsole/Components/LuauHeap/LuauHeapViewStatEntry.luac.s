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
  SUBRK R5 R3 K6 ["createElement"]
  GETUPVAL R6 1
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  FASTCALL1 TOSTRING R8 [+3]
  MOVE R11 R8
  GETIMPORT R10 K5 [tostring]
  CALL R10 1 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K10 [{"text", "size", "pos"}]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R15 R9
  GETIMPORT R14 K5 [tostring]
  CALL R14 1 1
  SETTABLEKS R14 R13 K7 ["text"]
  SETTABLEKS R3 R13 K8 ["size"]
  GETIMPORT R15 K12 [UDim2.fromScale]
  GETUPVAL R17 0
  SUBK R18 R8 K3 [1]
  MUL R16 R17 R18
  LOADN R17 0
  CALL R15 2 1
  ADD R14 R4 R15
  SETTABLEKS R14 R13 K9 ["pos"]
  CALL R11 2 1
  SETTABLE R11 R2 R10
  FORGLOOP R5 2 [-32]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["size"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  GETUPVAL R6 0
  CALL R2 4 1
  GETTABLEKS R4 R1 K6 ["layoutOrder"]
  ORK R3 R4 K5 [0]
  GETTABLEKS R4 R1 K7 ["data"]
  GETTABLEKS R5 R1 K8 ["compare"]
  GETIMPORT R6 K11 [string.format]
  LOADK R7 K12 ["%.0f"]
  GETTABLEKS R8 R4 K13 ["Size"]
  CALL R6 2 1
  GETIMPORT R7 K11 [string.format]
  LOADK R8 K12 ["%.0f"]
  GETTABLEKS R9 R4 K14 ["Count"]
  CALL R7 2 1
  JUMPIFNOT R5 [+72]
  GETTABLEKS R8 R5 K13 ["Size"]
  GETTABLEKS R9 R4 K13 ["Size"]
  JUMPIFEQ R8 R9 [+31]
  GETIMPORT R8 K11 [string.format]
  LOADK R9 K15 ["%d <font color=\"#%s\">(%s%d)</font>"]
  GETTABLEKS R10 R4 K13 ["Size"]
  GETTABLEKS R12 R5 K13 ["Size"]
  GETTABLEKS R13 R4 K13 ["Size"]
  JUMPIFNOTLT R13 R12 [+3]
  LOADK R11 K16 ["0f0"]
  JUMP [+1]
  LOADK R11 K17 ["f00"]
  GETTABLEKS R13 R5 K13 ["Size"]
  GETTABLEKS R14 R4 K13 ["Size"]
  JUMPIFNOTLT R14 R13 [+3]
  LOADK R12 K18 [""]
  JUMP [+1]
  LOADK R12 K19 ["+"]
  GETTABLEKS R14 R4 K13 ["Size"]
  GETTABLEKS R15 R5 K13 ["Size"]
  SUB R13 R14 R15
  CALL R8 5 1
  MOVE R6 R8
  GETTABLEKS R8 R5 K14 ["Count"]
  GETTABLEKS R9 R4 K14 ["Count"]
  JUMPIFEQ R8 R9 [+31]
  GETIMPORT R8 K11 [string.format]
  LOADK R9 K15 ["%d <font color=\"#%s\">(%s%d)</font>"]
  GETTABLEKS R10 R4 K14 ["Count"]
  GETTABLEKS R12 R5 K14 ["Count"]
  GETTABLEKS R13 R4 K14 ["Count"]
  JUMPIFNOTLT R13 R12 [+3]
  LOADK R11 K16 ["0f0"]
  JUMP [+1]
  LOADK R11 K17 ["f00"]
  GETTABLEKS R13 R5 K14 ["Count"]
  GETTABLEKS R14 R4 K14 ["Count"]
  JUMPIFNOTLT R14 R13 [+3]
  LOADK R12 K18 [""]
  JUMP [+1]
  LOADK R12 K19 ["+"]
  GETTABLEKS R14 R4 K14 ["Count"]
  GETTABLEKS R15 R5 K14 ["Count"]
  SUB R13 R14 R15
  CALL R8 5 1
  MOVE R7 R8
  NEWTABLE R8 0 2
  MOVE R9 R6
  MOVE R10 R7
  SETLIST R8 R9 2 [1]
  GETIMPORT R9 K21 [UDim.new]
  GETUPVAL R12 1
  LENGTH R13 R8
  MUL R11 R12 R13
  SUBRK R10 R22 K11 [string.format]
  LOADN R11 0
  CALL R9 2 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K23 ["createElement"]
  LOADK R11 K24 ["Frame"]
  DUPTABLE R12 K28 [{"Size", "BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
  SETTABLEKS R2 R12 K13 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K25 ["BackgroundTransparency"]
  SETTABLEKS R3 R12 K26 ["LayoutOrder"]
  GETIMPORT R13 K31 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K27 ["AutomaticSize"]
  DUPTABLE R13 K34 [{"layout", "button"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K23 ["createElement"]
  LOADK R15 K35 ["UIListLayout"]
  DUPTABLE R16 K39 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R17 K41 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K36 ["FillDirection"]
  GETIMPORT R17 K43 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K37 ["HorizontalAlignment"]
  GETIMPORT R17 K44 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K38 ["SortOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["layout"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K23 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K48 [{"size", "inset", "isExpanded", "isExpandable", "layoutOrder"}]
  GETIMPORT R17 K4 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K1 ["size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K45 ["inset"]
  LOADB R17 0
  SETTABLEKS R17 R16 K46 ["isExpanded"]
  LOADB R17 0
  SETTABLEKS R17 R16 K47 ["isExpandable"]
  LOADN R17 255
  SETTABLEKS R17 R16 K6 ["layoutOrder"]
  DUPTABLE R17 K51 [{"name", "values"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K54 [{"text", "size", "pos"}]
  GETTABLEKS R21 R4 K55 ["Name"]
  SETTABLEKS R21 R20 K52 ["text"]
  GETIMPORT R21 K4 [UDim2.new]
  MOVE R22 R9
  GETIMPORT R23 K21 [UDim.new]
  LOADN R24 1
  LOADN R25 0
  CALL R23 2 -1
  CALL R21 -1 1
  SETTABLEKS R21 R20 K1 ["size"]
  GETIMPORT R21 K4 [UDim2.new]
  LOADN R22 0
  GETUPVAL R23 5
  LOADN R24 0
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K53 ["pos"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K49 ["name"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K56 ["createFragment"]
  MOVE R21 R8
  NAMECALL R19 R0 K57 ["renderValues"]
  CALL R19 2 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K50 ["values"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K33 ["button"]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETIMPORT R8 K9 [script]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K14 ["LuauHeapTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R11 K9 [script]
  GETTABLEKS R10 R11 K10 ["Parent"]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R7 R8 K17 ["LineWidth"]
  GETTABLEKS R9 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R8 R9 K18 ["LineColor"]
  GETTABLEKS R10 R6 K19 ["LuauHeapFormatting"]
  GETTABLEKS R9 R10 K20 ["StatEntryFrameHeight"]
  GETTABLEKS R11 R6 K19 ["LuauHeapFormatting"]
  GETTABLEKS R10 R11 K21 ["DepthIndent"]
  GETTABLEKS R12 R6 K19 ["LuauHeapFormatting"]
  GETTABLEKS R11 R12 K22 ["ValueCellWidth"]
  GETTABLEKS R13 R6 K19 ["LuauHeapFormatting"]
  GETTABLEKS R12 R13 K23 ["CellPadding"]
  GETTABLEKS R14 R6 K19 ["LuauHeapFormatting"]
  GETTABLEKS R13 R14 K24 ["ValuePadding"]
  GETTABLEKS R14 R1 K25 ["PureComponent"]
  LOADK R16 K26 ["LuauHeapViewStatEntry"]
  NAMECALL R14 R14 K27 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K28 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R8
  DUPCLOSURE R16 K29 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R15
  SETTABLEKS R16 R14 K30 ["renderValues"]
  DUPCLOSURE R16 K31 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R16 R14 K32 ["render"]
  RETURN R14 1
