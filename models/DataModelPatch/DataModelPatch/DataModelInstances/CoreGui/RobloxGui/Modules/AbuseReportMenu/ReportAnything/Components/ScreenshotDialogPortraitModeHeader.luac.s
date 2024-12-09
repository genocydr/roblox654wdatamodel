PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["Frame"]
  DUPTABLE R2 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["BackgroundTransparency"]
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 30
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["Size"]
  DUPTABLE R3 K10 [{"Layout", "BackButton"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["UIListLayout"]
  DUPTABLE R6 K16 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R7 K19 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K12 ["FillDirection"]
  GETIMPORT R7 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K13 ["HorizontalAlignment"]
  GETIMPORT R7 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K14 ["VerticalAlignment"]
  GETIMPORT R7 K25 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R7 R6 K15 ["SortOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["Layout"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K30 [{"iconSize", "icon", "layoutOrder", "onActivated"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K31 ["Medium"]
  SETTABLEKS R7 R6 K26 ["iconSize"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K32 ["icons/navigation/pushBack"]
  SETTABLEKS R7 R6 K27 ["icon"]
  LOADN R7 1
  SETTABLEKS R7 R6 K28 ["layoutOrder"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K29 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["BackButton"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  RETURN R3 1

PROTO_2:
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["Workspace"]
  GETTABLEKS R1 R2 K3 ["CurrentCamera"]
  LOADN R2 44
  JUMPIFEQKNIL R1 [+6]
  GETTABLEKS R3 R1 K4 ["ViewportSize"]
  GETTABLEKS R4 R3 K6 ["X"]
  SUBK R2 R4 K5 [150]
  GETTABLEKS R3 R0 K7 ["Theme"]
  GETTABLEKS R4 R0 K8 ["Font"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["createElement"]
  LOADK R6 K10 ["TextLabel"]
  DUPTABLE R7 K20 [{"Text", "Font", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "Size", "BackgroundTransparency"}]
  GETUPVAL R8 1
  SETTABLEKS R8 R7 K11 ["Text"]
  GETTABLEKS R9 R4 K21 ["Header2"]
  GETTABLEKS R8 R9 K8 ["Font"]
  SETTABLEKS R8 R7 K8 ["Font"]
  GETTABLEKS R9 R3 K22 ["TextEmphasis"]
  GETTABLEKS R8 R9 K23 ["Color"]
  SETTABLEKS R8 R7 K12 ["TextColor3"]
  GETTABLEKS R9 R3 K22 ["TextEmphasis"]
  GETTABLEKS R8 R9 K24 ["Transparency"]
  SETTABLEKS R8 R7 K13 ["TextTransparency"]
  LOADN R8 20
  SETTABLEKS R8 R7 K14 ["TextSize"]
  LOADB R8 1
  SETTABLEKS R8 R7 K15 ["TextWrapped"]
  GETIMPORT R8 K27 [Enum.TextXAlignment.Center]
  SETTABLEKS R8 R7 K16 ["TextXAlignment"]
  GETIMPORT R8 K28 [Enum.TextYAlignment.Center]
  SETTABLEKS R8 R7 K17 ["TextYAlignment"]
  GETIMPORT R8 K31 [UDim2.new]
  LOADN R9 0
  MOVE R10 R2
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K19 ["BackgroundTransparency"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_3:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["Frame"]
  DUPTABLE R2 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["BackgroundTransparency"]
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 60
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["Size"]
  DUPTABLE R3 K11 [{"Layout", "UndoButton", "RedoButton"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K12 ["UIListLayout"]
  DUPTABLE R6 K17 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R7 K20 [Enum.FillDirection.Horizontal]
  SETTABLEKS R7 R6 K13 ["FillDirection"]
  GETIMPORT R7 K22 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K14 ["HorizontalAlignment"]
  GETIMPORT R7 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R7 R6 K15 ["VerticalAlignment"]
  GETIMPORT R7 K25 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R7 R6 K16 ["SortOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["Layout"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K31 [{"iconSize", "icon", "isDisabled", "layoutOrder", "onActivated"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K32 ["Medium"]
  SETTABLEKS R7 R6 K26 ["iconSize"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K33 ["icons/actions/edit/undo"]
  SETTABLEKS R7 R6 K27 ["icon"]
  GETUPVAL R8 4
  NOT R7 R8
  SETTABLEKS R7 R6 K28 ["isDisabled"]
  LOADN R7 1
  SETTABLEKS R7 R6 K29 ["layoutOrder"]
  GETUPVAL R7 5
  SETTABLEKS R7 R6 K30 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["UndoButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K31 [{"iconSize", "icon", "isDisabled", "layoutOrder", "onActivated"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K32 ["Medium"]
  SETTABLEKS R7 R6 K26 ["iconSize"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K34 ["icons/actions/edit/redo"]
  SETTABLEKS R7 R6 K27 ["icon"]
  GETUPVAL R8 6
  NOT R7 R8
  SETTABLEKS R7 R6 K28 ["isDisabled"]
  LOADN R7 2
  SETTABLEKS R7 R6 K29 ["layoutOrder"]
  GETUPVAL R7 7
  SETTABLEKS R7 R6 K30 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["RedoButton"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_6:
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R5 1

PROTO_7:
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["isRedoEnabled"]
  JUMPIF R1 [+2]
  GETTABLEKS R1 R0 K1 ["isUndoEnabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K9 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "ZIndex"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K4 ["BackgroundTransparency"]
  GETIMPORT R5 K12 [Color3.fromHex]
  LOADK R6 K13 ["#4F545F"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["BackgroundColor3"]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["LayoutOrder"]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 48
  CALL R5 4 1
  SETTABLEKS R5 R4 K7 ["Size"]
  LOADN R5 2
  SETTABLEKS R5 R4 K8 ["ZIndex"]
  DUPTABLE R5 K18 [{"Bar"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K26 [{"backgroundTransparency", "barHeight", "margin", "renderLeft", "renderRight", "renderCenter", "isSecondary"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["backgroundTransparency"]
  LOADN R9 48
  SETTABLEKS R9 R8 K20 ["barHeight"]
  LOADN R9 12
  SETTABLEKS R9 R8 K21 ["margin"]
  GETTABLEKS R10 R0 K27 ["backAction"]
  GETTABLEKS R11 R0 K0 ["isRedoEnabled"]
  GETTABLEKS R12 R0 K1 ["isUndoEnabled"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R10
  SETTABLEKS R9 R8 K22 ["renderLeft"]
  JUMPIFNOT R1 [+20]
  GETTABLEKS R10 R0 K28 ["annotationPoints"]
  GETTABLEKS R11 R0 K29 ["undoAnnotationPoints"]
  GETTABLEKS R12 R0 K30 ["redoAnnotationPoints"]
  GETTABLEKS R13 R0 K1 ["isUndoEnabled"]
  GETTABLEKS R14 R0 K0 ["isRedoEnabled"]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R12
  JUMP [+1]
  DUPCLOSURE R9 K31 [PROTO_7]
  SETTABLEKS R9 R8 K23 ["renderRight"]
  GETTABLEKS R10 R0 K32 ["titleText"]
  NEWCLOSURE R9 P3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE VAL R10
  SETTABLEKS R9 R8 K24 ["renderCenter"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["isSecondary"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["Bar"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R5 R1 K9 ["App"]
  GETTABLEKS R4 R5 K10 ["Bar"]
  GETTABLEKS R3 R4 K11 ["HeaderBar"]
  GETTABLEKS R6 R1 K9 ["App"]
  GETTABLEKS R5 R6 K12 ["Button"]
  GETTABLEKS R4 R5 K13 ["IconButton"]
  GETTABLEKS R8 R1 K9 ["App"]
  GETTABLEKS R7 R8 K14 ["ImageSet"]
  GETTABLEKS R6 R7 K15 ["Enum"]
  GETTABLEKS R5 R6 K16 ["IconSize"]
  GETTABLEKS R8 R1 K9 ["App"]
  GETTABLEKS R7 R8 K14 ["ImageSet"]
  GETTABLEKS R6 R7 K17 ["Images"]
  GETTABLEKS R8 R1 K18 ["Style"]
  GETTABLEKS R7 R8 K19 ["withStyle"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R9 K21 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R2
  DUPCLOSURE R10 K22 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPCLOSURE R11 K23 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R11 1
