PROTO_0:
  GETTABLEKS R1 R0 K0 ["time"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["data"]
  RETURN R1 1

PROTO_2:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["%.3f"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["expandIndex"]
  GETUPVAL R3 1
  JUMPIFEQ R2 R3 [+30]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+27]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["scrollingRef"]
  GETTABLEKS R2 R3 K3 ["current"]
  JUMPIFNOT R2 [+21]
  GETUPVAL R5 2
  SUBK R4 R5 K4 [2.4]
  GETUPVAL R5 3
  MUL R3 R4 R5
  GETUPVAL R4 4
  MOVE R6 R2
  GETUPVAL R7 5
  DUPTABLE R8 K6 [{"CanvasPosition"}]
  GETIMPORT R9 K9 [Vector2.new]
  LOADN R10 0
  MOVE R11 R3
  CALL R9 2 1
  SETTABLEKS R9 R8 K5 ["CanvasPosition"]
  NAMECALL R4 R4 K10 ["Create"]
  CALL R4 4 1
  NAMECALL R4 R4 K11 ["Play"]
  CALL R4 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K12 [{"expandIndex"}]
  LOADB R5 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["state"]
  GETTABLEKS R6 R7 K1 ["expandIndex"]
  GETUPVAL R7 1
  JUMPIFEQ R6 R7 [+2]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K1 ["expandIndex"]
  NAMECALL R2 R2 K13 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  RETURN R2 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["targetMemoryData"]
  NAMECALL R1 R1 K1 ["getSortType"]
  CALL R1 1 1
  JUMPIFNOTEQ R0 R1 [+24]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["targetMemoryData"]
  MOVE R4 R0
  NAMECALL R2 R2 K2 ["setSortType"]
  CALL R2 2 0
  GETUPVAL R2 2
  DUPTABLE R4 K4 [{"reverseSort"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["state"]
  GETTABLEKS R6 R7 K3 ["reverseSort"]
  NOT R5 R6
  SETTABLEKS R5 R4 K3 ["reverseSort"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["targetMemoryData"]
  MOVE R4 R0
  NAMECALL R2 R2 K2 ["setSortType"]
  CALL R2 2 0
  GETUPVAL R2 2
  DUPTABLE R4 K4 [{"reverseSort"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["reverseSort"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETTABLEKS R0 R1 K2 ["CanvasPosition"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K4 ["canvasPos"]
  JUMPIFEQ R1 R0 [+17]
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"absScrollSize", "canvasPos"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["scrollingRef"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K7 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K5 ["absScrollSize"]
  SETTABLEKS R0 R3 K4 ["canvasPos"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K0 ["getOnButtonPress"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["onSortChanged"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K2 ["onCanvasPosChanged"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K4 ["scrollingRef"]
  DUPTABLE R2 K8 [{"memoryData", "reverseSort", "expandIndex"}]
  GETTABLEKS R3 R1 K9 ["targetMemoryData"]
  NAMECALL R3 R3 K10 ["getMemoryData"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["memoryData"]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["reverseSort"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["expandIndex"]
  SETTABLEKS R2 R0 K11 ["state"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["canvasPosConnector"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["canvasPosConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+15]
  GETTABLEKS R2 R0 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  LOADK R3 K2 ["CanvasPosition"]
  NAMECALL R1 R1 K3 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  GETTABLEKS R4 R0 K4 ["onCanvasPosChanged"]
  NAMECALL R2 R1 K5 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K6 ["canvasPosConnector"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"memoryData"}]
  SETTABLEKS R0 R3 K0 ["memoryData"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["targetMemoryData"]
  NAMECALL R1 R1 K2 ["treeUpdatedSignal"]
  CALL R1 1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R1 K3 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["treeViewItemConnector"]
  GETTABLEKS R3 R0 K5 ["scrollingRef"]
  GETTABLEKS R2 R3 K6 ["current"]
  JUMPIFNOT R2 [+35]
  GETTABLEKS R3 R0 K5 ["scrollingRef"]
  GETTABLEKS R2 R3 K6 ["current"]
  LOADK R4 K7 ["CanvasPosition"]
  NAMECALL R2 R2 K8 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  GETTABLEKS R5 R0 K9 ["onCanvasPosChanged"]
  NAMECALL R3 R2 K3 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K10 ["canvasPosConnector"]
  DUPTABLE R5 K13 [{"absScrollSize", "canvasPos"}]
  GETTABLEKS R8 R0 K5 ["scrollingRef"]
  GETTABLEKS R7 R8 K6 ["current"]
  GETTABLEKS R6 R7 K14 ["AbsoluteSize"]
  SETTABLEKS R6 R5 K11 ["absScrollSize"]
  GETTABLEKS R8 R0 K5 ["scrollingRef"]
  GETTABLEKS R7 R8 K6 ["current"]
  GETTABLEKS R6 R7 K7 ["CanvasPosition"]
  SETTABLEKS R6 R5 K12 ["canvasPos"]
  NAMECALL R3 R0 K15 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["treeViewItemConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R8 R0 K0 ["scrollingRef"]
  GETTABLEKS R7 R8 K1 ["current"]
  GETTABLEKS R6 R7 K2 ["CanvasPosition"]
  GETTABLEKS R9 R0 K0 ["scrollingRef"]
  GETTABLEKS R8 R9 K1 ["current"]
  GETTABLEKS R7 R8 K3 ["AbsoluteSize"]
  GETIMPORT R8 K5 [ipairs]
  MOVE R9 R2
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R13 R12 K6 ["name"]
  GETTABLEKS R14 R12 K7 ["value"]
  MOVE R16 R3
  MOVE R17 R13
  CONCAT R15 R16 R17
  GETTABLEKS R17 R5 K9 ["layoutOrder"]
  ADDK R16 R17 K8 [1]
  SETTABLEKS R16 R5 K9 ["layoutOrder"]
  GETTABLEKS R17 R5 K10 ["scrollingFrameHeight"]
  GETUPVAL R18 0
  ADD R16 R17 R18
  GETTABLEKS R17 R6 K11 ["Y"]
  JUMPIFNOTLE R17 R16 [+58]
  GETTABLEKS R16 R5 K12 ["usedFrameSpace"]
  GETTABLEKS R17 R7 K11 ["Y"]
  JUMPIFNOTLT R16 R17 [+52]
  MOVE R17 R3
  MOVE R18 R13
  CONCAT R16 R17 R18
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K13 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K18 [{"size", "depth", "name", "showGraph", "value", "formatValueStr", "layoutOrder"}]
  GETIMPORT R20 K21 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETUPVAL R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K14 ["size"]
  SETTABLEKS R4 R19 K15 ["depth"]
  SETTABLEKS R13 R19 K6 ["name"]
  LOADB R20 0
  SETTABLEKS R20 R19 K16 ["showGraph"]
  SETTABLEKS R14 R19 K7 ["value"]
  GETUPVAL R20 3
  SETTABLEKS R20 R19 K17 ["formatValueStr"]
  GETTABLEKS R20 R5 K9 ["layoutOrder"]
  SETTABLEKS R20 R19 K9 ["layoutOrder"]
  CALL R17 2 1
  SETTABLE R17 R1 R16
  GETTABLEKS R17 R5 K22 ["paddingHeight"]
  LOADN R18 0
  JUMPIFNOTLT R17 R18 [+6]
  GETTABLEKS R17 R5 K10 ["scrollingFrameHeight"]
  SETTABLEKS R17 R5 K22 ["paddingHeight"]
  JUMP [+6]
  GETTABLEKS R18 R5 K12 ["usedFrameSpace"]
  GETUPVAL R19 0
  ADD R17 R18 R19
  SETTABLEKS R17 R5 K12 ["usedFrameSpace"]
  GETTABLEKS R17 R5 K10 ["scrollingFrameHeight"]
  GETUPVAL R18 0
  ADD R16 R17 R18
  SETTABLEKS R16 R5 K10 ["scrollingFrameHeight"]
  GETTABLEKS R16 R12 K23 ["moreInfo"]
  JUMPIFNOT R16 [+17]
  GETTABLEKS R17 R12 K23 ["moreInfo"]
  FASTCALL1 TYPE R17 [+2]
  GETIMPORT R16 K25 [type]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K26 ["table"] [+10]
  MOVE R18 R1
  GETTABLEKS R19 R12 K23 ["moreInfo"]
  MOVE R20 R15
  ADDK R21 R4 K8 [1]
  MOVE R22 R5
  NAMECALL R16 R0 K27 ["appendAdditionTabInformation"]
  CALL R16 6 0
  FORGLOOP R8 2 [inext] [-104]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R7 R0 K0 ["scrollingRef"]
  GETTABLEKS R6 R7 K1 ["current"]
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["ScrollingFrame not initialized yet"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K6 ["expandIndex"]
  GETTABLEKS R8 R0 K8 ["props"]
  GETTABLEKS R7 R8 K9 ["searchTerm"]
  ORK R6 R7 K7 [""]
  GETTABLEKS R8 R0 K5 ["state"]
  GETTABLEKS R7 R8 K10 ["reverseSort"]
  GETTABLEKS R10 R0 K0 ["scrollingRef"]
  GETTABLEKS R9 R10 K1 ["current"]
  GETTABLEKS R8 R9 K11 ["CanvasPosition"]
  GETTABLEKS R11 R0 K0 ["scrollingRef"]
  GETTABLEKS R10 R11 K1 ["current"]
  GETTABLEKS R9 R10 K12 ["AbsoluteSize"]
  GETTABLEKS R10 R2 K13 ["name"]
  GETIMPORT R11 K16 [string.find]
  NAMECALL R12 R10 K17 ["lower"]
  CALL R12 1 1
  NAMECALL R13 R6 K17 ["lower"]
  CALL R13 1 -1
  CALL R11 -1 1
  JUMPIFNOT R11 [+117]
  JUMPIFEQ R5 R10 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  JUMPIFNOT R12 [+4]
  GETUPVAL R14 0
  GETUPVAL R15 1
  ADD R13 R14 R15
  JUMPIF R13 [+1]
  GETUPVAL R13 0
  GETTABLEKS R15 R4 K19 ["layoutOrder"]
  ADDK R14 R15 K18 [1]
  SETTABLEKS R14 R4 K19 ["layoutOrder"]
  GETTABLEKS R15 R4 K20 ["scrollingFrameHeight"]
  ADD R14 R15 R13
  GETTABLEKS R15 R8 K21 ["Y"]
  JUMPIFNOTLE R15 R14 [+71]
  GETTABLEKS R14 R4 K22 ["usedFrameSpace"]
  GETTABLEKS R15 R9 K21 ["Y"]
  JUMPIFNOTLT R14 R15 [+65]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K23 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K32 [{"size", "depth", "name", "showGraph", "dataStats", "onButtonPress", "formatValueStr", "getX", "getY", "layoutOrder"}]
  GETIMPORT R17 K35 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  MOVE R21 R13
  CALL R17 4 1
  SETTABLEKS R17 R16 K24 ["size"]
  SETTABLEKS R3 R16 K25 ["depth"]
  GETTABLEKS R17 R2 K13 ["name"]
  SETTABLEKS R17 R16 K13 ["name"]
  SETTABLEKS R12 R16 K26 ["showGraph"]
  GETTABLEKS R17 R2 K27 ["dataStats"]
  SETTABLEKS R17 R16 K27 ["dataStats"]
  GETTABLEKS R17 R0 K36 ["getOnButtonPress"]
  MOVE R18 R10
  GETTABLEKS R19 R4 K19 ["layoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["onButtonPress"]
  GETUPVAL R17 4
  SETTABLEKS R17 R16 K29 ["formatValueStr"]
  GETUPVAL R17 5
  SETTABLEKS R17 R16 K30 ["getX"]
  GETUPVAL R17 6
  SETTABLEKS R17 R16 K31 ["getY"]
  GETTABLEKS R17 R4 K19 ["layoutOrder"]
  SETTABLEKS R17 R16 K19 ["layoutOrder"]
  CALL R14 2 1
  SETTABLE R14 R1 R10
  GETTABLEKS R14 R4 K37 ["paddingHeight"]
  LOADN R15 0
  JUMPIFNOTLT R14 R15 [+6]
  GETTABLEKS R14 R4 K20 ["scrollingFrameHeight"]
  SETTABLEKS R14 R4 K37 ["paddingHeight"]
  JUMP [+5]
  GETTABLEKS R15 R4 K22 ["usedFrameSpace"]
  ADD R14 R15 R13
  SETTABLEKS R14 R4 K22 ["usedFrameSpace"]
  GETTABLEKS R15 R4 K20 ["scrollingFrameHeight"]
  ADD R14 R15 R13
  SETTABLEKS R14 R4 K20 ["scrollingFrameHeight"]
  JUMPIFNOT R12 [+19]
  GETTABLEKS R15 R2 K27 ["dataStats"]
  GETTABLEKS R14 R15 K38 ["additionalInfoFunc"]
  JUMPIFNOT R14 [+14]
  GETTABLEKS R15 R2 K27 ["dataStats"]
  GETTABLEKS R14 R15 K38 ["additionalInfoFunc"]
  CALL R14 0 1
  MOVE R17 R1
  MOVE R18 R14
  GETTABLEKS R19 R2 K13 ["name"]
  ADDK R20 R3 K18 [1]
  MOVE R21 R4
  NAMECALL R15 R0 K39 ["appendAdditionTabInformation"]
  CALL R15 6 0
  GETTABLEKS R13 R2 K27 ["dataStats"]
  GETTABLEKS R12 R13 K40 ["sortedChildren"]
  JUMPIFNOT R12 [+31]
  JUMPIFNOT R7 [+16]
  LENGTH R13 R12
  LOADN R16 1
  MOVE R14 R13
  LOADN R15 1
  FORNPREP R14
  MOVE R19 R1
  SUB R22 R13 R16
  ADDK R21 R22 K18 [1]
  GETTABLE R20 R12 R21
  ADDK R21 R3 K18 [1]
  MOVE R22 R4
  NAMECALL R17 R0 K41 ["recursiveConstructEntries"]
  CALL R17 5 0
  FORNLOOP R14
  RETURN R0 0
  GETIMPORT R13 K43 [ipairs]
  MOVE R14 R12
  CALL R13 1 3
  FORGPREP_INEXT R13
  MOVE R20 R1
  MOVE R21 R17
  ADDK R22 R3 K18 [1]
  MOVE R23 R4
  NAMECALL R18 R0 K41 ["recursiveConstructEntries"]
  CALL R18 5 0
  FORGLOOP R13 2 [inext] [-8]
  RETURN R0 0

PROTO_15:
  NEWTABLE R1 0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["layoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["size"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["searchTerm"]
  ORK R4 R5 K3 [""]
  DUPTABLE R5 K8 [{"scrollingFrameHeight", "paddingHeight", "usedFrameSpace", "layoutOrder"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K5 ["scrollingFrameHeight"]
  LOADN R6 255
  SETTABLEKS R6 R5 K6 ["paddingHeight"]
  LOADN R6 0
  SETTABLEKS R6 R5 K7 ["usedFrameSpace"]
  LOADN R6 1
  SETTABLEKS R6 R5 K1 ["layoutOrder"]
  GETTABLEKS R7 R0 K9 ["scrollingRef"]
  GETTABLEKS R6 R7 K10 ["current"]
  JUMPIFNOT R6 [+65]
  GETIMPORT R6 K12 [ipairs]
  GETTABLEKS R9 R0 K13 ["state"]
  GETTABLEKS R7 R9 K14 ["memoryData"]
  CALL R6 1 3
  FORGPREP_INEXT R6
  MOVE R13 R1
  MOVE R14 R10
  LOADN R15 0
  MOVE R16 R5
  NAMECALL R11 R0 K15 ["recursiveConstructEntries"]
  CALL R11 5 0
  FORGLOOP R6 2 [inext] [-8]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["createElement"]
  LOADK R7 K17 ["UIListLayout"]
  DUPTABLE R8 K22 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R9 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K18 ["FillDirection"]
  GETIMPORT R9 K27 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K19 ["HorizontalAlignment"]
  GETIMPORT R9 K29 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K20 ["VerticalAlignment"]
  GETIMPORT R9 K31 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K21 ["SortOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R1 K17 ["UIListLayout"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["createElement"]
  LOADK R7 K32 ["Frame"]
  DUPTABLE R8 K35 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R5 K6 ["paddingHeight"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K33 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K34 ["BackgroundTransparency"]
  LOADN R9 1
  SETTABLEKS R9 R8 K30 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R1 K39 ["WindowingPadding"]
  GETTABLEKS R6 R5 K1 ["layoutOrder"]
  JUMPIFNOTEQKN R6 K40 [1] [+90]
  JUMPIFNOTEQKS R4 K3 [""] [+43]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["createElement"]
  LOADK R7 K41 ["TextLabel"]
  DUPTABLE R8 K45 [{"Size", "Position", "Text", "TextColor3", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K33 ["Size"]
  GETIMPORT R9 K38 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K42 ["Position"]
  LOADK R9 K46 ["Awaiting Memory Stats"]
  SETTABLEKS R9 R8 K43 ["Text"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K47 ["Color"]
  GETTABLEKS R9 R10 K43 ["Text"]
  SETTABLEKS R9 R8 K44 ["TextColor3"]
  LOADN R9 1
  SETTABLEKS R9 R8 K34 ["BackgroundTransparency"]
  SETTABLEKS R2 R8 K30 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R1 K48 ["noDataMessage"]
  JUMP [+45]
  GETIMPORT R6 K51 [string.format]
  GETUPVAL R7 2
  MOVE R8 R4
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["createElement"]
  LOADK R8 K41 ["TextLabel"]
  DUPTABLE R9 K45 [{"Size", "Position", "Text", "TextColor3", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R10 K38 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K33 ["Size"]
  GETIMPORT R10 K38 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K42 ["Position"]
  SETTABLEKS R6 R9 K43 ["Text"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K47 ["Color"]
  GETTABLEKS R10 R11 K43 ["Text"]
  SETTABLEKS R10 R9 K44 ["TextColor3"]
  LOADN R10 1
  SETTABLEKS R10 R9 K34 ["BackgroundTransparency"]
  SETTABLEKS R2 R9 K30 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R1 K48 ["noDataMessage"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["createElement"]
  LOADK R7 K32 ["Frame"]
  DUPTABLE R8 K35 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R3 R8 K33 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K34 ["BackgroundTransparency"]
  SETTABLEKS R2 R8 K30 ["LayoutOrder"]
  DUPTABLE R9 K54 [{"Header", "Entries"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K32 ["Frame"]
  DUPTABLE R12 K55 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETUPVAL R17 3
  CALL R13 4 1
  SETTABLEKS R13 R12 K33 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K34 ["BackgroundTransparency"]
  DUPTABLE R13 K61 [{"Name", "ValueMB", "TopHorizontal", "LowerHorizontal", "vertical"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K65 [{"text", "size", "pos", "sortfunction"}]
  GETUPVAL R18 5
  GETTABLEN R17 R18 1
  SETTABLEKS R17 R16 K62 ["text"]
  GETIMPORT R17 K38 [UDim2.new]
  GETUPVAL R19 6
  SUBRK R18 R40 K19 ["HorizontalAlignment"]
  GETUPVAL R21 7
  MINUS R20 R21
  GETUPVAL R21 8
  SUB R19 R20 R21
  LOADN R20 0
  GETUPVAL R21 3
  CALL R17 4 1
  SETTABLEKS R17 R16 K2 ["size"]
  GETIMPORT R17 K38 [UDim2.new]
  LOADN R18 0
  GETUPVAL R19 8
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K63 ["pos"]
  GETTABLEKS R17 R0 K66 ["onSortChanged"]
  SETTABLEKS R17 R16 K64 ["sortfunction"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K56 ["Name"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K65 [{"text", "size", "pos", "sortfunction"}]
  GETUPVAL R18 5
  GETTABLEN R17 R18 2
  SETTABLEKS R17 R16 K62 ["text"]
  GETIMPORT R17 K38 [UDim2.new]
  GETUPVAL R18 6
  GETUPVAL R20 8
  MINUS R19 R20
  LOADN R20 0
  GETUPVAL R21 3
  CALL R17 4 1
  SETTABLEKS R17 R16 K2 ["size"]
  GETIMPORT R17 K38 [UDim2.new]
  GETUPVAL R19 6
  SUBRK R18 R40 K19 ["HorizontalAlignment"]
  GETUPVAL R19 7
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K63 ["pos"]
  GETTABLEKS R17 R0 K66 ["onSortChanged"]
  SETTABLEKS R17 R16 K64 ["sortfunction"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K57 ["ValueMB"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K16 ["createElement"]
  LOADK R15 K32 ["Frame"]
  DUPTABLE R16 K69 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K38 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 1
  CALL R17 4 1
  SETTABLEKS R17 R16 K33 ["Size"]
  GETUPVAL R17 9
  SETTABLEKS R17 R16 K67 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K68 ["BorderSizePixel"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K58 ["TopHorizontal"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K16 ["createElement"]
  LOADK R15 K32 ["Frame"]
  DUPTABLE R16 K70 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K38 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETUPVAL R21 10
  CALL R17 4 1
  SETTABLEKS R17 R16 K33 ["Size"]
  GETIMPORT R17 K38 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K42 ["Position"]
  GETUPVAL R17 9
  SETTABLEKS R17 R16 K67 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K68 ["BorderSizePixel"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K59 ["LowerHorizontal"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K16 ["createElement"]
  LOADK R15 K32 ["Frame"]
  DUPTABLE R16 K70 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R17 K38 [UDim2.new]
  LOADN R18 0
  GETUPVAL R19 10
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K33 ["Size"]
  GETIMPORT R17 K38 [UDim2.new]
  GETUPVAL R19 6
  SUBRK R18 R40 K19 ["HorizontalAlignment"]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K42 ["Position"]
  GETUPVAL R17 9
  SETTABLEKS R17 R16 K67 ["BackgroundColor3"]
  LOADN R17 0
  SETTABLEKS R17 R16 K68 ["BorderSizePixel"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K60 ["vertical"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K52 ["Header"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K16 ["createElement"]
  LOADK R11 K71 ["ScrollingFrame"]
  NEWTABLE R12 8 0
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  GETUPVAL R18 3
  MINUS R17 R18
  CALL R13 4 1
  SETTABLEKS R13 R12 K33 ["Size"]
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  GETUPVAL R17 3
  CALL R13 4 1
  SETTABLEKS R13 R12 K42 ["Position"]
  LOADN R13 1
  SETTABLEKS R13 R12 K34 ["BackgroundTransparency"]
  LOADN R13 1
  SETTABLEKS R13 R12 K72 ["VerticalScrollBarInset"]
  LOADN R13 5
  SETTABLEKS R13 R12 K73 ["ScrollBarThickness"]
  GETIMPORT R13 K38 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETTABLEKS R17 R5 K5 ["scrollingFrameHeight"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K74 ["CanvasSize"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K75 ["Ref"]
  GETTABLEKS R14 R0 K9 ["scrollingRef"]
  SETTABLE R14 R12 R13
  MOVE R13 R1
  CALL R10 3 1
  SETTABLEKS R10 R9 K53 ["Entries"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TweenService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K12 ["Components"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R3 K13 ["HeaderButton"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K14 ["MemoryViewEntry"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R11 K10 [script]
  GETTABLEKS R10 R11 K11 ["Parent"]
  GETTABLEKS R9 R10 K11 ["Parent"]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  GETTABLEKS R8 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R7 R8 K17 ["LineWidth"]
  GETTABLEKS R9 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R8 R9 K18 ["LineColor"]
  GETTABLEKS R10 R6 K19 ["MemoryFormatting"]
  GETTABLEKS R9 R10 K20 ["ChartHeaderNames"]
  GETTABLEKS R11 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R10 R11 K21 ["HeaderFrameHeight"]
  GETTABLEKS R12 R6 K19 ["MemoryFormatting"]
  GETTABLEKS R11 R12 K22 ["ValueCellWidth"]
  GETTABLEKS R13 R6 K19 ["MemoryFormatting"]
  GETTABLEKS R12 R13 K23 ["CellPadding"]
  GETTABLEKS R14 R6 K19 ["MemoryFormatting"]
  GETTABLEKS R13 R14 K24 ["ValuePadding"]
  GETTABLEKS R15 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R14 R15 K25 ["EntryFrameHeight"]
  GETTABLEKS R16 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R15 R16 K26 ["LineGraphHeight"]
  GETTABLEKS R17 R6 K16 ["GeneralFormatting"]
  GETTABLEKS R16 R17 K27 ["NoResultSearchStr"]
  GETIMPORT R17 K1 [game]
  LOADK R19 K28 ["DevConsoleMemorySort"]
  LOADB R20 0
  NAMECALL R17 R17 K29 ["DefineFastFlag"]
  CALL R17 3 1
  GETIMPORT R18 K32 [TweenInfo.new]
  LOADK R19 K33 [0.3]
  GETIMPORT R20 K37 [Enum.EasingStyle.Back]
  GETIMPORT R21 K40 [Enum.EasingDirection.Out]
  LOADN R22 0
  LOADB R23 0
  LOADN R24 0
  CALL R18 6 1
  GETTABLEKS R19 R2 K41 ["Component"]
  LOADK R21 K42 ["MemoryView"]
  NAMECALL R19 R19 K43 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K44 [PROTO_0]
  DUPCLOSURE R21 K45 [PROTO_1]
  DUPCLOSURE R22 K46 [PROTO_2]
  DUPCLOSURE R23 K47 [PROTO_7]
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R2
  SETTABLEKS R23 R19 K48 ["init"]
  DUPCLOSURE R23 K49 [PROTO_8]
  SETTABLEKS R23 R19 K50 ["willUpdate"]
  DUPCLOSURE R23 K51 [PROTO_9]
  SETTABLEKS R23 R19 K52 ["didUpdate"]
  DUPCLOSURE R23 K53 [PROTO_11]
  SETTABLEKS R23 R19 K54 ["didMount"]
  DUPCLOSURE R23 K55 [PROTO_12]
  SETTABLEKS R23 R19 K56 ["willUnmount"]
  DUPCLOSURE R23 K57 [PROTO_13]
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R22
  SETTABLEKS R23 R19 K58 ["appendAdditionTabInformation"]
  DUPCLOSURE R23 K59 [PROTO_14]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R22
  CAPTURE VAL R20
  CAPTURE VAL R21
  SETTABLEKS R23 R19 K60 ["recursiveConstructEntries"]
  DUPCLOSURE R23 K61 [PROTO_15]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R23 R19 K62 ["render"]
  RETURN R19 1
