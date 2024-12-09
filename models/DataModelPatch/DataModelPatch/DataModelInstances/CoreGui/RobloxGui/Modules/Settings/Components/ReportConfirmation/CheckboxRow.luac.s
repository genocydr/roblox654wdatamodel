PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["Font"]
  GETTABLEKS R1 R2 K1 ["BaseSize"]
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["actionDisabled"]
  JUMPIFNOT R4 [+9]
  GETTABLEKS R4 R0 K4 ["Theme"]
  GETTABLEKS R2 R4 K5 ["TextMuted"]
  GETTABLEKS R4 R0 K4 ["Theme"]
  GETTABLEKS R3 R4 K6 ["IconDefault"]
  JUMP [+8]
  GETTABLEKS R4 R0 K4 ["Theme"]
  GETTABLEKS R2 R4 K7 ["TextEmphasis"]
  GETTABLEKS R4 R0 K4 ["Theme"]
  GETTABLEKS R3 R4 K8 ["IconEmphasis"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["createElement"]
  LOADK R5 K10 ["Frame"]
  DUPTABLE R6 K14 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R7 K17 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["props"]
  GETTABLEKS R11 R12 K18 ["height"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K11 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K12 ["BackgroundTransparency"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["props"]
  GETTABLEKS R7 R8 K13 ["LayoutOrder"]
  SETTABLEKS R7 R6 K13 ["LayoutOrder"]
  DUPTABLE R7 K23 [{"layout", "image", "text", "checkbox"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  LOADK R9 K24 ["UIListLayout"]
  DUPTABLE R10 K30 [{"VerticalAlignment", "HorizontalAlignment", "Padding", "FillDirection", "SortOrder"}]
  GETIMPORT R11 K33 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K25 ["VerticalAlignment"]
  GETIMPORT R11 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K26 ["HorizontalAlignment"]
  GETIMPORT R11 K36 [UDim.new]
  LOADN R12 0
  LOADN R13 12
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["Padding"]
  GETIMPORT R11 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K28 ["FillDirection"]
  GETIMPORT R11 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K29 ["SortOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["layout"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K43 [{"Size", "Image", "ImageColor3", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R11 K45 [UDim2.fromOffset]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K2 ["props"]
  GETTABLEKS R12 R13 K18 ["height"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["props"]
  GETTABLEKS R13 R14 K18 ["height"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Size"]
  GETUPVAL R12 3
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["props"]
  GETTABLEKS R13 R14 K20 ["image"]
  GETTABLE R11 R12 R13
  SETTABLEKS R11 R10 K40 ["Image"]
  GETTABLEKS R11 R3 K46 ["Color"]
  SETTABLEKS R11 R10 K41 ["ImageColor3"]
  GETTABLEKS R11 R3 K47 ["Transparency"]
  SETTABLEKS R11 R10 K42 ["ImageTransparency"]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["image"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  LOADK R9 K48 ["TextLabel"]
  DUPTABLE R10 K54 [{"BackgroundTransparency", "Size", "Text", "TextColor3", "TextTransparency", "TextSize", "Font", "TextXAlignment", "LayoutOrder"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  GETIMPORT R11 K17 [UDim2.new]
  LOADN R12 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K2 ["props"]
  GETTABLEKS R16 R17 K18 ["height"]
  ADDK R15 R16 K56 [12]
  MINUS R14 R15
  MULK R13 R14 K55 [4]
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["props"]
  GETTABLEKS R11 R12 K57 ["descriptionText"]
  SETTABLEKS R11 R10 K49 ["Text"]
  GETTABLEKS R11 R2 K46 ["Color"]
  SETTABLEKS R11 R10 K50 ["TextColor3"]
  GETTABLEKS R11 R2 K47 ["Transparency"]
  SETTABLEKS R11 R10 K51 ["TextTransparency"]
  GETTABLEKS R14 R0 K0 ["Font"]
  GETTABLEKS R13 R14 K58 ["Header2"]
  GETTABLEKS R12 R13 K59 ["RelativeSize"]
  MUL R11 R12 R1
  SETTABLEKS R11 R10 K52 ["TextSize"]
  GETTABLEKS R13 R0 K0 ["Font"]
  GETTABLEKS R12 R13 K58 ["Header2"]
  GETTABLEKS R11 R12 K0 ["Font"]
  SETTABLEKS R11 R10 K0 ["Font"]
  GETIMPORT R11 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K53 ["TextXAlignment"]
  LOADN R11 2
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["text"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K67 [{"size", "isDisabled", "isSelected", "onActivated", "text", "layoutOrder"}]
  GETIMPORT R11 K45 [UDim2.fromOffset]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K2 ["props"]
  GETTABLEKS R12 R13 K18 ["height"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K2 ["props"]
  GETTABLEKS R13 R14 K18 ["height"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K62 ["size"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["props"]
  GETTABLEKS R11 R12 K3 ["actionDisabled"]
  SETTABLEKS R11 R10 K63 ["isDisabled"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["props"]
  GETTABLEKS R11 R12 K68 ["checkboxSelected"]
  SETTABLEKS R11 R10 K64 ["isSelected"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["props"]
  GETTABLEKS R11 R12 K69 ["onCheckboxActivated"]
  SETTABLEKS R11 R10 K65 ["onActivated"]
  LOADK R11 K70 [""]
  SETTABLEKS R11 R10 K21 ["text"]
  LOADN R11 3
  SETTABLEKS R11 R10 K66 ["layoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["checkbox"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

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
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Style"]
  GETTABLEKS R4 R5 K11 ["withStyle"]
  GETTABLEKS R7 R3 K12 ["Core"]
  GETTABLEKS R6 R7 K13 ["ImageSet"]
  GETTABLEKS R5 R6 K14 ["ImageSetLabel"]
  GETTABLEKS R8 R3 K15 ["App"]
  GETTABLEKS R7 R8 K13 ["ImageSet"]
  GETTABLEKS R6 R7 K16 ["Images"]
  GETTABLEKS R9 R3 K15 ["App"]
  GETTABLEKS R8 R9 K17 ["InputButton"]
  GETTABLEKS R7 R8 K18 ["Checkbox"]
  GETTABLEKS R8 R1 K19 ["PureComponent"]
  LOADK R10 K20 ["CheckboxRow"]
  NAMECALL R8 R8 K21 ["extend"]
  CALL R8 2 1
  DUPTABLE R9 K29 [{"height", "image", "descriptionText", "checkboxSelected", "actionDisabled", "onCheckboxActivated", "LayoutOrder"}]
  LOADN R10 28
  SETTABLEKS R10 R9 K22 ["height"]
  LOADK R10 K30 ["icons/controls/microphone"]
  SETTABLEKS R10 R9 K23 ["image"]
  LOADK R10 K31 ["Description Text"]
  SETTABLEKS R10 R9 K24 ["descriptionText"]
  LOADB R10 0
  SETTABLEKS R10 R9 K25 ["checkboxSelected"]
  LOADB R10 0
  SETTABLEKS R10 R9 K26 ["actionDisabled"]
  DUPCLOSURE R10 K32 [PROTO_0]
  SETTABLEKS R10 R9 K27 ["onCheckboxActivated"]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["LayoutOrder"]
  SETTABLEKS R9 R8 K33 ["defaultProps"]
  GETTABLEKS R9 R2 K34 ["interface"]
  DUPTABLE R10 K29 [{"height", "image", "descriptionText", "checkboxSelected", "actionDisabled", "onCheckboxActivated", "LayoutOrder"}]
  GETTABLEKS R11 R2 K35 ["number"]
  SETTABLEKS R11 R10 K22 ["height"]
  GETTABLEKS R11 R2 K36 ["string"]
  SETTABLEKS R11 R10 K23 ["image"]
  GETTABLEKS R11 R2 K36 ["string"]
  SETTABLEKS R11 R10 K24 ["descriptionText"]
  GETTABLEKS R11 R2 K37 ["boolean"]
  SETTABLEKS R11 R10 K25 ["checkboxSelected"]
  GETTABLEKS R11 R2 K37 ["boolean"]
  SETTABLEKS R11 R10 K26 ["actionDisabled"]
  GETTABLEKS R11 R2 K38 ["callback"]
  SETTABLEKS R11 R10 K27 ["onCheckboxActivated"]
  GETTABLEKS R11 R2 K39 ["optional"]
  GETTABLEKS R12 R2 K35 ["number"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K28 ["LayoutOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K40 ["validateProps"]
  DUPCLOSURE R9 K41 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K42 ["render"]
  RETURN R8 1
