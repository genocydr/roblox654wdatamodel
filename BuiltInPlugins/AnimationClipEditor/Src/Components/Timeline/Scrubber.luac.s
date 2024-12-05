PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Position"]
  GETTABLEKS R4 R1 K3 ["HeadSize"]
  GETTABLEKS R5 R1 K4 ["Height"]
  GETTABLEKS R6 R1 K5 ["ShowHead"]
  GETTABLEKS R7 R1 K6 ["AnchorPoint"]
  GETTABLEKS R8 R1 K7 ["ZIndex"]
  GETTABLEKS R9 R1 K8 ["Thickness"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["Children"]
  GETTABLE R10 R1 R11
  JUMPIF R10 [+2]
  NEWTABLE R10 0 0
  JUMPIFNOT R6 [+35]
  MOVE R12 R10
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K11 ["ImageLabel"]
  DUPTABLE R15 K16 [{"Image", "ImageColor3", "BackgroundTransparency", "Size"}]
  GETTABLEKS R17 R2 K17 ["scrubberTheme"]
  GETTABLEKS R16 R17 K18 ["image"]
  SETTABLEKS R16 R15 K12 ["Image"]
  GETTABLEKS R17 R2 K17 ["scrubberTheme"]
  GETTABLEKS R16 R17 K19 ["backgroundColor"]
  SETTABLEKS R16 R15 K13 ["ImageColor3"]
  LOADN R16 1
  SETTABLEKS R16 R15 K14 ["BackgroundTransparency"]
  GETIMPORT R16 K22 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K25 [table.insert]
  CALL R11 -1 0
  MOVE R12 R10
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["createElement"]
  LOADK R14 K26 ["Frame"]
  DUPTABLE R15 K29 [{"Position", "Size", "BackgroundColor3", "AnchorPoint", "BorderSizePixel"}]
  GETIMPORT R16 K22 [UDim2.new]
  LOADK R17 K30 [0.5]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K2 ["Position"]
  GETIMPORT R16 K22 [UDim2.new]
  LOADN R17 0
  MOVE R18 R9
  LOADN R19 0
  MOVE R20 R5
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Size"]
  GETTABLEKS R17 R2 K17 ["scrubberTheme"]
  GETTABLEKS R16 R17 K19 ["backgroundColor"]
  SETTABLEKS R16 R15 K27 ["BackgroundColor3"]
  GETIMPORT R16 K32 [Vector2.new]
  LOADK R17 K30 [0.5]
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K6 ["AnchorPoint"]
  LOADN R16 0
  SETTABLEKS R16 R15 K28 ["BorderSizePixel"]
  CALL R13 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K25 [table.insert]
  CALL R11 -1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["createElement"]
  LOADK R12 K26 ["Frame"]
  NEWTABLE R13 8 0
  LOADN R14 1
  SETTABLEKS R14 R13 K14 ["BackgroundTransparency"]
  SETTABLEKS R3 R13 K2 ["Position"]
  SETTABLEKS R4 R13 K15 ["Size"]
  SETTABLEKS R8 R13 K7 ["ZIndex"]
  SETTABLEKS R7 R13 K6 ["AnchorPoint"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K33 ["Event"]
  GETTABLEKS R14 R15 K34 ["InputBegan"]
  GETTABLEKS R15 R0 K35 ["onDragBegan"]
  SETTABLE R15 R13 R14
  MOVE R14 R10
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R1 K11 ["PureComponent"]
  LOADK R7 K12 ["Scrubber"]
  NAMECALL R5 R5 K13 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K15 ["render"]
  MOVE R6 R4
  DUPTABLE R7 K17 [{"Stylizer"}]
  GETTABLEKS R8 R3 K16 ["Stylizer"]
  SETTABLEKS R8 R7 K16 ["Stylizer"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  MOVE R5 R6
  RETURN R5 1