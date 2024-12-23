PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setPerformanceStatsVisible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["PerformanceStatsVisible"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setPerformanceStatsVisible"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["GetPlayerByUserId"]
  CALL R2 2 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["setPlayerIsBlocked"]
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"PerformanceStatsChangedConnection", "BlockedStatusChangedConnection"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"event", "callback"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["PerformanceStatsVisibleChanged"]
  SETTABLEKS R6 R5 K5 ["event"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["callback"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["PerformanceStatsChangedConnection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"event", "callback"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K5 ["event"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["callback"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["BlockedStatusChangedConnection"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_6:
  DUPTABLE R1 K2 [{"setPerformanceStatsVisible", "setPlayerIsBlocked"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setPerformanceStatsVisible"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setPlayerIsBlocked"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Players"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K12 [UserSettings]
  CALL R5 0 1
  LOADK R7 K13 ["UserGameSettings"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  LOADK R8 K14 ["RobloxGui"]
  NAMECALL R6 R1 K15 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R6 K16 ["Modules"]
  GETTABLEKS R8 R9 K17 ["BlockingUtility"]
  CALL R7 1 1
  NAMECALL R8 R7 K18 ["GetBlockedStatusChangedEvent"]
  CALL R8 1 1
  GETIMPORT R11 K20 [script]
  GETTABLEKS R10 R11 K21 ["Parent"]
  GETTABLEKS R9 R10 K21 ["Parent"]
  GETTABLEKS R10 R9 K21 ["Parent"]
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R10 K22 ["Actions"]
  GETTABLEKS R12 R13 K23 ["SetPerformanceStatsVisible"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R10 K22 ["Actions"]
  GETTABLEKS R13 R14 K24 ["SetPlayerIsBlocked"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETIMPORT R16 K20 [script]
  GETTABLEKS R15 R16 K21 ["Parent"]
  GETTABLEKS R14 R15 K25 ["EventConnection"]
  CALL R13 1 1
  GETTABLEKS R14 R3 K26 ["PureComponent"]
  LOADK R16 K27 ["CoreGuiConnector"]
  NAMECALL R14 R14 K28 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K29 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R15 R14 K30 ["didMount"]
  DUPCLOSURE R15 K31 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R15 R14 K32 ["render"]
  DUPCLOSURE R15 K33 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R12
  GETTABLEKS R16 R4 K34 ["connect"]
  LOADNIL R17
  MOVE R18 R15
  CALL R16 2 1
  MOVE R17 R14
  CALL R16 1 -1
  RETURN R16 -1
