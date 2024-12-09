PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["locale"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["noticeKey"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["Frame"]
  DUPTABLE R5 K9 [{"Size", "LayoutOrder", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 1
  LOADN R8 246
  LOADN R9 0
  LOADN R10 45
  CALL R6 4 1
  SETTABLEKS R6 R5 K5 ["Size"]
  LOADN R6 0
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K8 ["BorderSizePixel"]
  DUPTABLE R6 K16 [{"UIListLayout", "ExclamationPoint", "PartOfBundleText"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K13 ["UIListLayout"]
  DUPTABLE R9 K21 [{"Padding", "FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R10 K23 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["Padding"]
  GETIMPORT R10 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K18 ["FillDirection"]
  GETIMPORT R10 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K19 ["SortOrder"]
  GETIMPORT R10 K29 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K20 ["VerticalAlignment"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["UIListLayout"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K30 ["ImageLabel"]
  DUPTABLE R9 K33 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "LayoutOrder"}]
  GETIMPORT R10 K12 [UDim2.new]
  LOADN R11 0
  LOADN R12 16
  LOADN R13 0
  LOADN R14 16
  CALL R10 4 1
  SETTABLEKS R10 R9 K5 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["BackgroundTransparency"]
  LOADK R10 K34 ["rbxasset://textures/ui/InspectMenu/ico_alert_tilt.png"]
  SETTABLEKS R10 R9 K31 ["Image"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K35 ["White"]
  SETTABLEKS R10 R9 K32 ["ImageColor3"]
  LOADN R10 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["ExclamationPoint"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K36 ["TextLabel"]
  DUPTABLE R9 K44 [{"Size", "TextColor3", "BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "TextWrapped", "TextScaled", "TextSize", "TextXAlignment", "Font", "Text"}]
  GETIMPORT R10 K12 [UDim2.new]
  LOADN R11 1
  LOADN R12 226
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K5 ["Size"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K35 ["White"]
  SETTABLEKS R10 R9 K37 ["TextColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K8 ["BorderSizePixel"]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["BackgroundTransparency"]
  LOADN R10 2
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  LOADB R10 1
  SETTABLEKS R10 R9 K38 ["TextWrapped"]
  LOADB R10 1
  SETTABLEKS R10 R9 K39 ["TextScaled"]
  LOADN R10 12
  SETTABLEKS R10 R9 K40 ["TextSize"]
  GETIMPORT R10 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K41 ["TextXAlignment"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K47 ["default"]
  NAMECALL R10 R10 K48 ["getDefault"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K42 ["Font"]
  GETUPVAL R10 3
  MOVE R12 R2
  MOVE R13 R1
  NAMECALL R10 R10 K49 ["FormatByKeyForLocale"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K43 ["Text"]
  DUPTABLE R10 K51 [{"UITextSizeConstraint"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K50 ["UITextSizeConstraint"]
  DUPTABLE R13 K53 [{"MaxTextSize"}]
  LOADN R14 16
  SETTABLEKS R14 R13 K52 ["MaxTextSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K50 ["UITextSizeConstraint"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["PartOfBundleText"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  DUPTABLE R2 K1 [{"locale"}]
  GETTABLEKS R3 R0 K0 ["locale"]
  SETTABLEKS R3 R2 K0 ["locale"]
  RETURN R2 1

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
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K13 ["Workspace"]
  GETTABLEKS R8 R9 K10 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Style"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K15 ["AppFonts"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R2 K16 ["Colors"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K17 ["RobloxGui"]
  GETTABLEKS R9 R10 K18 ["Modules"]
  GETTABLEKS R8 R9 K19 ["RobloxTranslator"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K20 ["PureComponent"]
  LOADK R10 K21 ["Notification"]
  NAMECALL R8 R8 K22 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K23 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K24 ["render"]
  GETTABLEKS R9 R4 K25 ["UNSTABLE_connect2"]
  DUPCLOSURE R10 K26 [PROTO_1]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
