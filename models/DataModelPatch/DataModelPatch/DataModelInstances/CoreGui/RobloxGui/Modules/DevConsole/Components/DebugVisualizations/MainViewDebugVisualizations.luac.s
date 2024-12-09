PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"utilTabHeight"}]
  SETTABLEKS R0 R3 K0 ["utilTabHeight"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R2 0 0
  SETTABLE R1 R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["dispatchDebugVisualizationsUpdateSearchFilter"]
  LOADNIL R4
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchDebugVisualizationsUpdateSearchFilter"]
  MOVE R2 R0
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onUtilTabHeightChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onCheckBoxChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onSearchTermChanged"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["utilRef"]
  DUPTABLE R1 K6 [{"utilTabHeight"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["utilTabHeight"]
  SETTABLEKS R1 R0 K7 ["state"]
  RETURN R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["size"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["formFactor"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["tabList"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["debugVisualizationsSearchTerm"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["debugVisualizationsTypeFilters"]
  GETTABLEKS R7 R0 K6 ["state"]
  GETTABLEKS R6 R7 K7 ["utilTabHeight"]
  NEWTABLE R7 0 0
  GETIMPORT R8 K9 [ipairs]
  GETUPVAL R9 0
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLE R13 R5 R12
  JUMPIFNOTEQKNIL R13 [+2]
  LOADB R13 0
  DUPTABLE R14 K11 [{"name", "state"}]
  SETTABLEKS R12 R14 K10 ["name"]
  SETTABLEKS R13 R14 K6 ["state"]
  SETTABLE R14 R7 R11
  FORGLOOP R8 2 [inext] [-11]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["createElement"]
  LOADK R9 K13 ["Frame"]
  DUPTABLE R10 K18 [{"Size", "BackgroundColor3", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R1 R10 K14 ["Size"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K19 ["Color"]
  GETTABLEKS R11 R12 K20 ["BaseGray"]
  SETTABLEKS R11 R10 K15 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K16 ["BackgroundTransparency"]
  LOADN R11 3
  SETTABLEKS R11 R10 K17 ["LayoutOrder"]
  DUPTABLE R11 K24 [{"UIListLayout", "UtilAndTab", "DebugVisualizations"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K21 ["UIListLayout"]
  DUPTABLE R14 K27 [{"Padding", "SortOrder"}]
  GETIMPORT R15 K30 [UDim.new]
  LOADN R16 0
  GETUPVAL R17 3
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Padding"]
  GETIMPORT R15 K32 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K26 ["SortOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["UIListLayout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K41 [{"windowWidth", "formFactor", "tabList", "orderedCheckBoxState", "searchTerm", "layoutOrder", "refForParent", "onHeightChanged", "onCheckBoxChanged", "onSearchTermChanged"}]
  GETTABLEKS R16 R1 K42 ["X"]
  GETTABLEKS R15 R16 K43 ["Offset"]
  SETTABLEKS R15 R14 K33 ["windowWidth"]
  SETTABLEKS R2 R14 K2 ["formFactor"]
  SETTABLEKS R3 R14 K3 ["tabList"]
  SETTABLEKS R7 R14 K34 ["orderedCheckBoxState"]
  SETTABLEKS R4 R14 K35 ["searchTerm"]
  LOADN R15 1
  SETTABLEKS R15 R14 K36 ["layoutOrder"]
  GETTABLEKS R15 R0 K44 ["utilRef"]
  SETTABLEKS R15 R14 K37 ["refForParent"]
  GETTABLEKS R15 R0 K45 ["onUtilTabHeightChanged"]
  SETTABLEKS R15 R14 K38 ["onHeightChanged"]
  GETTABLEKS R15 R0 K39 ["onCheckBoxChanged"]
  SETTABLEKS R15 R14 K39 ["onCheckBoxChanged"]
  GETTABLEKS R15 R0 K40 ["onSearchTermChanged"]
  SETTABLEKS R15 R14 K40 ["onSearchTermChanged"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["UtilAndTab"]
  LOADB R12 0
  LOADN R13 0
  JUMPIFNOTLT R13 R6 [+23]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K47 [{"size", "searchTerm", "typeFilters", "layoutOrder"}]
  GETIMPORT R15 K49 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  MINUS R19 R6
  CALL R15 4 1
  SETTABLEKS R15 R14 K1 ["size"]
  SETTABLEKS R4 R14 K35 ["searchTerm"]
  SETTABLEKS R5 R14 K46 ["typeFilters"]
  LOADN R15 2
  SETTABLEKS R15 R14 K36 ["layoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["DebugVisualizations"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_7:
  DUPTABLE R2 K2 [{"debugVisualizationsSearchTerm", "debugVisualizationsTypeFilters"}]
  GETTABLEKS R4 R0 K3 ["DebugVisualizationsData"]
  GETTABLEKS R3 R4 K0 ["debugVisualizationsSearchTerm"]
  SETTABLEKS R3 R2 K0 ["debugVisualizationsSearchTerm"]
  GETTABLEKS R4 R0 K3 ["DebugVisualizationsData"]
  GETTABLEKS R3 R4 K1 ["debugVisualizationsTypeFilters"]
  SETTABLEKS R3 R2 K1 ["debugVisualizationsTypeFilters"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"dispatchDebugVisualizationsUpdateSearchFilter"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchDebugVisualizationsUpdateSearchFilter"]
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
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K12 ["Components"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K13 ["DebugVisualizations"]
  GETTABLEKS R5 R6 K14 ["DebugVisualizationsChart"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K15 ["UtilAndTab"]
  CALL R5 1 1
  GETIMPORT R10 K10 [script]
  GETTABLEKS R9 R10 K11 ["Parent"]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K16 ["Actions"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K17 ["DebugVisualizationsUpdateSearchFilter"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R13 K10 [script]
  GETTABLEKS R12 R13 K11 ["Parent"]
  GETTABLEKS R11 R12 K11 ["Parent"]
  GETTABLEKS R10 R11 K11 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K19 ["GeneralFormatting"]
  GETTABLEKS R9 R10 K20 ["MainRowPadding"]
  NEWTABLE R10 0 6
  LOADK R11 K21 ["Performance"]
  LOADK R12 K22 ["Behavior"]
  LOADK R13 K23 ["Constraints"]
  LOADK R14 K24 ["Forces"]
  LOADK R15 K25 ["Networking"]
  LOADK R16 K26 ["Collision"]
  SETLIST R10 R11 6 [1]
  GETTABLEKS R11 R1 K27 ["Component"]
  LOADK R13 K28 ["MainViewDebugVisualizations"]
  NAMECALL R11 R11 K29 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K30 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K31 ["init"]
  DUPCLOSURE R12 K32 [PROTO_4]
  SETTABLEKS R12 R11 K33 ["didMount"]
  DUPCLOSURE R12 K34 [PROTO_5]
  SETTABLEKS R12 R11 K35 ["didUpdate"]
  DUPCLOSURE R12 K36 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K37 ["render"]
  DUPCLOSURE R12 K38 [PROTO_7]
  DUPCLOSURE R13 K39 [PROTO_9]
  CAPTURE VAL R7
  GETTABLEKS R14 R2 K40 ["UNSTABLE_connect2"]
  MOVE R15 R12
  MOVE R16 R13
  CALL R14 2 1
  MOVE R15 R11
  CALL R14 1 -1
  RETURN R14 -1
