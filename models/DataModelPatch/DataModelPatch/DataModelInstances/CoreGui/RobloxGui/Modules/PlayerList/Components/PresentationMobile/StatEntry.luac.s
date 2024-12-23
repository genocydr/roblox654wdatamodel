PROTO_0:
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["IsTenFoot"]
  JUMPIF R3 [+18]
  GETTABLEKS R4 R0 K1 ["Font"]
  GETTABLEKS R3 R4 K2 ["CaptionHeader"]
  GETTABLEKS R1 R3 K1 ["Font"]
  GETTABLEKS R5 R0 K1 ["Font"]
  GETTABLEKS R4 R5 K2 ["CaptionHeader"]
  GETTABLEKS R3 R4 K3 ["RelativeSize"]
  GETTABLEKS R5 R0 K1 ["Font"]
  GETTABLEKS R4 R5 K4 ["BaseSize"]
  MUL R2 R3 R4
  JUMP [+25]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["StatTextSizeMobile"]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K6 ["StatFont"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["props"]
  GETTABLEKS R3 R4 K8 ["isTitleEntry"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K9 ["TitleStatFont"]
  JUMP [+9]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["props"]
  GETTABLEKS R3 R4 K10 ["isTeamEntry"]
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K11 ["TeamStatFont"]
  GETUPVAL R3 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["props"]
  GETTABLEKS R4 R5 K12 ["statValue"]
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["createElement"]
  LOADK R5 K14 ["TextLabel"]
  DUPTABLE R6 K26 [{"Size", "Position", "BackgroundTransparency", "Font", "LayoutOrder", "TextSize", "TextColor3", "TextTransparency", "TextStrokeColor3", "TextStrokeTransparency", "Text", "TextTruncate"}]
  GETIMPORT R7 K29 [UDim2.new]
  LOADN R8 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K30 ["StatEntrySizeX"]
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K15 ["Size"]
  GETIMPORT R7 K29 [UDim2.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K16 ["Position"]
  LOADN R7 1
  SETTABLEKS R7 R6 K17 ["BackgroundTransparency"]
  SETTABLEKS R1 R6 K1 ["Font"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["props"]
  GETTABLEKS R7 R8 K31 ["layoutOrder"]
  SETTABLEKS R7 R6 K18 ["LayoutOrder"]
  SETTABLEKS R2 R6 K19 ["TextSize"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["props"]
  GETTABLEKS R8 R9 K32 ["textStyle"]
  GETTABLEKS R7 R8 K33 ["Color"]
  SETTABLEKS R7 R6 K20 ["TextColor3"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["props"]
  GETTABLEKS R8 R9 K32 ["textStyle"]
  GETTABLEKS R7 R8 K34 ["Transparency"]
  SETTABLEKS R7 R6 K21 ["TextTransparency"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["props"]
  GETTABLEKS R8 R9 K32 ["textStyle"]
  GETTABLEKS R7 R8 K35 ["StrokeColor"]
  SETTABLEKS R7 R6 K22 ["TextStrokeColor3"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["props"]
  GETTABLEKS R8 R9 K32 ["textStyle"]
  GETTABLEKS R7 R8 K36 ["StrokeTransparency"]
  SETTABLEKS R7 R6 K23 ["TextStrokeTransparency"]
  SETTABLEKS R3 R6 K24 ["Text"]
  GETIMPORT R7 K39 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R7 R6 K25 ["TextTruncate"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

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
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Style"]
  GETTABLEKS R4 R5 K11 ["withStyle"]
  GETIMPORT R7 K13 [script]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETTABLEKS R5 R6 K14 ["Parent"]
  GETTABLEKS R6 R5 K15 ["Connection"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K16 ["LayoutValues"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K17 ["WithLayoutValues"]
  GETTABLEKS R9 R5 K14 ["Parent"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R9 K18 ["FormatStatString"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K19 ["PureComponent"]
  LOADK R13 K20 ["StatEntry"]
  NAMECALL R11 R11 K21 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R2 K22 ["strictInterface"]
  DUPTABLE R13 K28 [{"statValue", "isTitleEntry", "isTeamEntry", "layoutOrder", "textStyle"}]
  GETTABLEKS R14 R2 K29 ["optional"]
  GETTABLEKS R15 R2 K30 ["any"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K23 ["statValue"]
  GETTABLEKS R14 R2 K31 ["boolean"]
  SETTABLEKS R14 R13 K24 ["isTitleEntry"]
  GETTABLEKS R14 R2 K31 ["boolean"]
  SETTABLEKS R14 R13 K25 ["isTeamEntry"]
  GETTABLEKS R14 R2 K32 ["integer"]
  SETTABLEKS R14 R13 K26 ["layoutOrder"]
  GETTABLEKS R14 R2 K22 ["strictInterface"]
  DUPTABLE R15 K37 [{"Color", "Transparency", "StrokeColor", "StrokeTransparency"}]
  GETTABLEKS R16 R2 K38 ["Color3"]
  SETTABLEKS R16 R15 K33 ["Color"]
  GETTABLEKS R16 R2 K39 ["number"]
  SETTABLEKS R16 R15 K34 ["Transparency"]
  GETTABLEKS R16 R2 K29 ["optional"]
  GETTABLEKS R17 R2 K38 ["Color3"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K35 ["StrokeColor"]
  GETTABLEKS R16 R2 K29 ["optional"]
  GETTABLEKS R17 R2 K39 ["number"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K36 ["StrokeTransparency"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K27 ["textStyle"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K40 ["validateProps"]
  DUPCLOSURE R12 K41 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K42 ["render"]
  RETURN R11 1
