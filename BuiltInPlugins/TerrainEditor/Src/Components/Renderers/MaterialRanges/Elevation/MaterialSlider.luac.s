PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  DUPTABLE R3 K3 [{"MinHeight", "MaxHeight"}]
  SETTABLEKS R0 R3 K1 ["MinHeight"]
  SETTABLEKS R1 R3 K2 ["MaxHeight"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  DUPTABLE R3 K3 [{"MinHeight", "MaxHeight"}]
  SETTABLEKS R0 R3 K1 ["MinHeight"]
  SETTABLEKS R1 R3 K2 ["MaxHeight"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSelect"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSelect"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["ElevationRenderer"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K10 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
  GETIMPORT R6 K13 [Enum.AutomaticSize.XY]
  SETTABLEKS R6 R5 K4 ["AutomaticSize"]
  GETIMPORT R6 K15 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K5 ["HorizontalAlignment"]
  GETIMPORT R6 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K6 ["Layout"]
  GETTABLEKS R6 R0 K7 ["LayoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETIMPORT R6 K21 [UDim2.fromScale]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["Size"]
  GETTABLEKS R6 R1 K9 ["Spacing"]
  SETTABLEKS R6 R5 K9 ["Spacing"]
  DUPTABLE R6 K26 [{"Slider", "Arrow", "Preview", "Delete"}]
  GETTABLEKS R8 R0 K27 ["Selected"]
  JUMPIFNOT R8 [+68]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K39 [{"ImageColor3", "HideLowerKnob", "HideUpperKnob", "HorizontalDragTolerance", "Layout", "LayoutOrder", "LowerRangeValue", "Max", "Min", "OnInputEnded", "OnValuesChanged", "Precision", "Size", "UpperRangeValue"}]
  GETUPVAL R10 5
  GETTABLEKS R12 R0 K40 ["Material"]
  NAMECALL R10 R10 K41 ["GetMaterialColor"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K28 ["ImageColor3"]
  GETTABLEKS R11 R0 K27 ["Selected"]
  NOT R10 R11
  SETTABLEKS R10 R9 K29 ["HideLowerKnob"]
  GETTABLEKS R11 R0 K27 ["Selected"]
  NOT R10 R11
  SETTABLEKS R10 R9 K30 ["HideUpperKnob"]
  LOADN R10 20
  SETTABLEKS R10 R9 K31 ["HorizontalDragTolerance"]
  GETIMPORT R10 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K6 ["Layout"]
  NAMECALL R10 R2 K42 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETTABLEKS R10 R0 K43 ["MinHeight"]
  SETTABLEKS R10 R9 K32 ["LowerRangeValue"]
  GETTABLEKS R10 R0 K33 ["Max"]
  SETTABLEKS R10 R9 K33 ["Max"]
  GETTABLEKS R10 R0 K34 ["Min"]
  SETTABLEKS R10 R9 K34 ["Min"]
  GETTABLEKS R10 R0 K44 ["OnCommit"]
  SETTABLEKS R10 R9 K35 ["OnInputEnded"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K36 ["OnValuesChanged"]
  LOADB R10 1
  SETTABLEKS R10 R9 K37 ["Precision"]
  GETTABLEKS R10 R1 K45 ["SliderSize"]
  SETTABLEKS R10 R9 K8 ["Size"]
  GETTABLEKS R10 R0 K46 ["MaxHeight"]
  SETTABLEKS R10 R9 K38 ["UpperRangeValue"]
  CALL R7 2 1
  JUMP [+138]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K47 ["Frame"]
  DUPTABLE R9 K49 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K48 ["BackgroundTransparency"]
  NAMECALL R10 R2 K42 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETTABLEKS R10 R1 K50 ["SliderAreaSize"]
  SETTABLEKS R10 R9 K8 ["Size"]
  DUPTABLE R10 K52 [{"Slider", "Button"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K54 [{"ImageColor3", "HideLowerKnob", "HideUpperKnob", "HorizontalDragTolerance", "Layout", "LayoutOrder", "LowerRangeValue", "Max", "Min", "OnInputEnded", "OnValuesChanged", "Position", "Precision", "Size", "UpperRangeValue"}]
  GETUPVAL R14 5
  GETTABLEKS R16 R0 K40 ["Material"]
  NAMECALL R14 R14 K41 ["GetMaterialColor"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["ImageColor3"]
  GETTABLEKS R15 R0 K27 ["Selected"]
  NOT R14 R15
  SETTABLEKS R14 R13 K29 ["HideLowerKnob"]
  GETTABLEKS R15 R0 K27 ["Selected"]
  NOT R14 R15
  SETTABLEKS R14 R13 K30 ["HideUpperKnob"]
  LOADN R14 20
  SETTABLEKS R14 R13 K31 ["HorizontalDragTolerance"]
  GETIMPORT R14 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K6 ["Layout"]
  NAMECALL R14 R2 K42 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  GETTABLEKS R14 R0 K43 ["MinHeight"]
  SETTABLEKS R14 R13 K32 ["LowerRangeValue"]
  GETTABLEKS R14 R0 K33 ["Max"]
  SETTABLEKS R14 R13 K33 ["Max"]
  GETTABLEKS R14 R0 K34 ["Min"]
  SETTABLEKS R14 R13 K34 ["Min"]
  GETTABLEKS R14 R0 K44 ["OnCommit"]
  SETTABLEKS R14 R13 K35 ["OnInputEnded"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K36 ["OnValuesChanged"]
  GETIMPORT R14 K56 [UDim2.fromOffset]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["Position"]
  LOADB R14 1
  SETTABLEKS R14 R13 K37 ["Precision"]
  GETTABLEKS R14 R1 K45 ["SliderSize"]
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R14 R0 K46 ["MaxHeight"]
  SETTABLEKS R14 R13 K38 ["UpperRangeValue"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["Slider"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K57 ["TextButton"]
  NEWTABLE R13 8 0
  LOADN R14 1
  SETTABLEKS R14 R13 K48 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K58 ["BorderSizePixel"]
  GETIMPORT R14 K56 [UDim2.fromOffset]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["Position"]
  GETIMPORT R14 K21 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  LOADK R14 K59 [""]
  SETTABLEKS R14 R13 K60 ["Text"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K61 ["Event"]
  GETTABLEKS R14 R15 K62 ["Activated"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R0
  SETTABLE R15 R13 R14
  LOADN R14 2
  SETTABLEKS R14 R13 K63 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K51 ["Button"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["Slider"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K65 [{"ImageColor3", "LayoutOrder", "Size", "Style"}]
  GETTABLEKS R11 R0 K27 ["Selected"]
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R1 K66 ["ImageColorSelected"]
  JUMP [+2]
  GETTABLEKS R10 R1 K67 ["ImageColor"]
  SETTABLEKS R10 R9 K28 ["ImageColor3"]
  NAMECALL R10 R2 K42 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETTABLEKS R10 R1 K68 ["ArrowSize"]
  SETTABLEKS R10 R9 K8 ["Size"]
  GETTABLEKS R10 R1 K69 ["ArrowStyle"]
  SETTABLEKS R10 R9 K64 ["Style"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K23 ["Arrow"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K70 ["ImageButton"]
  NEWTABLE R9 16 0
  GETTABLEKS R11 R0 K27 ["Selected"]
  JUMPIFNOT R11 [+8]
  GETIMPORT R10 K72 [BrickColor.new]
  GETTABLEKS R12 R1 K73 ["PreviewBorder"]
  GETTABLEKS R11 R12 K74 ["Color"]
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K75 ["BackgroundColor"]
  GETTABLEKS R11 R0 K27 ["Selected"]
  JUMPIFNOT R11 [+2]
  LOADN R10 0
  JUMP [+1]
  LOADN R10 1
  SETTABLEKS R10 R9 K48 ["BackgroundTransparency"]
  GETTABLEKS R11 R0 K27 ["Selected"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R1 K73 ["PreviewBorder"]
  GETTABLEKS R10 R11 K76 ["Image"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K76 ["Image"]
  GETTABLEKS R11 R0 K27 ["Selected"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R1 K73 ["PreviewBorder"]
  GETTABLEKS R10 R11 K74 ["Color"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K28 ["ImageColor3"]
  NAMECALL R10 R2 K42 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETIMPORT R10 K79 [Enum.ScaleType.Slice]
  SETTABLEKS R10 R9 K77 ["ScaleType"]
  GETTABLEKS R10 R1 K80 ["MaterialPreviewSize"]
  SETTABLEKS R10 R9 K8 ["Size"]
  GETTABLEKS R11 R1 K73 ["PreviewBorder"]
  GETTABLEKS R10 R11 K81 ["SliceCenter"]
  SETTABLEKS R10 R9 K81 ["SliceCenter"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K61 ["Event"]
  GETTABLEKS R10 R11 K62 ["Activated"]
  NEWCLOSURE R11 P3
  CAPTURE VAL R0
  SETTABLE R11 R9 R10
  DUPTABLE R10 K84 [{"Container", "UICorner"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K86 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R14 K88 [Vector2.new]
  LOADK R15 K89 [0.5]
  LOADK R16 K89 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K85 ["AnchorPoint"]
  GETIMPORT R14 K21 [UDim2.fromScale]
  LOADK R15 K89 [0.5]
  LOADK R16 K89 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K53 ["Position"]
  GETIMPORT R14 K90 [UDim2.new]
  LOADN R15 1
  LOADN R16 254
  LOADN R17 1
  LOADN R18 254
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  DUPTABLE R14 K92 [{"MaterialPreview"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K3 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K95 [{"CornerRadius", "InitialDistance", "Material", "Size"}]
  GETTABLEKS R18 R1 K96 ["Corner"]
  SETTABLEKS R18 R17 K93 ["CornerRadius"]
  LOADN R18 4
  SETTABLEKS R18 R17 K94 ["InitialDistance"]
  GETTABLEKS R18 R0 K40 ["Material"]
  SETTABLEKS R18 R17 K40 ["Material"]
  GETIMPORT R18 K21 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K8 ["Size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K91 ["MaterialPreview"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K82 ["Container"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K83 ["UICorner"]
  DUPTABLE R13 K97 [{"CornerRadius"}]
  GETTABLEKS R14 R1 K96 ["Corner"]
  SETTABLEKS R14 R13 K93 ["CornerRadius"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K83 ["UICorner"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K24 ["Preview"]
  GETTABLEKS R8 R0 K27 ["Selected"]
  JUMPIFNOT R8 [+50]
  GETTABLEKS R8 R0 K98 ["CanDelete"]
  JUMPIFNOT R8 [+47]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 8
  DUPTABLE R9 K100 [{"LayoutOrder", "OnClick", "Size", "Style"}]
  NAMECALL R10 R2 K42 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  GETTABLEKS R10 R0 K101 ["OnRemove"]
  SETTABLEKS R10 R9 K99 ["OnClick"]
  GETTABLEKS R10 R1 K102 ["ButtonSize"]
  SETTABLEKS R10 R9 K8 ["Size"]
  LOADK R10 K103 ["RoundSubtle"]
  SETTABLEKS R10 R9 K64 ["Style"]
  DUPTABLE R10 K105 [{"DeleteIcon"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K106 [{"ImageColor3", "Size", "Style"}]
  GETTABLEKS R14 R1 K67 ["ImageColor"]
  SETTABLEKS R14 R13 K28 ["ImageColor3"]
  GETIMPORT R14 K21 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R14 R1 K107 ["RemoveStyle"]
  SETTABLEKS R14 R13 K64 ["Style"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K104 ["DeleteIcon"]
  CALL R7 3 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["Delete"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["MaterialFramework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["useEffect"]
  GETTABLEKS R5 R3 K11 ["useState"]
  GETTABLEKS R7 R2 K12 ["ContextServices"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R7 R8 K15 ["Button"]
  GETTABLEKS R9 R2 K14 ["UI"]
  GETTABLEKS R8 R9 K16 ["Image"]
  GETTABLEKS R10 R2 K14 ["UI"]
  GETTABLEKS R9 R10 K17 ["Pane"]
  GETTABLEKS R11 R2 K14 ["UI"]
  GETTABLEKS R10 R11 K18 ["RangeSlider"]
  GETTABLEKS R12 R2 K19 ["Util"]
  GETTABLEKS R11 R12 K20 ["LayoutOrderIterator"]
  GETTABLEKS R13 R1 K21 ["Components"]
  GETTABLEKS R12 R13 K22 ["MaterialPreview"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K23 ["Src"]
  GETTABLEKS R15 R16 K24 ["Resources"]
  GETTABLEKS R14 R15 K25 ["Theme"]
  CALL R13 1 1
  GETIMPORT R15 K27 [game]
  LOADK R17 K28 ["Workspace"]
  NAMECALL R15 R15 K29 ["GetService"]
  CALL R15 2 1
  GETTABLEKS R14 R15 K30 ["Terrain"]
  DUPCLOSURE R15 K31 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R7
  RETURN R15 1
