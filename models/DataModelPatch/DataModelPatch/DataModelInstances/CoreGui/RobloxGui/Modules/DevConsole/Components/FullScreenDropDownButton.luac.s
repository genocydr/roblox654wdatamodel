PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"selectionScreenExpanded"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["selectionScreenExpanded"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R2 R3 [+13]
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.Touch]
  JUMPIFNOTEQ R2 R3 [+15]
  GETTABLEKS R2 R1 K6 ["UserInputState"]
  GETIMPORT R3 K8 [Enum.UserInputState.End]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K10 [{"selectionScreenExpanded"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["selectionScreenExpanded"]
  NAMECALL R2 R2 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["startDropDownView"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["noSelection"]
  DUPTABLE R1 K4 [{"selectionScreenExpanded", "guiSizeY"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["selectionScreenExpanded"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K6 ["Y"]
  SETTABLEKS R2 R1 K3 ["guiSizeY"]
  SETTABLEKS R1 R0 K7 ["state"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectionScreenExpanded"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["selectionScreenExpanded"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"guiSizeY"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K3 ["Y"]
  SETTABLEKS R3 R2 K0 ["guiSizeY"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["buttonSize"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["dropDownList"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["selectedIndex"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["onSelection"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["layoutOrder"]
  GETTABLEKS R7 R0 K6 ["state"]
  GETTABLEKS R6 R7 K7 ["selectionScreenExpanded"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["portalTarget"]
  NEWTABLE R8 0 0
  LOADN R9 16
  JUMPIFNOT R6 [+107]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  LOADK R11 K10 ["UIListLayout"]
  DUPTABLE R12 K15 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment", "FillDirection"}]
  GETIMPORT R13 K18 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K11 ["HorizontalAlignment"]
  GETIMPORT R13 K20 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K12 ["SortOrder"]
  GETIMPORT R13 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K13 ["VerticalAlignment"]
  GETIMPORT R13 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K14 ["FillDirection"]
  CALL R10 2 1
  SETTABLEKS R10 R8 K10 ["UIListLayout"]
  JUMPIFNOT R2 [+82]
  GETIMPORT R10 K26 [ipairs]
  MOVE R11 R2
  CALL R10 1 3
  FORGPREP_INEXT R10
  JUMPIFNOTEQ R13 R3 [+7]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K27 ["Color"]
  GETTABLEKS R15 R16 K28 ["SelectedGray"]
  JUMPIF R15 [+5]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K27 ["Color"]
  GETTABLEKS R15 R16 K29 ["UnselectedGray"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  LOADK R17 K30 ["TextButton"]
  NEWTABLE R18 16 0
  SETTABLEKS R14 R18 K31 ["Text"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K32 ["Font"]
  GETTABLEKS R19 R20 K33 ["TabBar"]
  SETTABLEKS R19 R18 K32 ["Font"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K34 ["DefaultFontSize"]
  GETTABLEKS R19 R20 K35 ["DropDownTabBar"]
  SETTABLEKS R19 R18 K36 ["TextSize"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K27 ["Color"]
  GETTABLEKS R19 R20 K31 ["Text"]
  SETTABLEKS R19 R18 K37 ["TextColor3"]
  LOADB R19 0
  SETTABLEKS R19 R18 K38 ["AutoButtonColor"]
  GETIMPORT R19 K41 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  GETUPVAL R23 2
  CALL R19 4 1
  SETTABLEKS R19 R18 K42 ["Size"]
  SETTABLEKS R15 R18 K43 ["BackgroundColor3"]
  SETTABLEKS R13 R18 K19 ["LayoutOrder"]
  LOADN R19 0
  SETTABLEKS R19 R18 K44 ["BorderSizePixel"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K45 ["Event"]
  GETTABLEKS R19 R20 K46 ["Activated"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLE R20 R18 R19
  CALL R16 2 1
  SETTABLE R16 R8 R13
  GETUPVAL R16 2
  ADD R9 R9 R16
  FORGLOOP R10 2 [inext] [-76]
  SUBK R11 R9 K47 [16]
  GETTABLEKS R13 R0 K6 ["state"]
  GETTABLEKS R12 R13 K48 ["guiSizeY"]
  SUB R10 R11 R12
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["createElement"]
  LOADK R12 K30 ["TextButton"]
  NEWTABLE R13 8 0
  SETTABLEKS R1 R13 K42 ["Size"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K27 ["Color"]
  GETTABLEKS R14 R15 K29 ["UnselectedGray"]
  SETTABLEKS R14 R13 K43 ["BackgroundColor3"]
  LOADK R14 K49 [""]
  SETTABLEKS R14 R13 K31 ["Text"]
  LOADB R14 0
  SETTABLEKS R14 R13 K38 ["AutoButtonColor"]
  SETTABLEKS R5 R13 K19 ["LayoutOrder"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K45 ["Event"]
  GETTABLEKS R14 R15 K46 ["Activated"]
  GETTABLEKS R15 R0 K50 ["startDropDownView"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K55 [{"SizeChangeEvent", "text", "arrow", "selectionView"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K58 [{"event", "callback"}]
  GETUPVAL R18 4
  LOADK R20 K59 ["AbsoluteSize"]
  NAMECALL R18 R18 K60 ["GetPropertyChangedSignal"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K56 ["event"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R18 R17 K57 ["callback"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["SizeChangeEvent"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K9 ["createElement"]
  LOADK R16 K61 ["TextLabel"]
  DUPTABLE R17 K64 [{"Size", "Text", "Font", "TextSize", "TextXAlignment", "TextColor3", "BackgroundTransparency"}]
  GETIMPORT R18 K41 [UDim2.new]
  LOADN R19 1
  GETUPVAL R22 5
  MINUS R21 R22
  GETUPVAL R22 6
  SUB R20 R21 R22
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K42 ["Size"]
  GETTABLE R18 R2 R3
  SETTABLEKS R18 R17 K31 ["Text"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K32 ["Font"]
  GETTABLEKS R18 R19 K33 ["TabBar"]
  SETTABLEKS R18 R17 K32 ["Font"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K34 ["DefaultFontSize"]
  GETTABLEKS R18 R19 K35 ["DropDownTabBar"]
  SETTABLEKS R18 R17 K36 ["TextSize"]
  GETIMPORT R18 K65 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K62 ["TextXAlignment"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K27 ["Color"]
  GETTABLEKS R18 R19 K31 ["Text"]
  SETTABLEKS R18 R17 K37 ["TextColor3"]
  LOADN R18 1
  SETTABLEKS R18 R17 K63 ["BackgroundTransparency"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["text"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K9 ["createElement"]
  LOADK R16 K66 ["ImageLabel"]
  DUPTABLE R17 K69 [{"Image", "BackgroundTransparency", "Size", "Position"}]
  GETUPVAL R18 7
  SETTABLEKS R18 R17 K67 ["Image"]
  LOADN R18 1
  SETTABLEKS R18 R17 K63 ["BackgroundTransparency"]
  GETIMPORT R18 K41 [UDim2.new]
  LOADN R19 0
  GETUPVAL R20 5
  LOADN R21 0
  GETUPVAL R22 5
  CALL R18 4 1
  SETTABLEKS R18 R17 K42 ["Size"]
  GETIMPORT R18 K41 [UDim2.new]
  LOADN R19 1
  GETUPVAL R22 5
  MINUS R21 R22
  GETUPVAL R22 6
  SUB R20 R21 R22
  LOADK R21 K70 [0.5]
  GETUPVAL R23 6
  MINUS R22 R23
  CALL R18 4 1
  SETTABLEKS R18 R17 K68 ["Position"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K53 ["arrow"]
  MOVE R15 R6
  JUMPIFNOT R15 [+145]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K9 ["createElement"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K71 ["Portal"]
  DUPTABLE R17 K73 [{"target"}]
  JUMPIFEQKNIL R7 [+3]
  MOVE R18 R7
  JUMPIF R18 [+8]
  GETIMPORT R19 K75 [game]
  LOADK R21 K76 ["CoreGui"]
  NAMECALL R19 R19 K77 ["GetService"]
  CALL R19 2 1
  GETTABLEKS R18 R19 K78 ["DevConsoleMaster"]
  SETTABLEKS R18 R17 K72 ["target"]
  DUPTABLE R18 K80 [{"GreyOutFrame"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K9 ["createElement"]
  LOADK R20 K81 ["Frame"]
  NEWTABLE R21 8 0
  GETIMPORT R22 K41 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K42 ["Size"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K27 ["Color"]
  GETTABLEKS R22 R23 K82 ["Black"]
  SETTABLEKS R22 R21 K43 ["BackgroundColor3"]
  LOADK R22 K83 [0.36]
  SETTABLEKS R22 R21 K63 ["BackgroundTransparency"]
  LOADB R22 1
  SETTABLEKS R22 R21 K84 ["Active"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K45 ["Event"]
  GETTABLEKS R22 R23 K85 ["InputEnded"]
  GETTABLEKS R23 R0 K86 ["noSelection"]
  SETTABLE R23 R21 R22
  DUPTABLE R22 K88 [{"BorderFrame"}]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K9 ["createElement"]
  LOADK R24 K81 ["Frame"]
  DUPTABLE R25 K89 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R26 K41 [UDim2.new]
  LOADN R27 0
  LOADN R28 119
  LOADN R29 0
  MOVE R30 R9
  CALL R26 4 1
  SETTABLEKS R26 R25 K42 ["Size"]
  GETIMPORT R26 K41 [UDim2.new]
  LOADK R27 K70 [0.5]
  LOADK R28 K90 [-187.5]
  LOADN R29 0
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K68 ["Position"]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K27 ["Color"]
  GETTABLEKS R26 R27 K29 ["UnselectedGray"]
  SETTABLEKS R26 R25 K43 ["BackgroundColor3"]
  LOADN R26 0
  SETTABLEKS R26 R25 K44 ["BorderSizePixel"]
  DUPTABLE R26 K92 [{"SelectionFrame"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K9 ["createElement"]
  LOADK R28 K93 ["ScrollingFrame"]
  DUPTABLE R29 K96 [{"Size", "Position", "BackgroundTransparency", "CanvasSize", "BorderSizePixel", "ScrollBarThickness"}]
  GETIMPORT R30 K41 [UDim2.new]
  LOADN R31 1
  LOADN R32 226
  LOADN R33 1
  LOADN R34 240
  CALL R30 4 1
  SETTABLEKS R30 R29 K42 ["Size"]
  GETIMPORT R30 K41 [UDim2.new]
  LOADN R31 0
  LOADN R32 15
  LOADN R33 0
  LOADN R34 8
  CALL R30 4 1
  SETTABLEKS R30 R29 K68 ["Position"]
  LOADN R30 1
  SETTABLEKS R30 R29 K63 ["BackgroundTransparency"]
  GETIMPORT R30 K41 [UDim2.new]
  LOADN R31 1
  LOADN R32 226
  LOADN R33 1
  MOVE R34 R10
  CALL R30 4 1
  SETTABLEKS R30 R29 K94 ["CanvasSize"]
  LOADN R30 0
  SETTABLEKS R30 R29 K44 ["BorderSizePixel"]
  LOADN R30 0
  SETTABLEKS R30 R29 K95 ["ScrollBarThickness"]
  MOVE R30 R8
  CALL R27 3 1
  SETTABLEKS R27 R26 K91 ["SelectionFrame"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K87 ["BorderFrame"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K79 ["GreyOutFrame"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K54 ["selectionView"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R1 R2 K5 ["RobloxGui"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Roact"]
  CALL R2 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R0 K10 ["Workspace"]
  GETTABLEKS R6 R7 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["RoactUtils"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["ExternalEventConnection"]
  GETIMPORT R4 K7 [require]
  GETIMPORT R8 K14 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R5 R6 K16 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K17 ["GeneralFormatting"]
  GETTABLEKS R5 R6 K18 ["DropDownEntryHeight"]
  GETTABLEKS R7 R4 K17 ["GeneralFormatting"]
  GETTABLEKS R6 R7 K19 ["DropDownArrowHeight"]
  DIVK R7 R6 K20 [2]
  GETTABLEKS R9 R4 K21 ["Image"]
  GETTABLEKS R8 R9 K22 ["DownArrow"]
  GETTABLEKS R9 R2 K23 ["Component"]
  LOADK R11 K24 ["FullScreenDropDownButton"]
  NAMECALL R9 R9 K25 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K26 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K27 ["init"]
  DUPCLOSURE R10 K28 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K29 ["render"]
  RETURN R9 1
