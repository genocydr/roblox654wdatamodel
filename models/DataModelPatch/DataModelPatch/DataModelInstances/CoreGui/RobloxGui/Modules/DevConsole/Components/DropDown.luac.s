PROTO_0:
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"showDropDown"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K0 ["showDropDown"]
  NAMECALL R2 R2 K2 ["setState"]
  CALL R2 2 0
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
  DUPTABLE R4 K10 [{"showDropDown"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["showDropDown"]
  NAMECALL R2 R2 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onMainButtonPressed"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["nonDropDownSelection"]
  DUPTABLE R1 K3 [{"showDropDown"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["showDropDown"]
  SETTABLEKS R1 R0 K4 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["ref"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 2
  DUPTABLE R2 K1 [{"showDropDown"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showDropDown"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
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
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["dropDownTargetParent"]
  GETTABLEKS R8 R0 K7 ["ref"]
  GETTABLEKS R7 R8 K8 ["current"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R8 R0 K9 ["state"]
  GETTABLEKS R7 R8 K10 ["showDropDown"]
  NEWTABLE R8 0 0
  LOADNIL R9
  LOADNIL R10
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R0 K7 ["ref"]
  GETTABLEKS R13 R14 K8 ["current"]
  JUMPIFNOT R13 [+127]
  JUMPIFNOT R7 [+126]
  GETTABLEKS R15 R0 K7 ["ref"]
  GETTABLEKS R14 R15 K8 ["current"]
  GETTABLEKS R13 R14 K11 ["AbsolutePosition"]
  GETTABLEKS R16 R0 K7 ["ref"]
  GETTABLEKS R15 R16 K8 ["current"]
  GETTABLEKS R14 R15 K12 ["AbsoluteSize"]
  GETTABLEKS R12 R14 K13 ["X"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K14 ["createElement"]
  LOADK R16 K15 ["UIListLayout"]
  DUPTABLE R17 K19 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R18 K22 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K16 ["HorizontalAlignment"]
  GETIMPORT R18 K24 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K17 ["SortOrder"]
  GETIMPORT R18 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K18 ["VerticalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R8 K15 ["UIListLayout"]
  GETIMPORT R15 K28 [pairs]
  MOVE R16 R2
  CALL R15 1 3
  FORGPREP_NEXT R15
  JUMPIFNOTEQ R18 R3 [+7]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Color"]
  GETTABLEKS R20 R21 K30 ["SelectedGray"]
  JUMPIF R20 [+5]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Color"]
  GETTABLEKS R20 R21 K31 ["UnselectedGray"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K14 ["createElement"]
  LOADK R22 K32 ["TextButton"]
  NEWTABLE R23 16 0
  SETTABLEKS R1 R23 K33 ["Size"]
  SETTABLEKS R19 R23 K34 ["Text"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K29 ["Color"]
  GETTABLEKS R24 R25 K34 ["Text"]
  SETTABLEKS R24 R23 K35 ["TextColor3"]
  GETUPVAL R24 2
  SETTABLEKS R24 R23 K36 ["TextSize"]
  GETUPVAL R24 3
  SETTABLEKS R24 R23 K37 ["Font"]
  LOADB R24 0
  SETTABLEKS R24 R23 K38 ["AutoButtonColor"]
  SETTABLEKS R20 R23 K39 ["BackgroundColor3"]
  LOADN R24 0
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K41 ["BorderSizePixel"]
  SETTABLEKS R18 R23 K23 ["LayoutOrder"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K42 ["Event"]
  GETTABLEKS R24 R25 K43 ["Activated"]
  NEWCLOSURE R25 P0
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R0
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLE R21 R8 R19
  GETTABLEKS R21 R14 K44 ["Y"]
  ADD R11 R11 R21
  FORGLOOP R15 2 [-65]
  GETIMPORT R15 K47 [UDim2.new]
  LOADN R16 0
  ADDK R17 R12 K48 [24]
  LOADN R18 0
  ADDK R19 R11 K48 [24]
  CALL R15 4 1
  MOVE R10 R15
  GETIMPORT R15 K47 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R13 K13 ["X"]
  LOADN R18 0
  GETTABLEKS R20 R13 K44 ["Y"]
  GETTABLEKS R21 R14 K44 ["Y"]
  ADD R19 R20 R21
  CALL R15 4 1
  MOVE R9 R15
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K14 ["createElement"]
  LOADK R14 K32 ["TextButton"]
  NEWTABLE R15 16 0
  SETTABLEKS R1 R15 K33 ["Size"]
  GETTABLE R16 R2 R3
  SETTABLEKS R16 R15 K34 ["Text"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K29 ["Color"]
  GETTABLEKS R16 R17 K34 ["Text"]
  SETTABLEKS R16 R15 K35 ["TextColor3"]
  GETUPVAL R16 2
  SETTABLEKS R16 R15 K36 ["TextSize"]
  GETUPVAL R16 3
  SETTABLEKS R16 R15 K37 ["Font"]
  LOADB R16 0
  SETTABLEKS R16 R15 K38 ["AutoButtonColor"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K29 ["Color"]
  GETTABLEKS R16 R17 K31 ["UnselectedGray"]
  SETTABLEKS R16 R15 K39 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K40 ["BackgroundTransparency"]
  SETTABLEKS R5 R15 K23 ["LayoutOrder"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K42 ["Event"]
  GETTABLEKS R16 R17 K43 ["Activated"]
  GETTABLEKS R17 R0 K49 ["onMainButtonPressed"]
  SETTABLE R17 R15 R16
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K50 ["Ref"]
  GETTABLEKS R17 R0 K7 ["ref"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K53 [{"arrow", "DropDown"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K14 ["createElement"]
  LOADK R18 K54 ["ImageLabel"]
  DUPTABLE R19 K57 [{"Image", "BackgroundTransparency", "Size", "Position"}]
  GETUPVAL R20 4
  SETTABLEKS R20 R19 K55 ["Image"]
  LOADN R20 1
  SETTABLEKS R20 R19 K40 ["BackgroundTransparency"]
  GETIMPORT R20 K47 [UDim2.new]
  LOADN R21 0
  GETUPVAL R22 5
  LOADN R23 0
  GETUPVAL R24 5
  CALL R20 4 1
  SETTABLEKS R20 R19 K33 ["Size"]
  GETIMPORT R20 K47 [UDim2.new]
  LOADN R21 1
  GETUPVAL R24 5
  MINUS R23 R24
  GETUPVAL R24 6
  SUB R22 R23 R24
  LOADK R23 K58 [0.5]
  GETUPVAL R25 6
  MINUS R24 R25
  CALL R20 4 1
  SETTABLEKS R20 R19 K56 ["Position"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["arrow"]
  MOVE R17 R7
  JUMPIFNOT R17 [+118]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K59 ["Portal"]
  DUPTABLE R19 K61 [{"target"}]
  JUMPIFEQKNIL R6 [+3]
  MOVE R20 R6
  JUMPIF R20 [+8]
  GETIMPORT R21 K63 [game]
  LOADK R23 K64 ["CoreGui"]
  NAMECALL R21 R21 K65 ["GetService"]
  CALL R21 2 1
  GETTABLEKS R20 R21 K66 ["DevConsoleMaster"]
  SETTABLEKS R20 R19 K60 ["target"]
  DUPTABLE R20 K68 [{"InputCatcher"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K14 ["createElement"]
  LOADK R22 K69 ["Frame"]
  NEWTABLE R23 4 0
  GETIMPORT R24 K47 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K33 ["Size"]
  GETIMPORT R24 K47 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K56 ["Position"]
  LOADN R24 1
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K42 ["Event"]
  GETTABLEKS R24 R25 K70 ["InputEnded"]
  GETTABLEKS R25 R0 K71 ["nonDropDownSelection"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K73 [{"OuterFrame"}]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K14 ["createElement"]
  LOADK R26 K74 ["ImageButton"]
  DUPTABLE R27 K75 [{"Size", "AutoButtonColor", "Position", "BackgroundColor3", "BackgroundTransparency"}]
  SETTABLEKS R10 R27 K33 ["Size"]
  LOADB R28 0
  SETTABLEKS R28 R27 K38 ["AutoButtonColor"]
  SETTABLEKS R9 R27 K56 ["Position"]
  GETUPVAL R30 1
  GETTABLEKS R29 R30 K29 ["Color"]
  GETTABLEKS R28 R29 K76 ["TextBoxGray"]
  SETTABLEKS R28 R27 K39 ["BackgroundColor3"]
  LOADN R28 0
  SETTABLEKS R28 R27 K40 ["BackgroundTransparency"]
  DUPTABLE R28 K78 [{"innerFrame"}]
  GETUPVAL R30 0
  GETTABLEKS R29 R30 K14 ["createElement"]
  LOADK R30 K69 ["Frame"]
  DUPTABLE R31 K79 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R32 K47 [UDim2.new]
  LOADN R33 0
  LOADN R34 12
  LOADN R35 0
  LOADN R36 12
  CALL R32 4 1
  SETTABLEKS R32 R31 K56 ["Position"]
  GETIMPORT R32 K47 [UDim2.new]
  LOADN R33 0
  MOVE R34 R12
  LOADN R35 0
  MOVE R36 R11
  CALL R32 4 1
  SETTABLEKS R32 R31 K33 ["Size"]
  LOADN R32 1
  SETTABLEKS R32 R31 K40 ["BackgroundTransparency"]
  MOVE R32 R8
  CALL R29 3 1
  SETTABLEKS R29 R28 K77 ["innerFrame"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K72 ["OuterFrame"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K67 ["InputCatcher"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K52 ["DropDown"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETIMPORT R3 K7 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K13 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K14 ["Font"]
  GETTABLEKS R4 R5 K15 ["UtilBar"]
  GETTABLEKS R6 R3 K16 ["DefaultFontSize"]
  GETTABLEKS R5 R6 K15 ["UtilBar"]
  GETTABLEKS R7 R3 K17 ["GeneralFormatting"]
  GETTABLEKS R6 R7 K18 ["DropDownArrowHeight"]
  DIVK R7 R6 K19 [2]
  GETTABLEKS R9 R3 K20 ["Image"]
  GETTABLEKS R8 R9 K21 ["DownArrow"]
  GETTABLEKS R9 R2 K22 ["Component"]
  LOADK R11 K23 ["DropDown"]
  NAMECALL R9 R9 K24 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K25 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K26 ["init"]
  DUPCLOSURE R10 K27 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K28 ["render"]
  RETURN R9 1