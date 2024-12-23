PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["UIListLayout"]
  DUPTABLE R4 K3 [{"SortOrder"}]
  GETIMPORT R5 K6 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R5 R4 K2 ["SortOrder"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K7 ["ListLayout"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K8 ["UIPadding"]
  DUPTABLE R4 K11 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R5 K14 [UDim.new]
  LOADN R6 0
  LOADN R7 95
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["PaddingLeft"]
  GETIMPORT R5 K14 [UDim.new]
  LOADN R6 0
  LOADN R7 95
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["PaddingRight"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K15 ["Padding"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K16 ["UISizeConstraint"]
  DUPTABLE R4 K19 [{"MaxSize", "MinSize"}]
  GETIMPORT R5 K21 [Vector2.new]
  LOADN R6 66
  LOADK R7 K22 [∞]
  CALL R5 2 1
  SETTABLEKS R5 R4 K17 ["MaxSize"]
  GETIMPORT R5 K21 [Vector2.new]
  LOADN R6 150
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K18 ["MinSize"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K23 ["SizeConstraint"]
  LOADN R2 0
  LOADN R3 0
  LOADN R4 1
  GETIMPORT R5 K25 [ipairs]
  GETUPVAL R8 1
  GETTABLEKS R6 R8 K26 ["keybinds"]
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETTABLEKS R10 R9 K27 ["title"]
  ADDK R2 R2 K28 [1]
  MOVE R12 R10
  LOADK R13 K29 ["_header"]
  CONCAT R11 R12 R13
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K30 [{"title", "LayoutOrder"}]
  SETTABLEKS R10 R14 K27 ["title"]
  SETTABLEKS R4 R14 K5 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLE R12 R1 R11
  ADDK R4 R4 K28 [1]
  GETIMPORT R11 K25 [ipairs]
  GETTABLEKS R12 R9 K31 ["controls"]
  CALL R11 1 3
  FORGPREP_INEXT R11
  ADDK R3 R3 K28 [1]
  MOVE R17 R10
  LOADK R18 K32 ["_"]
  MOVE R19 R14
  CONCAT R16 R17 R19
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K37 [{"LayoutOrder", "actionDescription", "inputs", "isList", "hasDivider"}]
  SETTABLEKS R4 R19 K5 ["LayoutOrder"]
  GETTABLEKS R20 R15 K38 ["desc"]
  SETTABLEKS R20 R19 K33 ["actionDescription"]
  GETTABLEKS R20 R15 K34 ["inputs"]
  SETTABLEKS R20 R19 K34 ["inputs"]
  GETTABLEKS R20 R15 K39 ["list"]
  SETTABLEKS R20 R19 K35 ["isList"]
  GETTABLEKS R22 R9 K31 ["controls"]
  LENGTH R21 R22
  JUMPIFNOTEQ R14 R21 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  SETTABLEKS R20 R19 K36 ["hasDivider"]
  CALL R17 2 1
  SETTABLE R17 R1 R16
  ADDK R4 R4 K28 [1]
  FORGLOOP R11 2 [inext] [-37]
  FORGLOOP R5 2 [inext] [-63]
  LOADN R7 45
  MUL R6 R7 R2
  LOADN R8 50
  MUL R7 R8 R3
  ADD R5 R6 R7
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K41 [{"titleText"}]
  LOADK R9 K42 ["CoreScripts.InGameMenu.Controls.KeyboardAndMouseTitle"]
  SETTABLEKS R9 R8 K40 ["titleText"]
  DUPTABLE R9 K44 [{"ScrollContent"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K48 [{"CanvasSize", "ScrollingDirection", "Size"}]
  GETIMPORT R13 K50 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  MOVE R17 R5
  CALL R13 4 1
  SETTABLEKS R13 R12 K45 ["CanvasSize"]
  GETIMPORT R13 K52 [Enum.ScrollingDirection.Y]
  SETTABLEKS R13 R12 K46 ["ScrollingDirection"]
  GETIMPORT R13 K50 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 126
  CALL R13 4 1
  SETTABLEKS R13 R12 K47 ["Size"]
  DUPTABLE R13 K54 [{"ListContainer"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["createElement"]
  LOADK R15 K55 ["Frame"]
  DUPTABLE R16 K59 [{"Size", "BackgroundTransparency", "AnchorPoint", "Position"}]
  GETIMPORT R17 K50 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K47 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K56 ["BackgroundTransparency"]
  GETIMPORT R17 K21 [Vector2.new]
  LOADK R18 K60 [0.5]
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["AnchorPoint"]
  GETIMPORT R17 K50 [UDim2.new]
  LOADK R18 K60 [0.5]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K58 ["Position"]
  MOVE R17 R1
  CALL R14 3 1
  SETTABLEKS R14 R13 K53 ["ListContainer"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K43 ["ScrollContent"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Controls"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R9 K10 [script]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K14 ["ControlLayoutContainer"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R3 K15 ["Components"]
  GETTABLEKS R7 R8 K16 ["PaddedScrollFrame"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R11 K10 [script]
  GETTABLEKS R10 R11 K11 ["Parent"]
  GETTABLEKS R9 R10 K11 ["Parent"]
  GETTABLEKS R8 R9 K17 ["ControlEntry"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R12 K10 [script]
  GETTABLEKS R11 R12 K11 ["Parent"]
  GETTABLEKS R10 R11 K11 ["Parent"]
  GETTABLEKS R9 R10 K18 ["ControlEntryHeader"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R9 1
