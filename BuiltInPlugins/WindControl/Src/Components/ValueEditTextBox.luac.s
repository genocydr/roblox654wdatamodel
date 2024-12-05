PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["enteredText"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["enteredText"]
  JUMPIFNOT R0 [+6]
  JUMPIFEQKS R2 K2 [""] [+5]
  GETTABLEKS R3 R1 K3 ["OnTextConfirmed"]
  MOVE R4 R2
  CALL R3 1 0
  GETTABLEKS R3 R1 K4 ["OnEditCanceled"]
  CALL R3 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textBoxRef"]
  LOADK R1 K2 [""]
  SETTABLEKS R1 R0 K3 ["enteredText"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onTextChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onFocusLost"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K12 [{"Size", "Style", "LayoutOrder", "TextWrapped", "ShouldFocus", "TextXAlignment", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
  GETTABLEKS R5 R1 K2 ["Size"]
  SETTABLEKS R5 R4 K2 ["Size"]
  LOADK R5 K13 ["FilledRoundedBorder"]
  SETTABLEKS R5 R4 K3 ["Style"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  SETTABLEKS R5 R4 K4 ["LayoutOrder"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["TextWrapped"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["ShouldFocus"]
  GETIMPORT R5 K16 [Enum.TextXAlignment.Left]
  SETTABLEKS R5 R4 K7 ["TextXAlignment"]
  GETTABLEKS R5 R0 K17 ["textBoxRef"]
  SETTABLEKS R5 R4 K8 ["ForwardRef"]
  GETTABLEKS R5 R1 K18 ["Text"]
  SETTABLEKS R5 R4 K9 ["PlaceholderText"]
  GETTABLEKS R5 R0 K19 ["onTextChanged"]
  SETTABLEKS R5 R4 K10 ["OnTextChanged"]
  GETTABLEKS R5 R0 K20 ["onFocusLost"]
  SETTABLEKS R5 R4 K11 ["OnFocusLost"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["textBoxRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  NAMECALL R1 R1 K2 ["CaptureFocus"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["DEPRECATED_TextInput"]
  GETTABLEKS R5 R1 K10 ["Component"]
  LOADK R7 K11 ["ValueEditTextBox"]
  NAMECALL R5 R5 K12 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K13 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K14 ["init"]
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K16 ["render"]
  DUPCLOSURE R6 K17 [PROTO_4]
  SETTABLEKS R6 R5 K18 ["didMount"]
  RETURN R5 1