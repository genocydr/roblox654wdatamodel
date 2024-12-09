PROTO_0:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K7 [{"LayoutOrder", "BackgroundTransparency", "AutomaticSize"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["props"]
  GETTABLEKS R6 R7 K9 ["layoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  LOADN R6 1
  SETTABLEKS R6 R5 K5 ["BackgroundTransparency"]
  GETIMPORT R6 K12 [Enum.AutomaticSize.X]
  SETTABLEKS R6 R5 K6 ["AutomaticSize"]
  DUPTABLE R6 K15 [{"Layout", "FeedbackBarHintText"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K16 ["UIListLayout"]
  DUPTABLE R9 K22 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R10 K23 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K17 ["SortOrder"]
  GETIMPORT R10 K25 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K18 ["FillDirection"]
  GETIMPORT R10 K27 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K19 ["HorizontalAlignment"]
  GETIMPORT R10 K29 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K20 ["VerticalAlignment"]
  GETIMPORT R10 K32 [UDim.new]
  LOADN R11 0
  LOADN R12 8
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["Padding"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Layout"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K43 [{"textSize", "maxSize", "layoutOrder", "fontStyle", "colorStyle", "automaticSize", "fluidSizing", "text", "textTruncate", "textXAlignment", "textYAlignment"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["props"]
  GETTABLEKS R10 R11 K44 ["hintTextSize"]
  SETTABLEKS R10 R9 K33 ["textSize"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["props"]
  GETTABLEKS R11 R12 K45 ["maxWidth"]
  JUMPIFNOT R11 [+21]
  GETUPVAL R11 3
  JUMPIFNOT R11 [+10]
  GETIMPORT R10 K47 [Vector2.new]
  LOADN R11 232
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K8 ["props"]
  GETTABLEKS R12 R13 K45 ["maxWidth"]
  CALL R10 2 1
  JUMP [+10]
  GETIMPORT R10 K47 [Vector2.new]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["props"]
  GETTABLEKS R11 R12 K45 ["maxWidth"]
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K34 ["maxSize"]
  LOADN R10 2
  SETTABLEKS R10 R9 K9 ["layoutOrder"]
  GETTABLEKS R10 R2 K48 ["Header2"]
  SETTABLEKS R10 R9 K35 ["fontStyle"]
  GETTABLEKS R10 R1 K49 ["TextEmphasis"]
  SETTABLEKS R10 R9 K36 ["colorStyle"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["props"]
  GETTABLEKS R11 R12 K45 ["maxWidth"]
  JUMPIF R11 [+3]
  GETIMPORT R10 K12 [Enum.AutomaticSize.X]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K37 ["automaticSize"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["props"]
  GETTABLEKS R11 R12 K45 ["maxWidth"]
  JUMPIFNOT R11 [+2]
  LOADB R10 1
  JUMP [+1]
  LOADB R10 0
  SETTABLEKS R10 R9 K38 ["fluidSizing"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["props"]
  GETTABLEKS R10 R11 K39 ["text"]
  SETTABLEKS R10 R9 K39 ["text"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["props"]
  GETTABLEKS R11 R12 K45 ["maxWidth"]
  JUMPIFNOT R11 [+3]
  GETIMPORT R10 K52 [Enum.TextTruncate.AtEnd]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K40 ["textTruncate"]
  GETIMPORT R10 K54 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K41 ["textXAlignment"]
  GETIMPORT R10 K56 [Enum.TextYAlignment.Center]
  SETTABLEKS R10 R9 K42 ["textYAlignment"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["FeedbackBarHintText"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
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
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R6 R1 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["withStyle"]
  GETTABLEKS R7 R1 K13 ["App"]
  GETTABLEKS R6 R7 K14 ["Text"]
  GETTABLEKS R5 R6 K15 ["StyledTextLabel"]
  GETIMPORT R6 K1 [game]
  LOADK R8 K16 ["FeedbackBarHintSizeAdjustment"]
  LOADB R9 0
  NAMECALL R6 R6 K17 ["DefineFastFlag"]
  CALL R6 3 1
  GETTABLEKS R7 R3 K18 ["PureComponent"]
  LOADK R9 K19 ["FeedbackBarHint"]
  NAMECALL R7 R7 K20 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K21 ["strictInterface"]
  DUPTABLE R9 K26 [{"layoutOrder", "text", "maxWidth", "hintTextSize"}]
  GETTABLEKS R10 R2 K27 ["optional"]
  GETTABLEKS R11 R2 K28 ["integer"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["layoutOrder"]
  GETTABLEKS R10 R2 K29 ["string"]
  SETTABLEKS R10 R9 K23 ["text"]
  GETTABLEKS R10 R2 K27 ["optional"]
  GETTABLEKS R11 R2 K30 ["number"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["maxWidth"]
  GETTABLEKS R10 R2 K27 ["optional"]
  GETTABLEKS R11 R2 K30 ["number"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["hintTextSize"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K31 ["validateProps"]
  DUPCLOSURE R8 K32 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K33 ["render"]
  RETURN R7 1
