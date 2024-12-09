PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETTABLEKS R3 R2 K2 ["Font"]
  GETTABLEKS R4 R3 K3 ["BaseSize"]
  GETTABLEKS R5 R2 K4 ["Theme"]
  LOADN R8 19
  GETTABLEKS R9 R1 K5 ["textBoxHeight"]
  ADD R7 R8 R9
  GETTABLEKS R8 R1 K6 ["topPadding"]
  ADD R6 R7 R8
  GETTABLEKS R7 R3 K7 ["CaptionHeader"]
  GETTABLEKS R9 R5 K8 ["TextDefault"]
  GETTABLEKS R8 R9 K9 ["Color"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K11 ["Frame"]
  DUPTABLE R11 K15 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R12 K18 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  MOVE R16 R6
  CALL R12 4 1
  SETTABLEKS R12 R11 K12 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  GETTABLEKS R12 R1 K14 ["LayoutOrder"]
  SETTABLEKS R12 R11 K14 ["LayoutOrder"]
  DUPTABLE R12 K23 [{"UIListLayout", "UIPadding", "TextboxLabel", "Textbox"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K19 ["UIListLayout"]
  DUPTABLE R15 K28 [{"HorizontalAlignment", "SortOrder", "FillDirection", "Padding"}]
  GETIMPORT R16 K31 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K24 ["HorizontalAlignment"]
  GETIMPORT R16 K32 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K25 ["SortOrder"]
  GETIMPORT R16 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K26 ["FillDirection"]
  GETIMPORT R16 K36 [UDim.new]
  LOADN R17 0
  LOADN R18 4
  CALL R16 2 1
  SETTABLEKS R16 R15 K27 ["Padding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["UIListLayout"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K20 ["UIPadding"]
  DUPTABLE R15 K38 [{"PaddingTop"}]
  GETIMPORT R16 K36 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R1 K6 ["topPadding"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["PaddingTop"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["UIPadding"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K39 ["TextLabel"]
  DUPTABLE R15 K44 [{"Size", "Font", "Text", "TextSize", "TextColor3", "BackgroundTransparency", "TextXAlignment", "LayoutOrder"}]
  GETIMPORT R16 K18 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 15
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  GETTABLEKS R16 R7 K2 ["Font"]
  SETTABLEKS R16 R15 K2 ["Font"]
  GETTABLEKS R16 R1 K45 ["labelText"]
  SETTABLEKS R16 R15 K40 ["Text"]
  GETTABLEKS R17 R7 K46 ["RelativeSize"]
  MUL R16 R4 R17
  SETTABLEKS R16 R15 K41 ["TextSize"]
  SETTABLEKS R8 R15 K42 ["TextColor3"]
  LOADN R16 1
  SETTABLEKS R16 R15 K13 ["BackgroundTransparency"]
  GETIMPORT R16 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K43 ["TextXAlignment"]
  LOADN R16 1
  SETTABLEKS R16 R15 K14 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["TextboxLabel"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K55 [{"Size", "maxLength", "onNameUpdated", "defaultName", "centerText", "nameTextBoxRef", "LayoutOrder", "invalidInputText"}]
  GETIMPORT R16 K18 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R1 K5 ["textBoxHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K12 ["Size"]
  GETTABLEKS R16 R1 K49 ["maxLength"]
  SETTABLEKS R16 R15 K49 ["maxLength"]
  GETTABLEKS R16 R1 K56 ["onTextUpdated"]
  SETTABLEKS R16 R15 K50 ["onNameUpdated"]
  GETTABLEKS R16 R1 K57 ["defaultText"]
  SETTABLEKS R16 R15 K51 ["defaultName"]
  GETTABLEKS R16 R1 K52 ["centerText"]
  SETTABLEKS R16 R15 K52 ["centerText"]
  GETTABLEKS R16 R1 K58 ["textBoxRef"]
  SETTABLEKS R16 R15 K53 ["nameTextBoxRef"]
  LOADN R16 2
  SETTABLEKS R16 R15 K14 ["LayoutOrder"]
  GETTABLEKS R16 R1 K54 ["invalidInputText"]
  SETTABLEKS R16 R15 K54 ["invalidInputText"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["Textbox"]
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
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R6 R2 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["useStyle"]
  GETIMPORT R6 K14 [script]
  GETTABLEKS R5 R6 K15 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K16 ["NameTextBox"]
  CALL R6 1 1
  DUPTABLE R7 K19 [{"textBoxHeight", "topPadding"}]
  LOADN R8 30
  SETTABLEKS R8 R7 K17 ["textBoxHeight"]
  LOADN R8 0
  SETTABLEKS R8 R7 K18 ["topPadding"]
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R8 1
