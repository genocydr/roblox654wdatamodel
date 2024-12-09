PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"utilTabHeight"}]
  SETTABLEKS R0 R3 K0 ["utilTabHeight"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["OnScreenProfilerEnabled"]
  GETUPVAL R0 2
  DUPTABLE R2 K2 [{"clientProfilerEnabled"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K1 ["clientProfilerEnabled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 3
  LOADK R2 K4 ["MicroprofilerDevConsolePressed"]
  NAMECALL R0 R0 K5 ["ReportCounter"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"clientProfilerEnabled"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["OnScreenProfilerEnabled"]
  SETTABLEKS R3 R2 K0 ["clientProfilerEnabled"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onUtilTabHeightChanged"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["changeProfilerState"]
  GETUPVAL R1 0
  LOADK R3 K2 ["OnScreenProfilerEnabled"]
  NAMECALL R1 R1 K3 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R1 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["microProfilerChangedConnection"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K7 ["utilRef"]
  DUPTABLE R2 K9 [{"utilTabHeight"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["utilTabHeight"]
  SETTABLEKS R2 R0 K10 ["state"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["utilRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R1 R2 K2 ["Size"]
  DUPTABLE R4 K4 [{"utilTabHeight"}]
  GETTABLEKS R6 R1 K5 ["Y"]
  GETTABLEKS R5 R6 K6 ["Offset"]
  SETTABLEKS R5 R4 K3 ["utilTabHeight"]
  NAMECALL R2 R0 K7 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["microProfilerChangedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["microProfilerChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["microProfilerChangedConnection"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["utilRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R1 R2 K2 ["Size"]
  GETTABLEKS R3 R1 K3 ["Y"]
  GETTABLEKS R2 R3 K4 ["Offset"]
  GETTABLEKS R4 R0 K5 ["state"]
  GETTABLEKS R3 R4 K6 ["utilTabHeight"]
  JUMPIFEQ R2 R3 [+11]
  DUPTABLE R4 K7 [{"utilTabHeight"}]
  GETTABLEKS R6 R1 K3 ["Y"]
  GETTABLEKS R5 R6 K4 ["Offset"]
  SETTABLEKS R5 R4 K6 ["utilTabHeight"]
  NAMECALL R2 R0 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["size"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["formFactor"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["tabList"]
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R4 R5 K5 ["utilTabHeight"]
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K6 ["frameRate"]
  GETTABLEKS R7 R0 K4 ["state"]
  GETTABLEKS R6 R7 K7 ["timeFrame"]
  GETTABLEKS R8 R0 K4 ["state"]
  GETTABLEKS R7 R8 K8 ["waitingForData"]
  GETTABLEKS R9 R0 K4 ["state"]
  GETTABLEKS R8 R9 K9 ["clientProfilerEnabled"]
  GETTABLEKS R10 R0 K4 ["state"]
  GETTABLEKS R9 R10 K10 ["outputPath"]
  GETIMPORT R10 K13 [UDim2.new]
  LOADK R11 K14 [0.8]
  GETUPVAL R13 0
  MINUS R12 R13
  LOADN R13 0
  LOADN R14 30
  CALL R10 4 1
  GETIMPORT R11 K13 [UDim2.new]
  LOADK R12 K15 [0.6]
  GETUPVAL R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K16 ["createElement"]
  LOADK R13 K17 ["Frame"]
  DUPTABLE R14 K22 [{"Size", "BackgroundColor3", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R1 R14 K18 ["Size"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K23 ["Color"]
  GETTABLEKS R15 R16 K24 ["BaseGray"]
  SETTABLEKS R15 R14 K19 ["BackgroundColor3"]
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  LOADN R15 3
  SETTABLEKS R15 R14 K21 ["LayoutOrder"]
  DUPTABLE R15 K28 [{"UIListLayout", "UtilAndTab", "MainFrame"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  LOADK R17 K25 ["UIListLayout"]
  DUPTABLE R18 K31 [{"Padding", "SortOrder"}]
  GETIMPORT R19 K33 [UDim.new]
  LOADN R20 0
  GETUPVAL R21 3
  CALL R19 2 1
  SETTABLEKS R19 R18 K29 ["Padding"]
  GETIMPORT R19 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K30 ["SortOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["UIListLayout"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K40 [{"windowWidth", "formFactor", "tabList", "layoutOrder", "refForParent", "onHeightChanged"}]
  GETTABLEKS R20 R1 K41 ["X"]
  GETTABLEKS R19 R20 K42 ["Offset"]
  SETTABLEKS R19 R18 K36 ["windowWidth"]
  SETTABLEKS R2 R18 K2 ["formFactor"]
  SETTABLEKS R3 R18 K3 ["tabList"]
  LOADN R19 1
  SETTABLEKS R19 R18 K37 ["layoutOrder"]
  GETTABLEKS R19 R0 K43 ["utilRef"]
  SETTABLEKS R19 R18 K38 ["refForParent"]
  GETTABLEKS R19 R0 K44 ["onUtilTabHeightChanged"]
  SETTABLEKS R19 R18 K39 ["onHeightChanged"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K26 ["UtilAndTab"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K16 ["createElement"]
  LOADK R17 K45 ["ScrollingFrame"]
  DUPTABLE R18 K47 [{"Size", "CanvasSize", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  MINUS R23 R4
  CALL R19 4 1
  SETTABLEKS R19 R18 K18 ["Size"]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  MINUS R23 R4
  CALL R19 4 1
  SETTABLEKS R19 R18 K46 ["CanvasSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K20 ["BackgroundTransparency"]
  LOADN R19 2
  SETTABLEKS R19 R18 K21 ["LayoutOrder"]
  DUPTABLE R19 K51 [{"UIListLayout", "MicroProfilerRow", "HorizontalLine", "ServerProfiler"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K16 ["createElement"]
  LOADK R21 K25 ["UIListLayout"]
  DUPTABLE R22 K31 [{"Padding", "SortOrder"}]
  GETIMPORT R23 K33 [UDim.new]
  LOADN R24 0
  GETUPVAL R26 3
  MULK R25 R26 K52 [2]
  CALL R23 2 1
  SETTABLEKS R23 R22 K29 ["Padding"]
  GETIMPORT R23 K35 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K30 ["SortOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K25 ["UIListLayout"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K16 ["createElement"]
  LOADK R21 K17 ["Frame"]
  DUPTABLE R22 K53 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 90
  CALL R23 4 1
  SETTABLEKS R23 R22 K18 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  LOADN R23 2
  SETTABLEKS R23 R22 K21 ["LayoutOrder"]
  DUPTABLE R23 K56 [{"Label", "HorizontalLine", "ToggleButton"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K16 ["createElement"]
  LOADK R25 K57 ["TextLabel"]
  DUPTABLE R26 K65 [{"Size", "Position", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R27 K13 [UDim2.new]
  LOADN R28 0
  GETUPVAL R29 0
  LOADN R30 0
  LOADN R31 30
  CALL R27 4 1
  SETTABLEKS R27 R26 K18 ["Size"]
  GETIMPORT R27 K13 [UDim2.new]
  LOADK R28 K66 [0.1]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K58 ["Position"]
  LOADK R27 K67 ["MicroProfiler"]
  SETTABLEKS R27 R26 K59 ["Text"]
  GETUPVAL R27 5
  SETTABLEKS R27 R26 K60 ["Font"]
  GETUPVAL R27 6
  SETTABLEKS R27 R26 K61 ["TextSize"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K23 ["Color"]
  GETTABLEKS R27 R28 K59 ["Text"]
  SETTABLEKS R27 R26 K62 ["TextColor3"]
  GETIMPORT R27 K69 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K63 ["TextXAlignment"]
  GETIMPORT R27 K71 [Enum.TextYAlignment.Center]
  SETTABLEKS R27 R26 K64 ["TextYAlignment"]
  GETUPVAL R27 7
  SETTABLEKS R27 R26 K19 ["BackgroundColor3"]
  LOADN R27 1
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["Label"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K16 ["createElement"]
  LOADK R25 K17 ["Frame"]
  DUPTABLE R26 K72 [{"Size", "Position"}]
  GETIMPORT R27 K13 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  LOADN R31 1
  CALL R27 4 1
  SETTABLEKS R27 R26 K18 ["Size"]
  GETIMPORT R27 K13 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADN R30 0
  LOADN R31 30
  CALL R27 4 1
  SETTABLEKS R27 R26 K58 ["Position"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["HorizontalLine"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K16 ["createElement"]
  LOADK R25 K57 ["TextLabel"]
  DUPTABLE R26 K73 [{"Size", "Position", "BackgroundTransparency"}]
  GETIMPORT R27 K13 [UDim2.new]
  LOADK R28 K14 [0.8]
  GETUPVAL R30 0
  MINUS R29 R30
  LOADN R30 0
  LOADN R31 30
  CALL R27 4 1
  SETTABLEKS R27 R26 K18 ["Size"]
  GETIMPORT R27 K13 [UDim2.new]
  LOADK R28 K74 [0.1]
  GETUPVAL R29 0
  LOADN R30 0
  LOADK R31 K75 [37.5]
  CALL R27 4 1
  SETTABLEKS R27 R26 K58 ["Position"]
  LOADN R27 1
  SETTABLEKS R27 R26 K20 ["BackgroundTransparency"]
  DUPTABLE R27 K78 [{"OffButton", "ClientButton"}]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K16 ["createElement"]
  LOADK R29 K79 ["TextButton"]
  NEWTABLE R30 16 0
  GETIMPORT R31 K13 [UDim2.new]
  LOADK R32 K80 [0.5]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K18 ["Size"]
  LOADK R31 K81 ["Off"]
  SETTABLEKS R31 R30 K59 ["Text"]
  GETUPVAL R31 5
  SETTABLEKS R31 R30 K60 ["Font"]
  GETUPVAL R31 6
  SETTABLEKS R31 R30 K61 ["TextSize"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K23 ["Color"]
  GETTABLEKS R31 R32 K59 ["Text"]
  SETTABLEKS R31 R30 K62 ["TextColor3"]
  GETIMPORT R31 K82 [Enum.TextXAlignment.Center]
  SETTABLEKS R31 R30 K63 ["TextXAlignment"]
  GETIMPORT R31 K71 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K64 ["TextYAlignment"]
  JUMPIFNOT R8 [+2]
  GETUPVAL R31 8
  JUMPIF R31 [+1]
  GETUPVAL R31 9
  SETTABLEKS R31 R30 K19 ["BackgroundColor3"]
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K83 ["Event"]
  GETTABLEKS R31 R32 K84 ["Activated"]
  GETTABLEKS R32 R0 K85 ["changeProfilerState"]
  LOADB R33 0
  CALL R32 1 1
  SETTABLE R32 R30 R31
  CALL R28 2 1
  SETTABLEKS R28 R27 K76 ["OffButton"]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K16 ["createElement"]
  LOADK R29 K79 ["TextButton"]
  NEWTABLE R30 16 0
  GETIMPORT R31 K13 [UDim2.new]
  LOADK R32 K80 [0.5]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K18 ["Size"]
  GETIMPORT R31 K13 [UDim2.new]
  LOADK R32 K80 [0.5]
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K58 ["Position"]
  LOADK R31 K86 ["Client"]
  SETTABLEKS R31 R30 K59 ["Text"]
  GETUPVAL R31 5
  SETTABLEKS R31 R30 K60 ["Font"]
  GETUPVAL R31 6
  SETTABLEKS R31 R30 K61 ["TextSize"]
  GETUPVAL R33 2
  GETTABLEKS R32 R33 K23 ["Color"]
  GETTABLEKS R31 R32 K59 ["Text"]
  SETTABLEKS R31 R30 K62 ["TextColor3"]
  GETIMPORT R31 K82 [Enum.TextXAlignment.Center]
  SETTABLEKS R31 R30 K63 ["TextXAlignment"]
  GETIMPORT R31 K71 [Enum.TextYAlignment.Center]
  SETTABLEKS R31 R30 K64 ["TextYAlignment"]
  JUMPIFNOT R8 [+2]
  GETUPVAL R31 9
  JUMPIF R31 [+1]
  GETUPVAL R31 8
  SETTABLEKS R31 R30 K19 ["BackgroundColor3"]
  GETUPVAL R33 1
  GETTABLEKS R32 R33 K83 ["Event"]
  GETTABLEKS R31 R32 K84 ["Activated"]
  GETTABLEKS R32 R0 K85 ["changeProfilerState"]
  LOADB R33 1
  CALL R32 1 1
  SETTABLE R32 R30 R31
  CALL R28 2 1
  SETTABLEKS R28 R27 K77 ["ClientButton"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K55 ["ToggleButton"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K48 ["MicroProfilerRow"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K16 ["createElement"]
  LOADK R21 K17 ["Frame"]
  DUPTABLE R22 K53 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  GETUPVAL R27 3
  CALL R23 4 1
  SETTABLEKS R23 R22 K18 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  LOADN R23 3
  SETTABLEKS R23 R22 K21 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["HorizontalLine"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K16 ["createElement"]
  GETUPVAL R21 10
  DUPTABLE R22 K53 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R23 K13 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 135
  CALL R23 4 1
  SETTABLEKS R23 R22 K18 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K20 ["BackgroundTransparency"]
  LOADN R23 4
  SETTABLEKS R23 R22 K21 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K50 ["ServerProfiler"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K27 ["MainFrame"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["LogService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [UserSettings]
  CALL R3 0 1
  GETTABLEKS R4 R3 K8 ["GameSettings"]
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Roact"]
  CALL R5 1 1
  GETIMPORT R10 K14 [script]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K16 ["Components"]
  GETIMPORT R7 K10 [require]
  GETTABLEKS R8 R6 K17 ["UtilAndTab"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETIMPORT R11 K14 [script]
  GETTABLEKS R10 R11 K15 ["Parent"]
  GETTABLEKS R9 R10 K18 ["ServerProfilerInterface"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETIMPORT R14 K14 [script]
  GETTABLEKS R13 R14 K15 ["Parent"]
  GETTABLEKS R12 R13 K15 ["Parent"]
  GETTABLEKS R11 R12 K15 ["Parent"]
  GETTABLEKS R10 R11 K19 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K20 ["GeneralFormatting"]
  GETTABLEKS R10 R11 K21 ["MainRowPadding"]
  GETTABLEKS R12 R9 K22 ["MicroProfilerFormatting"]
  GETTABLEKS R11 R12 K23 ["ButtonWidth"]
  GETTABLEKS R13 R9 K22 ["MicroProfilerFormatting"]
  GETTABLEKS R12 R13 K24 ["ButtonTextSize"]
  GETTABLEKS R14 R9 K25 ["Font"]
  GETTABLEKS R13 R14 K26 ["MainWindow"]
  GETTABLEKS R15 R9 K25 ["Font"]
  GETTABLEKS R14 R15 K27 ["MainWindowHeader"]
  GETTABLEKS R16 R9 K28 ["Color"]
  GETTABLEKS R15 R16 K29 ["UnselectedGray"]
  GETTABLEKS R17 R9 K28 ["Color"]
  GETTABLEKS R16 R17 K30 ["SelectedBlue"]
  GETTABLEKS R18 R9 K28 ["Color"]
  GETTABLEKS R17 R18 K29 ["UnselectedGray"]
  GETTABLEKS R18 R5 K31 ["Component"]
  LOADK R20 K32 ["MainViewProfiler"]
  NAMECALL R18 R18 K33 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K34 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K35 ["init"]
  DUPCLOSURE R19 K36 [PROTO_5]
  SETTABLEKS R19 R18 K37 ["didMount"]
  DUPCLOSURE R19 K38 [PROTO_6]
  SETTABLEKS R19 R18 K39 ["willUnmount"]
  DUPCLOSURE R19 K40 [PROTO_7]
  SETTABLEKS R19 R18 K41 ["didUpdate"]
  DUPCLOSURE R19 K42 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K43 ["render"]
  RETURN R18 1