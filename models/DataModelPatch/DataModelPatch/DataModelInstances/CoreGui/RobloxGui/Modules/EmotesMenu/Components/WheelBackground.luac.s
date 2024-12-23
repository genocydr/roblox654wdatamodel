PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Layouts"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["layout"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["Folder"]
  NEWTABLE R5 0 0
  DUPTABLE R6 K10 [{"BackgroundCircleOverlay", "BackgroundGradient", "BackgroundImage", "Selection", "BackgroundText"}]
  JUMPIFNOT R1 [+52]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["Frame"]
  DUPTABLE R9 K15 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R10 K18 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K19 ["Flint"]
  GETIMPORT R12 K22 [Color3.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R12 3 1
  MOVE R13 R1
  NAMECALL R10 R10 K23 ["Lerp"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K13 ["BackgroundColor3"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K24 ["WheelBackgroundTransparency"]
  MUL R10 R11 R1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  NEWTABLE R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K25 ["UICorner"]
  DUPTABLE R13 K27 [{"CornerRadius"}]
  GETIMPORT R14 K29 [UDim.new]
  LOADK R15 K30 [0.5]
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["CornerRadius"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  JUMP [+41]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K31 ["ImageLabel"]
  DUPTABLE R9 K36 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency", "Image", "ZIndex"}]
  GETIMPORT R10 K38 [Vector2.new]
  LOADK R11 K30 [0.5]
  LOADK R12 K30 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["AnchorPoint"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADK R11 K30 [0.5]
  LOADN R12 0
  LOADK R13 K30 [0.5]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K33 ["Position"]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  GETTABLEKS R10 R2 K40 ["CircleBackground"]
  SETTABLEKS R10 R9 K34 ["Image"]
  LOADN R10 1
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["BackgroundCircleOverlay"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["Frame"]
  DUPTABLE R9 K41 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  LOADN R10 2
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  DUPTABLE R10 K43 [{"SelectionGradient"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 3
  CALL R11 1 1
  SETTABLEKS R11 R10 K42 ["SelectionGradient"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["BackgroundGradient"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K31 ["ImageLabel"]
  DUPTABLE R9 K36 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency", "Image", "ZIndex"}]
  GETIMPORT R10 K38 [Vector2.new]
  LOADK R11 K30 [0.5]
  LOADK R12 K30 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["AnchorPoint"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADK R11 K30 [0.5]
  LOADN R12 0
  LOADK R13 K30 [0.5]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K33 ["Position"]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  GETTABLEKS R10 R2 K44 ["SegmentedCircle"]
  SETTABLEKS R10 R9 K34 ["Image"]
  LOADN R10 3
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["BackgroundImage"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["Frame"]
  DUPTABLE R9 K41 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  LOADN R10 4
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  DUPTABLE R10 K46 [{"SelectionEffect"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 4
  CALL R11 1 1
  SETTABLEKS R11 R10 K45 ["SelectionEffect"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Selection"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K11 ["Frame"]
  DUPTABLE R9 K41 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  GETIMPORT R10 K39 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  LOADN R10 5
  SETTABLEKS R10 R9 K35 ["ZIndex"]
  DUPTABLE R10 K48 [{"MiddleText"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 5
  CALL R11 1 1
  SETTABLEKS R11 R10 K47 ["MiddleText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["BackgroundText"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["Settings"]
  GETTABLEKS R3 R4 K1 ["PreferredTransparency"]
  NAMECALL R1 R1 K2 ["renderContent"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K10 ["App"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["Colors"]
  GETTABLEKS R6 R3 K11 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETIMPORT R7 K15 [script]
  GETTABLEKS R6 R7 K16 ["Parent"]
  GETTABLEKS R7 R6 K16 ["Parent"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K17 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K18 ["SelectionGradient"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R6 K19 ["SelectionEffect"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R6 K20 ["WheelText"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K21 ["PureComponent"]
  LOADK R14 K22 ["WheelBackground"]
  NAMECALL R12 R12 K23 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K25 ["renderContent"]
  DUPCLOSURE R13 K26 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K27 ["render"]
  DUPCLOSURE R13 K28 [PROTO_3]
  GETTABLEKS R14 R2 K29 ["connect"]
  MOVE R15 R13
  LOADNIL R16
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 -1
  RETURN R14 -1
