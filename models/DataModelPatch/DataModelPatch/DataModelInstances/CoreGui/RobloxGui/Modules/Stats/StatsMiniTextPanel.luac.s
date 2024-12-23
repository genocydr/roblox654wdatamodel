PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 0
  SETTABLEKS R0 R1 K2 ["_statType"]
  GETIMPORT R2 K5 [Instance.new]
  LOADK R3 K6 ["Frame"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["_frame"]
  GETTABLEKS R2 R1 K7 ["_frame"]
  LOADK R3 K8 ["StatsMiniTextPanelClass"]
  SETTABLEKS R3 R2 K9 ["Name"]
  GETTABLEKS R2 R1 K7 ["_frame"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["BackgroundTransparency"]
  GETTABLEKS R2 R1 K7 ["_frame"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["TextZIndex"]
  SETTABLEKS R3 R2 K12 ["ZIndex"]
  GETIMPORT R2 K5 [Instance.new]
  LOADK R3 K13 ["TextLabel"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K14 ["_titleLabel"]
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  LOADK R3 K15 ["TitleLabel"]
  SETTABLEKS R3 R2 K9 ["Name"]
  GETIMPORT R2 K5 [Instance.new]
  LOADK R3 K13 ["TextLabel"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K16 ["_valueLabel"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  LOADK R3 K17 ["ValueLabel"]
  SETTABLEKS R3 R2 K9 ["Name"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K18 ["StyleTextWidget"]
  GETTABLEKS R3 R1 K14 ["_titleLabel"]
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K18 ["StyleTextWidget"]
  GETTABLEKS R3 R1 K16 ["_valueLabel"]
  CALL R2 1 0
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K19 ["MiniPanelTitleFontSize"]
  SETTABLEKS R3 R2 K20 ["FontSize"]
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  NAMECALL R3 R1 K21 ["_getTitle"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K22 ["Text"]
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  GETTABLEKS R3 R1 K7 ["_frame"]
  SETTABLEKS R3 R2 K23 ["Parent"]
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K24 ["Size"]
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K25 ["Position"]
  GETTABLEKS R2 R1 K14 ["_titleLabel"]
  GETIMPORT R3 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R3 R2 K27 ["TextXAlignment"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K30 ["MiniPanelValueFontSize"]
  SETTABLEKS R3 R2 K20 ["FontSize"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  LOADK R3 K31 ["0"]
  SETTABLEKS R3 R2 K22 ["Text"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  GETTABLEKS R3 R1 K7 ["_frame"]
  SETTABLEKS R3 R2 K23 ["Parent"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K24 ["Size"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  GETUPVAL R3 5
  SETTABLEKS R3 R2 K25 ["Position"]
  GETTABLEKS R2 R1 K16 ["_valueLabel"]
  GETIMPORT R3 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R3 R2 K27 ["TextXAlignment"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_frame"]
  SETTABLEKS R1 R2 K1 ["ZIndex"]
  GETTABLEKS R2 R0 K2 ["_titleLabel"]
  SETTABLEKS R1 R2 K1 ["ZIndex"]
  SETTABLEKS R1 R0 K1 ["ZIndex"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["TypeToShortName"]
  GETTABLEKS R3 R0 K1 ["_statType"]
  GETTABLE R1 R2 R3
  RETURN R1 1

PROTO_3:
  GETTABLEKS R4 R0 K0 ["_frame"]
  SETTABLEKS R3 R4 K1 ["Position"]
  GETTABLEKS R4 R0 K0 ["_frame"]
  SETTABLEKS R2 R4 K2 ["Size"]
  GETTABLEKS R4 R0 K0 ["_frame"]
  SETTABLEKS R1 R4 K3 ["Parent"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_aggregator"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R2 R0 K0 ["_aggregator"]
  GETTABLEKS R4 R0 K1 ["_listenerId"]
  NAMECALL R2 R2 K2 ["RemoveListener"]
  CALL R2 2 0
  LOADNIL R2
  SETTABLEKS R2 R0 K1 ["_listenerId"]
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["_aggregator"]
  SETTABLEKS R1 R0 K0 ["_aggregator"]
  NAMECALL R2 R0 K3 ["_refreshVisibility"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["frame"]
  SETTABLEKS R1 R2 K1 ["Visible"]
  NAMECALL R2 R0 K2 ["_refreshVisibility"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PerformanceStatsShouldBeVisible"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K1 ["_frame"]
  GETTABLEKS R1 R2 K2 ["Visible"]
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_7:
  NAMECALL R1 R0 K0 ["_shouldBeVisible"]
  CALL R1 1 1
  JUMPIFNOT R1 [+7]
  NAMECALL R1 R0 K1 ["_startListening"]
  CALL R1 1 0
  NAMECALL R1 R0 K2 ["_updateFromAggregator"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K3 ["_stopListening"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_aggregator"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_listenerId"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_aggregator"]
  GETTABLEKS R3 R0 K1 ["_listenerId"]
  NAMECALL R1 R1 K2 ["RemoveListener"]
  CALL R1 2 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_listenerId"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_updateFromAggregator"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_aggregator"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_listenerId"]
  JUMPIFEQKNIL R1 [+2]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_aggregator"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K2 ["AddListener"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["_listenerId"]
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["_refreshVisibility"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  LOADNIL R1
  GETTABLEKS R2 R0 K0 ["_aggregator"]
  JUMPIFEQKNIL R2 [+8]
  GETTABLEKS R2 R0 K0 ["_aggregator"]
  NAMECALL R2 R2 K1 ["GetLatestValue"]
  CALL R2 1 1
  MOVE R1 R2
  JUMP [+1]
  LOADN R1 0
  GETTABLEKS R2 R0 K2 ["_valueLabel"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["FormatTypedValue"]
  MOVE R4 R1
  GETTABLEKS R5 R0 K4 ["_statType"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["Text"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [UDim2.new]
  LOADN R1 0
  LOADN R2 10
  LOADK R3 K3 [0.15]
  LOADN R4 0
  CALL R0 4 1
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 1
  LOADN R3 236
  LOADK R4 K4 [0.4]
  LOADN R5 0
  CALL R1 4 1
  GETIMPORT R2 K2 [UDim2.new]
  LOADN R3 0
  LOADN R4 10
  LOADK R5 K5 [0.55]
  LOADN R6 0
  CALL R2 4 1
  GETIMPORT R3 K2 [UDim2.new]
  LOADN R4 1
  LOADN R5 236
  LOADK R6 K6 [0.3]
  LOADN R7 0
  CALL R3 4 1
  GETIMPORT R4 K8 [game]
  LOADK R6 K9 ["CoreGui"]
  NAMECALL R4 R4 K10 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R9 R4 K13 ["RobloxGui"]
  GETTABLEKS R8 R9 K14 ["Modules"]
  GETTABLEKS R7 R8 K15 ["Stats"]
  GETTABLEKS R6 R7 K16 ["StatsUtils"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R10 R4 K13 ["RobloxGui"]
  GETTABLEKS R9 R10 K14 ["Modules"]
  GETTABLEKS R8 R9 K15 ["Stats"]
  GETTABLEKS R7 R8 K17 ["StatsAggregator"]
  CALL R6 1 1
  NEWTABLE R7 16 0
  SETTABLEKS R7 R7 K18 ["__index"]
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K1 ["new"]
  DUPCLOSURE R8 K20 [PROTO_1]
  SETTABLEKS R8 R7 K21 ["SetZIndex"]
  DUPCLOSURE R8 K22 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K23 ["_getTitle"]
  DUPCLOSURE R8 K24 [PROTO_3]
  SETTABLEKS R8 R7 K25 ["PlaceInParent"]
  DUPCLOSURE R8 K26 [PROTO_4]
  SETTABLEKS R8 R7 K27 ["SetStatsAggregator"]
  DUPCLOSURE R8 K28 [PROTO_5]
  SETTABLEKS R8 R7 K29 ["SetVisible"]
  DUPCLOSURE R8 K30 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K31 ["_shouldBeVisible"]
  DUPCLOSURE R8 K32 [PROTO_7]
  SETTABLEKS R8 R7 K33 ["_refreshVisibility"]
  DUPCLOSURE R8 K34 [PROTO_8]
  SETTABLEKS R8 R7 K35 ["_stopListening"]
  DUPCLOSURE R8 K36 [PROTO_10]
  SETTABLEKS R8 R7 K37 ["_startListening"]
  DUPCLOSURE R8 K38 [PROTO_11]
  SETTABLEKS R8 R7 K39 ["OnPerformanceStatsShouldBeVisibleChanged"]
  DUPCLOSURE R8 K40 [PROTO_12]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K41 ["_updateFromAggregator"]
  RETURN R7 1
