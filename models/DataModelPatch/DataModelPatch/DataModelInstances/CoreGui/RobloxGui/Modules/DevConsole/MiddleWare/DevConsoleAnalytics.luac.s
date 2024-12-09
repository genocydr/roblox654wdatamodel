PROTO_0:
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+39]
  NAMECALL R4 R0 K2 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["DisplayOptions"]
  GETTABLEKS R2 R3 K4 ["isVisible"]
  NAMECALL R5 R0 K2 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K3 ["DisplayOptions"]
  GETTABLEKS R3 R4 K5 ["visibleStartTime"]
  GETTABLEKS R4 R1 K4 ["isVisible"]
  JUMPIFEQ R4 R2 [+21]
  GETTABLEKS R4 R1 K4 ["isVisible"]
  JUMPIFNOT R4 [+7]
  GETUPVAL R4 1
  LOADK R6 K6 ["DevConsoleStartVisible"]
  LOADN R7 1
  NAMECALL R4 R4 K7 ["ReportCounter"]
  CALL R4 3 0
  RETURN R0 0
  GETIMPORT R5 K9 [tick]
  CALL R5 0 1
  SUB R4 R5 R3
  GETUPVAL R5 1
  LOADK R7 K10 ["DevConsoleSessionTime"]
  MOVE R8 R4
  NAMECALL R5 R5 K11 ["ReportStats"]
  CALL R5 3 0
  RETURN R0 0

