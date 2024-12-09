PROTO_0:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  LOADNIL R3
  GETIMPORT R5 K3 [game]
  GETTABLEKS R4 R5 K4 ["GameId"]
  JUMPIFNOTEQKN R4 K5 [0] [+97]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K14 [{"BackgroundTransparency", "Image", "SliceCenter", "ScaleType", "Size", "ImageColor3", "ImageTransparency"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K8 ["Image"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K9 ["SliceCenter"]
  GETIMPORT R7 K17 [Enum.ScaleType.Slice]
  SETTABLEKS R7 R6 K10 ["ScaleType"]
  GETIMPORT R7 K20 [UDim2.fromOffset]
  LOADN R8 80
  LOADN R9 80
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Size"]
  GETTABLEKS R9 R0 K0 ["Theme"]
  GETTABLEKS R8 R9 K21 ["PlaceHolder"]
  GETTABLEKS R7 R8 K22 ["Color"]
  SETTABLEKS R7 R6 K12 ["ImageColor3"]
  GETTABLEKS R9 R0 K0 ["Theme"]
  GETTABLEKS R8 R9 K21 ["PlaceHolder"]
  GETTABLEKS R7 R8 K23 ["Transparency"]
  SETTABLEKS R7 R6 K13 ["ImageTransparency"]
  DUPTABLE R7 K25 [{"PlaceholderIcon"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K28 [{"BackgroundTransparency", "Size", "Position", "Image", "ImageColor3", "ImageTransparency", "AnchorPoint"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  GETIMPORT R11 K20 [UDim2.fromOffset]
  LOADN R12 44
  LOADN R13 44
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Size"]
  GETIMPORT R11 K30 [UDim2.fromScale]
  LOADK R12 K31 [0.5]
  LOADK R13 K31 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["Position"]
  GETUPVAL R11 4
  SETTABLEKS R11 R10 K8 ["Image"]
  GETTABLEKS R13 R0 K0 ["Theme"]
  GETTABLEKS R12 R13 K32 ["UIDefault"]
  GETTABLEKS R11 R12 K22 ["Color"]
  SETTABLEKS R11 R10 K12 ["ImageColor3"]
  GETTABLEKS R13 R0 K0 ["Theme"]
  GETTABLEKS R12 R13 K32 ["UIDefault"]
  GETTABLEKS R11 R12 K23 ["Transparency"]
  SETTABLEKS R11 R10 K13 ["ImageTransparency"]
  GETIMPORT R11 K35 [Vector2.new]
  LOADK R12 K31 [0.5]
  LOADK R13 K31 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["AnchorPoint"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K24 ["PlaceholderIcon"]
  CALL R4 3 1
  MOVE R3 R4
  JUMP [+32]
  LOADK R4 K36 ["rbxthumb://type=GameIcon&id=%d&w=%d&h=%d"]
  GETIMPORT R7 K3 [game]
  GETTABLEKS R6 R7 K4 ["GameId"]
  LOADN R7 128
  LOADN R8 128
  NAMECALL R4 R4 K37 ["format"]
  CALL R4 4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["createElement"]
  LOADK R6 K38 ["ImageLabel"]
  DUPTABLE R7 K40 [{"LayoutOrder", "BackgroundTransparency", "Size", "Image"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K39 ["LayoutOrder"]
  LOADN R8 1
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  GETIMPORT R8 K20 [UDim2.fromOffset]
  LOADN R9 80
  LOADN R10 80
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Size"]
  SETTABLEKS R4 R7 K8 ["Image"]
  CALL R5 2 1
  MOVE R3 R5
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  LOADK R5 K41 ["Frame"]
  DUPTABLE R6 K42 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K43 ["props"]
  GETTABLEKS R7 R8 K44 ["layoutOrder"]
  SETTABLEKS R7 R6 K39 ["LayoutOrder"]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  GETIMPORT R7 K45 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K43 ["props"]
  GETTABLEKS R11 R12 K46 ["height"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K11 ["Size"]
  DUPTABLE R7 K49 [{"ContentsFrame", "Divider"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  LOADK R9 K41 ["Frame"]
  DUPTABLE R10 K50 [{"BackgroundTransparency", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  GETIMPORT R11 K30 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Size"]
  DUPTABLE R11 K55 [{"Layout", "Padding", "GameIcon", "TextFrame"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K56 ["UIListLayout"]
  DUPTABLE R14 K61 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R15 K62 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K57 ["SortOrder"]
  GETIMPORT R15 K64 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K58 ["FillDirection"]
  GETIMPORT R15 K66 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K59 ["HorizontalAlignment"]
  GETIMPORT R15 K68 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K60 ["VerticalAlignment"]
  GETIMPORT R15 K70 [UDim.new]
  LOADN R16 0
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["Padding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K51 ["Layout"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K71 ["UIPadding"]
  DUPTABLE R14 K74 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R15 K70 [UDim.new]
  LOADN R16 0
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K72 ["PaddingLeft"]
  GETIMPORT R15 K70 [UDim.new]
  LOADN R16 0
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K73 ["PaddingRight"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K52 ["Padding"]
  SETTABLEKS R3 R11 K53 ["GameIcon"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  LOADK R13 K41 ["Frame"]
  DUPTABLE R14 K42 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K39 ["LayoutOrder"]
  LOADN R15 1
  SETTABLEKS R15 R14 K7 ["BackgroundTransparency"]
  GETIMPORT R15 K45 [UDim2.new]
  LOADN R16 1
  LOADN R17 156
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  DUPTABLE R15 K76 [{"TextLabel"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  LOADK R17 K75 ["TextLabel"]
  DUPTABLE R18 K85 [{"BackgroundTransparency", "Size", "Position", "Font", "Text", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextTruncate", "TextWrapped"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K7 ["BackgroundTransparency"]
  GETIMPORT R19 K45 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 211
  CALL R19 4 1
  SETTABLEKS R19 R18 K11 ["Size"]
  GETIMPORT R19 K20 [UDim2.fromOffset]
  LOADN R20 0
  LOADN R21 25
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["Position"]
  GETTABLEKS R20 R2 K86 ["Header1"]
  GETTABLEKS R19 R20 K1 ["Font"]
  SETTABLEKS R19 R18 K1 ["Font"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K43 ["props"]
  GETTABLEKS R19 R20 K87 ["gameName"]
  SETTABLEKS R19 R18 K77 ["Text"]
  GETTABLEKS R20 R2 K88 ["BaseSize"]
  GETTABLEKS R22 R2 K86 ["Header1"]
  GETTABLEKS R21 R22 K89 ["RelativeSize"]
  MUL R19 R20 R21
  SETTABLEKS R19 R18 K78 ["TextSize"]
  GETTABLEKS R20 R1 K90 ["TextEmphasis"]
  GETTABLEKS R19 R20 K22 ["Color"]
  SETTABLEKS R19 R18 K79 ["TextColor3"]
  GETTABLEKS R20 R1 K90 ["TextEmphasis"]
  GETTABLEKS R19 R20 K80 ["TextTransparency"]
  SETTABLEKS R19 R18 K80 ["TextTransparency"]
  GETIMPORT R19 K91 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K81 ["TextXAlignment"]
  GETIMPORT R19 K93 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K82 ["TextYAlignment"]
  GETIMPORT R19 K95 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R19 R18 K83 ["TextTruncate"]
  LOADB R19 1
  SETTABLEKS R19 R18 K84 ["TextWrapped"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K75 ["TextLabel"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K54 ["TextFrame"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K47 ["ContentsFrame"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  LOADK R9 K41 ["Frame"]
  DUPTABLE R10 K98 [{"BorderSizePixel", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "BackgroundColor3"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K96 ["BorderSizePixel"]
  GETIMPORT R11 K45 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  GETIMPORT R11 K30 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["Position"]
  GETIMPORT R11 K35 [Vector2.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["AnchorPoint"]
  GETTABLEKS R12 R1 K48 ["Divider"]
  GETTABLEKS R11 R12 K23 ["Transparency"]
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  GETTABLEKS R12 R1 K48 ["Divider"]
  GETTABLEKS R11 R12 K22 ["Color"]
  SETTABLEKS R11 R10 K97 ["BackgroundColor3"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K48 ["Divider"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R1 K1 [{"gameName"}]
  GETTABLEKS R3 R0 K2 ["gameInfo"]
  GETTABLEKS R2 R3 K3 ["name"]
  SETTABLEKS R2 R1 K0 ["gameName"]
  RETURN R1 1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R7 R3 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETTABLEKS R8 R3 K14 ["App"]
  GETTABLEKS R7 R8 K15 ["ImageSet"]
  GETTABLEKS R6 R7 K16 ["Images"]
  GETTABLEKS R9 R3 K11 ["Core"]
  GETTABLEKS R8 R9 K15 ["ImageSet"]
  GETTABLEKS R7 R8 K17 ["ImageSetLabel"]
  GETTABLEKS R8 R6 K18 ["icons/imageUnavailable"]
  GETTABLEKS R9 R6 K19 ["component_assets/circle_17"]
  GETIMPORT R10 K22 [Rect.new]
  LOADN R11 8
  LOADN R12 8
  LOADN R13 9
  LOADN R14 9
  CALL R10 4 1
  GETTABLEKS R11 R1 K23 ["PureComponent"]
  LOADK R13 K24 ["MenuHeader"]
  NAMECALL R11 R11 K25 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R2 K26 ["strictInterface"]
  DUPTABLE R13 K30 [{"gameName", "layoutOrder", "height"}]
  GETTABLEKS R14 R2 K31 ["string"]
  SETTABLEKS R14 R13 K27 ["gameName"]
  GETTABLEKS R14 R2 K32 ["integer"]
  SETTABLEKS R14 R13 K28 ["layoutOrder"]
  GETTABLEKS R14 R2 K33 ["numberPositive"]
  SETTABLEKS R14 R13 K29 ["height"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K34 ["validateProps"]
  DUPCLOSURE R12 K35 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K36 ["render"]
  DUPCLOSURE R12 K37 [PROTO_2]
  GETTABLEKS R13 R4 K38 ["UNSTABLE_connect2"]
  MOVE R14 R12
  LOADNIL R15
  CALL R13 2 1
  MOVE R14 R11
  CALL R13 1 -1
  RETURN R13 -1
