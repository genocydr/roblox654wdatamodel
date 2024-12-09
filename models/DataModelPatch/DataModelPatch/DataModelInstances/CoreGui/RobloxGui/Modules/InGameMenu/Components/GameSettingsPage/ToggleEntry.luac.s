PROTO_0:
  DUPTABLE R1 K1 [{"isSelectable"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["isSelectable"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["getValue"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["SelectedCoreObject"]
  GETUPVAL R0 2
  DUPTABLE R2 K3 [{"isSelectable"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["isSelectable"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"Text", "themeKey", "fontKey", "TextTransparency", "Size", "Position", "AnchorPoint", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R4 R0 K11 ["text"]
  SETTABLEKS R4 R3 K1 ["Text"]
  LOADK R4 K12 ["TextDefault"]
  SETTABLEKS R4 R3 K2 ["themeKey"]
  LOADK R4 K13 ["CaptionBody"]
  SETTABLEKS R4 R3 K3 ["fontKey"]
  LOADK R4 K14 [0.5]
  SETTABLEKS R4 R3 K4 ["TextTransparency"]
  GETIMPORT R4 K17 [UDim2.new]
  LOADN R5 1
  LOADN R6 184
  LOADK R7 K18 [0.25]
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETIMPORT R4 K17 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K6 ["Position"]
  GETIMPORT R4 K20 [Vector2.new]
  LOADN R5 0
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["AnchorPoint"]
  GETIMPORT R4 K23 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K8 ["TextXAlignment"]
  GETIMPORT R4 K25 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R4 R3 K9 ["TextYAlignment"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isSelectable"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isSelectable"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isSelectable"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isSelectable"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
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
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K6 ["LayoutOrder"]
  SETTABLEKS R5 R4 K6 ["LayoutOrder"]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 56
  CALL R5 4 1
  SETTABLEKS R5 R4 K10 ["Size"]
  GETTABLEKS R6 R0 K11 ["state"]
  GETTABLEKS R5 R6 K12 ["isSelectable"]
  SETTABLEKS R5 R4 K13 ["Selectable"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["Event"]
  GETTABLEKS R5 R6 K15 ["SelectionGained"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLE R6 R4 R5
  DUPTABLE R5 K21 [{"Padding", "ControlLabel", "LockedLabel", "SubtextLabel", "Toggle"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K22 ["UIPadding"]
  DUPTABLE R8 K25 [{"PaddingRight", "PaddingLeft"}]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 30
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["PaddingRight"]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["PaddingLeft"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["Padding"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K29 [{"localizationKey"}]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K30 ["labelKey"]
  SETTABLEKS R9 R8 K28 ["localizationKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["ControlLabel"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K31 ["lockedToOff"]
  JUMPIFNOT R6 [+31]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K34 [{"Size", "Position", "AnchorPoint"}]
  GETIMPORT R9 K9 [UDim2.new]
  LOADN R10 1
  LOADN R11 184
  LOADK R12 K35 [0.25]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K10 ["Size"]
  GETIMPORT R9 K9 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K32 ["Position"]
  GETIMPORT R9 K37 [Vector2.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K33 ["AnchorPoint"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["LockedLabel"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K38 ["subtextEnabled"]
  JUMPIFNOT R6 [+13]
  GETUPVAL R6 4
  DUPTABLE R7 K40 [{"text"}]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K41 ["subtextKey"]
  SETTABLEKS R8 R7 K39 ["text"]
  CALL R6 1 1
  DUPCLOSURE R7 K42 [PROTO_2]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["SubtextLabel"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K49 [{"Position", "AnchorPoint", "checked", "onToggled", "disabled", "buttonRef", "onSelectionLost", "onSelectionGained", "NextSelectionUp"}]
  GETIMPORT R9 K9 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADK R12 K50 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K32 ["Position"]
  GETIMPORT R9 K37 [Vector2.new]
  LOADN R10 1
  LOADK R11 K50 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K33 ["AnchorPoint"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K43 ["checked"]
  JUMPIFNOT R9 [+5]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K31 ["lockedToOff"]
  NOT R9 R10
  SETTABLEKS R9 R8 K43 ["checked"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K44 ["onToggled"]
  SETTABLEKS R9 R8 K44 ["onToggled"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K31 ["lockedToOff"]
  JUMPIF R9 [+4]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K51 ["isDisabled"]
  SETTABLEKS R9 R8 K45 ["disabled"]
  SETTABLEKS R1 R8 K1 ["buttonRef"]
  NEWCLOSURE R9 P2
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K46 ["onSelectionLost"]
  NEWCLOSURE R9 P3
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K47 ["onSelectionGained"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K48 ["NextSelectionUp"]
  SETTABLEKS R9 R8 K48 ["NextSelectionUp"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K20 ["Toggle"]
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
  GETTABLEKS R8 R5 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["ToggleSwitch"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETIMPORT R10 K12 [script]
  GETTABLEKS R9 R10 K13 ["Parent"]
  GETTABLEKS R8 R9 K16 ["InputLabel"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETIMPORT R11 K12 [script]
  GETTABLEKS R10 R11 K13 ["Parent"]
  GETTABLEKS R9 R10 K17 ["DeveloperLockLabel"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R5 K14 ["Components"]
  GETTABLEKS R10 R11 K18 ["ThemedTextLabel"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R5 K19 ["Localization"]
  GETTABLEKS R11 R12 K20 ["withLocalization"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K21 ["PureComponent"]
  LOADK R13 K22 ["ToggleEntry"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R4 K24 ["strictInterface"]
  DUPTABLE R13 K35 [{"LayoutOrder", "labelKey", "lockedToOff", "isDisabled", "subtextEnabled", "subtextKey", "checked", "onToggled", "buttonRef", "NextSelectionUp"}]
  GETTABLEKS R14 R4 K36 ["integer"]
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  GETTABLEKS R14 R4 K37 ["string"]
  SETTABLEKS R14 R13 K26 ["labelKey"]
  GETTABLEKS R14 R4 K38 ["optional"]
  GETTABLEKS R15 R4 K39 ["boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K27 ["lockedToOff"]
  GETTABLEKS R14 R4 K38 ["optional"]
  GETTABLEKS R15 R4 K39 ["boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K28 ["isDisabled"]
  GETTABLEKS R14 R4 K38 ["optional"]
  GETTABLEKS R15 R4 K39 ["boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K29 ["subtextEnabled"]
  GETTABLEKS R14 R4 K38 ["optional"]
  GETTABLEKS R15 R4 K37 ["string"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["subtextKey"]
  GETTABLEKS R14 R4 K39 ["boolean"]
  SETTABLEKS R14 R13 K31 ["checked"]
  GETTABLEKS R14 R4 K40 ["callback"]
  SETTABLEKS R14 R13 K32 ["onToggled"]
  GETTABLEKS R14 R4 K38 ["optional"]
  GETTABLEKS R15 R4 K41 ["table"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K33 ["buttonRef"]
  GETTABLEKS R14 R4 K38 ["optional"]
  GETTABLEKS R15 R4 K42 ["union"]
  GETTABLEKS R16 R4 K43 ["Instance"]
  GETTABLEKS R17 R4 K41 ["table"]
  CALL R15 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K34 ["NextSelectionUp"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K44 ["validateProps"]
  DUPCLOSURE R12 K45 [PROTO_0]
  SETTABLEKS R12 R11 K46 ["init"]
  DUPCLOSURE R12 K47 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K48 ["render"]
  RETURN R11 1
