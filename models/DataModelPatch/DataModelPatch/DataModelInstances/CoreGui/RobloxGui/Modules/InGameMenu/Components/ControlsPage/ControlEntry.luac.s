PROTO_0:
  JUMPIFNOT R2 [+8]
  GETIMPORT R3 K2 [UDim2.new]
  LOADN R4 0
  LOADN R5 19
  LOADN R6 0
  LOADN R7 24
  CALL R3 4 1
  JUMPIF R3 [+7]
  GETIMPORT R3 K2 [UDim2.new]
  LOADN R4 0
  LOADN R5 19
  LOADN R6 0
  LOADN R7 16
  CALL R3 4 1
  MOVE R4 R2
  JUMPIFNOT R4 [+2]
  GETIMPORT R4 K6 [Enum.TextYAlignment.Bottom]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K13 [{"themeKey", "fontKey", "Text", "Size", "TextYAlignment", "LayoutOrder"}]
  LOADK R8 K14 ["TextEmphasis"]
  SETTABLEKS R8 R7 K8 ["themeKey"]
  LOADK R8 K15 ["Header1"]
  SETTABLEKS R8 R7 K9 ["fontKey"]
  SETTABLEKS R0 R7 K10 ["Text"]
  SETTABLEKS R3 R7 K11 ["Size"]
  SETTABLEKS R4 R7 K4 ["TextYAlignment"]
  SETTABLEKS R1 R7 K12 ["LayoutOrder"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["EnumType"]
  GETIMPORT R3 K3 [Enum.KeyCode]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K8 [{"keyCode", "textThemeKey", "LayoutOrder"}]
  SETTABLEKS R0 R4 K5 ["keyCode"]
  LOADK R5 K9 ["TextEmphasis"]
  SETTABLEKS R5 R4 K6 ["textThemeKey"]
  SETTABLEKS R1 R4 K7 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K11 [{"input", "LayoutOrder"}]
  SETTABLEKS R0 R4 K10 ["input"]
  SETTABLEKS R1 R4 K7 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  NEWTABLE R2 2 0
  JUMPIF R1 [+2]
  LOADN R3 7
  JUMP [+1]
  LOADN R3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["UIListLayout"]
  DUPTABLE R6 K7 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R7 K10 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K2 ["FillDirection"]
  GETIMPORT R7 K12 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K3 ["VerticalAlignment"]
  GETIMPORT R7 K14 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R7 R6 K4 ["HorizontalAlignment"]
  GETIMPORT R7 K16 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R7 R6 K5 ["SortOrder"]
  GETIMPORT R7 K19 [UDim.new]
  LOADN R8 0
  MOVE R9 R3
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Padding"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K20 ["ListLayout"]
  LOADN R4 1
  GETIMPORT R5 K22 [ipairs]
  MOVE R6 R0
  CALL R5 1 3
  FORGPREP_INEXT R5
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K24 [typeof]
  CALL R10 1 1
  JUMPIFEQKS R10 K25 ["table"] [+22]
  LOADK R11 K26 ["input"]
  MOVE R12 R8
  CONCAT R10 R11 R12
  GETUPVAL R11 1
  MOVE R12 R9
  MOVE R13 R4
  CALL R11 2 1
  SETTABLE R11 R2 R10
  ADDK R4 R4 K27 [1]
  JUMPIFNOT R1 [+45]
  LENGTH R10 R0
  JUMPIFNOTEQ R8 R10 [+43]
  GETUPVAL R10 2
  LOADK R11 K28 ["..."]
  MOVE R12 R4
  LOADB R13 1
  CALL R10 3 1
  SETTABLEKS R10 R2 K29 ["Elipses"]
  JUMP [+34]
  GETIMPORT R10 K22 [ipairs]
  MOVE R11 R9
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETIMPORT R15 K32 [string.format]
  LOADK R16 K33 ["%d_%d"]
  MOVE R17 R8
  MOVE R18 R13
  CALL R15 3 1
  LOADK R17 K34 ["groupedInput"]
  MOVE R18 R15
  CONCAT R16 R17 R18
  GETUPVAL R17 1
  MOVE R18 R14
  MOVE R19 R4
  CALL R17 2 1
  SETTABLE R17 R2 R16
  ADDK R4 R4 K27 [1]
  LENGTH R16 R9
  JUMPIFNOTLT R13 R16 [+10]
  LOADK R17 K35 ["groupedDivider"]
  MOVE R18 R15
  CONCAT R16 R17 R18
  GETUPVAL R17 2
  LOADK R18 K36 ["+"]
  MOVE R19 R4
  CALL R17 2 1
  SETTABLE R17 R2 R16
  ADDK R4 R4 K27 [1]
  FORGLOOP R10 2 [inext] [-28]
  JUMPIF R1 [+12]
  LENGTH R10 R0
  JUMPIFNOTLT R8 R10 [+10]
  LOADK R11 K37 ["divider"]
  MOVE R12 R8
  CONCAT R10 R11 R12
  GETUPVAL R11 2
  LOADK R12 K38 ["/"]
  MOVE R13 R4
  CALL R11 2 1
  SETTABLE R11 R2 R10
  ADDK R4 R4 K27 [1]
  FORGLOOP R5 2 [inext] [-76]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K39 ["Frame"]
  DUPTABLE R7 K43 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K40 ["BackgroundTransparency"]
  GETIMPORT R8 K45 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K41 ["Size"]
  GETIMPORT R8 K45 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K42 ["Position"]
  MOVE R8 R2
  CALL R5 3 -1
  RETURN R5 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  GETIMPORT R4 K8 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 50
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["Size"]
  DUPTABLE R4 K12 [{"ActionLabel", "Divider", "Inputs"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K19 [{"fontKey", "themeKey", "TextXAlignment", "Size", "AnchorPoint", "Position", "Text"}]
  LOADK R8 K20 ["Header2"]
  SETTABLEKS R8 R7 K13 ["fontKey"]
  LOADK R8 K21 ["TextEmphasis"]
  SETTABLEKS R8 R7 K14 ["themeKey"]
  GETIMPORT R8 K24 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K15 ["TextXAlignment"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  LOADN R10 200
  LOADN R11 0
  LOADN R12 22
  CALL R8 4 1
  SETTABLEKS R8 R7 K4 ["Size"]
  GETIMPORT R8 K26 [Vector2.new]
  LOADN R9 0
  LOADK R10 K27 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["AnchorPoint"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADK R11 K27 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Position"]
  GETTABLEKS R8 R0 K28 ["actionDescription"]
  SETTABLEKS R8 R7 K18 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["ActionLabel"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K29 ["hasDivider"]
  JUMPIFNOT R5 [+24]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K30 [{"Size", "Position"}]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  CALL R8 4 1
  SETTABLEKS R8 R7 K4 ["Size"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 1
  LOADN R12 255
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["Position"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Divider"]
  GETUPVAL R5 4
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K31 ["inputs"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K32 ["isList"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Inputs"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["propValidation"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 -1 0
  GETUPVAL R1 2
  DUPTABLE R2 K4 [{"actionDescription"}]
  GETTABLEKS R3 R0 K3 ["actionDescription"]
  SETTABLEKS R3 R2 K3 ["actionDescription"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R1 1 -1
  RETURN R1 -1

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
  GETTABLEKS R3 R1 K9 ["t"]
  GETTABLEKS R4 R1 K10 ["UIBlox"]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K14 ["GlobalConfig"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R5 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["ThemedTextLabel"]
  CALL R7 1 1
  GETTABLEKS R10 R4 K17 ["App"]
  GETTABLEKS R9 R10 K18 ["Menu"]
  GETTABLEKS R8 R9 K19 ["KeyLabel"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R5 K15 ["Components"]
  GETTABLEKS R10 R11 K20 ["PointerLabel"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R5 K15 ["Components"]
  GETTABLEKS R11 R12 K21 ["Divider"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R5 K22 ["Localization"]
  GETTABLEKS R12 R13 K23 ["withLocalization"]
  CALL R11 1 1
  GETTABLEKS R12 R3 K24 ["strictInterface"]
  DUPTABLE R13 K30 [{"actionDescription", "inputs", "isList", "hasDivider", "LayoutOrder"}]
  GETTABLEKS R14 R3 K31 ["string"]
  SETTABLEKS R14 R13 K25 ["actionDescription"]
  GETTABLEKS R14 R3 K32 ["table"]
  SETTABLEKS R14 R13 K26 ["inputs"]
  GETTABLEKS R14 R3 K33 ["optional"]
  GETTABLEKS R15 R3 K34 ["boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K27 ["isList"]
  GETTABLEKS R14 R3 K34 ["boolean"]
  SETTABLEKS R14 R13 K28 ["hasDivider"]
  GETTABLEKS R14 R3 K35 ["integer"]
  SETTABLEKS R14 R13 K29 ["LayoutOrder"]
  CALL R12 1 1
  DUPCLOSURE R13 K36 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  DUPCLOSURE R14 K37 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  DUPCLOSURE R15 K38 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R13
  DUPCLOSURE R16 K39 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R15
  RETURN R16 1
