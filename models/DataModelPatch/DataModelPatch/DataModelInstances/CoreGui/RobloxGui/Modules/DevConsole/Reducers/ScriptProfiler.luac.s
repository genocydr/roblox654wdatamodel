PROTO_0:
  JUMPIFNOT R0 [+3]
  GETTABLEKS R2 R1 K0 ["client"]
  RETURN R2 1
  GETTABLEKS R2 R1 K1 ["server"]
  RETURN R2 1

PROTO_1:
  JUMPIFNOT R0 [+3]
  GETTABLEKS R3 R1 K0 ["client"]
  JUMP [+2]
  GETTABLEKS R3 R1 K1 ["server"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["JoinDictionaries"]
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 1
  DUPTABLE R5 K3 [{"client", "server"}]
  JUMPIFNOT R0 [+2]
  MOVE R6 R4
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K0 ["client"]
  JUMPIFNOT R0 [+2]
  LOADNIL R6
  JUMP [+1]
  MOVE R6 R4
  SETTABLEKS R6 R5 K1 ["server"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["JoinDictionaries"]
  MOVE R7 R1
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1

PROTO_2:
  MOVE R2 R0
  JUMPIF R2 [+183]
  DUPTABLE R2 K6 [{"isClientView", "usePercentages", "isExporting", "isShowingMobileSettings", "client", "server"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isClientView"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["usePercentages"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["isExporting"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isShowingMobileSettings"]
  DUPTABLE R3 K32 [{"isProfiling", "data", "serializedData", "frequency", "timedProfilingThread", "timedProfilingTimerThread", "timedProfilingDuration", "timedProfilingCountdown", "isFunctionsView", "average", "searchTerm", "searchFilterGraph", "searchFilterFlat", "rootNode", "rootFunc", "rootNodeName", "liveUpdate", "liveUpdateThread", "showPlugins", "pluginOffsets", "showGC", "gcFunctionOffsets", "gcNodeOffsets", "pluginGCOffsets", "expandedNodes"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["isProfiling"]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["data"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["serializedData"]
  LOADN R4 232
  SETTABLEKS R4 R3 K10 ["frequency"]
  LOADNIL R4
  SETTABLEKS R4 R3 K11 ["timedProfilingThread"]
  LOADNIL R4
  SETTABLEKS R4 R3 K12 ["timedProfilingTimerThread"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["timedProfilingDuration"]
  LOADN R4 0
  SETTABLEKS R4 R3 K14 ["timedProfilingCountdown"]
  LOADB R4 0
  SETTABLEKS R4 R3 K15 ["isFunctionsView"]
  LOADN R4 0
  SETTABLEKS R4 R3 K16 ["average"]
  LOADK R4 K33 [""]
  SETTABLEKS R4 R3 K17 ["searchTerm"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K18 ["searchFilterGraph"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K19 ["searchFilterFlat"]
  LOADN R4 0
  SETTABLEKS R4 R3 K20 ["rootNode"]
  LOADN R4 0
  SETTABLEKS R4 R3 K21 ["rootFunc"]
  LOADNIL R4
  SETTABLEKS R4 R3 K22 ["rootNodeName"]
  LOADB R4 0
  SETTABLEKS R4 R3 K23 ["liveUpdate"]
  LOADNIL R4
  SETTABLEKS R4 R3 K24 ["liveUpdateThread"]
  LOADB R4 0
  SETTABLEKS R4 R3 K25 ["showPlugins"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K26 ["pluginOffsets"]
  LOADB R4 0
  SETTABLEKS R4 R3 K27 ["showGC"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K28 ["gcFunctionOffsets"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K29 ["gcNodeOffsets"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K30 ["pluginGCOffsets"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K31 ["expandedNodes"]
  SETTABLEKS R3 R2 K4 ["client"]
  DUPTABLE R3 K32 [{"isProfiling", "data", "serializedData", "frequency", "timedProfilingThread", "timedProfilingTimerThread", "timedProfilingDuration", "timedProfilingCountdown", "isFunctionsView", "average", "searchTerm", "searchFilterGraph", "searchFilterFlat", "rootNode", "rootFunc", "rootNodeName", "liveUpdate", "liveUpdateThread", "showPlugins", "pluginOffsets", "showGC", "gcFunctionOffsets", "gcNodeOffsets", "pluginGCOffsets", "expandedNodes"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["isProfiling"]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["data"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["serializedData"]
  LOADN R4 232
  SETTABLEKS R4 R3 K10 ["frequency"]
  LOADNIL R4
  SETTABLEKS R4 R3 K11 ["timedProfilingThread"]
  LOADNIL R4
  SETTABLEKS R4 R3 K12 ["timedProfilingTimerThread"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["timedProfilingDuration"]
  LOADN R4 0
  SETTABLEKS R4 R3 K14 ["timedProfilingCountdown"]
  LOADB R4 0
  SETTABLEKS R4 R3 K15 ["isFunctionsView"]
  LOADN R4 0
  SETTABLEKS R4 R3 K16 ["average"]
  LOADK R4 K33 [""]
  SETTABLEKS R4 R3 K17 ["searchTerm"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K18 ["searchFilterGraph"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K19 ["searchFilterFlat"]
  LOADN R4 0
  SETTABLEKS R4 R3 K20 ["rootNode"]
  LOADN R4 0
  SETTABLEKS R4 R3 K21 ["rootFunc"]
  LOADNIL R4
  SETTABLEKS R4 R3 K22 ["rootNodeName"]
  LOADB R4 0
  SETTABLEKS R4 R3 K23 ["liveUpdate"]
  LOADNIL R4
  SETTABLEKS R4 R3 K24 ["liveUpdateThread"]
  LOADB R4 0
  SETTABLEKS R4 R3 K25 ["showPlugins"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K26 ["pluginOffsets"]
  LOADB R4 0
  SETTABLEKS R4 R3 K27 ["showGC"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K28 ["gcFunctionOffsets"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K29 ["gcNodeOffsets"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K30 ["pluginGCOffsets"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K31 ["expandedNodes"]
  SETTABLEKS R3 R2 K5 ["server"]
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+33]
  DUPTABLE R3 K6 [{"isClientView", "usePercentages", "isExporting", "isShowingMobileSettings", "client", "server"}]
  GETTABLEKS R4 R1 K0 ["isClientView"]
  SETTABLEKS R4 R3 K0 ["isClientView"]
  GETTABLEKS R4 R1 K1 ["usePercentages"]
  SETTABLEKS R4 R3 K1 ["usePercentages"]
  GETTABLEKS R4 R1 K2 ["isExporting"]
  SETTABLEKS R4 R3 K2 ["isExporting"]
  GETTABLEKS R4 R1 K3 ["isShowingMobileSettings"]
  SETTABLEKS R4 R3 K3 ["isShowingMobileSettings"]
  GETTABLEKS R4 R1 K36 ["clientSessionState"]
  SETTABLEKS R4 R3 K4 ["client"]
  GETTABLEKS R4 R1 K37 ["serverSessionState"]
  SETTABLEKS R4 R3 K5 ["server"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K38 ["JoinDictionaries"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K40 [{"isProfiling"}]
  GETTABLEKS R7 R1 K7 ["isProfiling"]
  SETTABLEKS R7 R6 K7 ["isProfiling"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K41 [{"average"}]
  GETTABLEKS R7 R1 K16 ["average"]
  SETTABLEKS R7 R6 K16 ["average"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K42 [{"frequency"}]
  GETTABLEKS R7 R1 K10 ["frequency"]
  SETTABLEKS R7 R6 K10 ["frequency"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K43 [{"isFunctionsView"}]
  GETTABLEKS R7 R1 K15 ["isFunctionsView"]
  SETTABLEKS R7 R6 K15 ["isFunctionsView"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K44 [{"liveUpdate"}]
  GETTABLEKS R7 R1 K23 ["liveUpdate"]
  SETTABLEKS R7 R6 K23 ["liveUpdate"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K45 [{"showPlugins"}]
  GETTABLEKS R7 R1 K25 ["showPlugins"]
  SETTABLEKS R7 R6 K25 ["showPlugins"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K46 [{"showGC"}]
  GETTABLEKS R7 R1 K27 ["showGC"]
  SETTABLEKS R7 R6 K27 ["showGC"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 10
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+26]
  GETUPVAL R3 3
  GETTABLEKS R4 R1 K39 ["isClient"]
  MOVE R5 R2
  DUPTABLE R6 K47 [{"searchTerm", "searchFilterFlat", "searchFilterGraph"}]
  GETTABLEKS R8 R1 K48 ["state"]
  GETTABLEKS R7 R8 K17 ["searchTerm"]
  SETTABLEKS R7 R6 K17 ["searchTerm"]
  GETTABLEKS R8 R1 K48 ["state"]
  GETTABLEKS R7 R8 K19 ["searchFilterFlat"]
  SETTABLEKS R7 R6 K19 ["searchFilterFlat"]
  GETTABLEKS R8 R1 K48 ["state"]
  GETTABLEKS R7 R8 K18 ["searchFilterGraph"]
  SETTABLEKS R7 R6 K18 ["searchFilterGraph"]
  CALL R3 3 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 11
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+21]
  DUPTABLE R3 K49 [{"timedProfilingDuration", "timedProfilingCountdown"}]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K13 ["timedProfilingDuration"]
  SETTABLEKS R4 R3 K13 ["timedProfilingDuration"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K14 ["timedProfilingCountdown"]
  SETTABLEKS R4 R3 K14 ["timedProfilingCountdown"]
  GETUPVAL R4 3
  GETTABLEKS R5 R1 K39 ["isClient"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 12
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+88]
  GETIMPORT R3 K52 [table.clone]
  GETTABLEKS R5 R1 K39 ["isClient"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K4 ["client"]
  JUMP [+2]
  GETTABLEKS R4 R2 K5 ["server"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K8 ["data"]
  SETTABLEKS R4 R3 K8 ["data"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K9 ["serializedData"]
  SETTABLEKS R4 R3 K9 ["serializedData"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K26 ["pluginOffsets"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K26 ["pluginOffsets"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K30 ["pluginGCOffsets"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K30 ["pluginGCOffsets"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K28 ["gcFunctionOffsets"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K28 ["gcFunctionOffsets"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K29 ["gcNodeOffsets"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K29 ["gcNodeOffsets"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K31 ["expandedNodes"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K31 ["expandedNodes"]
  GETIMPORT R4 K52 [table.clone]
  MOVE R5 R2
  CALL R4 1 1
  GETTABLEKS R5 R1 K39 ["isClient"]
  JUMPIFNOT R5 [+3]
  SETTABLEKS R3 R4 K4 ["client"]
  JUMP [+2]
  SETTABLEKS R3 R4 K5 ["server"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K38 ["JoinDictionaries"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 13
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+49]
  GETIMPORT R3 K52 [table.clone]
  GETTABLEKS R5 R1 K39 ["isClient"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K4 ["client"]
  JUMP [+2]
  GETTABLEKS R4 R2 K5 ["server"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K11 ["timedProfilingThread"]
  SETTABLEKS R4 R3 K11 ["timedProfilingThread"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K12 ["timedProfilingTimerThread"]
  SETTABLEKS R4 R3 K12 ["timedProfilingTimerThread"]
  GETTABLEKS R5 R1 K48 ["state"]
  GETTABLEKS R4 R5 K24 ["liveUpdateThread"]
  SETTABLEKS R4 R3 K24 ["liveUpdateThread"]
  GETIMPORT R4 K52 [table.clone]
  MOVE R5 R2
  CALL R4 1 1
  GETTABLEKS R5 R1 K39 ["isClient"]
  JUMPIFNOT R5 [+3]
  SETTABLEKS R3 R4 K4 ["client"]
  JUMP [+2]
  SETTABLEKS R3 R4 K5 ["server"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K38 ["JoinDictionaries"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 14
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+52]
  GETIMPORT R3 K52 [table.clone]
  GETTABLEKS R5 R1 K39 ["isClient"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K4 ["client"]
  JUMP [+2]
  GETTABLEKS R4 R2 K5 ["server"]
  CALL R3 1 1
  LOADN R4 0
  SETTABLEKS R4 R3 K20 ["rootNode"]
  LOADN R4 0
  SETTABLEKS R4 R3 K21 ["rootFunc"]
  LOADNIL R4
  SETTABLEKS R4 R3 K22 ["rootNodeName"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K19 ["searchFilterFlat"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K18 ["searchFilterGraph"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K31 ["expandedNodes"]
  GETIMPORT R4 K52 [table.clone]
  MOVE R5 R2
  CALL R4 1 1
  GETTABLEKS R5 R1 K39 ["isClient"]
  JUMPIFNOT R5 [+3]
  SETTABLEKS R3 R4 K4 ["client"]
  JUMP [+2]
  SETTABLEKS R3 R4 K5 ["server"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K38 ["JoinDictionaries"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1
  GETTABLEKS R3 R1 K34 ["type"]
  GETUPVAL R5 15
  GETTABLEKS R4 R5 K35 ["name"]
  JUMPIFNOTEQ R3 R4 [+57]
  NEWTABLE R3 2 0
  GETIMPORT R4 K52 [table.clone]
  GETTABLEKS R6 R2 K0 ["isClientView"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R2 K4 ["client"]
  JUMP [+2]
  GETTABLEKS R5 R2 K5 ["server"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K20 ["rootNode"]
  GETTABLEKS R6 R1 K20 ["rootNode"]
  JUMPIFEQ R5 R6 [+14]
  GETTABLEKS R5 R1 K20 ["rootNode"]
  SETTABLEKS R5 R4 K20 ["rootNode"]
  GETTABLEKS R5 R1 K21 ["rootFunc"]
  SETTABLEKS R5 R4 K21 ["rootFunc"]
  GETTABLEKS R5 R1 K22 ["rootNodeName"]
  SETTABLEKS R5 R4 K22 ["rootNodeName"]
  JUMP [+9]
  LOADN R5 0
  SETTABLEKS R5 R4 K20 ["rootNode"]
  LOADN R5 0
  SETTABLEKS R5 R4 K21 ["rootFunc"]
  LOADNIL R5
  SETTABLEKS R5 R4 K22 ["rootNodeName"]
  GETTABLEKS R5 R2 K0 ["isClientView"]
  JUMPIFNOT R5 [+3]
  SETTABLEKS R4 R3 K4 ["client"]
  JUMP [+2]
  SETTABLEKS R4 R3 K5 ["server"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K38 ["JoinDictionaries"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 -1
  RETURN R5 -1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Immutable"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetScriptProfilerState"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K8 ["SetScriptProfilerRoot"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["ScriptProfiler"]
  GETTABLEKS R5 R6 K6 ["Actions"]
  GETTABLEKS R4 R5 K11 ["SetIsProfiling"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K10 ["ScriptProfiler"]
  GETTABLEKS R6 R7 K6 ["Actions"]
  GETTABLEKS R5 R6 K12 ["SetData"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K9 ["Components"]
  GETTABLEKS R8 R9 K10 ["ScriptProfiler"]
  GETTABLEKS R7 R8 K6 ["Actions"]
  GETTABLEKS R6 R7 K13 ["SetThreads"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K4 ["Parent"]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K9 ["Components"]
  GETTABLEKS R9 R10 K10 ["ScriptProfiler"]
  GETTABLEKS R8 R9 K6 ["Actions"]
  GETTABLEKS R7 R8 K14 ["SetTimerState"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K4 ["Parent"]
  GETTABLEKS R11 R12 K9 ["Components"]
  GETTABLEKS R10 R11 K10 ["ScriptProfiler"]
  GETTABLEKS R9 R10 K6 ["Actions"]
  GETTABLEKS R8 R9 K15 ["ClearStateForNewProfilingSession"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K4 ["Parent"]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K9 ["Components"]
  GETTABLEKS R11 R12 K10 ["ScriptProfiler"]
  GETTABLEKS R10 R11 K6 ["Actions"]
  GETTABLEKS R9 R10 K16 ["SetAverage"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K4 ["Parent"]
  GETTABLEKS R14 R15 K4 ["Parent"]
  GETTABLEKS R13 R14 K9 ["Components"]
  GETTABLEKS R12 R13 K10 ["ScriptProfiler"]
  GETTABLEKS R11 R12 K6 ["Actions"]
  GETTABLEKS R10 R11 K17 ["SetFrequency"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R17 K3 [script]
  GETTABLEKS R16 R17 K4 ["Parent"]
  GETTABLEKS R15 R16 K4 ["Parent"]
  GETTABLEKS R14 R15 K9 ["Components"]
  GETTABLEKS R13 R14 K10 ["ScriptProfiler"]
  GETTABLEKS R12 R13 K6 ["Actions"]
  GETTABLEKS R11 R12 K18 ["SetDataView"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R18 K3 [script]
  GETTABLEKS R17 R18 K4 ["Parent"]
  GETTABLEKS R16 R17 K4 ["Parent"]
  GETTABLEKS R15 R16 K9 ["Components"]
  GETTABLEKS R14 R15 K10 ["ScriptProfiler"]
  GETTABLEKS R13 R14 K6 ["Actions"]
  GETTABLEKS R12 R13 K19 ["SetLiveUpdate"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R19 K3 [script]
  GETTABLEKS R18 R19 K4 ["Parent"]
  GETTABLEKS R17 R18 K4 ["Parent"]
  GETTABLEKS R16 R17 K9 ["Components"]
  GETTABLEKS R15 R16 K10 ["ScriptProfiler"]
  GETTABLEKS R14 R15 K6 ["Actions"]
  GETTABLEKS R13 R14 K20 ["SetShowPlugins"]
  CALL R12 1 1
  GETIMPORT R13 K1 [require]
  GETIMPORT R20 K3 [script]
  GETTABLEKS R19 R20 K4 ["Parent"]
  GETTABLEKS R18 R19 K4 ["Parent"]
  GETTABLEKS R17 R18 K9 ["Components"]
  GETTABLEKS R16 R17 K10 ["ScriptProfiler"]
  GETTABLEKS R15 R16 K6 ["Actions"]
  GETTABLEKS R14 R15 K21 ["SetShowGC"]
  CALL R13 1 1
  GETIMPORT R14 K1 [require]
  GETIMPORT R21 K3 [script]
  GETTABLEKS R20 R21 K4 ["Parent"]
  GETTABLEKS R19 R20 K4 ["Parent"]
  GETTABLEKS R18 R19 K9 ["Components"]
  GETTABLEKS R17 R18 K10 ["ScriptProfiler"]
  GETTABLEKS R16 R17 K6 ["Actions"]
  GETTABLEKS R15 R16 K22 ["SetSearchData"]
  CALL R14 1 1
  GETIMPORT R15 K1 [require]
  GETIMPORT R21 K3 [script]
  GETTABLEKS R20 R21 K4 ["Parent"]
  GETTABLEKS R19 R20 K4 ["Parent"]
  GETTABLEKS R18 R19 K9 ["Components"]
  GETTABLEKS R17 R18 K10 ["ScriptProfiler"]
  GETTABLEKS R16 R17 K23 ["ProfilerDataFormatV2"]
  CALL R15 1 1
  DUPCLOSURE R16 K24 [PROTO_0]
  DUPCLOSURE R17 K25 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R18 K26 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R2
  RETURN R18 1
