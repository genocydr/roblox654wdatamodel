PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["TextLabel"]
  DUPTABLE R4 K13 [{"AnchorPoint", "Position", "Text", "Font", "TextSize", "TextColor3", "BackgroundColor3", "BackgroundTransparency", "AutomaticSize", "LineHeight", "ZIndex"}]
  GETIMPORT R5 K16 [Vector2.new]
  LOADN R6 0
  LOADN R7 1
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["AnchorPoint"]
  GETTABLEKS R5 R0 K17 ["position"]
  SETTABLEKS R5 R4 K3 ["Position"]
  LOADK R5 K18 ["12+"]
  SETTABLEKS R5 R4 K4 ["Text"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K19 ["default"]
  NAMECALL R5 R5 K20 ["getMedium"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["Font"]
  LOADN R5 9
  SETTABLEKS R5 R4 K6 ["TextSize"]
  GETTABLEKS R7 R1 K21 ["Theme"]
  GETTABLEKS R6 R7 K22 ["TextEmphasis"]
  GETTABLEKS R5 R6 K23 ["Color"]
  SETTABLEKS R5 R4 K7 ["TextColor3"]
  GETTABLEKS R7 R1 K21 ["Theme"]
  GETTABLEKS R6 R7 K24 ["BackgroundUIContrast"]
  GETTABLEKS R5 R6 K23 ["Color"]
  SETTABLEKS R5 R4 K8 ["BackgroundColor3"]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["BackgroundTransparency"]
  GETIMPORT R5 K27 [Enum.AutomaticSize.XY]
  SETTABLEKS R5 R4 K10 ["AutomaticSize"]
  LOADK R5 K28 [1.25]
  SETTABLEKS R5 R4 K11 ["LineHeight"]
  LOADN R5 2
  SETTABLEKS R5 R4 K12 ["ZIndex"]
  DUPTABLE R5 K31 [{"Padding", "Shape"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K32 ["UIPadding"]
  DUPTABLE R8 K35 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R9 K37 [UDim.new]
  LOADN R10 0
  LOADN R11 2
  CALL R9 2 1
  SETTABLEKS R9 R8 K33 ["PaddingLeft"]
  GETIMPORT R9 K37 [UDim.new]
  LOADN R10 0
  LOADN R11 2
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["PaddingRight"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K29 ["Padding"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K38 ["UICorner"]
  DUPTABLE R8 K40 [{"CornerRadius"}]
  GETIMPORT R9 K37 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K39 ["CornerRadius"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K30 ["Shape"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Workspace"]
  GETTABLEKS R5 R6 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Style"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["AppFonts"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K12 ["Core"]
  GETTABLEKS R5 R6 K9 ["Style"]
  GETTABLEKS R4 R5 K13 ["useStyle"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1
