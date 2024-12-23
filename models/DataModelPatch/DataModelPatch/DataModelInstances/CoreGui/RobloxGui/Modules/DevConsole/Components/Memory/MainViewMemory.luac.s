PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["
"]
  CONCAT R1 R2 R4
  SETUPVAL R1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K2 [string.format]
  LOADK R4 K3 ["%s %s %s %3d   %3d"]
  GETIMPORT R5 K5 [string.rep]
  LOADK R6 K6 [" "]
  MOVE R7 R2
  CALL R5 2 1
  MOVE R6 R0
  GETIMPORT R7 K5 [string.rep]
  LOADK R8 K6 [" "]
  SUBRK R10 R7 K2 [string.format]
  LENGTH R11 R0
  SUB R9 R10 R11
  CALL R7 2 1
  GETTABLEKS R8 R1 K8 ["min"]
  GETTABLEKS R9 R1 K9 ["max"]
  CALL R3 6 1
  GETUPVAL R5 0
  MOVE R6 R3
  LOADK R7 K10 ["
"]
  CONCAT R4 R5 R7
  SETUPVAL R4 0
  GETTABLEKS R3 R1 K11 ["children"]
  JUMPIFNOT R3 [+13]
  GETIMPORT R3 K13 [pairs]
  GETTABLEKS R4 R1 K11 ["children"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R8 1
  MOVE R9 R6
  MOVE R10 R7
  ADDK R11 R2 K14 [2]
  CALL R8 3 0
  FORGLOOP R3 2 [-6]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isClientView"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["ClientMemoryData"]
  JUMPIF R0 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["ServerMemoryData"]
  LOADK R1 K4 ["
"]
  NEWCLOSURE R2 P0
  CAPTURE REF R1
  MOVE R3 R1
  LOADK R4 K5 ["Name                                       Min   Max"]
  LOADK R5 K4 ["
"]
  CONCAT R1 R3 R5
  MOVE R3 R1
  LOADK R4 K6 ["----------------------------------------   ---   ---"]
  LOADK R5 K4 ["
"]
  CONCAT R1 R3 R5
  NEWCLOSURE R3 P1
  CAPTURE REF R1
  CAPTURE VAL R3
  MOVE R4 R3
  LOADK R5 K7 ["Memory"]
  GETTABLEKS R7 R0 K8 ["_memoryData"]
  GETTABLEKS R6 R7 K7 ["Memory"]
  LOADN R7 0
  CALL R4 3 0
  GETIMPORT R4 K10 [print]
  MOVE R5 R1
  CALL R4 1 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onAction"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["TextButton"]
  NEWTABLE R3 8 0
  LOADK R4 K2 ["Log"]
  SETTABLEKS R4 R3 K3 ["Text"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["Visible"]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["BorderSizePixel"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Color"]
  GETTABLEKS R4 R5 K7 ["UnselectedGray"]
  SETTABLEKS R4 R3 K8 ["BackgroundColor3"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Color"]
  GETTABLEKS R4 R5 K3 ["Text"]
  SETTABLEKS R4 R3 K9 ["TextColor3"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["Event"]
  GETTABLEKS R4 R5 K11 ["Activated"]
  GETTABLEKS R5 R0 K12 ["onAction"]
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"utilTabHeight"}]
  SETTABLEKS R0 R3 K0 ["utilTabHeight"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isClientView"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isClientView"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isClientView"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isClientView"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["isClientView"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["dispatchClientMemoryUpdateSearchFilter"]
  MOVE R2 R0
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K4 ["dispatchServerMemoryUpdateSearchFilter"]
  MOVE R2 R0
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onUtilTabHeightChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onClientButton"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onServerButton"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onSearchTermChanged"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["utilRef"]
  DUPTABLE R1 K8 [{"utilTabHeight", "isClientView"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["utilTabHeight"]
  LOADB R2 1
  SETTABLEKS R2 R1 K7 ["isClientView"]
  SETTABLEKS R1 R0 K9 ["state"]
  RETURN R0 0

PROTO_10:
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

PROTO_11:
  GETTABLEKS R3 R0 K0 ["utilRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R1 R2 K2 ["Size"]
  GETTABLEKS R3 R1 K3 ["Y"]
  GETTABLEKS R2 R3 K4 ["Offset"]
  GETTABLEKS R4 R0 K5 ["state"]
  GETTABLEKS R3 R4 K6 ["utilTabHeight"]
  JUMPIFEQ R2 R3 [+7]
  DUPTABLE R5 K7 [{"utilTabHeight"}]
  SETTABLEKS R2 R5 K6 ["utilTabHeight"]
  NAMECALL R3 R0 K8 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_12:
  NEWTABLE R1 0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["size"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["isDeveloperView"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["formFactor"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["tabList"]
  GETTABLEKS R7 R0 K5 ["state"]
  GETTABLEKS R6 R7 K6 ["utilTabHeight"]
  GETTABLEKS R8 R0 K5 ["state"]
  GETTABLEKS R7 R8 K7 ["isClientView"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["clientSearchTerm"]
  JUMPIF R8 [+4]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K9 ["serverSearchTerm"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K11 ["UIListLayout"]
  DUPTABLE R11 K14 [{"SortOrder", "Padding"}]
  GETIMPORT R12 K17 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K12 ["SortOrder"]
  GETIMPORT R12 K20 [UDim.new]
  LOADN R13 0
  GETUPVAL R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Padding"]
  CALL R9 2 1
  SETTABLEKS R9 R1 K11 ["UIListLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K29 [{"windowWidth", "formFactor", "tabList", "isClientView", "searchTerm", "layoutOrder", "refForParent", "onHeightChanged", "onClientButton", "onServerButton", "onSearchTermChanged"}]
  GETTABLEKS R13 R2 K30 ["X"]
  GETTABLEKS R12 R13 K31 ["Offset"]
  SETTABLEKS R12 R11 K21 ["windowWidth"]
  SETTABLEKS R4 R11 K3 ["formFactor"]
  SETTABLEKS R5 R11 K4 ["tabList"]
  SETTABLEKS R7 R11 K7 ["isClientView"]
  SETTABLEKS R8 R11 K22 ["searchTerm"]
  LOADN R12 1
  SETTABLEKS R12 R11 K23 ["layoutOrder"]
  GETTABLEKS R12 R0 K32 ["utilRef"]
  SETTABLEKS R12 R11 K24 ["refForParent"]
  GETTABLEKS R12 R0 K33 ["onUtilTabHeightChanged"]
  SETTABLEKS R12 R11 K25 ["onHeightChanged"]
  MOVE R12 R3
  JUMPIFNOT R12 [+2]
  GETTABLEKS R12 R0 K26 ["onClientButton"]
  SETTABLEKS R12 R11 K26 ["onClientButton"]
  MOVE R12 R3
  JUMPIFNOT R12 [+2]
  GETTABLEKS R12 R0 K27 ["onServerButton"]
  SETTABLEKS R12 R11 K27 ["onServerButton"]
  GETTABLEKS R12 R0 K28 ["onSearchTermChanged"]
  SETTABLEKS R12 R11 K28 ["onSearchTermChanged"]
  NEWTABLE R12 0 1
  GETUPVAL R13 3
  JUMPIFNOT R13 [+8]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K34 [{"isClientView"}]
  SETTABLEKS R7 R15 K7 ["isClientView"]
  CALL R13 2 1
  SETLIST R12 R13 1 [1]
  CALL R9 3 1
  SETTABLEKS R9 R1 K35 ["UtilAndTab"]
  LOADN R9 0
  JUMPIFNOTLT R9 R6 [+47]
  JUMPIFNOT R7 [+23]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K36 [{"size", "searchTerm", "layoutOrder"}]
  GETIMPORT R12 K38 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  MINUS R16 R6
  CALL R12 4 1
  SETTABLEKS R12 R11 K1 ["size"]
  SETTABLEKS R8 R11 K22 ["searchTerm"]
  LOADN R12 2
  SETTABLEKS R12 R11 K23 ["layoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R1 K39 ["ClientMemory"]
  JUMP [+22]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K36 [{"size", "searchTerm", "layoutOrder"}]
  GETIMPORT R12 K38 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  MINUS R16 R6
  CALL R12 4 1
  SETTABLEKS R12 R11 K1 ["size"]
  SETTABLEKS R8 R11 K22 ["searchTerm"]
  LOADN R12 2
  SETTABLEKS R12 R11 K23 ["layoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R1 K40 ["ServerMemory"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["createElement"]
  LOADK R10 K41 ["Frame"]
  DUPTABLE R11 K45 [{"Size", "BackgroundColor3", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R2 R11 K42 ["Size"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K46 ["Color"]
  GETTABLEKS R12 R13 K47 ["BaseGray"]
  SETTABLEKS R12 R11 K43 ["BackgroundColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K44 ["BackgroundTransparency"]
  LOADN R12 3
  SETTABLEKS R12 R11 K16 ["LayoutOrder"]
  MOVE R12 R1
  CALL R9 3 -1
  RETURN R9 -1

PROTO_13:
  DUPTABLE R2 K4 [{"clientSearchTerm", "clientTypeFilters", "serverSearchTerm", "serverTypeFilters"}]
  GETTABLEKS R4 R0 K5 ["MemoryData"]
  GETTABLEKS R3 R4 K0 ["clientSearchTerm"]
  SETTABLEKS R3 R2 K0 ["clientSearchTerm"]
  GETTABLEKS R4 R0 K5 ["MemoryData"]
  GETTABLEKS R3 R4 K1 ["clientTypeFilters"]
  SETTABLEKS R3 R2 K1 ["clientTypeFilters"]
  GETTABLEKS R4 R0 K5 ["MemoryData"]
  GETTABLEKS R3 R4 K2 ["serverSearchTerm"]
  SETTABLEKS R3 R2 K2 ["serverSearchTerm"]
  GETTABLEKS R4 R0 K5 ["MemoryData"]
  GETTABLEKS R3 R4 K3 ["serverTypeFilters"]
  SETTABLEKS R3 R2 K3 ["serverTypeFilters"]
  RETURN R2 1

PROTO_14:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K2 [{"dispatchClientMemoryUpdateSearchFilter", "dispatchServerMemoryUpdateSearchFilter"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchClientMemoryUpdateSearchFilter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchServerMemoryUpdateSearchFilter"]
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
  GETTABLEKS R6 R3 K13 ["Memory"]
  GETTABLEKS R5 R6 K14 ["ClientMemory"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K13 ["Memory"]
  GETTABLEKS R6 R7 K15 ["ServerMemory"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K16 ["UtilAndTab"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K17 ["DataConsumer"]
  CALL R7 1 1
  GETIMPORT R12 K10 [script]
  GETTABLEKS R11 R12 K11 ["Parent"]
  GETTABLEKS R10 R11 K11 ["Parent"]
  GETTABLEKS R9 R10 K11 ["Parent"]
  GETTABLEKS R8 R9 K18 ["Actions"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K19 ["ClientMemoryUpdateSearchFilter"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K20 ["ServerMemoryUpdateSearchFilter"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R16 K10 [script]
  GETTABLEKS R15 R16 K11 ["Parent"]
  GETTABLEKS R14 R15 K11 ["Parent"]
  GETTABLEKS R13 R14 K11 ["Parent"]
  GETTABLEKS R12 R13 K21 ["Constants"]
  CALL R11 1 1
  GETTABLEKS R13 R11 K22 ["GeneralFormatting"]
  GETTABLEKS R12 R13 K23 ["MainRowPadding"]
  GETTABLEKS R13 R1 K24 ["Component"]
  LOADK R15 K25 ["LogButton"]
  NAMECALL R13 R13 K26 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K27 [PROTO_3]
  SETTABLEKS R14 R13 K28 ["init"]
  DUPCLOSURE R14 K29 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K30 ["render"]
  MOVE R14 R7
  MOVE R15 R13
  LOADK R16 K31 ["ClientMemoryData"]
  LOADK R17 K32 ["ServerMemoryData"]
  CALL R14 3 1
  MOVE R13 R14
  GETTABLEKS R14 R1 K24 ["Component"]
  LOADK R16 K33 ["MainViewMemory"]
  NAMECALL R14 R14 K26 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K34 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K28 ["init"]
  DUPCLOSURE R15 K35 [PROTO_10]
  SETTABLEKS R15 R14 K36 ["didMount"]
  DUPCLOSURE R15 K37 [PROTO_11]
  SETTABLEKS R15 R14 K38 ["didUpdate"]
  NEWCLOSURE R15 P5
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE REF R13
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R11
  SETTABLEKS R15 R14 K30 ["render"]
  DUPCLOSURE R15 K39 [PROTO_13]
  DUPCLOSURE R16 K40 [PROTO_16]
  CAPTURE VAL R9
  CAPTURE VAL R10
  GETTABLEKS R17 R2 K41 ["UNSTABLE_connect2"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  CLOSEUPVALS R13
  RETURN R17 -1
