PROTO_0:
  GETTABLEKS R1 R0 K0 ["hoverLineX"]
  GETTABLEKS R2 R0 K1 ["hoverLineY"]
  GETTABLEKS R3 R0 K2 ["hoverValX"]
  GETTABLEKS R4 R0 K3 ["hoverValY"]
  GETTABLEKS R5 R0 K4 ["stringFormatX"]
  GETTABLEKS R6 R0 K5 ["stringFormatY"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K10 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K9 ["BackgroundTransparency"]
  DUPTABLE R10 K18 [{"hoverLine", "HoverHorizontal", "HoverTextY", "HoverTextX"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K7 ["Frame"]
  DUPTABLE R13 K22 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  GETUPVAL R16 1
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  MOVE R16 R1
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K19 ["Position"]
  GETUPVAL R14 2
  SETTABLEKS R14 R13 K20 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K21 ["BorderSizePixel"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["hoverLine"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K7 ["Frame"]
  DUPTABLE R13 K22 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  GETUPVAL R17 3
  ADD R16 R1 R17
  LOADN R17 0
  GETUPVAL R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  GETUPVAL R17 3
  MINUS R16 R17
  GETUPVAL R18 4
  SUBRK R17 R23 K18 [{"hoverLine", "HoverHorizontal", "HoverTextY", "HoverTextX"}]
  MINUS R18 R2
  CALL R14 4 1
  SETTABLEKS R14 R13 K19 ["Position"]
  GETUPVAL R14 2
  SETTABLEKS R14 R13 K20 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K21 ["BorderSizePixel"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["HoverHorizontal"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K24 ["TextLabel"]
  DUPTABLE R13 K28 [{"Text", "TextColor3", "TextXAlignment", "Position", "BackgroundTransparency"}]
  JUMPIFNOT R6 [+4]
  MOVE R14 R6
  MOVE R15 R4
  CALL R14 1 1
  JUMPIF R14 [+1]
  MOVE R14 R4
  SETTABLEKS R14 R13 K25 ["Text"]
  GETUPVAL R14 2
  SETTABLEKS R14 R13 K26 ["TextColor3"]
  GETIMPORT R14 K31 [Enum.TextXAlignment.Right]
  SETTABLEKS R14 R13 K27 ["TextXAlignment"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  GETUPVAL R18 3
  MINUS R17 R18
  SUBK R16 R17 K32 [2]
  GETUPVAL R18 4
  SUBRK R17 R23 K18 [{"hoverLine", "HoverHorizontal", "HoverTextY", "HoverTextX"}]
  MINUS R18 R2
  CALL R14 4 1
  SETTABLEKS R14 R13 K19 ["Position"]
  LOADN R14 1
  SETTABLEKS R14 R13 K9 ["BackgroundTransparency"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["HoverTextY"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K24 ["TextLabel"]
  DUPTABLE R13 K28 [{"Text", "TextColor3", "TextXAlignment", "Position", "BackgroundTransparency"}]
  JUMPIFNOT R5 [+4]
  MOVE R14 R5
  MOVE R15 R3
  CALL R14 1 1
  JUMPIF R14 [+1]
  MOVE R14 R3
  SETTABLEKS R14 R13 K25 ["Text"]
  GETUPVAL R14 2
  SETTABLEKS R14 R13 K26 ["TextColor3"]
  GETIMPORT R14 K34 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K27 ["TextXAlignment"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  MOVE R16 R1
  LOADN R17 1
  GETUPVAL R18 3
  CALL R14 4 1
  SETTABLEKS R14 R13 K19 ["Position"]
  LOADN R14 1
  SETTABLEKS R14 R13 K9 ["BackgroundTransparency"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["HoverTextX"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["Color"]
  GETTABLEKS R3 R4 K13 ["HoverGreen"]
  GETTABLEKS R5 R2 K14 ["GeneralFormatting"]
  GETTABLEKS R4 R5 K15 ["LineWidth"]
  GETTABLEKS R6 R2 K16 ["Graph"]
  GETTABLEKS R5 R6 K17 ["TextPadding"]
  GETTABLEKS R7 R2 K16 ["Graph"]
  GETTABLEKS R6 R7 K18 ["InnerPaddingY"]
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1