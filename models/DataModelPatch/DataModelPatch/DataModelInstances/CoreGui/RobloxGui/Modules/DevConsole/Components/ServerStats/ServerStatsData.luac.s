PROTO_0:
  NEWTABLE R0 8 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["_serverStatsUpdated"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["_serverStatsPing"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["_serverStatsData"]
  LOADN R1 0
  SETTABLEKS R1 R0 K6 ["_serverStatsDataCount"]
  LOADN R1 0
  SETTABLEKS R1 R0 K7 ["_lastUpdateTime"]
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["_isRunning"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_serverStatsPing"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_serverStatsUpdated"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_serverStatsData"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R4 R0 K0 ["_serverStatsData"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+26]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["new"]
  GETUPVAL R4 1
  CALL R3 1 1
  DUPTABLE R6 K4 [{"value", "time"}]
  SETTABLEKS R2 R6 K2 ["value"]
  GETTABLEKS R7 R0 K5 ["_lastUpdateTime"]
  SETTABLEKS R7 R6 K3 ["time"]
  NAMECALL R4 R3 K6 ["push_back"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K0 ["_serverStatsData"]
  DUPTABLE R5 K10 [{"max", "min", "dataSet"}]
  SETTABLEKS R2 R5 K7 ["max"]
  SETTABLEKS R2 R5 K8 ["min"]
  SETTABLEKS R3 R5 K9 ["dataSet"]
  SETTABLE R5 R4 R1
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_serverStatsData"]
  GETTABLE R3 R4 R1
  GETTABLEKS R4 R3 K7 ["max"]
  GETTABLEKS R5 R3 K8 ["min"]
  DUPTABLE R6 K4 [{"value", "time"}]
  SETTABLEKS R2 R6 K2 ["value"]
  GETTABLEKS R7 R0 K5 ["_lastUpdateTime"]
  SETTABLEKS R7 R6 K3 ["time"]
  GETTABLEKS R9 R0 K0 ["_serverStatsData"]
  GETTABLE R8 R9 R1
  GETTABLEKS R7 R8 K9 ["dataSet"]
  MOVE R9 R6
  NAMECALL R7 R7 K6 ["push_back"]
  CALL R7 2 1
  JUMPIFNOT R7 [+51]
  GETTABLEKS R10 R0 K0 ["_serverStatsData"]
  GETTABLE R9 R10 R1
  GETTABLEKS R8 R9 K9 ["dataSet"]
  NAMECALL R8 R8 K11 ["iterator"]
  CALL R8 1 1
  NAMECALL R9 R8 K12 ["next"]
  CALL R9 1 1
  GETTABLEKS R10 R7 K2 ["value"]
  JUMPIFNOTEQ R4 R10 [+17]
  MOVE R4 R5
  JUMPIFNOT R9 [+14]
  GETTABLEKS R11 R9 K2 ["value"]
  JUMPIFNOTLT R11 R4 [+3]
  MOVE R10 R4
  JUMPIF R10 [+2]
  GETTABLEKS R10 R9 K2 ["value"]
  MOVE R4 R10
  NAMECALL R10 R8 K12 ["next"]
  CALL R10 1 1
  MOVE R9 R10
  JUMPBACK [-15]
  GETTABLEKS R10 R7 K2 ["value"]
  JUMPIFNOTEQ R5 R10 [+17]
  MOVE R5 R4
  JUMPIFNOT R9 [+14]
  GETTABLEKS R11 R9 K2 ["value"]
  JUMPIFNOTLT R5 R11 [+3]
  MOVE R10 R5
  JUMPIF R10 [+2]
  GETTABLEKS R10 R9 K2 ["value"]
  MOVE R5 R10
  NAMECALL R10 R8 K12 ["next"]
  CALL R10 1 1
  MOVE R9 R10
  JUMPBACK [-15]
  GETTABLEKS R9 R0 K0 ["_serverStatsData"]
  GETTABLE R8 R9 R1
  JUMPIFNOTLT R4 R2 [+3]
  MOVE R9 R2
  JUMPIF R9 [+1]
  MOVE R9 R4
  SETTABLEKS R9 R8 K7 ["max"]
  GETTABLEKS R9 R0 K0 ["_serverStatsData"]
  GETTABLE R8 R9 R1
  JUMPIFNOTLT R5 R2 [+3]
  MOVE R9 R5
  JUMPIF R9 [+1]
  MOVE R9 R2
  SETTABLEKS R9 R8 K8 ["min"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_isRunning"]
  RETURN R1 1

PROTO_6:
  JUMPIFNOT R0 [+64]
  GETUPVAL R1 0
  GETIMPORT R2 K2 [os.time]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["_lastUpdateTime"]
  LOADN R1 0
  GETIMPORT R2 K5 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  FASTCALL1 TYPE R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K7 [type]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K8 ["number"] [+8]
  GETUPVAL R7 0
  MOVE R9 R5
  MOVE R10 R6
  NAMECALL R7 R7 K9 ["updateValue"]
  CALL R7 3 0
  ADDK R1 R1 K10 [1]
  FORGLOOP R2 2 [-15]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K11 ["_serverStatsDataCount"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["_serverStatsUpdated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["_serverStatsData"]
  NAMECALL R2 R2 K14 ["Fire"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["_serverStatsData"]
  GETTABLEKS R2 R3 K15 ["Avg Ping ms"]
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K16 ["_serverStatsPing"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["_serverStatsData"]
  GETTABLEKS R6 R7 K15 ["Avg Ping ms"]
  GETTABLEKS R5 R6 K17 ["dataSet"]
  NAMECALL R5 R5 K18 ["back"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K19 ["value"]
  NAMECALL R2 R2 K14 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R0 K0 ["_statsListenerConnection"]
  JUMPIF R2 [+16]
  GETTABLEKS R2 R1 K1 ["StatsReceived"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K0 ["_statsListenerConnection"]
  LOADB R4 1
  NAMECALL R2 R1 K3 ["RequestServerStats"]
  CALL R2 2 0
  LOADB R2 1
  SETTABLEKS R2 R0 K4 ["_isRunning"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_statsListenerConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_statsListenerConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_statsListenerConnection"]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["_isRunning"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["CircularBuffer"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Signal"]
  CALL R1 1 1
  GETIMPORT R3 K8 [settings]
  CALL R3 0 1
  LOADK R5 K9 ["NewDevConsoleMaxGraphCount"]
  NAMECALL R3 R3 K10 ["GetFVariable"]
  CALL R3 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R2 K12 [tonumber]
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["getClientReplicator"]
  CALL R3 1 1
  NEWTABLE R4 16 0
  SETTABLEKS R4 R4 K15 ["__index"]
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K17 ["new"]
  DUPCLOSURE R5 K18 [PROTO_1]
  SETTABLEKS R5 R4 K19 ["avgPing"]
  DUPCLOSURE R5 K20 [PROTO_2]
  SETTABLEKS R5 R4 K6 ["Signal"]
  DUPCLOSURE R5 K21 [PROTO_3]
  SETTABLEKS R5 R4 K22 ["getCurrentData"]
  DUPCLOSURE R5 K23 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K24 ["updateValue"]
  DUPCLOSURE R5 K25 [PROTO_5]
  SETTABLEKS R5 R4 K26 ["isRunning"]
  DUPCLOSURE R5 K27 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K28 ["start"]
  DUPCLOSURE R5 K29 [PROTO_8]
  SETTABLEKS R5 R4 K30 ["stop"]
  RETURN R4 1
