PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["plotToAbsolutePolar"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Position"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["IsRight"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["PlotAbsoluteSize"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnHoverStart"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["OnHoverStart"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OnMoved"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K4 [Vector2.new]
  GETTABLEKS R3 R0 K5 ["Position"]
  GETTABLEKS R2 R3 K6 ["X"]
  GETTABLEKS R4 R0 K5 ["Position"]
  GETTABLEKS R3 R4 K7 ["Y"]
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["mouseToPlotPolar"]
  MOVE R3 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  CALL R2 2 1
  GETIMPORT R3 K4 [Vector2.new]
  GETTABLEKS R5 R2 K6 ["X"]
  LOADN R6 0
  LOADN R7 180
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K11 [math.clamp]
  CALL R4 3 1
  GETTABLEKS R6 R2 K7 ["Y"]
  LOADN R7 0
  LOADN R8 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K11 [math.clamp]
  CALL R5 3 1
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["OnMoved"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnDragEnd"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnDragEnd"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnDragStart"]
  JUMPIFNOT R2 [+19]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OnDragStart"]
  CALL R2 0 0
  RETURN R0 0
  GETTABLEKS R2 R1 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["OnRightClick"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["OnRightClick"]
  CALL R2 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETTABLEKS R3 R0 K0 ["PlotRef"]
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWTABLE R6 0 3
  GETTABLEKS R7 R0 K1 ["Position"]
  GETTABLEKS R8 R0 K2 ["IsRight"]
  GETTABLEKS R9 R0 K3 ["PlotAbsoluteSize"]
  SETLIST R6 R7 3 [1]
  CALL R4 2 1
  GETUPVAL R5 3
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R8 R0 K4 ["OnHoverStart"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R6 3
  NEWCLOSURE R7 P2
  CAPTURE VAL R2
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R7 3
  NEWCLOSURE R8 P3
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R9 0 1
  GETTABLEKS R10 R0 K5 ["OnMoved"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R8 3
  NEWCLOSURE R9 P4
  CAPTURE VAL R0
  NEWTABLE R10 0 1
  GETTABLEKS R11 R0 K6 ["OnDragEnd"]
  SETLIST R10 R11 1 [1]
  CALL R8 2 1
  GETUPVAL R9 3
  NEWCLOSURE R10 P5
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  NEWTABLE R11 0 2
  GETTABLEKS R12 R0 K7 ["OnDragStart"]
  GETTABLEKS R13 R0 K8 ["OnRightClick"]
  SETLIST R11 R12 2 [1]
  CALL R9 2 1
  LOADK R10 K9 [""]
  GETTABLEKS R11 R0 K10 ["IsDragging"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K11 ["Pressed"]
  JUMP [+10]
  GETTABLEKS R11 R0 K12 ["IsSelected"]
  JUMPIFNOT R11 [+3]
  JUMPIFNOT R1 [+2]
  LOADK R10 K13 ["Hovered"]
  JUMP [+4]
  GETTABLEKS R11 R0 K12 ["IsSelected"]
  JUMPIFNOT R11 [+1]
  LOADK R10 K14 ["Selected"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K15 ["createElement"]
  LOADK R12 K16 ["ImageButton"]
  NEWTABLE R13 4 0
  GETIMPORT R14 K19 [UDim2.fromOffset]
  GETTABLEKS R15 R4 K20 ["X"]
  GETTABLEKS R16 R4 K21 ["Y"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K1 ["Position"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K22 ["Tag"]
  GETUPVAL R15 6
  LOADK R16 K23 ["CurvePointOuter"]
  MOVE R17 R10
  CALL R15 2 1
  SETTABLE R15 R13 R14
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K24 ["Event"]
  GETTABLEKS R14 R15 K25 ["InputBegan"]
  SETTABLE R9 R13 R14
  DUPTABLE R14 K29 [{"HoverArea", "DragListener", "Inner"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K15 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Cursor", "MouseEnter", "MouseLeave"}]
  GETUPVAL R18 8
  SETTABLEKS R18 R17 K30 ["Cursor"]
  SETTABLEKS R5 R17 K31 ["MouseEnter"]
  SETTABLEKS R6 R17 K32 ["MouseLeave"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["HoverArea"]
  GETTABLEKS R15 R0 K10 ["IsDragging"]
  JUMPIFNOT R15 [+10]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K15 ["createElement"]
  GETUPVAL R16 9
  DUPTABLE R17 K36 [{"OnDragMoved", "OnDragEnded"}]
  SETTABLEKS R7 R17 K34 ["OnDragMoved"]
  SETTABLEKS R8 R17 K35 ["OnDragEnded"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K27 ["DragListener"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K15 ["createElement"]
  LOADK R16 K16 ["ImageButton"]
  NEWTABLE R17 2 0
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K22 ["Tag"]
  GETUPVAL R19 6
  LOADK R20 K37 ["CurvePoint"]
  MOVE R21 R10
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K24 ["Event"]
  GETTABLEKS R18 R19 K25 ["InputBegan"]
  SETTABLE R9 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["Inner"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DirectionalCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useCallback"]
  GETTABLEKS R3 R1 K9 ["useMemo"]
  GETTABLEKS R4 R1 K10 ["useState"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K12 ["Styling"]
  GETTABLEKS R6 R7 K13 ["joinTags"]
  GETTABLEKS R8 R5 K14 ["UI"]
  GETTABLEKS R7 R8 K15 ["DragListener"]
  GETTABLEKS R9 R5 K14 ["UI"]
  GETTABLEKS R8 R9 K16 ["HoverArea"]
  GETTABLEKS R10 R5 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["isInputMainPress"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K19 ["Src"]
  GETTABLEKS R12 R13 K20 ["Resources"]
  GETTABLEKS R11 R12 K21 ["PluginStyles"]
  CALL R10 1 1
  LOADK R13 K22 ["CursorOpenedHand"]
  NAMECALL R11 R10 K23 ["GetAttribute"]
  CALL R11 2 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K19 ["Src"]
  GETTABLEKS R15 R16 K24 ["Components"]
  GETTABLEKS R14 R15 K25 ["CurveRenderer"]
  GETTABLEKS R13 R14 K26 ["PlotRectUtil"]
  CALL R12 1 1
  DUPCLOSURE R13 K27 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R7
  RETURN R13 1