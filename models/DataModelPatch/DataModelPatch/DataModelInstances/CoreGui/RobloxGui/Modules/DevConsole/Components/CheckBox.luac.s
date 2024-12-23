PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  NOT R3 R4
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["checkBoxHeight"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["frameHeight"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["layoutOrder"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["name"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["font"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["fontSize"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["isSelected"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["selectedColor"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K9 ["unselectedColor"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K10 ["onCheckBoxClicked"]
  LOADK R11 K11 [""]
  LOADN R12 1
  MOVE R13 R9
  JUMPIFNOT R7 [+7]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K12 ["Image"]
  GETTABLEKS R11 R14 K13 ["Check"]
  LOADN R12 0
  MOVE R13 R8
  GETUPVAL R14 1
  MOVE R16 R4
  MOVE R17 R6
  MOVE R18 R5
  GETIMPORT R19 K16 [Vector2.new]
  LOADN R20 0
  MOVE R21 R2
  CALL R19 2 -1
  NAMECALL R14 R14 K17 ["GetTextSize"]
  CALL R14 -1 1
  GETTABLEKS R15 R14 K18 ["X"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K19 ["createElement"]
  LOADK R17 K20 ["ImageButton"]
  NEWTABLE R18 4 0
  GETIMPORT R19 K22 [UDim2.new]
  LOADN R20 0
  ADD R22 R1 R15
  GETUPVAL R24 3
  MULK R23 R24 K23 [2]
  ADD R21 R22 R23
  LOADN R22 0
  MOVE R23 R2
  CALL R19 4 1
  SETTABLEKS R19 R18 K24 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K25 ["BackgroundTransparency"]
  SETTABLEKS R3 R18 K26 ["LayoutOrder"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K27 ["Event"]
  GETTABLEKS R19 R20 K28 ["Activated"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLE R20 R18 R19
  DUPTABLE R19 K31 [{"Icon", "Text"}]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K19 ["createElement"]
  LOADK R21 K32 ["ImageLabel"]
  DUPTABLE R22 K37 [{"Image", "Size", "Position", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel"}]
  SETTABLEKS R11 R22 K12 ["Image"]
  GETIMPORT R23 K22 [UDim2.new]
  LOADN R24 0
  MOVE R25 R1
  LOADN R26 0
  MOVE R27 R1
  CALL R23 4 1
  SETTABLEKS R23 R22 K24 ["Size"]
  GETIMPORT R23 K22 [UDim2.new]
  LOADN R24 0
  LOADN R25 0
  LOADK R26 K38 [0.5]
  MINUS R28 R1
  DIVK R27 R28 K23 [2]
  CALL R23 4 1
  SETTABLEKS R23 R22 K33 ["Position"]
  SETTABLEKS R13 R22 K34 ["BackgroundColor3"]
  LOADN R23 0
  SETTABLEKS R23 R22 K25 ["BackgroundTransparency"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K39 ["Color"]
  GETTABLEKS R23 R24 K30 ["Text"]
  SETTABLEKS R23 R22 K35 ["BorderColor3"]
  SETTABLEKS R12 R22 K36 ["BorderSizePixel"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K29 ["Icon"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K19 ["createElement"]
  LOADK R21 K40 ["TextLabel"]
  DUPTABLE R22 K45 [{"Text", "TextColor3", "TextXAlignment", "Font", "TextSize", "Size", "Position", "BackgroundTransparency"}]
  SETTABLEKS R4 R22 K30 ["Text"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K39 ["Color"]
  GETTABLEKS R23 R24 K30 ["Text"]
  SETTABLEKS R23 R22 K41 ["TextColor3"]
  GETIMPORT R23 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K42 ["TextXAlignment"]
  SETTABLEKS R5 R22 K43 ["Font"]
  SETTABLEKS R6 R22 K44 ["TextSize"]
  GETIMPORT R23 K22 [UDim2.new]
  LOADN R24 1
  MINUS R25 R2
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K24 ["Size"]
  GETIMPORT R23 K22 [UDim2.new]
  LOADN R24 0
  GETUPVAL R26 3
  ADD R25 R1 R26
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K33 ["Position"]
  LOADN R23 1
  SETTABLEKS R23 R22 K25 ["BackgroundTransparency"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K30 ["Text"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TextService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["UtilityBarFormatting"]
  GETTABLEKS R4 R5 K14 ["CheckBoxInnerPadding"]
  GETTABLEKS R5 R2 K15 ["Component"]
  LOADK R7 K16 ["CheckBox"]
  NAMECALL R5 R5 K17 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K19 ["render"]
  RETURN R5 1
