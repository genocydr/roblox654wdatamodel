PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"absoluteSize"}]
  GETTABLEKS R4 R0 K2 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K0 ["absoluteSize"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["MouseOffset"]
  SUB R3 R0 R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["state"]
  GETTABLEKS R5 R6 K4 ["absoluteSize"]
  GETTABLEKS R4 R5 K5 ["X"]
  DIV R2 R3 R4
  SUBK R1 R2 K0 [1]
  LOADN R5 255
  LOADN R6 0
  FASTCALL3 MATH_CLAMP R1 R5 R6
  MOVE R4 R1
  GETIMPORT R3 K8 [math.clamp]
  CALL R3 3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K9 ["Timespan"]
  MUL R2 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K10 ["SetScrubberOffset"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+17]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["setScrubberPosition"]
  GETTABLEKS R4 R1 K5 ["Position"]
  GETTABLEKS R3 R4 K6 ["X"]
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K8 [{"dragging"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["dragging"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["dragging"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["setScrubberPosition"]
  GETTABLEKS R3 R0 K3 ["Position"]
  GETTABLEKS R2 R3 K4 ["X"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"dragging"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["dragging"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["Analytics"]
  LOADK R2 K5 ["onScrubbing"]
  NAMECALL R0 R0 K6 ["report"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"dragging"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["dragging"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onAbsoluteSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["setScrubberPosition"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onDragStarted"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onDragMoved"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onDragEnded"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Timespan"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["TIMECONTROLS_INVERVALS"]
  GETTABLE R4 R5 R3
  JUMPIF R4 [+7]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["TIMECONTROLS_INVERVALS"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["DEFAULT_TIMECONTROLS_INTERVAL"]
  GETTABLE R4 R5 R6
  GETTABLEKS R5 R4 K4 ["Minor"]
  GETTABLEKS R6 R4 K5 ["Medium"]
  GETTABLEKS R7 R4 K6 ["Major"]
  LOADNIL R8
  LOADN R11 0
  MOVE R9 R3
  MOVE R10 R5
  FORNPREP R9
  JUMPIFNOTEQKN R11 K7 [0] [+3]
  LOADK R8 K8 ["RBorder"]
  JUMP [+16]
  JUMPIFNOTEQ R11 R3 [+3]
  LOADK R8 K9 ["LBorder"]
  JUMP [+12]
  MOD R12 R11 R7
  JUMPIFNOTEQKN R12 K7 [0] [+3]
  LOADK R8 K6 ["Major"]
  JUMP [+7]
  JUMPIFNOT R6 [+5]
  MOD R12 R11 R6
  JUMPIFNOTEQKN R12 K7 [0] [+3]
  LOADK R8 K5 ["Medium"]
  JUMP [+1]
  LOADK R8 K4 ["Minor"]
  DIV R13 R11 R3
  SUBRK R12 R10 K13 [tostring]
  LOADK R14 K11 ["Tick_"]
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R16 R11
  GETIMPORT R15 K13 [tostring]
  CALL R15 1 1
  CONCAT R13 R14 R15
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["createElement"]
  GETUPVAL R15 2
  NEWTABLE R16 4 0
  LOADN R17 1
  SETTABLEKS R17 R16 K15 ["ZIndex"]
  GETIMPORT R17 K18 [UDim2.fromScale]
  MOVE R18 R12
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K19 ["Position"]
  SETTABLEKS R11 R16 K20 ["Tick"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K21 ["Tag"]
  SETTABLE R8 R16 R17
  CALL R14 2 1
  SETTABLE R14 R1 R13
  FORNLOOP R9
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R4 R2 K2 ["children"]
  DUPTABLE R5 K4 [{"DragListener"}]
  GETTABLEKS R7 R1 K5 ["dragging"]
  JUMPIFNOT R7 [+15]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K9 [{"OnDragMoved", "OnDragEnded"}]
  GETTABLEKS R9 R0 K10 ["onDragMoved"]
  SETTABLEKS R9 R8 K7 ["OnDragMoved"]
  GETTABLEKS R9 R0 K11 ["onDragEnded"]
  SETTABLEKS R9 R8 K8 ["OnDragEnded"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K3 ["DragListener"]
  CALL R3 2 1
  MOVE R6 R3
  NAMECALL R4 R0 K12 ["renderTicks"]
  CALL R4 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 3
  NEWTABLE R6 8 0
  GETTABLEKS R7 R2 K13 ["LayoutOrder"]
  SETTABLEKS R7 R6 K13 ["LayoutOrder"]
  GETTABLEKS R7 R2 K14 ["Size"]
  SETTABLEKS R7 R6 K14 ["Size"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["Change"]
  GETTABLEKS R7 R8 K16 ["AbsoluteSize"]
  GETTABLEKS R8 R0 K17 ["onAbsoluteSizeChanged"]
  SETTABLE R8 R6 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K18 ["Event"]
  GETTABLEKS R7 R8 K19 ["InputBegan"]
  GETTABLEKS R8 R0 K20 ["onDragStarted"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K21 ["Tag"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K21 ["Tag"]
  GETTABLE R8 R2 R9
  SETTABLE R8 R6 R7
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"SetScrubberOffset"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetScrubberOffset"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K11 ["join"]
  GETTABLEKS R6 R2 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["withContext"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["DragListener"]
  GETTABLEKS R10 R8 K16 ["Pane"]
  GETIMPORT R11 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K17 ["Parent"]
  GETTABLEKS R12 R13 K18 ["timelineTick"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K19 ["Src"]
  GETTABLEKS R12 R13 K20 ["Thunks"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K21 ["SetScrubberOffset"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K22 ["Types"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K23 ["Util"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K24 ["Constants"]
  CALL R16 1 1
  GETTABLEKS R17 R3 K25 ["PureComponent"]
  LOADK R19 K26 ["Timeline"]
  NAMECALL R17 R17 K27 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K28 [PROTO_5]
  SETTABLEKS R18 R17 K29 ["init"]
  DUPCLOSURE R18 K30 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R11
  SETTABLEKS R18 R17 K31 ["renderTicks"]
  DUPCLOSURE R18 K32 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R18 R17 K33 ["render"]
  MOVE R18 R7
  DUPTABLE R19 K36 [{"Analytics", "Localization"}]
  GETTABLEKS R20 R6 K34 ["Analytics"]
  SETTABLEKS R20 R19 K34 ["Analytics"]
  GETTABLEKS R20 R6 K35 ["Localization"]
  SETTABLEKS R20 R19 K35 ["Localization"]
  CALL R18 1 1
  MOVE R19 R17
  CALL R18 1 1
  MOVE R17 R18
  DUPCLOSURE R18 K37 [PROTO_9]
  CAPTURE VAL R13
  GETTABLEKS R19 R4 K38 ["connect"]
  LOADNIL R20
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R17
  CALL R19 1 1
  MOVE R17 R19
  RETURN R17 1
