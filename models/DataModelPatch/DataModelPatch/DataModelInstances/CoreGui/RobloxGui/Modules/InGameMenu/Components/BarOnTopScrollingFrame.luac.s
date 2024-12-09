PROTO_0:
  DUPTABLE R1 K1 [{"CanvasPosition"}]
  GETIMPORT R2 K4 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["CanvasPosition"]
  SETTABLEKS R1 R0 K5 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"CanvasPosition"}]
  GETTABLEKS R4 R0 K0 ["CanvasPosition"]
  SETTABLEKS R4 R3 K0 ["CanvasPosition"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["onCanvasPositionChanged"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["onCanvasPositionChanged"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"CanvasPosition"}]
  GETTABLEKS R4 R0 K0 ["CanvasPosition"]
  SETTABLEKS R4 R3 K0 ["CanvasPosition"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K6 [{"Size", "Position", "BackgroundTransparency", "ClipsDescendants"}]
  GETTABLEKS R5 R0 K7 ["props"]
  GETTABLEKS R4 R5 K2 ["Size"]
  SETTABLEKS R4 R3 K2 ["Size"]
  GETTABLEKS R5 R0 K7 ["props"]
  GETTABLEKS R4 R5 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["ClipsDescendants"]
  DUPTABLE R4 K10 [{"DisplayScrollingFrame", "ContentsScrollingFrame"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K11 ["ScrollingFrame"]
  NEWTABLE R7 16 0
  GETTABLEKS R9 R0 K12 ["state"]
  GETTABLEKS R8 R9 K13 ["CanvasPosition"]
  SETTABLEKS R8 R7 K13 ["CanvasPosition"]
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["BackgroundTransparency"]
  GETIMPORT R8 K16 [UDim2.new]
  LOADN R9 0
  LOADN R10 8
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Size"]
  GETTABLEKS R10 R0 K7 ["props"]
  GETTABLEKS R9 R10 K17 ["CanvasSize"]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 8
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SUB R8 R9 R10
  SETTABLEKS R8 R7 K17 ["CanvasSize"]
  LOADN R8 8
  SETTABLEKS R8 R7 K18 ["ScrollBarThickness"]
  LOADN R8 0
  SETTABLEKS R8 R7 K19 ["BorderSizePixel"]
  LOADN R8 2
  SETTABLEKS R8 R7 K20 ["ZIndex"]
  GETIMPORT R8 K16 [UDim2.new]
  LOADN R9 1
  LOADN R10 248
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Position"]
  GETTABLEKS R9 R0 K7 ["props"]
  GETTABLEKS R8 R9 K21 ["ScrollingEnabled"]
  SETTABLEKS R8 R7 K21 ["ScrollingEnabled"]
  GETIMPORT R8 K25 [Enum.ScrollingDirection.Y]
  SETTABLEKS R8 R7 K23 ["ScrollingDirection"]
  LOADB R8 0
  SETTABLEKS R8 R7 K26 ["Selectable"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K27 ["Ref"]
  GETTABLEKS R10 R0 K7 ["props"]
  GETTABLEKS R9 R10 K28 ["scrollingFrameRef"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K29 ["Change"]
  GETTABLEKS R8 R9 K13 ["CanvasPosition"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["DisplayScrollingFrame"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K11 ["ScrollingFrame"]
  NEWTABLE R7 16 0
  LOADN R8 1
  SETTABLEKS R8 R7 K4 ["BackgroundTransparency"]
  GETIMPORT R8 K16 [UDim2.new]
  LOADN R9 1
  LOADN R10 248
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Size"]
  GETTABLEKS R10 R0 K7 ["props"]
  GETTABLEKS R9 R10 K17 ["CanvasSize"]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 8
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SUB R8 R9 R10
  SETTABLEKS R8 R7 K17 ["CanvasSize"]
  GETTABLEKS R9 R0 K12 ["state"]
  GETTABLEKS R8 R9 K13 ["CanvasPosition"]
  SETTABLEKS R8 R7 K13 ["CanvasPosition"]
  LOADN R8 0
  SETTABLEKS R8 R7 K18 ["ScrollBarThickness"]
  LOADN R8 0
  SETTABLEKS R8 R7 K19 ["BorderSizePixel"]
  LOADB R8 0
  SETTABLEKS R8 R7 K5 ["ClipsDescendants"]
  GETTABLEKS R9 R0 K7 ["props"]
  GETTABLEKS R8 R9 K21 ["ScrollingEnabled"]
  SETTABLEKS R8 R7 K21 ["ScrollingEnabled"]
  GETIMPORT R8 K25 [Enum.ScrollingDirection.Y]
  SETTABLEKS R8 R7 K23 ["ScrollingDirection"]
  LOADB R8 0
  SETTABLEKS R8 R7 K26 ["Selectable"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K29 ["Change"]
  GETTABLEKS R8 R9 K13 ["CanvasPosition"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLE R9 R7 R8
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K1 ["Frame"]
  DUPTABLE R11 K30 [{"BackgroundTransparency", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K4 ["BackgroundTransparency"]
  GETIMPORT R12 K16 [UDim2.new]
  LOADN R13 1
  LOADN R14 8
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K2 ["Size"]
  GETTABLEKS R13 R0 K7 ["props"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K31 ["Children"]
  GETTABLE R12 R13 R14
  CALL R9 3 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  SETTABLEKS R5 R4 K9 ["ContentsScrollingFrame"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["t"]
  GETTABLEKS R4 R2 K10 ["PureComponent"]
  LOADK R6 K11 ["BarOnTopScrollingFrame"]
  NAMECALL R4 R4 K12 ["extend"]
  CALL R4 2 1
  GETTABLEKS R5 R3 K13 ["strictInterface"]
  NEWTABLE R6 8 0
  GETTABLEKS R7 R3 K14 ["UDim2"]
  SETTABLEKS R7 R6 K15 ["Size"]
  GETTABLEKS R7 R3 K16 ["optional"]
  GETTABLEKS R8 R3 K14 ["UDim2"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K17 ["Position"]
  GETTABLEKS R7 R3 K14 ["UDim2"]
  SETTABLEKS R7 R6 K18 ["CanvasSize"]
  GETTABLEKS R7 R3 K16 ["optional"]
  GETTABLEKS R8 R3 K19 ["boolean"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K20 ["ScrollingEnabled"]
  GETTABLEKS R7 R2 K21 ["Children"]
  GETTABLEKS R8 R3 K22 ["table"]
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K16 ["optional"]
  GETTABLEKS R8 R3 K23 ["callback"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K24 ["onCanvasPositionChanged"]
  GETTABLEKS R7 R3 K16 ["optional"]
  GETTABLEKS R8 R3 K22 ["table"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K25 ["scrollingFrameRef"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K26 ["validateProps"]
  DUPTABLE R5 K27 [{"ScrollingEnabled"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["ScrollingEnabled"]
  SETTABLEKS R5 R4 K28 ["defaultProps"]
  DUPCLOSURE R5 K29 [PROTO_0]
  SETTABLEKS R5 R4 K30 ["init"]
  DUPCLOSURE R5 K31 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K32 ["render"]
  RETURN R4 1
