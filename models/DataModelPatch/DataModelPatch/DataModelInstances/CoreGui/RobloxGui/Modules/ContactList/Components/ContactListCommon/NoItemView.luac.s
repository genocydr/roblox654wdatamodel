PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Font"]
  GETTABLEKS R3 R1 K1 ["Theme"]
  GETUPVAL R4 1
  DUPTABLE R5 K4 [{"failedLabel", "placeCallLabel"}]
  LOADK R6 K5 ["Feature.Call.Label.Retry"]
  SETTABLEKS R6 R5 K2 ["failedLabel"]
  LOADK R6 K6 ["Feature.Call.Prompt.StartCall"]
  SETTABLEKS R6 R5 K3 ["placeCallLabel"]
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["createElement"]
  LOADK R6 K8 ["Frame"]
  DUPTABLE R7 K13 [{"Size", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R8 K16 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K9 ["Size"]
  GETIMPORT R8 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K10 ["AutomaticSize"]
  LOADN R8 1
  SETTABLEKS R8 R7 K11 ["BackgroundTransparency"]
  LOADN R8 16
  SETTABLEKS R8 R7 K12 ["LayoutOrder"]
  DUPTABLE R8 K26 [{"UIListLayout", "UIPadding", "Image", "Message", "FailedButton", "CallButton"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K20 ["UIListLayout"]
  DUPTABLE R11 K32 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R12 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K27 ["FillDirection"]
  GETIMPORT R12 K36 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K28 ["HorizontalAlignment"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 20
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["Padding"]
  GETIMPORT R12 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K30 ["SortOrder"]
  GETIMPORT R12 K40 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K31 ["VerticalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["UIListLayout"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K21 ["UIPadding"]
  DUPTABLE R11 K45 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K41 ["PaddingTop"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 12
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["PaddingBottom"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["PaddingLeft"]
  GETIMPORT R12 K38 [UDim.new]
  LOADN R13 0
  LOADN R14 24
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["PaddingRight"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["UIPadding"]
  GETTABLEKS R10 R0 K46 ["isImageEnabled"]
  JUMPIFNOT R10 [+26]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K47 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  GETUPVAL R13 4
  GETTABLEKS R14 R0 K48 ["imageName"]
  GETTABLE R12 R13 R14
  SETTABLEKS R12 R11 K22 ["Image"]
  LOADN R12 1
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  GETIMPORT R12 K50 [UDim2.fromOffset]
  LOADN R13 96
  LOADN R14 96
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Size"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["Image"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K51 ["TextLabel"]
  DUPTABLE R11 K57 [{"Size", "AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextColor3", "TextSize", "TextTransparency", "TextWrapped"}]
  GETIMPORT R12 K59 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Size"]
  GETIMPORT R12 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K10 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  GETTABLEKS R13 R2 K60 ["Body"]
  GETTABLEKS R12 R13 K0 ["Font"]
  SETTABLEKS R12 R11 K0 ["Font"]
  LOADN R12 2
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  GETTABLEKS R12 R0 K61 ["messageText"]
  SETTABLEKS R12 R11 K52 ["Text"]
  GETTABLEKS R13 R3 K62 ["TextDefault"]
  GETTABLEKS R12 R13 K63 ["Color"]
  SETTABLEKS R12 R11 K53 ["TextColor3"]
  GETTABLEKS R14 R2 K60 ["Body"]
  GETTABLEKS R13 R14 K64 ["RelativeSize"]
  GETTABLEKS R14 R2 K65 ["BaseSize"]
  MUL R12 R13 R14
  SETTABLEKS R12 R11 K54 ["TextSize"]
  GETTABLEKS R13 R3 K62 ["TextDefault"]
  GETTABLEKS R12 R13 K66 ["Transparency"]
  SETTABLEKS R12 R11 K55 ["TextTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K56 ["TextWrapped"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["Message"]
  GETTABLEKS R10 R0 K67 ["isFailedButtonEnabled"]
  JUMPIFNOT R10 [+131]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K68 ["TextButton"]
  NEWTABLE R11 16 0
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K9 ["Size"]
  GETIMPORT R12 K70 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K10 ["AutomaticSize"]
  GETTABLEKS R13 R3 K71 ["SystemPrimaryDefault"]
  GETTABLEKS R12 R13 K63 ["Color"]
  SETTABLEKS R12 R11 K72 ["BackgroundColor3"]
  GETTABLEKS R13 R3 K71 ["SystemPrimaryDefault"]
  GETTABLEKS R12 R13 K66 ["Transparency"]
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K73 ["BorderSizePixel"]
  GETTABLEKS R13 R2 K74 ["Header2"]
  GETTABLEKS R12 R13 K0 ["Font"]
  SETTABLEKS R12 R11 K0 ["Font"]
  LOADN R12 3
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  GETTABLEKS R12 R4 K2 ["failedLabel"]
  SETTABLEKS R12 R11 K52 ["Text"]
  GETTABLEKS R13 R3 K75 ["SystemPrimaryContent"]
  GETTABLEKS R12 R13 K63 ["Color"]
  SETTABLEKS R12 R11 K53 ["TextColor3"]
  GETTABLEKS R14 R2 K74 ["Header2"]
  GETTABLEKS R13 R14 K64 ["RelativeSize"]
  GETTABLEKS R14 R2 K65 ["BaseSize"]
  MUL R12 R13 R14
  SETTABLEKS R12 R11 K54 ["TextSize"]
  GETTABLEKS R13 R3 K75 ["SystemPrimaryContent"]
  GETTABLEKS R12 R13 K66 ["Transparency"]
  SETTABLEKS R12 R11 K55 ["TextTransparency"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K76 ["Event"]
  GETTABLEKS R12 R13 K77 ["Activated"]
  GETTABLEKS R13 R0 K78 ["onFailedButtonActivated"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K81 [{"UICorner", "UIPadding", "UISizeConstraint"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K79 ["UICorner"]
  DUPTABLE R15 K83 [{"CornerRadius"}]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K82 ["CornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K79 ["UICorner"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K21 ["UIPadding"]
  DUPTABLE R15 K84 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K43 ["PaddingLeft"]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["PaddingRight"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["UIPadding"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K80 ["UISizeConstraint"]
  DUPTABLE R15 K86 [{"MinSize"}]
  GETIMPORT R16 K88 [Vector2.new]
  LOADN R17 108
  LOADN R18 36
  CALL R16 2 1
  SETTABLEKS R16 R15 K85 ["MinSize"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K80 ["UISizeConstraint"]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K24 ["FailedButton"]
  GETTABLEKS R10 R0 K89 ["isCallButtonEnabled"]
  JUMPIFNOT R10 [+169]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K90 ["ImageButton"]
  NEWTABLE R11 8 0
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 48
  CALL R12 4 1
  SETTABLEKS R12 R11 K9 ["Size"]
  GETTABLEKS R13 R3 K71 ["SystemPrimaryDefault"]
  GETTABLEKS R12 R13 K63 ["Color"]
  SETTABLEKS R12 R11 K72 ["BackgroundColor3"]
  GETTABLEKS R13 R3 K71 ["SystemPrimaryDefault"]
  GETTABLEKS R12 R13 K66 ["Transparency"]
  SETTABLEKS R12 R11 K11 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K73 ["BorderSizePixel"]
  LOADN R12 3
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K76 ["Event"]
  GETTABLEKS R12 R13 K77 ["Activated"]
  GETTABLEKS R13 R0 K91 ["onCallButtonActivated"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K94 [{"UICorner", "UIListLayout", "StartCallIcon", "StartCallButtonText"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K79 ["UICorner"]
  DUPTABLE R15 K83 [{"CornerRadius"}]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K82 ["CornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K79 ["UICorner"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K20 ["UIListLayout"]
  DUPTABLE R15 K32 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R16 K96 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K27 ["FillDirection"]
  GETIMPORT R16 K36 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K28 ["HorizontalAlignment"]
  GETIMPORT R16 K38 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K29 ["Padding"]
  GETIMPORT R16 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K30 ["SortOrder"]
  GETIMPORT R16 K40 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K31 ["VerticalAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["UIListLayout"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K98 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder"}]
  GETIMPORT R16 K50 [UDim2.fromOffset]
  LOADN R17 24
  LOADN R18 24
  CALL R16 2 1
  SETTABLEKS R16 R15 K9 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  LOADK R16 K99 ["rbxassetid://15239343417"]
  SETTABLEKS R16 R15 K22 ["Image"]
  GETTABLEKS R17 R3 K75 ["SystemPrimaryContent"]
  GETTABLEKS R16 R17 K63 ["Color"]
  SETTABLEKS R16 R15 K97 ["ImageColor3"]
  LOADN R16 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K92 ["StartCallIcon"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K51 ["TextLabel"]
  DUPTABLE R15 K100 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextColor3", "TextSize", "TextTransparency"}]
  GETIMPORT R16 K70 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K10 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K11 ["BackgroundTransparency"]
  GETTABLEKS R17 R2 K74 ["Header2"]
  GETTABLEKS R16 R17 K0 ["Font"]
  SETTABLEKS R16 R15 K0 ["Font"]
  LOADN R16 2
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETTABLEKS R16 R4 K3 ["placeCallLabel"]
  SETTABLEKS R16 R15 K52 ["Text"]
  GETTABLEKS R17 R3 K75 ["SystemPrimaryContent"]
  GETTABLEKS R16 R17 K63 ["Color"]
  SETTABLEKS R16 R15 K53 ["TextColor3"]
  GETTABLEKS R18 R2 K74 ["Header2"]
  GETTABLEKS R17 R18 K64 ["RelativeSize"]
  GETTABLEKS R18 R2 K65 ["BaseSize"]
  MUL R16 R17 R18
  SETTABLEKS R16 R15 K54 ["TextSize"]
  GETTABLEKS R17 R3 K75 ["SystemPrimaryContent"]
  GETTABLEKS R16 R17 K66 ["Transparency"]
  SETTABLEKS R16 R15 K55 ["TextTransparency"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K93 ["StartCallButtonText"]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K25 ["CallButton"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  LOADK R5 K9 ["RobloxGui"]
  NAMECALL R3 R0 K10 ["WaitForChild"]
  CALL R3 2 1
  GETTABLEKS R5 R3 K11 ["Modules"]
  GETTABLEKS R4 R5 K12 ["ContactList"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R4 K13 ["dependencies"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["UIBlox"]
  GETTABLEKS R8 R5 K15 ["Hooks"]
  GETTABLEKS R7 R8 K16 ["useLocalization"]
  GETTABLEKS R10 R6 K17 ["App"]
  GETTABLEKS R9 R10 K18 ["ImageSet"]
  GETTABLEKS R8 R9 K19 ["Images"]
  GETTABLEKS R11 R6 K20 ["Core"]
  GETTABLEKS R10 R11 K18 ["ImageSet"]
  GETTABLEKS R9 R10 K21 ["ImageSetLabel"]
  GETTABLEKS R12 R6 K20 ["Core"]
  GETTABLEKS R11 R12 K22 ["Style"]
  GETTABLEKS R10 R11 K23 ["useStyle"]
  DUPCLOSURE R11 K24 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R11 1
