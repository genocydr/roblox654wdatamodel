PROTO_0:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  GETUPVAL R3 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["localizationKey"]
  NAMECALL R3 R3 K4 ["FormatByKey"]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["Frame"]
  DUPTABLE R6 K10 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["props"]
  GETTABLEKS R7 R8 K11 ["layoutOrder"]
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["BackgroundTransparency"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K2 ["props"]
  GETTABLEKS R11 R12 K15 ["height"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K9 ["Size"]
  DUPTABLE R7 K19 [{"SelectedFrame", "CellContents", "Divider"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["props"]
  GETTABLEKS R8 R9 K20 ["isSelected"]
  JUMPIFNOT R8 [+189]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  DUPTABLE R10 K23 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["BackgroundTransparency"]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 4
  LOADN R14 1
  LOADN R15 4
  CALL R11 4 1
  SETTABLEKS R11 R10 K9 ["Size"]
  GETIMPORT R11 K25 [UDim2.fromScale]
  LOADK R12 K26 [0.5]
  LOADK R13 K26 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Position"]
  GETIMPORT R11 K28 [Vector2.new]
  LOADK R12 K26 [0.5]
  LOADK R13 K26 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["AnchorPoint"]
  DUPTABLE R11 K33 [{"TopBorder", "LeftBorder", "RightBorder", "BottomBorder"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K36 [{"BorderSizePixel", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K34 ["BorderSizePixel"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 2
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K38 ["Transparency"]
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K39 ["Color"]
  SETTABLEKS R15 R14 K35 ["BackgroundColor3"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["TopBorder"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K36 [{"BorderSizePixel", "Size", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K34 ["BorderSizePixel"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 0
  LOADN R17 2
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K38 ["Transparency"]
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K39 ["Color"]
  SETTABLEKS R15 R14 K35 ["BackgroundColor3"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["LeftBorder"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K40 [{"BorderSizePixel", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K34 ["BorderSizePixel"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 0
  LOADN R17 2
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  GETIMPORT R15 K25 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Position"]
  GETIMPORT R15 K28 [Vector2.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["AnchorPoint"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K38 ["Transparency"]
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K39 ["Color"]
  SETTABLEKS R15 R14 K35 ["BackgroundColor3"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K31 ["RightBorder"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K40 [{"BorderSizePixel", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K34 ["BorderSizePixel"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 2
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  GETIMPORT R15 K25 [UDim2.fromScale]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Position"]
  GETIMPORT R15 K28 [Vector2.new]
  LOADN R16 0
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["AnchorPoint"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K38 ["Transparency"]
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  GETTABLEKS R16 R1 K37 ["SystemPrimaryOnHover"]
  GETTABLEKS R15 R16 K39 ["Color"]
  SETTABLEKS R15 R14 K35 ["BackgroundColor3"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K32 ["BottomBorder"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["SelectedFrame"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  DUPTABLE R10 K41 [{"BackgroundTransparency", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K8 ["BackgroundTransparency"]
  GETIMPORT R11 K25 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Size"]
  DUPTABLE R11 K46 [{"Layout", "Padding", "IconFrame", "Text"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K47 ["UIListLayout"]
  DUPTABLE R14 K52 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K54 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K48 ["SortOrder"]
  GETIMPORT R15 K56 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K49 ["FillDirection"]
  GETIMPORT R15 K58 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K50 ["HorizontalAlignment"]
  GETIMPORT R15 K60 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K51 ["VerticalAlignment"]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["Padding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["Layout"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K63 ["UIPadding"]
  DUPTABLE R14 K66 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K64 ["PaddingLeft"]
  GETIMPORT R15 K62 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K65 ["PaddingRight"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["Padding"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K6 ["Frame"]
  DUPTABLE R14 K67 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  LOADN R15 1
  SETTABLEKS R15 R14 K7 ["LayoutOrder"]
  GETIMPORT R15 K69 [UDim2.fromOffset]
  LOADN R16 36
  LOADN R17 36
  CALL R15 2 1
  SETTABLEKS R15 R14 K9 ["Size"]
  DUPTABLE R15 K72 [{"IconLabel", "IconComponent"}]
  LOADB R16 0
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K2 ["props"]
  GETTABLEKS R17 R18 K73 ["icon"]
  JUMPIFEQKNIL R17 [+36]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K77 [{"BackgroundTransparency", "Image", "Size", "ImageTransparency", "ImageColor3"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K8 ["BackgroundTransparency"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K2 ["props"]
  GETTABLEKS R19 R20 K73 ["icon"]
  SETTABLEKS R19 R18 K74 ["Image"]
  GETIMPORT R19 K25 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K9 ["Size"]
  GETTABLEKS R20 R1 K78 ["IconEmphasis"]
  GETTABLEKS R19 R20 K38 ["Transparency"]
  SETTABLEKS R19 R18 K75 ["ImageTransparency"]
  GETTABLEKS R20 R1 K78 ["IconEmphasis"]
  GETTABLEKS R19 R20 K39 ["Color"]
  SETTABLEKS R19 R18 K76 ["ImageColor3"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K70 ["IconLabel"]
  LOADB R16 0
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K2 ["props"]
  GETTABLEKS R17 R18 K79 ["iconComponent"]
  JUMPIFEQKNIL R17 [+10]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K2 ["props"]
  GETTABLEKS R17 R18 K79 ["iconComponent"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K71 ["IconComponent"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K44 ["IconFrame"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["createElement"]
  LOADK R13 K80 ["TextLabel"]
  DUPTABLE R14 K87 [{"BackgroundTransparency", "LayoutOrder", "Size", "Text", "Font", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextTruncate"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K8 ["BackgroundTransparency"]
  LOADN R15 2
  SETTABLEKS R15 R14 K7 ["LayoutOrder"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 208
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K9 ["Size"]
  SETTABLEKS R3 R14 K45 ["Text"]
  GETTABLEKS R16 R2 K88 ["Header2"]
  GETTABLEKS R15 R16 K1 ["Font"]
  SETTABLEKS R15 R14 K1 ["Font"]
  GETTABLEKS R16 R2 K89 ["BaseSize"]
  GETTABLEKS R18 R2 K88 ["Header2"]
  GETTABLEKS R17 R18 K90 ["RelativeSize"]
  MUL R15 R16 R17
  SETTABLEKS R15 R14 K81 ["TextSize"]
  GETTABLEKS R16 R1 K91 ["TextEmphasis"]
  GETTABLEKS R15 R16 K39 ["Color"]
  SETTABLEKS R15 R14 K82 ["TextColor3"]
  GETTABLEKS R16 R1 K91 ["TextEmphasis"]
  GETTABLEKS R15 R16 K83 ["TextTransparency"]
  SETTABLEKS R15 R14 K83 ["TextTransparency"]
  GETIMPORT R15 K92 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K84 ["TextXAlignment"]
  GETIMPORT R15 K93 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K85 ["TextYAlignment"]
  GETIMPORT R15 K95 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R15 R14 K86 ["TextTruncate"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K45 ["Text"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["CellContents"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["props"]
  GETTABLEKS R8 R9 K96 ["hasDivider"]
  JUMPIFNOT R8 [+44]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["createElement"]
  LOADK R9 K6 ["Frame"]
  DUPTABLE R10 K40 [{"BorderSizePixel", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K34 ["BorderSizePixel"]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K9 ["Size"]
  GETIMPORT R11 K25 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Position"]
  GETIMPORT R11 K28 [Vector2.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["AnchorPoint"]
  GETTABLEKS R12 R1 K18 ["Divider"]
  GETTABLEKS R11 R12 K38 ["Transparency"]
  SETTABLEKS R11 R10 K8 ["BackgroundTransparency"]
  GETTABLEKS R12 R1 K18 ["Divider"]
  GETTABLEKS R11 R12 K39 ["Color"]
  SETTABLEKS R11 R10 K35 ["BackgroundColor3"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["Divider"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
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
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["UIBlox"]
  CALL R4 1 1
  GETTABLEKS R7 R4 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETTABLEKS R8 R4 K11 ["Core"]
  GETTABLEKS R7 R8 K14 ["ImageSet"]
  GETTABLEKS R6 R7 K15 ["ImageSetLabel"]
  LOADK R9 K16 ["RobloxGui"]
  NAMECALL R7 R1 K17 ["WaitForChild"]
  CALL R7 2 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R7 K18 ["Modules"]
  GETTABLEKS R9 R10 K19 ["RobloxTranslator"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K20 ["PureComponent"]
  LOADK R11 K21 ["MenuCell"]
  NAMECALL R9 R9 K22 ["extend"]
  CALL R9 2 1
  GETTABLEKS R10 R3 K23 ["strictInterface"]
  DUPTABLE R11 K31 [{"layoutOrder", "icon", "iconComponent", "localizationKey", "height", "hasDivider", "isSelected"}]
  GETTABLEKS R12 R3 K32 ["integer"]
  SETTABLEKS R12 R11 K24 ["layoutOrder"]
  GETTABLEKS R12 R3 K33 ["optional"]
  GETTABLEKS R13 R3 K34 ["union"]
  GETTABLEKS R14 R3 K35 ["table"]
  GETTABLEKS R15 R3 K36 ["string"]
  CALL R13 2 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K25 ["icon"]
  GETTABLEKS R12 R3 K33 ["optional"]
  GETTABLEKS R13 R3 K35 ["table"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["iconComponent"]
  GETTABLEKS R12 R3 K36 ["string"]
  SETTABLEKS R12 R11 K27 ["localizationKey"]
  GETTABLEKS R12 R3 K37 ["numberPositive"]
  SETTABLEKS R12 R11 K28 ["height"]
  GETTABLEKS R12 R3 K38 ["boolean"]
  SETTABLEKS R12 R11 K29 ["hasDivider"]
  GETTABLEKS R12 R3 K38 ["boolean"]
  SETTABLEKS R12 R11 K30 ["isSelected"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K39 ["validateProps"]
  DUPCLOSURE R10 K40 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K41 ["render"]
  RETURN R9 1
