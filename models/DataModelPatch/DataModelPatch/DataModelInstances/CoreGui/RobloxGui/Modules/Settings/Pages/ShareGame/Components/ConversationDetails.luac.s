PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["title"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["subtitle"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["presence"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["size"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["layoutOrder"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["zIndex"]
  LOADNIL R7
  JUMPIFEQKNIL R2 [+43]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["TextLabel"]
  DUPTABLE R10 K19 [{"BackgroundTransparency", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped", "LayoutOrder", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K9 ["BackgroundTransparency"]
  GETIMPORT R11 K22 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETUPVAL R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K10 ["Size"]
  SETTABLEKS R2 R10 K11 ["Text"]
  GETUPVAL R11 2
  SETTABLEKS R11 R10 K12 ["Font"]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K13 ["TextColor3"]
  GETUPVAL R11 1
  SETTABLEKS R11 R10 K14 ["TextSize"]
  GETIMPORT R11 K25 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K15 ["TextXAlignment"]
  LOADB R11 1
  SETTABLEKS R11 R10 K16 ["TextWrapped"]
  LOADN R11 1
  SETTABLEKS R11 R10 K17 ["LayoutOrder"]
  SETTABLEKS R6 R10 K18 ["ZIndex"]
  CALL R8 2 1
  MOVE R7 R8
  LOADNIL R8
  JUMPIFEQKNIL R3 [+51]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K8 ["TextLabel"]
  DUPTABLE R11 K26 [{"BackgroundTransparency", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "LayoutOrder", "ZIndex"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K9 ["BackgroundTransparency"]
  GETIMPORT R12 K22 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R16 4
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Size"]
  GETUPVAL R12 5
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K27 ["PresenceTextKey"]
  GETTABLE R14 R15 R3
  NAMECALL R12 R12 K28 ["FormatByKey"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K11 ["Text"]
  GETUPVAL R12 7
  SETTABLEKS R12 R11 K12 ["Font"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K29 ["PresenceColors"]
  GETTABLE R12 R13 R3
  SETTABLEKS R12 R11 K13 ["TextColor3"]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K14 ["TextSize"]
  GETIMPORT R12 K25 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K15 ["TextXAlignment"]
  LOADN R12 2
  SETTABLEKS R12 R11 K17 ["LayoutOrder"]
  SETTABLEKS R6 R11 K18 ["ZIndex"]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K30 ["Frame"]
  DUPTABLE R11 K31 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K9 ["BackgroundTransparency"]
  SETTABLEKS R4 R11 K10 ["Size"]
  SETTABLEKS R5 R11 K17 ["LayoutOrder"]
  SETTABLEKS R6 R11 K18 ["ZIndex"]
  DUPTABLE R12 K36 [{"UIListLayout", "Title", "Subtitle", "Presence"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K32 ["UIListLayout"]
  DUPTABLE R15 K42 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R16 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K37 ["FillDirection"]
  GETIMPORT R16 K45 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K38 ["HorizontalAlignment"]
  GETIMPORT R16 K47 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K39 ["VerticalAlignment"]
  GETIMPORT R16 K48 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K40 ["SortOrder"]
  GETIMPORT R16 K50 [UDim.new]
  LOADN R17 0
  LOADN R18 2
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["Padding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["UIListLayout"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K8 ["TextLabel"]
  DUPTABLE R15 K19 [{"BackgroundTransparency", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped", "LayoutOrder", "ZIndex"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K9 ["BackgroundTransparency"]
  GETIMPORT R16 K22 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R20 8
  CALL R16 4 1
  SETTABLEKS R16 R15 K10 ["Size"]
  ORK R16 R1 K51 [""]
  SETTABLEKS R16 R15 K11 ["Text"]
  GETUPVAL R16 9
  SETTABLEKS R16 R15 K12 ["Font"]
  GETUPVAL R16 10
  SETTABLEKS R16 R15 K13 ["TextColor3"]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K14 ["TextSize"]
  GETIMPORT R16 K25 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K15 ["TextXAlignment"]
  LOADB R16 1
  SETTABLEKS R16 R15 K16 ["TextWrapped"]
  LOADN R16 0
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  SETTABLEKS R6 R15 K18 ["ZIndex"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["Title"]
  SETTABLEKS R7 R12 K34 ["Subtitle"]
  SETTABLEKS R8 R12 K35 ["Presence"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R7 R2 K11 ["Modules"]
  GETTABLEKS R6 R7 K12 ["Settings"]
  GETTABLEKS R5 R6 K13 ["Pages"]
  GETTABLEKS R4 R5 K14 ["ShareGame"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R4 K15 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R2 K11 ["Modules"]
  GETTABLEKS R8 R9 K12 ["Settings"]
  GETTABLEKS R7 R8 K16 ["Theme"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K17 ["font"]
  GETIMPORT R8 K21 [Enum.Font.SourceSans]
  LOADK R9 K22 ["ConversationDetails"]
  CALL R7 2 1
  GETTABLEKS R9 R5 K23 ["Color"]
  GETTABLEKS R8 R9 K24 ["WHITE"]
  GETTABLEKS R9 R6 K25 ["textSize"]
  LOADN R10 19
  CALL R9 1 1
  GETTABLEKS R10 R6 K17 ["font"]
  GETIMPORT R11 K21 [Enum.Font.SourceSans]
  LOADK R12 K22 ["ConversationDetails"]
  CALL R10 2 1
  GETTABLEKS R12 R5 K23 ["Color"]
  GETTABLEKS R11 R12 K26 ["GRAY3"]
  GETTABLEKS R12 R6 K25 ["textSize"]
  LOADN R13 16
  LOADK R14 K22 ["ConversationDetails"]
  CALL R12 2 1
  GETTABLEKS R13 R6 K17 ["font"]
  GETIMPORT R14 K21 [Enum.Font.SourceSans]
  LOADK R15 K22 ["ConversationDetails"]
  CALL R13 2 1
  GETTABLEKS R14 R6 K25 ["textSize"]
  LOADN R15 16
  LOADK R16 K22 ["ConversationDetails"]
  CALL R14 2 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R16 R4 K27 ["getTranslator"]
  CALL R15 1 1
  MOVE R16 R15
  CALL R16 0 1
  GETTABLEKS R17 R3 K28 ["PureComponent"]
  LOADK R19 K22 ["ConversationDetails"]
  NAMECALL R17 R17 K29 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K30 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R18 R17 K31 ["render"]
  RETURN R17 1
