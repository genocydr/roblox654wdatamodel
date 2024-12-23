PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["index"]
  GETTABLEKS R2 R0 K1 ["name"]
  GETTABLEKS R3 R0 K2 ["textWidth"]
  GETTABLEKS R4 R0 K3 ["padding"]
  GETTABLEKS R5 R0 K4 ["isSelected"]
  GETTABLEKS R6 R0 K5 ["layoutOrder"]
  GETTABLEKS R7 R0 K6 ["onTabButtonClicked"]
  ADD R3 R3 R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["TabRowFormatting"]
  GETTABLEKS R8 R9 K8 ["UnselectedTextTransparency"]
  JUMPIFNOT R5 [+5]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["TabRowFormatting"]
  GETTABLEKS R8 R9 K9 ["SelectedTextTransparency"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K11 ["TextButton"]
  NEWTABLE R11 16 0
  SETTABLEKS R2 R11 K12 ["Text"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K13 ["DefaultFontSize"]
  GETTABLEKS R12 R13 K14 ["TabBar"]
  SETTABLEKS R12 R11 K15 ["TextSize"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["Font"]
  GETTABLEKS R12 R13 K14 ["TabBar"]
  SETTABLEKS R12 R11 K16 ["Font"]
  LOADB R12 0
  SETTABLEKS R12 R11 K17 ["TextScaled"]
  SETTABLEKS R8 R11 K18 ["TextTransparency"]
  GETIMPORT R12 K21 [UDim2.new]
  LOADN R13 0
  MOVE R14 R3
  LOADN R15 0
  GETUPVAL R16 2
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Size"]
  LOADB R12 0
  SETTABLEKS R12 R11 K23 ["AutoButtonColor"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K24 ["Color"]
  GETTABLEKS R12 R13 K12 ["Text"]
  SETTABLEKS R12 R11 K25 ["TextColor3"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K24 ["Color"]
  GETTABLEKS R12 R13 K26 ["UnselectedGray"]
  SETTABLEKS R12 R11 K27 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["BorderSizePixel"]
  SETTABLEKS R6 R11 K29 ["LayoutOrder"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K30 ["Event"]
  GETTABLEKS R12 R13 K31 ["Activated"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLE R13 R11 R12
  DUPTABLE R12 K33 [{"BlueHighlight"}]
  MOVE R13 R5
  JUMPIFNOT R13 [+35]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K34 ["Frame"]
  DUPTABLE R15 K36 [{"Size", "Position", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R16 K21 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R21 3
  MINUS R20 R21
  CALL R16 4 1
  SETTABLEKS R16 R15 K22 ["Size"]
  GETIMPORT R16 K21 [UDim2.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K35 ["Position"]
  LOADN R16 0
  SETTABLEKS R16 R15 K28 ["BorderSizePixel"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K24 ["Color"]
  GETTABLEKS R16 R17 K37 ["HighlightBlue"]
  SETTABLEKS R16 R15 K27 ["BackgroundColor3"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["BlueHighlight"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["TabRowFormatting"]
  GETTABLEKS R3 R4 K13 ["HighlightHeight"]
  GETTABLEKS R5 R2 K12 ["TabRowFormatting"]
  GETTABLEKS R4 R5 K14 ["FrameHeight"]
  DUPCLOSURE R5 K15 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