PROTO_1:
  JUMPIFEQKNIL R1 [+11]
  GETIMPORT R2 K2 [string.format]
  LOADK R3 K3 ["%s_%s"]
  MOVE R4 R0
  JUMPIFNOT R1 [+2]
  LOADK R5 K4 ["Client"]
  JUMP [+1]
  LOADK R5 K5 ["Server"]
  CALL R2 3 -1
  RETURN R2 -1
  GETIMPORT R2 K2 [string.format]
  LOADK R3 K6 ["%s"]
  MOVE R4 R0
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+23]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["join"]
  DUPTABLE R2 K3 [{"placeId", "calledFrom"}]
  GETIMPORT R4 K5 [game]
  GETTABLEKS R3 R4 K6 ["PlaceId"]
  SETTABLEKS R3 R2 K1 ["placeId"]
  LOADK R3 K7 ["devConsoleTabChange"]
  SETTABLEKS R3 R2 K2 ["calledFrom"]
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 2
  LOADK R4 K8 ["devConsoleMetric"]
  MOVE R5 R1
  GETUPVAL R6 3
  NAMECALL R2 R2 K9 ["ReportInfluxSeries"]
  CALL R2 4 0
  RETURN R0 0
  GETUPVAL R1 2
  LOADK R3 K10 ["client"]
  LOADK R4 K8 ["devConsoleMetric"]
  LOADK R5 K7 ["devConsoleTabChange"]
  MOVE R6 R0
  NAMECALL R1 R1 K11 ["SendEventImmediately"]
  CALL R1 5 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+42]
  NAMECALL R3 R0 K2 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["MainView"]
  GETTABLEKS R3 R1 K4 ["newTabIndex"]
  GETTABLEKS R4 R1 K5 ["isClientView"]
  GETTABLEKS R5 R2 K6 ["currTabIndex"]
  JUMPIFNOTEQ R3 R5 [+7]
  JUMPIFEQKNIL R4 [+143]
  GETTABLEKS R5 R2 K5 ["isClientView"]
  JUMPIFEQ R4 R5 [+139]
  DUPTABLE R5 K9 [{"initTab", "endTab"}]
  GETGLOBAL R6 K10 ["getTabAnalyticsKeyName"]
  GETTABLEKS R7 R2 K6 ["currTabIndex"]
  GETTABLEKS R8 R2 K5 ["isClientView"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["initTab"]
  GETGLOBAL R6 K10 ["getTabAnalyticsKeyName"]
  MOVE R7 R3
  MOVE R8 R4
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["endTab"]
  GETGLOBAL R6 K11 ["dispatchTabAnalytics"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+61]
  NAMECALL R3 R0 K2 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["MainView"]
  NAMECALL R4 R0 K2 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["DisplayOptions"]
  LOADNIL R4
  GETTABLEKS R5 R1 K13 ["isVisible"]
  JUMPIFNOT R5 [+15]
  DUPTABLE R5 K9 [{"initTab", "endTab"}]
  LOADK R6 K14 ["StartVisible"]
  SETTABLEKS R6 R5 K7 ["initTab"]
  GETGLOBAL R6 K10 ["getTabAnalyticsKeyName"]
  GETTABLEKS R7 R2 K6 ["currTabIndex"]
  GETTABLEKS R8 R2 K5 ["isClientView"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["endTab"]
  MOVE R4 R5
  JUMP [+26]
  GETTABLEKS R5 R3 K15 ["isMinimized"]
  JUMPIFNOT R5 [+9]
  DUPTABLE R5 K9 [{"initTab", "endTab"}]
  LOADK R6 K16 ["Minimized"]
  SETTABLEKS R6 R5 K7 ["initTab"]
  LOADK R6 K17 ["EndVisible"]
  SETTABLEKS R6 R5 K8 ["endTab"]
  MOVE R4 R5
  JUMP [+14]
  DUPTABLE R5 K9 [{"initTab", "endTab"}]
  GETGLOBAL R6 K10 ["getTabAnalyticsKeyName"]
  GETTABLEKS R7 R2 K6 ["currTabIndex"]
  GETTABLEKS R8 R2 K5 ["isClientView"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["initTab"]
  LOADK R6 K17 ["EndVisible"]
  SETTABLEKS R6 R5 K8 ["endTab"]
  MOVE R4 R5
  GETGLOBAL R5 K11 ["dispatchTabAnalytics"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+43]
  NAMECALL R3 R0 K2 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["MainView"]
  LOADNIL R3
  GETTABLEKS R4 R1 K15 ["isMinimized"]
  JUMPIFNOT R4 [+15]
  DUPTABLE R4 K9 [{"initTab", "endTab"}]
  GETGLOBAL R5 K10 ["getTabAnalyticsKeyName"]
  GETTABLEKS R6 R2 K6 ["currTabIndex"]
  GETTABLEKS R7 R2 K5 ["isClientView"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["initTab"]
  LOADK R5 K16 ["Minimized"]
  SETTABLEKS R5 R4 K8 ["endTab"]
  MOVE R3 R4
  JUMP [+14]
  DUPTABLE R4 K9 [{"initTab", "endTab"}]
  LOADK R5 K16 ["Minimized"]
  SETTABLEKS R5 R4 K7 ["initTab"]
  GETGLOBAL R5 K10 ["getTabAnalyticsKeyName"]
  GETTABLEKS R6 R2 K6 ["currTabIndex"]
  GETTABLEKS R7 R2 K5 ["isClientView"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["endTab"]
  MOVE R3 R4
  GETGLOBAL R4 K11 ["dispatchTabAnalytics"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  GETGLOBAL R1 K0 ["ReportTabChange"]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 0
  GETGLOBAL R1 K1 ["ReportDevConsoleOpenClose"]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETTABLEKS R4 R5 K13 ["SetActiveTab"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R9 K10 [script]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Actions"]
  GETTABLEKS R5 R6 K14 ["SetDevConsoleVisibility"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETIMPORT R10 K10 [script]
  GETTABLEKS R9 R10 K11 ["Parent"]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K12 ["Actions"]
  GETTABLEKS R6 R7 K15 ["SetDevConsoleMinimized"]
  CALL R5 1 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K16 ["ReportDevConsoleTabEventsThrottleHundredthsPercent"]
  LOADN R9 0
  NAMECALL R6 R6 K17 ["DefineFastInt"]
  CALL R6 3 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K18 ["DevConsoleUseThrottledMetrics"]
  LOADB R10 0
  NAMECALL R7 R7 K19 ["DefineFastFlag"]
  CALL R7 3 1
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETGLOBAL R8 K21 ["ReportDevConsoleOpenClose"]
  DUPCLOSURE R8 K22 [PROTO_1]
  SETGLOBAL R8 K23 ["getTabAnalyticsKeyName"]
  DUPCLOSURE R8 K24 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETGLOBAL R8 K25 ["dispatchTabAnalytics"]
  DUPCLOSURE R8 K26 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETGLOBAL R8 K27 ["ReportTabChange"]
  DUPCLOSURE R8 K28 [PROTO_5]
  RETURN R8 1
