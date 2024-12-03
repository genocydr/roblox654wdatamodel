PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Enabled"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K2 ["mouseHoverChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Enabled"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  LOADB R2 0
  NAMECALL R0 R0 K2 ["mouseHoverChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K0 ["mouseEnter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["mouseLeave"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R2 K1 ["Mouse"]
  LOADK R5 K2 ["PointingHand"]
  NAMECALL R3 R3 K3 ["__pushCursor"]
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R3 R2 K1 ["Mouse"]
  NAMECALL R3 R3 K4 ["__resetCursor"]
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Enabled"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["OnClicked"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Enabled"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["OnClicked"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Enabled"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["OnClicked"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Title"]
  GETTABLEKS R5 R1 K3 ["Description"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R1 K3 ["Description"]
  JUMPIF R4 [+1]
  LOADNIL R4
  GETUPVAL R5 0
  MOVE R7 R3
  GETTABLEKS R10 R2 K4 ["fontStyle"]
  GETTABLEKS R9 R10 K5 ["Subtext"]
  GETTABLEKS R8 R9 K6 ["TextSize"]
  GETTABLEKS R11 R2 K4 ["fontStyle"]
  GETTABLEKS R10 R11 K5 ["Subtext"]
  GETTABLEKS R9 R10 K7 ["Font"]
  GETIMPORT R10 K10 [Vector2.new]
  CALL R10 0 -1
  NAMECALL R5 R5 K11 ["GetTextSize"]
  CALL R5 -1 1
  GETTABLEKS R6 R1 K3 ["Description"]
  JUMPIFNOT R6 [+25]
  GETUPVAL R6 0
  MOVE R8 R4
  GETTABLEKS R11 R2 K4 ["fontStyle"]
  GETTABLEKS R10 R11 K5 ["Subtext"]
  GETTABLEKS R9 R10 K6 ["TextSize"]
  GETTABLEKS R12 R2 K4 ["fontStyle"]
  GETTABLEKS R11 R12 K5 ["Subtext"]
  GETTABLEKS R10 R11 K7 ["Font"]
  GETIMPORT R11 K10 [Vector2.new]
  GETTABLEKS R13 R2 K12 ["radioButton"]
  GETTABLEKS R12 R13 K13 ["descriptionWidth"]
  LOADK R13 K14 [∞]
  CALL R11 2 -1
  NAMECALL R6 R6 K11 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R8 R1 K15 ["Children"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K15 ["Children"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  GETTABLEKS R9 R5 K16 ["X"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R10 R6 K16 ["X"]
  JUMPIF R10 [+1]
  LOADN R10 0
  FASTCALL2 MATH_MAX R9 R10 [+3]
  GETIMPORT R8 K19 [math.max]
  CALL R8 2 1
  GETTABLEKS R11 R2 K12 ["radioButton"]
  GETTABLEKS R10 R11 K20 ["size"]
  ADD R9 R8 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+2]
  GETUPVAL R11 3
  JUMP [+1]
  GETUPVAL R11 4
  GETUPVAL R13 2
  JUMPIFNOT R13 [+25]
  DUPTABLE R12 K27 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
  GETIMPORT R13 K30 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K22 ["AutomaticSize"]
  GETIMPORT R13 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K23 ["Layout"]
  GETTABLEKS R14 R1 K24 ["LayoutOrder"]
  ORK R13 R14 K34 [1]
  SETTABLEKS R13 R12 K24 ["LayoutOrder"]
  GETTABLEKS R14 R2 K12 ["radioButton"]
  GETTABLEKS R13 R14 K35 ["spacing"]
  SETTABLEKS R13 R12 K25 ["Spacing"]
  GETIMPORT R13 K37 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K26 ["VerticalAlignment"]
  JUMP [+29]
  DUPTABLE R12 K41 [{"axis", "minimumSize", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K42 ["Axis"]
  GETTABLEKS R13 R14 K43 ["Vertical"]
  SETTABLEKS R13 R12 K38 ["axis"]
  GETIMPORT R13 K45 [UDim2.new]
  LOADN R14 0
  MOVE R15 R9
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K39 ["minimumSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K40 ["BackgroundTransparency"]
  GETIMPORT R13 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K31 ["FillDirection"]
  GETTABLEKS R14 R1 K24 ["LayoutOrder"]
  ORK R13 R14 K34 [1]
  SETTABLEKS R13 R12 K24 ["LayoutOrder"]
  DUPTABLE R13 K48 [{"Button", "ContentAndChildren"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K21 ["createElement"]
  LOADK R15 K49 ["ImageButton"]
  NEWTABLE R16 16 0
  GETIMPORT R17 K45 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R20 R2 K12 ["radioButton"]
  GETTABLEKS R19 R20 K20 ["size"]
  LOADN R20 0
  GETTABLEKS R22 R2 K12 ["radioButton"]
  GETTABLEKS R21 R22 K20 ["size"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K50 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K40 ["BackgroundTransparency"]
  GETTABLEKS R19 R0 K0 ["props"]
  GETTABLEKS R18 R19 K51 ["Enabled"]
  JUMPIFNOT R18 [+2]
  LOADN R17 0
  JUMP [+1]
  LOADK R17 K52 [0.4]
  SETTABLEKS R17 R16 K53 ["ImageTransparency"]
  GETTABLEKS R19 R2 K12 ["radioButton"]
  GETTABLEKS R18 R19 K54 ["image"]
  GETTABLEKS R17 R18 K55 ["background"]
  SETTABLEKS R17 R16 K56 ["Image"]
  GETTABLEKS R18 R2 K12 ["radioButton"]
  GETTABLEKS R17 R18 K55 ["background"]
  SETTABLEKS R17 R16 K57 ["ImageColor3"]
  LOADN R17 1
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K58 ["Event"]
  GETTABLEKS R17 R18 K59 ["MouseEnter"]
  GETTABLEKS R18 R0 K60 ["mouseEnter"]
  SETTABLE R18 R16 R17
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K58 ["Event"]
  GETTABLEKS R17 R18 K61 ["MouseLeave"]
  GETTABLEKS R18 R0 K62 ["mouseLeave"]
  SETTABLE R18 R16 R17
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K58 ["Event"]
  GETTABLEKS R17 R18 K63 ["Activated"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R0
  SETTABLE R18 R16 R17
  DUPTABLE R17 K65 [{"Highlight"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K21 ["createElement"]
  LOADK R19 K66 ["ImageLabel"]
  DUPTABLE R20 K70 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "Visible", "Image"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K40 ["BackgroundTransparency"]
  GETTABLEKS R22 R2 K71 ["isDarkerTheme"]
  JUMPIFNOT R22 [+8]
  GETIMPORT R21 K45 [UDim2.new]
  LOADK R22 K52 [0.4]
  LOADN R23 0
  LOADK R24 K52 [0.4]
  LOADN R25 0
  CALL R21 4 1
  JUMPIF R21 [+7]
  GETIMPORT R21 K45 [UDim2.new]
  LOADK R22 K72 [0.5]
  LOADN R23 0
  LOADK R24 K72 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K50 ["Size"]
  GETIMPORT R21 K45 [UDim2.new]
  LOADK R22 K72 [0.5]
  LOADN R23 0
  LOADK R24 K72 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K67 ["Position"]
  GETIMPORT R21 K10 [Vector2.new]
  LOADK R22 K72 [0.5]
  LOADK R23 K72 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["AnchorPoint"]
  GETTABLEKS R22 R0 K0 ["props"]
  GETTABLEKS R21 R22 K73 ["Selected"]
  SETTABLEKS R21 R20 K69 ["Visible"]
  GETTABLEKS R23 R0 K0 ["props"]
  GETTABLEKS R22 R23 K51 ["Enabled"]
  JUMPIFNOT R22 [+7]
  GETTABLEKS R23 R2 K12 ["radioButton"]
  GETTABLEKS R22 R23 K54 ["image"]
  GETTABLEKS R21 R22 K74 ["selected"]
  JUMPIF R21 [+6]
  GETTABLEKS R23 R2 K12 ["radioButton"]
  GETTABLEKS R22 R23 K54 ["image"]
  GETTABLEKS R21 R22 K75 ["selectedDisabled"]
  SETTABLEKS R21 R20 K56 ["Image"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K64 ["Highlight"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K46 ["Button"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K21 ["createElement"]
  GETUPVAL R16 2
  JUMPIFNOT R16 [+2]
  GETUPVAL R15 3
  JUMP [+1]
  GETUPVAL R15 4
  GETUPVAL R17 2
  JUMPIFNOT R17 [+23]
  DUPTABLE R16 K77 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
  GETIMPORT R17 K30 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K22 ["AutomaticSize"]
  GETIMPORT R17 K79 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K76 ["HorizontalAlignment"]
  GETIMPORT R17 K80 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K23 ["Layout"]
  LOADN R17 2
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  GETTABLEKS R18 R2 K12 ["radioButton"]
  GETTABLEKS R17 R18 K35 ["spacing"]
  SETTABLEKS R17 R16 K25 ["Spacing"]
  JUMP [+37]
  DUPTABLE R16 K82 [{"axis", "minimumSize", "contentPadding", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K42 ["Axis"]
  GETTABLEKS R17 R18 K43 ["Vertical"]
  SETTABLEKS R17 R16 K38 ["axis"]
  GETIMPORT R17 K45 [UDim2.new]
  LOADN R18 0
  MOVE R19 R8
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K39 ["minimumSize"]
  GETIMPORT R17 K84 [UDim.new]
  LOADN R18 0
  GETTABLEKS R20 R2 K12 ["radioButton"]
  GETTABLEKS R19 R20 K85 ["padding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K81 ["contentPadding"]
  LOADN R17 1
  SETTABLEKS R17 R16 K40 ["BackgroundTransparency"]
  GETIMPORT R17 K80 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K31 ["FillDirection"]
  LOADN R17 2
  SETTABLEKS R17 R16 K24 ["LayoutOrder"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K86 ["Dictionary"]
  GETTABLEKS R17 R18 K87 ["join"]
  DUPTABLE R18 K90 [{"TitleLabel", "DescriptionLabel"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K21 ["createElement"]
  LOADK R20 K91 ["TextButton"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K86 ["Dictionary"]
  GETTABLEKS R21 R22 K87 ["join"]
  GETTABLEKS R23 R2 K4 ["fontStyle"]
  GETTABLEKS R22 R23 K92 ["Normal"]
  NEWTABLE R23 16 0
  LOADN R24 1
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K93 ["BorderSizePixel"]
  GETIMPORT R24 K45 [UDim2.new]
  LOADN R25 0
  GETTABLEKS R26 R5 K16 ["X"]
  LOADN R27 0
  GETTABLEKS R28 R5 K94 ["Y"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K50 ["Size"]
  GETIMPORT R24 K96 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K95 ["TextXAlignment"]
  GETIMPORT R24 K99 [Enum.TextYAlignment.Center]
  SETTABLEKS R24 R23 K97 ["TextYAlignment"]
  GETTABLEKS R26 R0 K0 ["props"]
  GETTABLEKS R25 R26 K51 ["Enabled"]
  JUMPIFNOT R25 [+2]
  LOADN R24 0
  JUMP [+1]
  LOADK R24 K72 [0.5]
  SETTABLEKS R24 R23 K100 ["TextTransparency"]
  SETTABLEKS R3 R23 K101 ["Text"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K58 ["Event"]
  GETTABLEKS R24 R25 K59 ["MouseEnter"]
  GETTABLEKS R25 R0 K60 ["mouseEnter"]
  SETTABLE R25 R23 R24
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K58 ["Event"]
  GETTABLEKS R24 R25 K61 ["MouseLeave"]
  GETTABLEKS R25 R0 K62 ["mouseLeave"]
  SETTABLE R25 R23 R24
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K58 ["Event"]
  GETTABLEKS R24 R25 K63 ["Activated"]
  NEWCLOSURE R25 P1
  CAPTURE VAL R0
  SETTABLE R25 R23 R24
  LOADN R24 254
  SETTABLEKS R24 R23 K24 ["LayoutOrder"]
  CALL R21 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K88 ["TitleLabel"]
  GETTABLEKS R19 R1 K3 ["Description"]
  JUMPIFNOT R19 [+74]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K21 ["createElement"]
  LOADK R20 K91 ["TextButton"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K86 ["Dictionary"]
  GETTABLEKS R21 R22 K87 ["join"]
  GETTABLEKS R23 R2 K4 ["fontStyle"]
  GETTABLEKS R22 R23 K5 ["Subtext"]
  NEWTABLE R23 16 0
  LOADN R24 1
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K93 ["BorderSizePixel"]
  GETIMPORT R24 K45 [UDim2.new]
  LOADN R25 0
  GETTABLEKS R26 R6 K16 ["X"]
  LOADN R27 0
  GETTABLEKS R28 R6 K94 ["Y"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K50 ["Size"]
  GETIMPORT R24 K96 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K95 ["TextXAlignment"]
  GETIMPORT R24 K102 [Enum.TextYAlignment.Top]
  SETTABLEKS R24 R23 K97 ["TextYAlignment"]
  SETTABLEKS R4 R23 K101 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K103 ["TextWrapped"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K58 ["Event"]
  GETTABLEKS R24 R25 K59 ["MouseEnter"]
  GETTABLEKS R25 R0 K60 ["mouseEnter"]
  SETTABLE R25 R23 R24
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K58 ["Event"]
  GETTABLEKS R24 R25 K61 ["MouseLeave"]
  GETTABLEKS R25 R0 K62 ["mouseLeave"]
  SETTABLE R25 R23 R24
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K58 ["Event"]
  GETTABLEKS R24 R25 K63 ["Activated"]
  NEWCLOSURE R25 P2
  CAPTURE VAL R0
  SETTABLE R25 R23 R24
  LOADN R24 255
  SETTABLEKS R24 R23 K24 ["LayoutOrder"]
  CALL R21 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K89 ["DescriptionLabel"]
  MOVE R19 R7
  CALL R17 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K47 ["ContentAndChildren"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TextService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Flags"]
  GETTABLEKS R3 R4 K11 ["getFFlagGameSettingsFixMoreLayoutIssues"]
  CALL R2 1 1
  CALL R2 0 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K12 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K12 ["Packages"]
  GETTABLEKS R6 R7 K15 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["Util"]
  JUMPIFNOT R2 [+2]
  LOADNIL R7
  JUMP [+4]
  GETTABLEKS R8 R6 K17 ["FitFrame"]
  GETTABLEKS R7 R8 K18 ["FitFrameOnAxis"]
  GETTABLEKS R8 R5 K19 ["ContextServices"]
  GETTABLEKS R9 R8 K20 ["withContext"]
  GETTABLEKS R10 R5 K21 ["UI"]
  GETTABLEKS R11 R10 K22 ["Pane"]
  GETTABLEKS R12 R3 K23 ["PureComponent"]
  LOADK R14 K24 ["RadioButton"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K26 [PROTO_2]
  SETTABLEKS R13 R12 K27 ["init"]
  DUPCLOSURE R13 K28 [PROTO_3]
  SETTABLEKS R13 R12 K29 ["mouseHoverChanged"]
  DUPCLOSURE R13 K30 [PROTO_7]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K31 ["render"]
  MOVE R13 R9
  DUPTABLE R14 K34 [{"Stylizer", "Mouse"}]
  GETTABLEKS R15 R8 K32 ["Stylizer"]
  SETTABLEKS R15 R14 K32 ["Stylizer"]
  GETTABLEKS R15 R8 K33 ["Mouse"]
  SETTABLEKS R15 R14 K33 ["Mouse"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1