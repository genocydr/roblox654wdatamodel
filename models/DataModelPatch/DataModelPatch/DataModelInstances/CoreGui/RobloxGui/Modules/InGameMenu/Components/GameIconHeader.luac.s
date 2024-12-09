PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["ImageLabel"]
  DUPTABLE R3 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETIMPORT R4 K7 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 148
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  DUPTABLE R4 K11 [{"Padding", "GameIcon", "GameName"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K12 ["UIPadding"]
  DUPTABLE R7 K17 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  GETIMPORT R8 K19 [UDim.new]
  LOADN R9 0
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["PaddingBottom"]
  GETIMPORT R8 K19 [UDim.new]
  LOADN R9 0
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["PaddingLeft"]
  GETIMPORT R8 K19 [UDim.new]
  LOADN R9 0
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["PaddingRight"]
  GETIMPORT R8 K19 [UDim.new]
  LOADN R9 0
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["PaddingTop"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Padding"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K22 [{"gameId", "iconSize"}]
  GETIMPORT R9 K24 [game]
  GETTABLEKS R8 R9 K25 ["GameId"]
  SETTABLEKS R8 R7 K20 ["gameId"]
  LOADN R8 100
  SETTABLEKS R8 R7 K21 ["iconSize"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["GameIcon"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K34 [{"fontKey", "themeKey", "Position", "Size", "Text", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  LOADK R8 K35 ["Title"]
  SETTABLEKS R8 R7 K26 ["fontKey"]
  LOADK R8 K36 ["TextEmphasis"]
  SETTABLEKS R8 R7 K27 ["themeKey"]
  GETIMPORT R8 K7 [UDim2.new]
  LOADN R9 0
  LOADN R10 112
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K28 ["Position"]
  GETIMPORT R8 K7 [UDim2.new]
  LOADN R9 1
  LOADN R10 144
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  GETTABLEKS R8 R0 K37 ["gameName"]
  SETTABLEKS R8 R7 K29 ["Text"]
  GETIMPORT R8 K40 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R8 R7 K30 ["TextTruncate"]
  LOADB R8 1
  SETTABLEKS R8 R7 K31 ["TextWrapped"]
  GETIMPORT R8 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K32 ["TextXAlignment"]
  GETIMPORT R8 K44 [Enum.TextYAlignment.Top]
  SETTABLEKS R8 R7 K33 ["TextYAlignment"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["GameName"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["gameInfo"]
  GETTABLEKS R1 R2 K1 ["name"]
  DUPTABLE R2 K3 [{"gameName"}]
  SETTABLEKS R1 R2 K2 ["gameName"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["RoactRodux"]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R4 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["ThemedTextLabel"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R4 K13 ["Components"]
  GETTABLEKS R7 R8 K15 ["GameIcon"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  GETTABLEKS R8 R3 K17 ["UNSTABLE_connect2"]
  DUPCLOSURE R9 K18 [PROTO_1]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 -1
  RETURN R8 -1
