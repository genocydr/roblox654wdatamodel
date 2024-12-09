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
  LOADN R3 0
  NEWCLOSURE R4 P0
  CAPTURE REF R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["Frame"]
  DUPTABLE R7 K7 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K5 ["BackgroundTransparency"]
  GETIMPORT R8 K10 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["Size"]
  SETTABLEKS R1 R7 K1 ["LayoutOrder"]
  SETTABLEKS R2 R7 K2 ["ZIndex"]
  DUPTABLE R8 K13 [{"listLayout", "subtitle"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K14 ["UIListLayout"]
  DUPTABLE R11 K19 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R12 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K15 ["FillDirection"]
  GETIMPORT R12 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K16 ["HorizontalAlignment"]
  GETIMPORT R12 K25 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K17 ["VerticalAlignment"]
  GETIMPORT R12 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K18 ["SortOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["listLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K27 ["TextLabel"]
  DUPTABLE R11 K35 [{"BackgroundTransparency", "Text", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "Font", "LayoutOrder", "Size", "TextYAlignment", "ZIndex"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K5 ["BackgroundTransparency"]
  GETUPVAL R12 1
  LOADK R14 K36 ["Feature.SettingsHub.Label.LoadingFriendsListFailed"]
  NAMECALL R12 R12 K37 ["FormatByKey"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Text"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K38 ["Color"]
  GETTABLEKS R12 R13 K39 ["GRAY5"]
  SETTABLEKS R12 R11 K29 ["TextColor3"]
  LOADK R12 K40 [0.22]
  SETTABLEKS R12 R11 K30 ["TextTransparency"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K41 ["textSize"]
  LOADN R13 21
  CALL R12 1 1
  SETTABLEKS R12 R11 K31 ["TextSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["TextWrapped"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K42 ["font"]
  GETIMPORT R13 K44 [Enum.Font.SourceSans]
  CALL R12 1 1
  SETTABLEKS R12 R11 K33 ["Font"]
  ADDK R3 R3 K45 [1]
  MOVE R12 R3
  SETTABLEKS R12 R11 K1 ["LayoutOrder"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 24
  LOADN R15 0
  LOADN R16 42
  CALL R12 4 1
  SETTABLEKS R12 R11 K6 ["Size"]
  GETIMPORT R12 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R12 R11 K34 ["TextYAlignment"]
  SETTABLEKS R2 R11 K2 ["ZIndex"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["subtitle"]
  CALL R5 3 -1
  CLOSEUPVALS R3
  RETURN R5 -1

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
  GETTABLEKS R9 R2 K7 ["Modules"]
  GETTABLEKS R8 R9 K8 ["Settings"]
  GETTABLEKS R7 R8 K16 ["Theme"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R3 K17 ["getTranslator"]
  CALL R7 1 1
  MOVE R8 R7
  CALL R8 0 1
  GETTABLEKS R9 R4 K18 ["PureComponent"]
  LOADK R11 K19 ["FriendsErrorPage"]
  NAMECALL R9 R9 K20 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K21 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K22 ["render"]
  RETURN R9 1
