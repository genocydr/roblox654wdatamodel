PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 4 0
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  GETTABLEKS R4 R0 K2 ["OnClick"]
  SETTABLEKS R4 R3 K2 ["OnClick"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Tag"]
  LOADK R6 K4 ["MinimalButton X-Corner %*"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["Tag"]
  GETTABLE R8 R0 R9
  NAMECALL R6 R6 K5 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLE R5 R3 R4
  DUPTABLE R4 K7 [{"Icon"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["Tag"]
  GETUPVAL R9 3
  LOADK R10 K8 ["Icon16 X-PadL X-AnchorCenter"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["Tag"]
  GETTABLE R11 R0 R12
  CALL R9 2 1
  SETTABLE R9 R7 R8
  DUPTABLE R8 K10 [{"Tooltip"}]
  GETTABLEKS R10 R0 K9 ["Tooltip"]
  JUMPIFNOT R10 [+11]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K12 [{"Text"}]
  GETTABLEKS R12 R0 K9 ["Tooltip"]
  SETTABLEKS R12 R11 K11 ["Text"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K9 ["Tooltip"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["Icon"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Styling"]
  GETTABLEKS R3 R4 K10 ["joinTags"]
  GETTABLEKS R4 R2 K11 ["UI"]
  GETTABLEKS R5 R4 K12 ["Pane"]
  GETTABLEKS R6 R4 K13 ["Image"]
  GETTABLEKS R7 R4 K14 ["Tooltip"]
  DUPCLOSURE R8 K15 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1