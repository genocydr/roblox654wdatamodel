PROTO_0:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  GETUPVAL R3 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["localizationKey"]
  NAMECALL R3 R3 K4 ["FormatByKey"]
  CALL R3 2 1
  GETTABLEKS R5 R2 K5 ["BaseSize"]
  GETTABLEKS R7 R2 K6 ["Header2"]
  GETTABLEKS R6 R7 K7 ["RelativeSize"]
  MUL R4 R5 R6
  JUMPIF R4 [+7]
  GETTABLEKS R5 R2 K5 ["BaseSize"]
  GETTABLEKS R7 R2 K8 ["Header1"]
  GETTABLEKS R6 R7 K7 ["RelativeSize"]
  MUL R4 R5 R6
  GETUPVAL R6 2
  MOVE R8 R3
  MOVE R9 R4
  GETTABLEKS R11 R2 K6 ["Header2"]
  GETTABLEKS R10 R11 K1 ["Font"]
  GETIMPORT R11 K11 [Vector2.new]
  LOADN R12 232
  LOADN R13 232
  CALL R11 2 -1
  NAMECALL R6 R6 K12 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R5 R6 K13 ["X"]
  LOADN R7 44
  ADD R6 R7 R5
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K14 ["createElement"]
  LOADK R8 K15 ["Frame"]
  DUPTABLE R9 K19 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K2 ["props"]
  GETTABLEKS R10 R11 K20 ["layoutOrder"]
  SETTABLEKS R10 R9 K16 ["LayoutOrder"]
  LOADN R10 1
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  GETIMPORT R10 K22 [UDim2.new]
  LOADN R11 0
  MOVE R12 R6
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K18 ["Size"]
  DUPTABLE R10 K26 [{"Layout", "Icon", "Text"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K14 ["createElement"]
  LOADK R12 K27 ["UIListLayout"]
  DUPTABLE R13 K33 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K28 ["SortOrder"]
  GETIMPORT R14 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K29 ["FillDirection"]
  GETIMPORT R14 K39 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K30 ["HorizontalAlignment"]
  GETIMPORT R14 K41 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K31 ["VerticalAlignment"]
  GETIMPORT R14 K43 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["Layout"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K14 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K47 [{"BackgroundTransparency", "LayoutOrder", "Size", "Image", "ImageTransparency", "ImageColor3"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K17 ["BackgroundTransparency"]
  LOADN R14 1
  SETTABLEKS R14 R13 K16 ["LayoutOrder"]
  GETIMPORT R14 K49 [UDim2.fromOffset]
  LOADN R15 36
  LOADN R16 36
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["Size"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K2 ["props"]
  GETTABLEKS R14 R15 K50 ["keyImage"]
  SETTABLEKS R14 R13 K44 ["Image"]
  GETTABLEKS R15 R1 K51 ["IconEmphasis"]
  GETTABLEKS R14 R15 K52 ["Transparency"]
  SETTABLEKS R14 R13 K45 ["ImageTransparency"]
  GETTABLEKS R15 R1 K51 ["IconEmphasis"]
  GETTABLEKS R14 R15 K53 ["Color"]
  SETTABLEKS R14 R13 K46 ["ImageColor3"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Icon"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K14 ["createElement"]
  LOADK R12 K54 ["TextLabel"]
  DUPTABLE R13 K60 [{"BackgroundTransparency", "Size", "LayoutOrder", "Font", "Text", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K17 ["BackgroundTransparency"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 0
  MOVE R16 R5
  LOADN R17 0
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K18 ["Size"]
  LOADN R14 2
  SETTABLEKS R14 R13 K16 ["LayoutOrder"]
  GETTABLEKS R15 R2 K6 ["Header2"]
  GETTABLEKS R14 R15 K1 ["Font"]
  SETTABLEKS R14 R13 K1 ["Font"]
  SETTABLEKS R3 R13 K25 ["Text"]
  SETTABLEKS R4 R13 K55 ["TextSize"]
  GETTABLEKS R15 R1 K61 ["TextEmphasis"]
  GETTABLEKS R14 R15 K53 ["Color"]
  SETTABLEKS R14 R13 K56 ["TextColor3"]
  GETTABLEKS R15 R1 K61 ["TextEmphasis"]
  GETTABLEKS R14 R15 K57 ["TextTransparency"]
  SETTABLEKS R14 R13 K57 ["TextTransparency"]
  GETIMPORT R14 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K58 ["TextXAlignment"]
  GETIMPORT R14 K63 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K59 ["TextYAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Text"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TextService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R8 R5 K12 ["Core"]
  GETTABLEKS R7 R8 K13 ["Style"]
  GETTABLEKS R6 R7 K14 ["withStyle"]
  GETTABLEKS R9 R5 K12 ["Core"]
  GETTABLEKS R8 R9 K15 ["ImageSet"]
  GETTABLEKS R7 R8 K16 ["ImageSetLabel"]
  GETTABLEKS R11 R5 K12 ["Core"]
  GETTABLEKS R10 R11 K15 ["ImageSet"]
  GETTABLEKS R9 R10 K17 ["Validator"]
  GETTABLEKS R8 R9 K18 ["validateImage"]
  LOADK R11 K19 ["RobloxGui"]
  NAMECALL R9 R1 K20 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R9 K21 ["Modules"]
  GETTABLEKS R11 R12 K22 ["RobloxTranslator"]
  CALL R10 1 1
  GETIMPORT R16 K24 [script]
  GETTABLEKS R15 R16 K25 ["Parent"]
  GETTABLEKS R14 R15 K25 ["Parent"]
  GETTABLEKS R13 R14 K25 ["Parent"]
  GETTABLEKS R12 R13 K25 ["Parent"]
  GETTABLEKS R11 R12 K25 ["Parent"]
  GETTABLEKS R12 R11 K26 ["InGameMenu"]
  GETTABLEKS R13 R3 K27 ["PureComponent"]
  LOADK R15 K28 ["ButtonHint"]
  NAMECALL R13 R13 K29 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R4 K30 ["strictInterface"]
  DUPTABLE R15 K34 [{"layoutOrder", "localizationKey", "keyImage"}]
  GETTABLEKS R16 R4 K35 ["optional"]
  GETTABLEKS R17 R4 K36 ["integer"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["layoutOrder"]
  GETTABLEKS R16 R4 K37 ["string"]
  SETTABLEKS R16 R15 K32 ["localizationKey"]
  SETTABLEKS R8 R15 K33 ["keyImage"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K38 ["validateProps"]
  DUPCLOSURE R14 K39 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K40 ["render"]
  RETURN R13 1
