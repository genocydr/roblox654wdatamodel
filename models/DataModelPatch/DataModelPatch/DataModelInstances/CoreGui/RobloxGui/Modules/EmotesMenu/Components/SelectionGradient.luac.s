PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Layouts"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["layout"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["emotesWheel"]
  GETTABLEKS R2 R3 K4 ["focusedSegmentIndex"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["EmotesPerPage"]
  DIVRK R5 R5 K6 ["EmotesPerPage"]
  SUBK R6 R2 K7 [1]
  MUL R4 R5 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["SegmentsStartRotation"]
  ADD R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["createElement"]
  LOADK R5 K10 ["Frame"]
  DUPTABLE R6 K17 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Rotation", "Visible"}]
  GETIMPORT R7 K20 [Vector2.new]
  LOADK R8 K21 [0.5]
  LOADK R9 K21 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["AnchorPoint"]
  GETIMPORT R7 K23 [UDim2.new]
  LOADK R8 K21 [0.5]
  LOADN R9 0
  LOADK R10 K21 [0.5]
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K12 ["Position"]
  GETIMPORT R7 K23 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K13 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["BackgroundTransparency"]
  SETTABLEKS R3 R6 K15 ["Rotation"]
  JUMPIFNOTEQKN R2 K24 [0] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["Visible"]
  DUPTABLE R7 K26 [{"SelectedGradient"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  LOADK R9 K27 ["ImageLabel"]
  DUPTABLE R10 K31 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "ImageTransparency", "Image", "ZIndex"}]
  GETIMPORT R11 K20 [Vector2.new]
  LOADN R12 0
  LOADK R13 K21 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["AnchorPoint"]
  GETIMPORT R11 K23 [UDim2.new]
  LOADK R12 K21 [0.5]
  LOADN R13 0
  LOADK R14 K21 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Position"]
  GETIMPORT R11 K23 [UDim2.new]
  LOADK R12 K21 [0.5]
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["BackgroundTransparency"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K32 ["GradientTransparency"]
  SETTABLEKS R11 R10 K28 ["ImageTransparency"]
  GETTABLEKS R11 R1 K25 ["SelectedGradient"]
  SETTABLEKS R11 R10 K29 ["Image"]
  LOADN R11 2
  SETTABLEKS R11 R10 K30 ["ZIndex"]
  DUPTABLE R11 K35 [{"AsspectRatioConstraint", "SizeConstraint"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  LOADK R13 K36 ["UIAspectRatioConstraint"]
  DUPTABLE R14 K38 [{"AspectRatio"}]
  GETTABLEKS R17 R1 K39 ["SelectedGradientImageSize"]
  GETTABLEKS R16 R17 K40 ["X"]
  GETTABLEKS R18 R1 K39 ["SelectedGradientImageSize"]
  GETTABLEKS R17 R18 K41 ["Y"]
  DIV R15 R16 R17
  SETTABLEKS R15 R14 K37 ["AspectRatio"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K33 ["AsspectRatioConstraint"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  LOADK R13 K42 ["UISizeConstraint"]
  DUPTABLE R14 K44 [{"MaxSize"}]
  GETTABLEKS R15 R1 K39 ["SelectedGradientImageSize"]
  SETTABLEKS R15 R14 K43 ["MaxSize"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K34 ["SizeConstraint"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K25 ["SelectedGradient"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R1 K2 [{"emotesWheel", "layout"}]
  GETTABLEKS R2 R0 K0 ["emotesWheel"]
  SETTABLEKS R2 R1 K0 ["emotesWheel"]
  GETTABLEKS R2 R0 K1 ["layout"]
  SETTABLEKS R2 R1 K1 ["layout"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R4 K10 [script]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETTABLEKS R4 R3 K11 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["PureComponent"]
  LOADK R8 K14 ["SelectionGradient"]
  NAMECALL R6 R6 K15 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K17 ["render"]
  DUPCLOSURE R7 K18 [PROTO_1]
  GETTABLEKS R8 R2 K19 ["connect"]
  MOVE R9 R7
  LOADNIL R10
  CALL R8 2 1
  MOVE R9 R6
  CALL R8 1 -1
  RETURN R8 -1
