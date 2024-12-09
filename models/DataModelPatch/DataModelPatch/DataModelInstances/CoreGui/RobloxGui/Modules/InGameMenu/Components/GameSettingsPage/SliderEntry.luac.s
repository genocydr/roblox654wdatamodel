PROTO_0:
  DUPTABLE R1 K1 [{"isFrameSelectable"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["isFrameSelectable"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["getValue"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["SelectedCoreObject"]
  GETUPVAL R0 2
  DUPTABLE R2 K3 [{"isFrameSelectable"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["isFrameSelectable"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFrameSelectable"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isFrameSelectable"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isFrameSelectable"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isFrameSelectable"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["buttonRef"]
  JUMPIF R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createRef"]
  CALL R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  LOADK R3 K4 ["Frame"]
  NEWTABLE R4 8 0
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 92
  CALL R5 4 1
  SETTABLEKS R5 R4 K9 ["Size"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K10 ["LayoutOrder"]
  SETTABLEKS R5 R4 K10 ["LayoutOrder"]
  GETTABLEKS R6 R0 K11 ["state"]
  GETTABLEKS R5 R6 K12 ["isFrameSelectable"]
  SETTABLEKS R5 R4 K13 ["Selectable"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["Event"]
  GETTABLEKS R5 R6 K15 ["SelectionGained"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLE R6 R4 R5
  DUPTABLE R5 K19 [{"Padding", "Label", "Slider"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K20 ["UIPadding"]
  DUPTABLE R8 K25 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["PaddingLeft"]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 12
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["PaddingTop"]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 30
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["PaddingRight"]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["PaddingBottom"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["Padding"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K31 [{"Size", "localizationKey", "Position", "AnchorPoint"}]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K32 ["labelKey"]
  SETTABLEKS R9 R8 K28 ["localizationKey"]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K29 ["Position"]
  GETIMPORT R9 K34 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K30 ["AnchorPoint"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["Label"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K47 [{"min", "max", "stepInterval", "keyboardInputStepInterval", "value", "Position", "disabled", "valueChanged", "canCaptureFocus", "isMenuOpen", "sliderDotRef", "onSelectionLost", "onSelectionGained"}]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K35 ["min"]
  SETTABLEKS R9 R8 K35 ["min"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K36 ["max"]
  SETTABLEKS R9 R8 K36 ["max"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K37 ["stepInterval"]
  SETTABLEKS R9 R8 K37 ["stepInterval"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K38 ["keyboardInputStepInterval"]
  SETTABLEKS R9 R8 K38 ["keyboardInputStepInterval"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K39 ["value"]
  SETTABLEKS R9 R8 K39 ["value"]
  GETIMPORT R9 K8 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 32
  CALL R9 4 1
  SETTABLEKS R9 R8 K29 ["Position"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K40 ["disabled"]
  SETTABLEKS R9 R8 K40 ["disabled"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K41 ["valueChanged"]
  SETTABLEKS R9 R8 K41 ["valueChanged"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K42 ["canCaptureFocus"]
  SETTABLEKS R9 R8 K42 ["canCaptureFocus"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K43 ["isMenuOpen"]
  SETTABLEKS R9 R8 K43 ["isMenuOpen"]
  SETTABLEKS R1 R8 K44 ["sliderDotRef"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K45 ["onSelectionLost"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K46 ["onSelectionGained"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["Slider"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["t"]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K6 [require]
  GETIMPORT R9 K12 [script]
  GETTABLEKS R8 R9 K13 ["Parent"]
  GETTABLEKS R7 R8 K14 ["InputLabel"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R5 K15 ["Components"]
  GETTABLEKS R8 R9 K16 ["SliderWithInput"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K17 ["PureComponent"]
  LOADK R10 K18 ["SliderEntry"]
  NAMECALL R8 R8 K19 ["extend"]
  CALL R8 2 1
  GETTABLEKS R9 R4 K20 ["strictInterface"]
  DUPTABLE R10 K33 [{"LayoutOrder", "labelKey", "min", "max", "stepInterval", "keyboardInputStepInterval", "value", "disabled", "valueChanged", "canCaptureFocus", "isMenuOpen", "buttonRef"}]
  GETTABLEKS R11 R4 K34 ["integer"]
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  GETTABLEKS R11 R4 K35 ["string"]
  SETTABLEKS R11 R10 K22 ["labelKey"]
  GETTABLEKS R11 R4 K36 ["number"]
  SETTABLEKS R11 R10 K23 ["min"]
  GETTABLEKS R11 R4 K36 ["number"]
  SETTABLEKS R11 R10 K24 ["max"]
  GETTABLEKS R11 R4 K36 ["number"]
  SETTABLEKS R11 R10 K25 ["stepInterval"]
  GETTABLEKS R11 R4 K37 ["optional"]
  GETTABLEKS R12 R4 K38 ["numberPositive"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K26 ["keyboardInputStepInterval"]
  GETTABLEKS R11 R4 K36 ["number"]
  SETTABLEKS R11 R10 K27 ["value"]
  GETTABLEKS R11 R4 K37 ["optional"]
  GETTABLEKS R12 R4 K39 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K28 ["disabled"]
  GETTABLEKS R11 R4 K40 ["callback"]
  SETTABLEKS R11 R10 K29 ["valueChanged"]
  GETTABLEKS R11 R4 K37 ["optional"]
  GETTABLEKS R12 R4 K39 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K30 ["canCaptureFocus"]
  GETTABLEKS R11 R4 K37 ["optional"]
  GETTABLEKS R12 R4 K39 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K31 ["isMenuOpen"]
  GETTABLEKS R11 R4 K37 ["optional"]
  GETTABLEKS R12 R4 K41 ["table"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["buttonRef"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K42 ["validateProps"]
  DUPCLOSURE R9 K43 [PROTO_0]
  SETTABLEKS R9 R8 K44 ["init"]
  DUPCLOSURE R9 K45 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K46 ["render"]
  RETURN R8 1
