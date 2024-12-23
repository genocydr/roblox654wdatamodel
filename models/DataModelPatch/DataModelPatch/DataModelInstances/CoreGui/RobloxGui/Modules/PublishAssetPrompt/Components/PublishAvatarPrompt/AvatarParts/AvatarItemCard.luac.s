PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Font"]
  GETTABLEKS R3 R1 K1 ["Theme"]
  GETTABLEKS R4 R0 K2 ["asset"]
  GETTABLEKS R5 R2 K3 ["CaptionHeader"]
  GETTABLEKS R7 R3 K4 ["TextEmphasis"]
  GETTABLEKS R6 R7 K5 ["Color"]
  LOADB R8 1
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R10 R4
  GETIMPORT R9 K7 [typeof]
  CALL R9 1 1
  JUMPIFEQKS R9 K8 ["table"] [+10]
  LOADK R10 K9 ["MeshPart"]
  NAMECALL R8 R4 K10 ["IsA"]
  CALL R8 2 1
  JUMPIF R8 [+4]
  LOADK R10 K11 ["Accessory"]
  NAMECALL R8 R4 K10 ["IsA"]
  CALL R8 2 1
  FASTCALL2K ASSERT R8 K12 [+4]
  LOADK R9 K12 ["Assert that asset is a table, MeshPart, or Accessory"]
  GETIMPORT R7 K14 [assert]
  CALL R7 2 0
  GETTABLEKS R7 R0 K15 ["bodyName"]
  GETTABLEKS R8 R0 K16 ["partName"]
  GETUPVAL R10 1
  JUMPIFNOT R10 [+2]
  AND R9 R7 R8
  JUMP [+2]
  GETTABLEKS R9 R0 K17 ["titleText"]
  LOADNIL R10
  GETUPVAL R11 1
  JUMPIFNOT R11 [+21]
  JUMPIFNOT R7 [+20]
  JUMPIFNOT R8 [+19]
  FASTCALL2K ASSERT R7 K18 [+5]
  MOVE R12 R7
  LOADK R13 K18 ["bodyName is nil"]
  GETIMPORT R11 K14 [assert]
  CALL R11 2 0
  FASTCALL2K ASSERT R8 K19 [+5]
  MOVE R12 R8
  LOADK R13 K19 ["partName is nil"]
  GETIMPORT R11 K14 [assert]
  CALL R11 2 0
  MOVE R11 R7
  LOADK R12 K20 ["'s "]
  MOVE R13 R8
  CONCAT R10 R11 R13
  JUMP [+2]
  GETTABLEKS R10 R0 K17 ["titleText"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K21 ["createElement"]
  LOADK R12 K22 ["Frame"]
  DUPTABLE R13 K26 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
  GETIMPORT R14 K29 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["Size"]
  GETTABLEKS R14 R0 K24 ["LayoutOrder"]
  SETTABLEKS R14 R13 K24 ["LayoutOrder"]
  LOADN R14 1
  SETTABLEKS R14 R13 K25 ["BackgroundTransparency"]
  DUPTABLE R14 K33 [{"UIListLayout", "AvatarPartViewport", "TitleText"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K21 ["createElement"]
  LOADK R16 K30 ["UIListLayout"]
  DUPTABLE R17 K37 [{"FillDirection", "SortOrder", "Padding"}]
  GETIMPORT R18 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K34 ["FillDirection"]
  GETIMPORT R18 K41 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K35 ["SortOrder"]
  GETIMPORT R18 K44 [UDim.new]
  LOADN R19 0
  LOADN R20 5
  CALL R18 2 1
  SETTABLEKS R18 R17 K36 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["UIListLayout"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K21 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K46 [{"asset", "LayoutOrder", "viewportSize"}]
  SETTABLEKS R4 R17 K2 ["asset"]
  LOADN R18 1
  SETTABLEKS R18 R17 K24 ["LayoutOrder"]
  GETTABLEKS R18 R0 K45 ["viewportSize"]
  SETTABLEKS R18 R17 K45 ["viewportSize"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["AvatarPartViewport"]
  MOVE R15 R9
  JUMPIFNOT R15 [+51]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K21 ["createElement"]
  LOADK R16 K47 ["TextLabel"]
  DUPTABLE R17 K55 [{"LayoutOrder", "BackgroundTransparency", "Text", "TextXAlignment", "TextYAlignment", "Size", "TextColor3", "TextWrapped", "Font", "TextSize", "TextTruncate"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K24 ["LayoutOrder"]
  LOADN R18 1
  SETTABLEKS R18 R17 K25 ["BackgroundTransparency"]
  SETTABLEKS R10 R17 K48 ["Text"]
  GETIMPORT R18 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K49 ["TextXAlignment"]
  GETIMPORT R18 K59 [Enum.TextYAlignment.Top]
  SETTABLEKS R18 R17 K50 ["TextYAlignment"]
  GETIMPORT R18 K60 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 50
  CALL R18 4 1
  SETTABLEKS R18 R17 K23 ["Size"]
  SETTABLEKS R6 R17 K51 ["TextColor3"]
  LOADB R18 1
  SETTABLEKS R18 R17 K52 ["TextWrapped"]
  GETTABLEKS R18 R5 K0 ["Font"]
  SETTABLEKS R18 R17 K0 ["Font"]
  GETTABLEKS R19 R5 K61 ["RelativeSize"]
  GETTABLEKS R20 R2 K62 ["BaseSize"]
  MUL R18 R19 R20
  SETTABLEKS R18 R17 K53 ["TextSize"]
  GETIMPORT R18 K64 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K54 ["TextTruncate"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["TitleText"]
  CALL R11 3 -1
  RETURN R11 -1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K9 ["Core"]
  GETTABLEKS R4 R5 K10 ["Style"]
  GETTABLEKS R3 R4 K11 ["useStyle"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K13 [script]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETTABLEKS R5 R6 K15 ["AvatarPartViewport"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R11 K13 [script]
  GETTABLEKS R10 R11 K14 ["Parent"]
  GETTABLEKS R9 R10 K14 ["Parent"]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K14 ["Parent"]
  GETTABLEKS R6 R7 K16 ["FFlagAppendBodyPartToTitle"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R6 1
