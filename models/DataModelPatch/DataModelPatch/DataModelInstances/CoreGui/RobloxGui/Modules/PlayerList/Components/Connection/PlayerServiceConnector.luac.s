PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetPlayers"]
  CALL R1 1 1
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R8 R0 K3 ["props"]
  GETTABLEKS R7 R8 K4 ["addPlayer"]
  MOVE R8 R6
  CALL R7 1 0
  GETTABLEKS R8 R0 K3 ["props"]
  GETTABLEKS R7 R8 K5 ["makePlayerInfoRequests"]
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-13]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["addPlayer"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["makePlayerInfoRequests"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["removePlayer"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"PlayerAddedConnection", "PlayerRemovingConnection"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"event", "callback"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["PlayerAdded"]
  SETTABLEKS R6 R5 K5 ["event"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["callback"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["PlayerAddedConnection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"event", "callback"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["PlayerRemoving"]
  SETTABLEKS R6 R5 K5 ["event"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["callback"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["PlayerRemovingConnection"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetPlayers"]
  CALL R1 1 1
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R8 R0 K3 ["props"]
  GETTABLEKS R7 R8 K4 ["removePlayer"]
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-7]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_8:
  DUPTABLE R1 K3 [{"addPlayer", "makePlayerInfoRequests", "removePlayer"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["addPlayer"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["makePlayerInfoRequests"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["removePlayer"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETTABLEKS R5 R4 K12 ["Parent"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R5 K13 ["Actions"]
  GETTABLEKS R7 R8 K14 ["AddPlayer"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R5 K13 ["Actions"]
  GETTABLEKS R8 R9 K15 ["RemovePlayer"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R5 K16 ["Thunks"]
  GETTABLEKS R9 R10 K17 ["MakePlayerInfoRequests"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETIMPORT R12 K11 [script]
  GETTABLEKS R11 R12 K12 ["Parent"]
  GETTABLEKS R10 R11 K18 ["EventConnection"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K19 ["PureComponent"]
  LOADK R12 K20 ["PlayerServiceConnector"]
  NAMECALL R10 R10 K21 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K23 ["didMount"]
  DUPCLOSURE R11 K24 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K25 ["render"]
  DUPCLOSURE R11 K26 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K27 ["willUnmount"]
  DUPCLOSURE R11 K28 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  GETTABLEKS R12 R3 K29 ["connect"]
  LOADNIL R13
  MOVE R14 R11
  CALL R12 2 1
  MOVE R13 R10
  CALL R12 1 -1
  RETURN R12 -1