PROTO_0:
  GETUPVAL R3 0
  DUPTABLE R5 K1 [{"MouseDown"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K0 ["MouseDown"]
  NAMECALL R3 R3 K2 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["MouseDown"]
  JUMPIFNOT R2 [+20]
  GETTABLEKS R2 R1 K2 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["props"]
  GETTABLEKS R2 R3 K7 ["updatePosition"]
  GETUPVAL R3 0
  GETTABLEKS R6 R1 K8 ["Position"]
  GETTABLEKS R5 R6 K9 ["X"]
  NAMECALL R3 R3 K10 ["xToAlpha"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+29]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["state"]
  GETTABLEKS R2 R3 K5 ["MouseDown"]
  JUMPIFNOT R2 [+22]
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"MouseDown"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["MouseDown"]
  NAMECALL R2 R2 K7 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["props"]
  GETTABLEKS R2 R3 K9 ["updatePosition"]
  GETUPVAL R3 0
  GETTABLEKS R6 R1 K10 ["Position"]
  GETTABLEKS R5 R6 K11 ["X"]
  NAMECALL R3 R3 K12 ["xToAlpha"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"mouseDown"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["mouseDown"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["_rootRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onMouseDown"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onInputChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onInputEnded"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_rootRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R7 R2 K2 ["AbsolutePosition"]
  GETTABLEKS R6 R7 K3 ["X"]
  SUB R5 R1 R6
  GETTABLEKS R7 R2 K4 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K3 ["X"]
  DIV R4 R5 R6
  LOADN R5 0
  LOADN R6 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K7 [math.clamp]
  CALL R3 3 1
  RETURN R3 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["ColorValueSlider"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["ImageButton"]
  NEWTABLE R5 16 0
  GETTABLEKS R6 R1 K5 ["LayoutOrder"]
  SETTABLEKS R6 R5 K5 ["LayoutOrder"]
  GETTABLEKS R6 R2 K6 ["Size"]
  SETTABLEKS R6 R5 K6 ["Size"]
  GETTABLEKS R6 R2 K7 ["GradientImage"]
  SETTABLEKS R6 R5 K8 ["Image"]
  GETIMPORT R6 K11 [Color3.fromHSV]
  GETTABLEKS R7 R1 K12 ["Hue"]
  GETTABLEKS R8 R1 K13 ["Saturation"]
  LOADN R9 1
  CALL R6 3 1
  SETTABLEKS R6 R5 K14 ["ImageColor3"]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["AutoButtonColor"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["Ref"]
  GETTABLEKS R7 R0 K17 ["_rootRef"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K18 ["Event"]
  GETTABLEKS R6 R7 K19 ["MouseButton1Down"]
  GETTABLEKS R7 R0 K20 ["onMouseDown"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K18 ["Event"]
  GETTABLEKS R6 R7 K21 ["InputEnded"]
  GETTABLEKS R7 R0 K22 ["onInputEnded"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K18 ["Event"]
  GETTABLEKS R6 R7 K23 ["InputChanged"]
  GETTABLEKS R7 R0 K24 ["onInputChanged"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K26 [{"PositionIndicator"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K27 ["ImageLabel"]
  DUPTABLE R9 K31 [{"Size", "BackgroundTransparency", "Position", "AnchorPoint", "Image", "ImageColor3"}]
  GETTABLEKS R10 R2 K32 ["PositionIndicatorSize"]
  SETTABLEKS R10 R9 K6 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K28 ["BackgroundTransparency"]
  GETIMPORT R10 K35 [UDim2.fromScale]
  GETTABLEKS R11 R1 K36 ["Value"]
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K29 ["Position"]
  GETTABLEKS R10 R2 K37 ["PositionIndicatorAnchor"]
  SETTABLEKS R10 R9 K30 ["AnchorPoint"]
  GETTABLEKS R10 R2 K38 ["PositionIndicatorImage"]
  SETTABLEKS R10 R9 K8 ["Image"]
  GETTABLEKS R10 R2 K39 ["White"]
  SETTABLEKS R10 R9 K14 ["ImageColor3"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["PositionIndicator"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
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
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R7 R2 K11 ["Style"]
  GETTABLEKS R6 R7 K12 ["Stylizer"]
  GETTABLEKS R7 R1 K13 ["PureComponent"]
  LOADK R9 K14 ["ColorValueSlider"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K17 ["init"]
  DUPCLOSURE R8 K18 [PROTO_4]
  SETTABLEKS R8 R7 K19 ["xToAlpha"]
  DUPCLOSURE R8 K20 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K21 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K22 [{"Analytics", "Stylizer"}]
  SETTABLEKS R5 R9 K10 ["Analytics"]
  SETTABLEKS R6 R9 K12 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1