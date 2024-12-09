PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["locale"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["assets"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["isLoaded"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K9 [{"Size", "BackgroundTransparency", "Visible"}]
  GETIMPORT R7 K12 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K6 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  LOADB R7 0
  GETIMPORT R8 K14 [next]
  MOVE R9 R2
  CALL R8 1 1
  JUMPIFNOTEQKNIL R8 [+2]
  MOVE R7 R3
  SETTABLEKS R7 R6 K8 ["Visible"]
  DUPTABLE R7 K18 [{"UIListLayout", "NotWearingImage", "NotWearingText"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K15 ["UIListLayout"]
  DUPTABLE R10 K24 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R11 K26 [UDim.new]
  LOADN R12 0
  LOADN R13 15
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Padding"]
  GETIMPORT R11 K29 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K20 ["FillDirection"]
  GETIMPORT R11 K31 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K21 ["HorizontalAlignment"]
  GETIMPORT R11 K33 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K22 ["SortOrder"]
  GETIMPORT R11 K34 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K23 ["VerticalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["UIListLayout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K35 ["ImageLabel"]
  DUPTABLE R10 K39 [{"AnchorPoint", "BackgroundTransparency", "Size", "LayoutOrder", "Image", "ImageColor3"}]
  GETIMPORT R11 K41 [Vector2.new]
  LOADK R12 K42 [0.5]
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["AnchorPoint"]
  LOADN R11 1
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  GETIMPORT R11 K12 [UDim2.new]
  LOADK R12 K43 [0.25]
  LOADN R13 0
  LOADK R14 K43 [0.25]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K6 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K32 ["LayoutOrder"]
  LOADK R11 K44 ["rbxasset://textures/ui/InspectMenu/ico_isnt-wearing.png"]
  SETTABLEKS R11 R10 K37 ["Image"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K45 ["White"]
  SETTABLEKS R11 R10 K38 ["ImageColor3"]
  DUPTABLE R11 K47 [{"UIAspectRatioConstraint"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  LOADK R13 K46 ["UIAspectRatioConstraint"]
  DUPTABLE R14 K49 [{"AspectRatio"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K48 ["AspectRatio"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K46 ["UIAspectRatioConstraint"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["NotWearingImage"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  LOADK R9 K50 ["TextLabel"]
  DUPTABLE R10 K59 [{"BackgroundTransparency", "Size", "LayoutOrder", "Font", "Text", "TextScaled", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K7 ["BackgroundTransparency"]
  GETIMPORT R11 K12 [UDim2.new]
  LOADK R12 K60 [0.8]
  LOADN R13 0
  LOADK R14 K61 [0.3]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K6 ["Size"]
  LOADN R11 2
  SETTABLEKS R11 R10 K32 ["LayoutOrder"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K62 ["default"]
  NAMECALL R11 R11 K63 ["getDefault"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K51 ["Font"]
  GETUPVAL R11 3
  LOADK R13 K64 ["InGame.InspectMenu.Description.NoInventoryNotice"]
  MOVE R14 R1
  NAMECALL R11 R11 K65 ["FormatByKeyForLocale"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K52 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K53 ["TextScaled"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K45 ["White"]
  SETTABLEKS R11 R10 K54 ["TextColor3"]
  LOADN R11 20
  SETTABLEKS R11 R10 K55 ["TextSize"]
  GETIMPORT R11 K66 [Enum.TextXAlignment.Center]
  SETTABLEKS R11 R10 K56 ["TextXAlignment"]
  GETIMPORT R11 K68 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K57 ["TextYAlignment"]
  LOADB R11 1
  SETTABLEKS R11 R10 K58 ["TextWrapped"]
  DUPTABLE R11 K70 [{"UITextSizeConstraint"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  LOADK R13 K69 ["UITextSizeConstraint"]
  DUPTABLE R14 K72 [{"MaxTextSize"}]
  LOADN R15 20
  SETTABLEKS R15 R14 K71 ["MaxTextSize"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K69 ["UITextSizeConstraint"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["NotWearingText"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R2 K3 [{"assets", "locale", "isLoaded"}]
  GETTABLEKS R3 R0 K0 ["assets"]
  SETTABLEKS R3 R2 K0 ["assets"]
  GETTABLEKS R3 R0 K1 ["locale"]
  SETTABLEKS R3 R2 K1 ["locale"]
  GETTABLEKS R3 R0 K2 ["isLoaded"]
  SETTABLEKS R3 R2 K2 ["isLoaded"]
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
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K7 ["Workspace"]
  GETTABLEKS R5 R6 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Style"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["AppFonts"]
  GETIMPORT R5 K12 [script]
  GETTABLEKS R4 R5 K13 ["Parent"]
  GETTABLEKS R3 R4 K13 ["Parent"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K15 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R3 K16 ["Colors"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R1 K17 ["RobloxGui"]
  GETTABLEKS R9 R10 K18 ["Modules"]
  GETTABLEKS R8 R9 K19 ["RobloxTranslator"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K20 ["PureComponent"]
  LOADK R10 K21 ["NoInventoryNotice"]
  NAMECALL R8 R8 K22 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K23 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K24 ["render"]
  GETTABLEKS R9 R5 K25 ["UNSTABLE_connect2"]
  DUPCLOSURE R10 K26 [PROTO_1]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
