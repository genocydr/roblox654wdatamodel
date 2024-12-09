PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Layouts"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["layout"]
  GETTABLE R1 R2 R3
  NEWTABLE R2 0 0
  LOADN R5 1
  GETUPVAL R6 0
  GETTABLEKS R3 R6 K3 ["EmotesPerPage"]
  LOADN R4 1
  FORNPREP R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["EmotesPerPage"]
  DIVRK R8 R4 K9 ["SlotNumberSize"]
  SUBK R9 R5 K5 [1]
  MUL R7 R8 R9
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["SegmentsStartRotation"]
  ADD R6 R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["InnerCircleSizeRatio"]
  DIVK R7 R8 K7 [2]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["SlotNumberSize"]
  DIVK R9 R8 K7 [2]
  FASTCALL1 MATH_RAD R6 [+3]
  MOVE R12 R6
  GETIMPORT R11 K12 [math.rad]
  CALL R11 1 1
  FASTCALL1 MATH_COS R11 [+2]
  GETIMPORT R10 K14 [math.cos]
  CALL R10 1 1
  MUL R11 R7 R10
  MUL R12 R9 R10
  LOADK R15 K15 [0.5]
  ADD R14 R15 R11
  ADD R13 R14 R12
  FASTCALL1 MATH_RAD R6 [+3]
  MOVE R16 R6
  GETIMPORT R15 K12 [math.rad]
  CALL R15 1 1
  FASTCALL1 MATH_SIN R15 [+2]
  GETIMPORT R14 K17 [math.sin]
  CALL R14 1 1
  MUL R15 R7 R14
  MUL R16 R9 R14
  LOADK R19 K15 [0.5]
  ADD R18 R19 R15
  ADD R17 R18 R16
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K18 ["createElement"]
  LOADK R19 K19 ["TextLabel"]
  DUPTABLE R20 K30 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "TextScaled", "TextSize", "TextColor3", "Text", "Font", "ZIndex"}]
  GETIMPORT R21 K33 [Vector2.new]
  LOADK R22 K15 [0.5]
  LOADK R23 K15 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K20 ["AnchorPoint"]
  GETIMPORT R21 K35 [UDim2.new]
  MOVE R22 R13
  LOADN R23 0
  MOVE R24 R17
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K21 ["Position"]
  GETIMPORT R21 K35 [UDim2.new]
  MOVE R22 R8
  LOADN R23 0
  MOVE R24 R8
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K22 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K23 ["BackgroundTransparency"]
  LOADB R21 1
  SETTABLEKS R21 R20 K24 ["TextScaled"]
  GETTABLEKS R21 R1 K36 ["SlotNumberTextSize"]
  SETTABLEKS R21 R20 K25 ["TextSize"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K37 ["Colors"]
  GETTABLEKS R21 R22 K38 ["White"]
  SETTABLEKS R21 R20 K26 ["TextColor3"]
  SETTABLEKS R5 R20 K27 ["Text"]
  GETTABLEKS R21 R1 K39 ["SlotNumberFont"]
  SETTABLEKS R21 R20 K28 ["Font"]
  LOADN R21 2
  SETTABLEKS R21 R20 K29 ["ZIndex"]
  DUPTABLE R21 K41 [{"TextSizeConstraint"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K18 ["createElement"]
  LOADK R23 K42 ["UITextSizeConstraint"]
  DUPTABLE R24 K44 [{"MaxTextSize"}]
  GETTABLEKS R25 R1 K36 ["SlotNumberTextSize"]
  SETTABLEKS R25 R24 K43 ["MaxTextSize"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K40 ["TextSizeConstraint"]
  CALL R18 3 1
  SETTABLE R18 R2 R5
  FORNLOOP R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K18 ["createElement"]
  LOADK R4 K45 ["Frame"]
  DUPTABLE R5 K46 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R6 K35 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K22 ["Size"]
  LOADN R6 1
  SETTABLEKS R6 R5 K23 ["BackgroundTransparency"]
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  DUPTABLE R1 K1 [{"layout"}]
  GETTABLEKS R2 R0 K0 ["layout"]
  SETTABLEKS R2 R1 K0 ["layout"]
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
  LOADK R8 K14 ["SlotNumbers"]
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