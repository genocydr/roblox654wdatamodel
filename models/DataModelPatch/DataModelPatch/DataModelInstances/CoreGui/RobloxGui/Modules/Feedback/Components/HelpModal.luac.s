PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["showHelpModal"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onDismiss"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"visible", "screenSize", "titleText", "maxHeight", "maxWidth", "showCloseButton", "contents", "onDismiss"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K1 ["visible"]
  SETTABLEKS R4 R3 K1 ["visible"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K2 ["screenSize"]
  SETTABLEKS R4 R3 K2 ["screenSize"]
  GETTABLEKS R4 R0 K11 ["mainHeader"]
  SETTABLEKS R4 R3 K3 ["titleText"]
  LOADN R4 130
  SETTABLEKS R4 R3 K4 ["maxHeight"]
  LOADN R4 28
  SETTABLEKS R4 R3 K5 ["maxWidth"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["showCloseButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K12 ["Frame"]
  DUPTABLE R6 K15 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  GETIMPORT R7 K18 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Size"]
  DUPTABLE R7 K22 [{"Padding", "Layout", "InstructionLabel"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K23 ["UIPadding"]
  DUPTABLE R10 K26 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingLeft"]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Padding"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K30 ["UIListLayout"]
  DUPTABLE R10 K34 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R11 K37 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K31 ["HorizontalAlignment"]
  GETIMPORT R11 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K32 ["SortOrder"]
  GETIMPORT R11 K41 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K33 ["VerticalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K49 [{"LayoutOrder", "fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["LayoutOrder"]
  LOADK R11 K50 ["Body"]
  SETTABLEKS R11 R10 K42 ["fontKey"]
  LOADK R11 K51 ["TextDefault"]
  SETTABLEKS R11 R10 K43 ["themeKey"]
  GETIMPORT R11 K53 [Vector2.new]
  LOADN R12 0
  LOADK R13 K54 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["AnchorPoint"]
  GETIMPORT R11 K55 [UDim2.new]
  LOADN R12 0
  LOADN R13 76
  LOADK R14 K54 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K45 ["Position"]
  GETIMPORT R11 K55 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADK R14 K56 [0.4]
  LOADN R15 36
  CALL R11 4 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETTABLEKS R11 R0 K57 ["instructionLabel"]
  SETTABLEKS R11 R10 K46 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K47 ["TextWrapped"]
  GETIMPORT R11 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K48 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["InstructionLabel"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K7 ["contents"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["onDismiss"]
  SETTABLEKS R4 R3 K8 ["onDismiss"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"visible", "screenSize", "titleText", "maxHeight", "maxWidth", "contents", "onDismiss"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["props"]
  GETTABLEKS R4 R5 K1 ["visible"]
  SETTABLEKS R4 R3 K1 ["visible"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["props"]
  GETTABLEKS R4 R5 K2 ["screenSize"]
  SETTABLEKS R4 R3 K2 ["screenSize"]
  GETTABLEKS R4 R0 K10 ["mainHeader"]
  SETTABLEKS R4 R3 K3 ["titleText"]
  LOADN R4 94
  SETTABLEKS R4 R3 K4 ["maxHeight"]
  LOADN R4 28
  SETTABLEKS R4 R3 K5 ["maxWidth"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["Frame"]
  DUPTABLE R6 K14 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K12 ["BackgroundTransparency"]
  GETIMPORT R7 K17 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Size"]
  DUPTABLE R7 K22 [{"Padding", "Layout", "InstructionLabelA", "InstructionLabelB"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K23 ["UIPadding"]
  DUPTABLE R10 K26 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingLeft"]
  GETIMPORT R11 K29 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["Padding"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K30 ["UIListLayout"]
  DUPTABLE R10 K34 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R11 K37 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K31 ["HorizontalAlignment"]
  GETIMPORT R11 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K32 ["SortOrder"]
  GETIMPORT R11 K41 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K33 ["VerticalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K49 [{"LayoutOrder", "fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["LayoutOrder"]
  LOADK R11 K50 ["Body"]
  SETTABLEKS R11 R10 K42 ["fontKey"]
  LOADK R11 K51 ["TextDefault"]
  SETTABLEKS R11 R10 K43 ["themeKey"]
  GETIMPORT R11 K53 [Vector2.new]
  LOADN R12 0
  LOADK R13 K54 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["AnchorPoint"]
  GETIMPORT R11 K55 [UDim2.new]
  LOADN R12 0
  LOADN R13 76
  LOADK R14 K54 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K45 ["Position"]
  GETIMPORT R11 K55 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADK R14 K56 [0.4]
  LOADN R15 36
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Size"]
  GETTABLEKS R11 R0 K57 ["instructionLabelA"]
  SETTABLEKS R11 R10 K46 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K47 ["TextWrapped"]
  GETIMPORT R11 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K48 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["InstructionLabelA"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K49 [{"LayoutOrder", "fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K38 ["LayoutOrder"]
  LOADK R11 K50 ["Body"]
  SETTABLEKS R11 R10 K42 ["fontKey"]
  LOADK R11 K51 ["TextDefault"]
  SETTABLEKS R11 R10 K43 ["themeKey"]
  GETIMPORT R11 K53 [Vector2.new]
  LOADN R12 0
  LOADK R13 K54 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K44 ["AnchorPoint"]
  GETIMPORT R11 K55 [UDim2.new]
  LOADN R12 0
  LOADN R13 76
  LOADK R14 K54 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K45 ["Position"]
  GETIMPORT R11 K55 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADK R14 K56 [0.4]
  LOADN R15 36
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Size"]
  GETTABLEKS R11 R0 K60 ["instructionLabelB"]
  SETTABLEKS R11 R10 K46 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K47 ["TextWrapped"]
  GETIMPORT R11 K59 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K48 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["InstructionLabelB"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K6 ["contents"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["onDismiss"]
  SETTABLEKS R4 R3 K7 ["onDismiss"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+16]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"mainHeader", "instructionLabel"}]
  LOADK R3 K3 ["CoreScripts.Feedback.Help.MainHeader"]
  SETTABLEKS R3 R2 K0 ["mainHeader"]
  LOADK R3 K4 ["CoreScripts.Feedback.Help.Instructions"]
  SETTABLEKS R3 R2 K1 ["instructionLabel"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R1 1
  DUPTABLE R2 K7 [{"mainHeader", "instructionLabelA", "instructionLabelB"}]
  LOADK R3 K3 ["CoreScripts.Feedback.Help.MainHeader"]
  SETTABLEKS R3 R2 K0 ["mainHeader"]
  LOADK R3 K8 ["CoreScripts.Feedback.Help.Instructions1"]
  SETTABLEKS R3 R2 K5 ["instructionLabelA"]
  LOADK R3 K9 ["CoreScripts.Feedback.Help.Instructions2"]
  SETTABLEKS R3 R2 K6 ["instructionLabelB"]
  CALL R1 1 1
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  DUPTABLE R1 K2 [{"screenSize", "visible"}]
  GETTABLEKS R3 R0 K3 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K4 ["common"]
  GETTABLEKS R2 R3 K5 ["showHelpModal"]
  SETTABLEKS R2 R1 K1 ["visible"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"showHelpModal"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["showHelpModal"]
  RETURN R1 1

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
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R3 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["PortedComponents"]
  GETTABLEKS R5 R6 K14 ["ThemedTextLabel"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Components"]
  GETTABLEKS R6 R7 K15 ["ModalDialog"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R3 K16 ["Thunks"]
  GETTABLEKS R7 R8 K17 ["ShowHelpModalThunk"]
  CALL R6 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K18 ["Workspace"]
  GETTABLEKS R10 R11 K6 ["Packages"]
  GETTABLEKS R9 R10 K19 ["Localization"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K20 ["withLocalization"]
  GETIMPORT R8 K1 [game]
  LOADK R10 K21 ["EnableFeedbackModeModalTextFixes"]
  LOADB R11 0
  NAMECALL R8 R8 K22 ["DefineFastFlag"]
  CALL R8 3 1
  GETTABLEKS R9 R1 K23 ["PureComponent"]
  LOADK R11 K24 ["HelpModal"]
  NAMECALL R9 R9 K25 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K26 [PROTO_1]
  SETTABLEKS R10 R9 K27 ["init"]
  DUPCLOSURE R10 K28 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K29 ["render"]
  GETTABLEKS R10 R2 K30 ["connect"]
  DUPCLOSURE R11 K31 [PROTO_5]
  DUPCLOSURE R12 K32 [PROTO_7]
  CAPTURE VAL R6
  CALL R10 2 1
  MOVE R11 R9
  CALL R10 1 -1
  RETURN R10 -1
