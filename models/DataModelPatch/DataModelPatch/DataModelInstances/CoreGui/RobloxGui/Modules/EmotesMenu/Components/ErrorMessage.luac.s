PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["close"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFNOTEQ R2 R3 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["close"]
  CALL R2 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Layouts"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["layout"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  LOADK R3 K4 ["Frame"]
  NEWTABLE R4 16 0
  GETTABLEKS R5 R1 K5 ["ErrorFrameSize"]
  SETTABLEKS R5 R4 K6 ["Size"]
  GETTABLEKS R5 R1 K7 ["ErrorFramePosition"]
  SETTABLEKS R5 R4 K8 ["Position"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["Colors"]
  GETTABLEKS R5 R6 K10 ["Black"]
  SETTABLEKS R5 R4 K11 ["BackgroundColor3"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["ErrorFrameBackgroundTransparency"]
  SETTABLEKS R5 R4 K13 ["BackgroundTransparency"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["ErrorFrameBorderSize"]
  SETTABLEKS R5 R4 K15 ["BorderSizePixel"]
  LOADB R5 0
  SETTABLEKS R5 R4 K16 ["Selectable"]
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K17 ["displayOptions"]
  GETTABLEKS R5 R6 K18 ["errorVisible"]
  SETTABLEKS R5 R4 K19 ["Visible"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K20 ["Event"]
  GETTABLEKS R5 R6 K21 ["TouchTap"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLE R6 R4 R5
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K20 ["Event"]
  GETTABLEKS R5 R6 K22 ["InputBegan"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  SETTABLE R6 R4 R5
  DUPTABLE R5 K27 [{"AsspectRatioConstraint", "SizeConstraint", "ErrorIcon", "ErrorText"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K28 ["UIAspectRatioConstraint"]
  DUPTABLE R8 K30 [{"AspectRatio"}]
  GETTABLEKS R9 R1 K31 ["ErrorFrameAspectRatio"]
  SETTABLEKS R9 R8 K29 ["AspectRatio"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K23 ["AsspectRatioConstraint"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K32 ["UISizeConstraint"]
  DUPTABLE R8 K35 [{"MinSize", "MaxSize"}]
  GETTABLEKS R9 R1 K36 ["ErrorFrameMinSize"]
  SETTABLEKS R9 R8 K33 ["MinSize"]
  GETTABLEKS R9 R1 K37 ["ErrorFrameMaxSize"]
  SETTABLEKS R9 R8 K34 ["MaxSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K24 ["SizeConstraint"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K38 ["ImageLabel"]
  DUPTABLE R8 K41 [{"AnchorPoint", "Position", "Size", "Image", "BackgroundTransparency"}]
  GETIMPORT R9 K44 [Vector2.new]
  LOADN R10 0
  LOADK R11 K45 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K39 ["AnchorPoint"]
  GETIMPORT R9 K47 [UDim2.new]
  LOADN R10 0
  GETTABLEKS R11 R1 K48 ["ErrorIconOffset"]
  LOADK R12 K45 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Position"]
  GETIMPORT R9 K47 [UDim2.new]
  LOADK R10 K49 [0.2]
  GETTABLEKS R13 R1 K48 ["ErrorIconOffset"]
  MINUS R12 R13
  MULK R11 R12 K50 [2]
  LOADN R12 1
  GETTABLEKS R15 R1 K48 ["ErrorIconOffset"]
  MINUS R14 R15
  MULK R13 R14 K50 [2]
  CALL R9 4 1
  SETTABLEKS R9 R8 K6 ["Size"]
  GETTABLEKS R9 R1 K25 ["ErrorIcon"]
  SETTABLEKS R9 R8 K40 ["Image"]
  LOADN R9 1
  SETTABLEKS R9 R8 K13 ["BackgroundTransparency"]
  DUPTABLE R9 K51 [{"AsspectRatioConstraint"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K28 ["UIAspectRatioConstraint"]
  DUPTABLE R12 K30 [{"AspectRatio"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K29 ["AspectRatio"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["AsspectRatioConstraint"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K25 ["ErrorIcon"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K52 ["TextLabel"]
  DUPTABLE R8 K59 [{"AnchorPoint", "Position", "Size", "Text", "TextScaled", "TextSize", "TextColor3", "TextXAlignment", "Font", "BackgroundTransparency"}]
  GETIMPORT R9 K44 [Vector2.new]
  LOADN R10 0
  LOADK R11 K45 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K39 ["AnchorPoint"]
  GETIMPORT R9 K47 [UDim2.new]
  LOADK R10 K49 [0.2]
  GETTABLEKS R12 R1 K48 ["ErrorIconOffset"]
  MINUS R11 R12
  LOADK R12 K45 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Position"]
  GETIMPORT R9 K47 [UDim2.new]
  LOADK R10 K60 [0.8]
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K6 ["Size"]
  GETTABLEKS R11 R0 K1 ["props"]
  GETTABLEKS R10 R11 K17 ["displayOptions"]
  GETTABLEKS R9 R10 K61 ["errorText"]
  SETTABLEKS R9 R8 K53 ["Text"]
  LOADB R9 1
  SETTABLEKS R9 R8 K54 ["TextScaled"]
  GETTABLEKS R9 R1 K62 ["ErrorTextSize"]
  SETTABLEKS R9 R8 K55 ["TextSize"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["Colors"]
  GETTABLEKS R9 R10 K63 ["White"]
  SETTABLEKS R9 R8 K56 ["TextColor3"]
  GETIMPORT R9 K66 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K57 ["TextXAlignment"]
  GETTABLEKS R9 R1 K67 ["ErrorTextFont"]
  SETTABLEKS R9 R8 K58 ["Font"]
  LOADN R9 1
  SETTABLEKS R9 R8 K13 ["BackgroundTransparency"]
  DUPTABLE R9 K69 [{"SizeConstraint", "TextSizeConstraint"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K32 ["UISizeConstraint"]
  DUPTABLE R12 K70 [{"MaxSize"}]
  GETIMPORT R13 K44 [Vector2.new]
  GETTABLEKS R15 R1 K37 ["ErrorFrameMaxSize"]
  GETTABLEKS R14 R15 K71 ["X"]
  GETTABLEKS R16 R1 K62 ["ErrorTextSize"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K72 ["TextPadding"]
  ADD R15 R16 R17
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["MaxSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["SizeConstraint"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K73 ["UITextSizeConstraint"]
  DUPTABLE R12 K75 [{"MaxTextSize"}]
  GETTABLEKS R13 R1 K62 ["ErrorTextSize"]
  SETTABLEKS R13 R12 K74 ["MaxTextSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K68 ["TextSizeConstraint"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K26 ["ErrorText"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  DUPTABLE R1 K2 [{"displayOptions", "layout"}]
  GETTABLEKS R2 R0 K0 ["displayOptions"]
  SETTABLEKS R2 R1 K0 ["displayOptions"]
  GETTABLEKS R2 R0 K1 ["layout"]
  SETTABLEKS R2 R1 K1 ["layout"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_5:
  DUPTABLE R1 K1 [{"close"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["close"]
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
  GETTABLEKS R5 R4 K12 ["Actions"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["HideError"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K14 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K15 ["PureComponent"]
  LOADK R10 K16 ["ErrorMessage"]
  NAMECALL R8 R8 K17 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K19 ["render"]
  DUPCLOSURE R9 K20 [PROTO_3]
  DUPCLOSURE R10 K21 [PROTO_5]
  CAPTURE VAL R6
  GETTABLEKS R11 R2 K22 ["connect"]
  MOVE R12 R9
  MOVE R13 R10
  CALL R11 2 1
  MOVE R12 R8
  CALL R11 1 -1
  RETURN R11 -1
