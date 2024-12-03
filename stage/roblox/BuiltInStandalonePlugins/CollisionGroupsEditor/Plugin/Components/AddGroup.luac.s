PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textBoxRef"]
  LOADK R1 K2 [""]
  SETTABLEKS R1 R0 K3 ["text"]
  DUPTABLE R1 K5 [{"editing"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["editing"]
  SETTABLEKS R1 R0 K6 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editing"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["editing"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["textBoxRef"]
  NAMECALL R0 R0 K4 ["getValue"]
  CALL R0 1 1
  JUMPIFEQKNIL R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["textBoxRef"]
  NAMECALL R0 R0 K4 ["getValue"]
  CALL R0 1 1
  NAMECALL R0 R0 K5 ["CaptureFocus"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K6 ["OnEditingChanged"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["text"]
  GETIMPORT R2 K3 [string.gsub]
  MOVE R3 R1
  LOADK R4 K4 ["^%s+"]
  LOADK R5 K5 [""]
  CALL R2 3 1
  MOVE R1 R2
  LOADB R2 0
  JUMPIFEQKS R1 K6 ["Default"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R0 [+26]
  JUMPIFEQKS R1 K5 [""] [+25]
  JUMPIF R2 [+23]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["OnGroupAdded"]
  MOVE R4 R1
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  NAMECALL R3 R3 K10 ["CaptureFocus"]
  CALL R3 1 0
  JUMP [+13]
  GETUPVAL R3 0
  DUPTABLE R5 K12 [{"editing"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["editing"]
  NAMECALL R3 R3 K13 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K14 ["OnEditingChanged"]
  LOADB R4 0
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  LOADK R4 K5 [""]
  SETTABLEKS R4 R3 K15 ["Text"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R6 R1 K3 ["Groups"]
  LENGTH R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["GroupCountMax"]
  JUMPIFLE R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+12]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K6 ["editing"]
  JUMPIFNOT R5 [+7]
  DUPTABLE R7 K7 [{"editing"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K6 ["editing"]
  NAMECALL R5 R0 K8 ["setState"]
  CALL R5 2 0
  LOADK R6 K9 ["+ "]
  LOADK R9 K10 ["Actions"]
  LOADK R10 K11 ["AddGroup"]
  NAMECALL R7 R2 K12 ["getText"]
  CALL R7 3 1
  CONCAT R5 R6 R7
  LOADK R7 K9 ["+ "]
  LOADK R10 K13 ["Info"]
  LOADK R11 K14 ["NewGroupName"]
  NAMECALL R8 R2 K12 ["getText"]
  CALL R8 3 1
  CONCAT R6 R7 R8
  GETTABLEKS R7 R3 K15 ["Font"]
  GETTABLEKS R8 R3 K16 ["TextSize"]
  GETUPVAL R9 1
  MOVE R11 R5
  MOVE R12 R8
  MOVE R13 R7
  GETIMPORT R14 K19 [Vector2.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 -1
  NAMECALL R9 R9 K20 ["GetTextSize"]
  CALL R9 -1 1
  GETUPVAL R10 1
  MOVE R12 R6
  MOVE R13 R8
  MOVE R14 R7
  GETIMPORT R15 K19 [Vector2.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 -1
  NAMECALL R10 R10 K20 ["GetTextSize"]
  CALL R10 -1 1
  GETTABLEKS R13 R9 K22 ["X"]
  ADDK R12 R13 K21 [2]
  FASTCALL1 MATH_CEIL R12 [+2]
  GETIMPORT R11 K25 [math.ceil]
  CALL R11 1 1
  GETTABLEKS R14 R10 K22 ["X"]
  ADDK R13 R14 K21 [2]
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K25 [math.ceil]
  CALL R12 1 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K26 ["ControlsHeaderButtonWidth"]
  FASTCALL3 MATH_MAX R13 R11 R12
  MOVE R15 R13
  MOVE R16 R11
  MOVE R17 R12
  GETIMPORT R14 K28 [math.max]
  CALL R14 3 1
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K34 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R18 K36 [UDim2.new]
  LOADN R19 0
  MOVE R20 R14
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K30 ["Size"]
  GETTABLEKS R18 R1 K31 ["LayoutOrder"]
  SETTABLEKS R18 R17 K31 ["LayoutOrder"]
  GETIMPORT R18 K40 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K32 ["Layout"]
  GETIMPORT R18 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R18 R17 K33 ["HorizontalAlignment"]
  DUPTABLE R18 K45 [{"AddButton", "TextInput"}]
  GETTABLEKS R21 R0 K5 ["state"]
  GETTABLEKS R20 R21 K6 ["editing"]
  NOT R19 R20
  JUMPIFNOT R19 [+36]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K29 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K51 [{"Style", "Text", "StyleModifier", "Size", "TextWrapped", "OnClick"}]
  LOADK R22 K52 ["Round"]
  SETTABLEKS R22 R21 K46 ["Style"]
  SETTABLEKS R5 R21 K47 ["Text"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K53 ["Disabled"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K48 ["StyleModifier"]
  GETIMPORT R22 K36 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K30 ["Size"]
  LOADB R22 1
  SETTABLEKS R22 R21 K49 ["TextWrapped"]
  NEWCLOSURE R22 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K50 ["OnClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K43 ["AddButton"]
  GETTABLEKS R20 R0 K5 ["state"]
  GETTABLEKS R19 R20 K6 ["editing"]
  JUMPIFNOT R19 [+34]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K29 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K59 [{"Size", "TextXAlignment", "PlaceholderText", "ForwardRef", "OnTextChanged", "OnFocusLost"}]
  GETIMPORT R22 K36 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K30 ["Size"]
  GETIMPORT R22 K60 [Enum.TextXAlignment.Center]
  SETTABLEKS R22 R21 K54 ["TextXAlignment"]
  SETTABLEKS R6 R21 K55 ["PlaceholderText"]
  GETTABLEKS R22 R0 K61 ["textBoxRef"]
  SETTABLEKS R22 R21 K56 ["ForwardRef"]
  NEWCLOSURE R22 P1
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K57 ["OnTextChanged"]
  NEWCLOSURE R22 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K58 ["OnFocusLost"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K44 ["TextInput"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TextService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R3 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["Button"]
  GETTABLEKS R7 R5 K15 ["Pane"]
  GETTABLEKS R8 R5 K16 ["DEPRECATED_TextInput"]
  GETTABLEKS R10 R3 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["StyleModifier"]
  GETIMPORT R10 K8 [require]
  GETIMPORT R14 K5 [script]
  GETTABLEKS R13 R14 K6 ["Parent"]
  GETTABLEKS R12 R13 K6 ["Parent"]
  GETTABLEKS R11 R12 K19 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K20 ["PureComponent"]
  LOADK R13 K21 ["AddGroup"]
  NAMECALL R11 R11 K22 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R12 R11 K24 ["init"]
  DUPCLOSURE R12 K25 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K26 ["render"]
  GETTABLEKS R12 R4 K27 ["withContext"]
  DUPTABLE R13 K30 [{"Stylizer", "Localization"}]
  GETTABLEKS R14 R4 K28 ["Stylizer"]
  SETTABLEKS R14 R13 K28 ["Stylizer"]
  GETTABLEKS R14 R4 K29 ["Localization"]
  SETTABLEKS R14 R13 K29 ["Localization"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1