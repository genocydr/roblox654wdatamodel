PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onCancel"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onClose"]
  RETURN R0 0

PROTO_2:
  JUMPIFNOTEQKS R0 K0 ["Export"] [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["onConfirm"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K3 ["onCancel"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"Title", "Buttons", "Resizable", "MinContentSize", "OnButtonPressed", "OnClose"}]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K9 ["Localization"]
  LOADK R6 K10 ["DialogTitle"]
  LOADK R7 K11 ["ExportNonAccessory"]
  NAMECALL R4 R4 K12 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Title"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K16 [{"Key", "Text", "Style"}]
  LOADK R6 K17 ["Export"]
  SETTABLEKS R6 R5 K13 ["Key"]
  GETTABLEKS R7 R0 K8 ["props"]
  GETTABLEKS R6 R7 K9 ["Localization"]
  LOADK R8 K18 ["Dialog"]
  LOADK R9 K17 ["Export"]
  NAMECALL R6 R6 K12 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K14 ["Text"]
  LOADK R6 K19 ["RoundPrimary"]
  SETTABLEKS R6 R5 K15 ["Style"]
  DUPTABLE R6 K16 [{"Key", "Text", "Style"}]
  LOADK R7 K20 ["Cancel"]
  SETTABLEKS R7 R6 K13 ["Key"]
  GETTABLEKS R8 R0 K8 ["props"]
  GETTABLEKS R7 R8 K9 ["Localization"]
  LOADK R9 K18 ["Dialog"]
  LOADK R10 K20 ["Cancel"]
  NAMECALL R7 R7 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K14 ["Text"]
  LOADK R7 K21 ["Round"]
  SETTABLEKS R7 R6 K15 ["Style"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K2 ["Buttons"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["Resizable"]
  GETIMPORT R4 K24 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["MinContentSize"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K5 ["OnButtonPressed"]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K25 ["onCancel"]
  SETTABLEKS R4 R3 K6 ["OnClose"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["StyledDialog"]
  GETTABLEKS R5 R2 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["withContext"]
  GETTABLEKS R7 R5 K12 ["Plugin"]
  GETTABLEKS R8 R5 K13 ["Localization"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["PromptExportNonAccessory"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_1]
  SETTABLEKS R10 R9 K18 ["init"]
  DUPCLOSURE R10 K19 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K20 ["render"]
  MOVE R10 R6
  DUPTABLE R11 K21 [{"Plugin", "Localization"}]
  SETTABLEKS R7 R11 K12 ["Plugin"]
  SETTABLEKS R8 R11 K13 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1