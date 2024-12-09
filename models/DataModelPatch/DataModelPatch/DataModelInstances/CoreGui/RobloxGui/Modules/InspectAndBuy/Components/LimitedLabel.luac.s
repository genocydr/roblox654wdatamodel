PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["frameSize"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["framePosition"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["imageSize"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["imagePosition"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["textSize"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["textPosition"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["text"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["icons/status/item/limited"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  LOADK R10 K10 ["Frame"]
  DUPTABLE R11 K16 [{"Size", "BorderSizePixel", "LayoutOrder", "Position", "BackgroundColor3"}]
  SETTABLEKS R1 R11 K11 ["Size"]
  LOADN R12 0
  SETTABLEKS R12 R11 K12 ["BorderSizePixel"]
  LOADN R12 3
  SETTABLEKS R12 R11 K13 ["LayoutOrder"]
  SETTABLEKS R2 R11 K14 ["Position"]
  GETIMPORT R12 K19 [Color3.fromRGB]
  LOADN R13 120
  LOADN R14 120
  LOADN R15 120
  CALL R12 3 1
  SETTABLEKS R12 R11 K15 ["BackgroundColor3"]
  DUPTABLE R12 K23 [{"Corner", "CollectiblesIcon", "CollectiblesText"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K24 ["UICorner"]
  DUPTABLE R15 K26 [{"CornerRadius"}]
  GETIMPORT R16 K29 [UDim.new]
  LOADN R17 0
  LOADN R18 8
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["CornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Corner"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K34 [{"Position", "Size", "BackgroundTransparency", "ZIndex", "Visible", "Image"}]
  SETTABLEKS R4 R15 K14 ["Position"]
  SETTABLEKS R3 R15 K11 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K30 ["BackgroundTransparency"]
  LOADN R16 2
  SETTABLEKS R16 R15 K31 ["ZIndex"]
  LOADB R16 1
  SETTABLEKS R16 R15 K32 ["Visible"]
  SETTABLEKS R8 R15 K33 ["Image"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["CollectiblesIcon"]
  GETUPVAL R14 3
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  JUMPIF R7 [+2]
  LOADNIL R13
  JUMP [+38]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  LOADK R14 K35 ["TextLabel"]
  DUPTABLE R15 K41 [{"Position", "Size", "BackgroundTransparency", "Text", "Font", "TextXAlignment", "TextSize", "TextColor3"}]
  SETTABLEKS R6 R15 K14 ["Position"]
  SETTABLEKS R5 R15 K11 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K30 ["BackgroundTransparency"]
  SETTABLEKS R7 R15 K36 ["Text"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K42 ["default"]
  NAMECALL R16 R16 K43 ["getDefault"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K37 ["Font"]
  GETIMPORT R16 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K38 ["TextXAlignment"]
  LOADN R16 12
  SETTABLEKS R16 R15 K39 ["TextSize"]
  GETIMPORT R16 K47 [Color3.new]
  LOADN R17 1
  LOADN R18 1
  LOADN R19 1
  CALL R16 3 1
  SETTABLEKS R16 R15 K40 ["TextColor3"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["CollectiblesText"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R0 K9 ["Workspace"]
  GETTABLEKS R5 R6 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Style"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K12 ["AppFonts"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K13 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K14 ["App"]
  GETTABLEKS R5 R6 K15 ["ImageSet"]
  GETTABLEKS R4 R5 K16 ["Images"]
  GETTABLEKS R7 R3 K17 ["Core"]
  GETTABLEKS R6 R7 K15 ["ImageSet"]
  GETTABLEKS R5 R6 K18 ["ImageSetLabel"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K19 ["Roact"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K20 ["PureComponent"]
  LOADK R9 K21 ["LimitedLabel"]
  NAMECALL R7 R7 K22 ["extend"]
  CALL R7 2 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R1 K23 ["Flags"]
  GETTABLEKS R9 R10 K24 ["GetFFlagIBEnableCollectiblesSystemSupport"]
  CALL R8 1 1
  DUPCLOSURE R9 K25 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R9 R7 K26 ["render"]
  RETURN R7 1
