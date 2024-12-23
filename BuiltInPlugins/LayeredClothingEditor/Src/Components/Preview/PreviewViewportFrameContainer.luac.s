PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetDocked"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["SetDocked"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onPoppedOut"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onWidgetClosed"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Docked"]
  GETTABLEKS R3 R1 K2 ["SetDocked"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Stylizer"]
  NEWTABLE R6 4 0
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K5 ["UpdatePreviewAssetsSelected"]
  SETTABLEKS R7 R6 K6 ["OnCapacityReached"]
  JUMPIFNOT R2 [+34]
  SETTABLEKS R2 R6 K7 ["ShowPopoutButton"]
  GETTABLEKS R7 R0 K8 ["onPoppedOut"]
  SETTABLEKS R7 R6 K9 ["OnPopoutClicked"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K12 [{"Size", "LayoutOrder"}]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETTABLEKS R14 R5 K16 ["PreviewViewportFrameHeight"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K11 ["Size"]
  SETTABLEKS R4 R9 K3 ["LayoutOrder"]
  DUPTABLE R10 K18 [{"PreviewViewportFrame"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["createElement"]
  GETUPVAL R12 2
  MOVE R13 R6
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["PreviewViewportFrame"]
  CALL R7 3 -1
  RETURN R7 -1
  GETTABLEKS R7 R0 K19 ["onWidgetClosed"]
  SETTABLEKS R7 R6 K20 ["OnClose"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 3
  MOVE R9 R6
  CALL R7 2 -1
  RETURN R7 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["previewStatus"]
  GETTABLEKS R3 R0 K1 ["animation"]
  DUPTABLE R4 K3 [{"Docked"}]
  GETTABLEKS R5 R2 K4 ["docked"]
  SETTABLEKS R5 R4 K2 ["Docked"]
  RETURN R4 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  LOADB R4 0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"SetDocked", "UpdatePreviewAssetsSelected"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetDocked"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["UpdatePreviewAssetsSelected"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Actions"]
  GETTABLEKS R5 R6 K11 ["SetDocked"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K12 ["Thunks"]
  GETTABLEKS R6 R7 K13 ["UpdatePreviewAssetsSelected"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K5 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["ContextServices"]
  GETTABLEKS R8 R7 K16 ["withContext"]
  GETTABLEKS R9 R6 K17 ["Util"]
  GETTABLEKS R10 R9 K18 ["LayoutOrderIterator"]
  GETTABLEKS R11 R9 K19 ["Typecheck"]
  GETTABLEKS R12 R6 K20 ["UI"]
  GETTABLEKS R13 R12 K21 ["Pane"]
  GETTABLEKS R14 R3 K22 ["Components"]
  GETTABLEKS R15 R14 K23 ["PreviewDockWidget"]
  GETTABLEKS R16 R14 K24 ["PreviewViewportFrame"]
  GETTABLEKS R18 R3 K17 ["Util"]
  GETTABLEKS R17 R18 K25 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R18 R17 K26 ["PreviewingInfo"]
  GETTABLEKS R19 R1 K27 ["PureComponent"]
  LOADK R21 K28 ["PreviewViewportFrameContainer"]
  NAMECALL R19 R19 K29 ["extend"]
  CALL R19 2 1
  GETTABLEKS R20 R11 K30 ["wrap"]
  MOVE R21 R19
  GETIMPORT R22 K1 [script]
  CALL R20 2 0
  DUPCLOSURE R20 K31 [PROTO_2]
  SETTABLEKS R20 R19 K32 ["init"]
  DUPCLOSURE R20 K33 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K34 ["render"]
  MOVE R20 R8
  DUPTABLE R21 K36 [{"Stylizer"}]
  GETTABLEKS R22 R7 K35 ["Stylizer"]
  SETTABLEKS R22 R21 K35 ["Stylizer"]
  CALL R20 1 1
  MOVE R21 R19
  CALL R20 1 1
  MOVE R19 R20
  DUPCLOSURE R20 K37 [PROTO_4]
  DUPCLOSURE R21 K38 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R5
  GETTABLEKS R22 R2 K39 ["connect"]
  MOVE R23 R20
  MOVE R24 R21
  CALL R22 2 1
  MOVE R23 R19
  CALL R22 1 -1
  RETURN R22 -1
