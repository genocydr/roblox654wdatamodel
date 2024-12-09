PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["targetNetworkData"]
  NAMECALL R1 R1 K1 ["getSortType"]
  CALL R1 1 1
  JUMPIFNOTEQ R0 R1 [+15]
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"reverseSort"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["state"]
  GETTABLEKS R6 R7 K2 ["reverseSort"]
  NOT R5 R6
  SETTABLEKS R5 R4 K2 ["reverseSort"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["targetNetworkData"]
  MOVE R4 R0
  NAMECALL R2 R2 K6 ["setSortType"]
  CALL R2 2 0
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"reverseSort"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["reverseSort"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"summaryExpanded"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["state"]
  GETTABLEKS R6 R7 K0 ["summaryExpanded"]
  NOT R5 R6
  SETTABLEKS R5 R4 K0 ["summaryExpanded"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"entriesExpanded"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["state"]
  GETTABLEKS R6 R7 K0 ["entriesExpanded"]
  NOT R5 R6
  SETTABLEKS R5 R4 K0 ["entriesExpanded"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R1 K0 ["targetNetworkData"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Make sure the NetworkData is assigned for this NetworkView"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R1 K0 ["targetNetworkData"]
  NAMECALL R2 R2 K4 ["getCurrentData"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K5 ["onSortChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K6 ["onSummaryButton"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K7 ["onDetailButton"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createRef"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K9 ["ref"]
  DUPTABLE R3 K18 [{"httpSummaryTable", "httpSummaryCount", "httpEntryList", "summaryExpanded", "entriesExpanded", "indexOfEntryExpanded", "reverseSort", "absWidth"}]
  GETTABLEKS R4 R2 K19 ["summaryTable"]
  SETTABLEKS R4 R3 K10 ["httpSummaryTable"]
  GETTABLEKS R4 R2 K20 ["summaryCount"]
  SETTABLEKS R4 R3 K11 ["httpSummaryCount"]
  GETTABLEKS R4 R2 K21 ["entryList"]
  SETTABLEKS R4 R3 K12 ["httpEntryList"]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["summaryExpanded"]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["entriesExpanded"]
  LOADN R4 0
  SETTABLEKS R4 R3 K15 ["indexOfEntryExpanded"]
  LOADB R4 0
  SETTABLEKS R4 R3 K16 ["reverseSort"]
  LOADN R4 0
  SETTABLEKS R4 R3 K17 ["absWidth"]
  SETTABLEKS R3 R0 K22 ["state"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["ref"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+28]
  GETTABLEKS R2 R0 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["absWidth"]
  GETTABLEKS R5 R0 K0 ["ref"]
  GETTABLEKS R4 R5 K1 ["current"]
  GETTABLEKS R3 R4 K4 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K5 ["X"]
  JUMPIFEQ R1 R2 [+15]
  DUPTABLE R3 K6 [{"absWidth"}]
  GETTABLEKS R7 R0 K0 ["ref"]
  GETTABLEKS R6 R7 K1 ["current"]
  GETTABLEKS R5 R6 K4 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K5 ["X"]
  SETTABLEKS R4 R3 K3 ["absWidth"]
  NAMECALL R1 R0 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  DUPTABLE R5 K3 [{"httpSummaryTable", "httpSummaryCount", "httpEntryList"}]
  SETTABLEKS R0 R5 K0 ["httpSummaryTable"]
  SETTABLEKS R1 R5 K1 ["httpSummaryCount"]
  SETTABLEKS R2 R5 K2 ["httpEntryList"]
  NAMECALL R3 R3 K4 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["targetNetworkData"]
  NAMECALL R1 R1 K2 ["Signal"]
  CALL R1 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R1 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["httpEntryAddedConnector"]
  GETTABLEKS R3 R0 K5 ["ref"]
  GETTABLEKS R2 R3 K6 ["current"]
  JUMPIFNOT R2 [+14]
  DUPTABLE R4 K8 [{"absWidth"}]
  GETTABLEKS R8 R0 K5 ["ref"]
  GETTABLEKS R7 R8 K6 ["current"]
  GETTABLEKS R6 R7 K9 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K10 ["X"]
  SETTABLEKS R5 R4 K7 ["absWidth"]
  NAMECALL R2 R0 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["httpEntryAddedConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["httpEntryAddedConnector"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["layoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["searchTerm"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["size"]
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R4 R5 K5 ["summaryExpanded"]
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K6 ["entriesExpanded"]
  GETTABLEKS R7 R0 K4 ["state"]
  GETTABLEKS R6 R7 K7 ["reverseSort"]
  GETTABLEKS R8 R0 K4 ["state"]
  GETTABLEKS R7 R8 K8 ["httpSummaryTable"]
  GETTABLEKS R9 R0 K4 ["state"]
  GETTABLEKS R8 R9 K9 ["httpEntryList"]
  GETTABLEKS R10 R0 K4 ["state"]
  GETTABLEKS R9 R10 K10 ["httpSummaryCount"]
  GETUPVAL R11 0
  GETTABLEKS R13 R0 K4 ["state"]
  GETTABLEKS R12 R13 K11 ["absWidth"]
  FASTCALL2 MATH_MAX R11 R12 [+3]
  GETIMPORT R10 K14 [math.max]
  CALL R10 2 1
  GETUPVAL R12 1
  MULK R11 R12 K15 [2]
  JUMPIFNOT R4 [+5]
  GETUPVAL R14 2
  MUL R13 R9 R14
  ADD R12 R11 R13
  GETUPVAL R13 3
  ADD R11 R12 R13
  LOADNIL R12
  GETTABLEKS R14 R0 K16 ["ref"]
  GETTABLEKS R13 R14 K17 ["current"]
  JUMPIFNOT R13 [+10]
  GETTABLEKS R16 R0 K16 ["ref"]
  GETTABLEKS R15 R16 K17 ["current"]
  GETTABLEKS R14 R15 K18 ["AbsoluteSize"]
  GETTABLEKS R13 R14 K19 ["Y"]
  SUB R12 R13 R11
  JUMP [+5]
  GETTABLEKS R14 R3 K19 ["Y"]
  GETTABLEKS R13 R14 K20 ["Offset"]
  SUB R12 R13 R11
  LOADN R14 0
  FASTCALL2 MATH_MAX R14 R12 [+4]
  MOVE R15 R12
  GETIMPORT R13 K14 [math.max]
  CALL R13 2 1
  MOVE R12 R13
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K21 ["createElement"]
  LOADK R14 K22 ["Frame"]
  NEWTABLE R15 8 0
  SETTABLEKS R3 R15 K23 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K24 ["BackgroundTransparency"]
  LOADB R16 1
  SETTABLEKS R16 R15 K25 ["ClipsDescendants"]
  SETTABLEKS R1 R15 K26 ["LayoutOrder"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K27 ["Ref"]
  GETTABLEKS R17 R0 K16 ["ref"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K33 [{"UIListLayout", "SummaryButton", "Summary", "DetailsButton", "Entries"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K21 ["createElement"]
  LOADK R18 K28 ["UIListLayout"]
  DUPTABLE R19 K38 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R20 K41 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K34 ["FillDirection"]
  GETIMPORT R20 K43 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K35 ["HorizontalAlignment"]
  GETIMPORT R20 K45 [Enum.VerticalAlignment.Top]
  SETTABLEKS R20 R19 K36 ["VerticalAlignment"]
  GETIMPORT R20 K46 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K37 ["SortOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["UIListLayout"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K50 [{"size", "pos", "isExpanded", "onButtonPress", "layoutOrder"}]
  GETIMPORT R20 K53 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETUPVAL R24 1
  CALL R20 4 1
  SETTABLEKS R20 R19 K3 ["size"]
  GETIMPORT R20 K53 [UDim2.new]
  CALL R20 0 1
  SETTABLEKS R20 R19 K47 ["pos"]
  SETTABLEKS R4 R19 K48 ["isExpanded"]
  GETTABLEKS R20 R0 K54 ["onSummaryButton"]
  SETTABLEKS R20 R19 K49 ["onButtonPress"]
  LOADN R20 1
  SETTABLEKS R20 R19 K1 ["layoutOrder"]
  DUPTABLE R20 K56 [{"Text"}]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K21 ["createElement"]
  LOADK R22 K57 ["TextLabel"]
  DUPTABLE R23 K63 [{"Text", "TextColor3", "TextXAlignment", "TextSize", "Font", "Size", "Position", "BackgroundTransparency"}]
  LOADK R24 K30 ["Summary"]
  SETTABLEKS R24 R23 K55 ["Text"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K64 ["Color"]
  GETTABLEKS R24 R25 K55 ["Text"]
  SETTABLEKS R24 R23 K58 ["TextColor3"]
  GETIMPORT R24 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K59 ["TextXAlignment"]
  GETUPVAL R24 7
  SETTABLEKS R24 R23 K60 ["TextSize"]
  GETUPVAL R24 8
  SETTABLEKS R24 R23 K61 ["Font"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 226
  LOADN R27 0
  GETUPVAL R28 1
  CALL R24 4 1
  SETTABLEKS R24 R23 K23 ["Size"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 0
  LOADN R26 30
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K62 ["Position"]
  LOADN R24 1
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K55 ["Text"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K29 ["SummaryButton"]
  MOVE R17 R4
  JUMPIFNOT R17 [+13]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K67 [{"width", "httpSummaryTable", "layoutOrder"}]
  SETTABLEKS R10 R19 K66 ["width"]
  SETTABLEKS R7 R19 K8 ["httpSummaryTable"]
  LOADN R20 2
  SETTABLEKS R20 R19 K1 ["layoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K30 ["Summary"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K50 [{"size", "pos", "isExpanded", "onButtonPress", "layoutOrder"}]
  GETIMPORT R20 K53 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETUPVAL R24 1
  CALL R20 4 1
  SETTABLEKS R20 R19 K3 ["size"]
  GETIMPORT R20 K53 [UDim2.new]
  CALL R20 0 1
  SETTABLEKS R20 R19 K47 ["pos"]
  SETTABLEKS R5 R19 K48 ["isExpanded"]
  GETTABLEKS R20 R0 K68 ["onDetailButton"]
  SETTABLEKS R20 R19 K49 ["onButtonPress"]
  LOADN R20 3
  SETTABLEKS R20 R19 K1 ["layoutOrder"]
  DUPTABLE R20 K56 [{"Text"}]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K21 ["createElement"]
  LOADK R22 K57 ["TextLabel"]
  DUPTABLE R23 K63 [{"Text", "TextColor3", "TextXAlignment", "TextSize", "Font", "Size", "Position", "BackgroundTransparency"}]
  LOADK R24 K69 ["Details"]
  SETTABLEKS R24 R23 K55 ["Text"]
  GETUPVAL R26 6
  GETTABLEKS R25 R26 K64 ["Color"]
  GETTABLEKS R24 R25 K55 ["Text"]
  SETTABLEKS R24 R23 K58 ["TextColor3"]
  GETIMPORT R24 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K59 ["TextXAlignment"]
  GETUPVAL R24 7
  SETTABLEKS R24 R23 K60 ["TextSize"]
  GETUPVAL R24 8
  SETTABLEKS R24 R23 K61 ["Font"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 226
  LOADN R27 0
  GETUPVAL R28 1
  CALL R24 4 1
  SETTABLEKS R24 R23 K23 ["Size"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 0
  LOADN R26 30
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K62 ["Position"]
  LOADN R24 1
  SETTABLEKS R24 R23 K24 ["BackgroundTransparency"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K55 ["Text"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["DetailsButton"]
  MOVE R17 R5
  JUMPIFNOT R17 [+23]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 10
  DUPTABLE R19 K72 [{"httpEntryList", "chartHeight", "width", "searchTerm", "reverseSort", "layoutOrder", "onSortChanged"}]
  SETTABLEKS R8 R19 K9 ["httpEntryList"]
  SETTABLEKS R12 R19 K70 ["chartHeight"]
  SETTABLEKS R10 R19 K66 ["width"]
  SETTABLEKS R2 R19 K2 ["searchTerm"]
  SETTABLEKS R6 R19 K7 ["reverseSort"]
  LOADN R20 4
  SETTABLEKS R20 R19 K1 ["layoutOrder"]
  GETTABLEKS R20 R0 K71 ["onSortChanged"]
  SETTABLEKS R20 R19 K71 ["onSortChanged"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Entries"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["NetworkFormatting"]
  GETTABLEKS R3 R4 K13 ["HeaderFrameHeight"]
  GETTABLEKS R5 R2 K12 ["NetworkFormatting"]
  GETTABLEKS R4 R5 K14 ["EntryFrameHeight"]
  GETTABLEKS R6 R2 K12 ["NetworkFormatting"]
  GETTABLEKS R5 R6 K15 ["SummaryButtonHeight"]
  GETTABLEKS R7 R2 K12 ["NetworkFormatting"]
  GETTABLEKS R6 R7 K16 ["MinFrameWidth"]
  GETTABLEKS R8 R2 K17 ["DefaultFontSize"]
  GETTABLEKS R7 R8 K18 ["MainWindow"]
  GETTABLEKS R9 R2 K19 ["Font"]
  GETTABLEKS R8 R9 K20 ["MainWindowHeader"]
  GETIMPORT R13 K9 [script]
  GETTABLEKS R12 R13 K10 ["Parent"]
  GETTABLEKS R11 R12 K10 ["Parent"]
  GETTABLEKS R10 R11 K10 ["Parent"]
  GETTABLEKS R9 R10 K21 ["Components"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R9 K22 ["BannerButton"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R9 K23 ["Network"]
  GETTABLEKS R12 R13 K24 ["NetworkSummary"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R9 K23 ["Network"]
  GETTABLEKS R13 R14 K25 ["NetworkChart"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K26 ["Component"]
  LOADK R15 K27 ["NetworkView"]
  NAMECALL R13 R13 K28 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K29 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K30 ["init"]
  DUPCLOSURE R14 K31 [PROTO_4]
  SETTABLEKS R14 R13 K32 ["didUpdate"]
  DUPCLOSURE R14 K33 [PROTO_6]
  SETTABLEKS R14 R13 K34 ["didMount"]
  DUPCLOSURE R14 K35 [PROTO_7]
  SETTABLEKS R14 R13 K36 ["willUnmount"]
  DUPCLOSURE R14 K37 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K38 ["render"]
  RETURN R13 1
