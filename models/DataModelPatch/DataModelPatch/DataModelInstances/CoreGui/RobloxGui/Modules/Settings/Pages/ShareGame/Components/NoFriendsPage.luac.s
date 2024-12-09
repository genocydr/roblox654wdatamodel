PROTO_0:
  GETUPVAL R1 0
  ADDK R0 R1 K0 [1]
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LayoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["ZIndex"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Position"]
  LOADN R4 0
  NEWCLOSURE R5 P0
  CAPTURE REF R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K5 ["Frame"]
  DUPTABLE R8 K8 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex", "Position"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K6 ["BackgroundTransparency"]
  GETIMPORT R9 K11 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Size"]
  SETTABLEKS R1 R8 K1 ["LayoutOrder"]
  SETTABLEKS R2 R8 K2 ["ZIndex"]
  SETTABLEKS R3 R8 K3 ["Position"]
  DUPTABLE R9 K17 [{"listLayout", "friendsIcon", "iconToSubtitleSpacer", "subtitle", "bottomSpacer"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K18 ["UIListLayout"]
  DUPTABLE R12 K23 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R13 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K19 ["FillDirection"]
  GETIMPORT R13 K28 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K20 ["HorizontalAlignment"]
  GETIMPORT R13 K29 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K21 ["VerticalAlignment"]
  GETIMPORT R13 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K22 ["SortOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["listLayout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K31 ["ImageLabel"]
  DUPTABLE R12 K35 [{"BackgroundTransparency", "Image", "ImageRectOffset", "ImageRectSize", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K6 ["BackgroundTransparency"]
  GETUPVAL R13 1
  SETTABLEKS R13 R12 K32 ["Image"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K36 ["offset"]
  SETTABLEKS R13 R12 K33 ["ImageRectOffset"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K37 ["size"]
  SETTABLEKS R13 R12 K34 ["ImageRectSize"]
  GETIMPORT R13 K11 [UDim2.new]
  LOADN R14 0
  LOADN R15 72
  LOADN R16 0
  LOADN R17 72
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  ADDK R4 R4 K38 [1]
  MOVE R13 R4
  SETTABLEKS R13 R12 K1 ["LayoutOrder"]
  SETTABLEKS R2 R12 K2 ["ZIndex"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["friendsIcon"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K5 ["Frame"]
  DUPTABLE R12 K39 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K6 ["BackgroundTransparency"]
  GETIMPORT R13 K11 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 34
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  ADDK R4 R4 K38 [1]
  MOVE R13 R4
  SETTABLEKS R13 R12 K1 ["LayoutOrder"]
  SETTABLEKS R2 R12 K2 ["ZIndex"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["iconToSubtitleSpacer"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K40 ["TextLabel"]
  DUPTABLE R12 K48 [{"BackgroundTransparency", "Text", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "Font", "LayoutOrder", "Size", "TextYAlignment", "ZIndex"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K6 ["BackgroundTransparency"]
  GETUPVAL R13 3
  LOADK R15 K49 ["Feature.SettingsHub.Label.NoFriendsScreen"]
  NAMECALL R13 R13 K50 ["FormatByKey"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["Text"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K51 ["Color"]
  GETTABLEKS R13 R14 K52 ["GRAY5"]
  SETTABLEKS R13 R12 K42 ["TextColor3"]
  LOADK R13 K53 [0.22]
  SETTABLEKS R13 R12 K43 ["TextTransparency"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K54 ["textSize"]
  LOADN R14 21
  CALL R13 1 1
  SETTABLEKS R13 R12 K44 ["TextSize"]
  LOADB R13 1
  SETTABLEKS R13 R12 K45 ["TextWrapped"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K55 ["font"]
  GETIMPORT R14 K57 [Enum.Font.SourceSans]
  CALL R13 1 1
  SETTABLEKS R13 R12 K46 ["Font"]
  ADDK R4 R4 K38 [1]
  MOVE R13 R4
  SETTABLEKS R13 R12 K1 ["LayoutOrder"]
  GETIMPORT R13 K11 [UDim2.new]
  LOADN R14 0
  LOADN R15 24
  LOADN R16 0
  LOADN R17 42
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  GETIMPORT R13 K59 [Enum.TextYAlignment.Top]
  SETTABLEKS R13 R12 K47 ["TextYAlignment"]
  SETTABLEKS R2 R12 K2 ["ZIndex"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["subtitle"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K5 ["Frame"]
  DUPTABLE R12 K39 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K6 ["BackgroundTransparency"]
  GETIMPORT R13 K11 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 120
  CALL R13 4 1
  SETTABLEKS R13 R12 K7 ["Size"]
  ADDK R4 R4 K38 [1]
  MOVE R13 R4
  SETTABLEKS R13 R12 K1 ["LayoutOrder"]
  SETTABLEKS R2 R12 K2 ["ZIndex"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["bottomSpacer"]
  CALL R6 3 -1
  CLOSEUPVALS R4
  RETURN R6 -1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R6 R2 K7 ["Modules"]
  GETTABLEKS R5 R6 K8 ["Settings"]
  GETTABLEKS R4 R5 K9 ["Pages"]
  GETTABLEKS R3 R4 K10 ["ShareGame"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R0 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R6 R3 K15 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R3 K16 ["Spritesheets"]
  GETTABLEKS R7 R8 K17 ["ShareGameIcons"]
  CALL R6 1 1
  LOADK R9 K18 ["friends"]
  NAMECALL R7 R6 K19 ["GetFrame"]
  CALL R7 2 1
  NAMECALL R8 R6 K20 ["GetImagePath"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R2 K7 ["Modules"]
  GETTABLEKS R11 R12 K8 ["Settings"]
  GETTABLEKS R10 R11 K21 ["Theme"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R11 R3 K22 ["getTranslator"]
  CALL R10 1 1
  MOVE R11 R10
  CALL R11 0 1
  GETTABLEKS R12 R4 K23 ["PureComponent"]
  LOADK R14 K24 ["NoFriendsPage"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K26 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K27 ["render"]
  RETURN R12 1
