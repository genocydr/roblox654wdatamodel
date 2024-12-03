PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClick"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Value"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 2 0
  GETTABLEKS R4 R0 K1 ["Size"]
  SETTABLEKS R4 R3 K1 ["Size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Tag"]
  LOADK R5 K3 ["DeriveRenderer"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K6 [{"Name", "XButton"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K9 [{"Text", "TextXAlignment"}]
  GETTABLEKS R9 R0 K10 ["Value"]
  GETTABLEKS R8 R9 K4 ["Name"]
  SETTABLEKS R8 R7 K7 ["Text"]
  GETIMPORT R8 K13 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K8 ["TextXAlignment"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Name"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  NEWTABLE R7 8 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K14 ["close"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K15 ["LeftIcon"]
  LOADK R8 K16 ["PointingHand"]
  SETTABLEKS R8 R7 K17 ["Cursor"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K18 ["OnClick"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Tag"]
  LOADK R9 K19 ["IconOnly"]
  SETTABLE R9 R7 R8
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 1
  GETUPVAL R11 5
  MINUS R10 R11
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K23 ["Position"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["XButton"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R4 R3 K9 ["IconButton"]
  GETTABLEKS R5 R3 K10 ["Pane"]
  GETTABLEKS R6 R3 K11 ["TextLabel"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Resources"]
  GETTABLEKS R8 R9 K14 ["ModernIcons"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Resources"]
  GETTABLEKS R9 R10 K15 ["PluginStyles"]
  CALL R8 1 1
  LOADK R11 K16 ["ButtonHeight"]
  NAMECALL R9 R8 K17 ["GetAttribute"]
  CALL R9 2 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K18 ["Renderers"]
  GETTABLEKS R11 R12 K19 ["RendererTypes"]
  CALL R10 1 1
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R11 1