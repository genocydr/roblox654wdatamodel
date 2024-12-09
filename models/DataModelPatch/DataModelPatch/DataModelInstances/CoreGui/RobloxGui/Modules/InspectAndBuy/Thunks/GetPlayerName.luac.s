PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R3 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K1 ["Counters"]
  GETTABLEKS R5 R7 K2 ["GetPlayerName"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["CounterSuffix"]
  GETTABLEKS R6 R7 K4 ["RequestSucceeded"]
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Counters"]
  GETTABLEKS R5 R7 K1 ["GetPlayerName"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["CounterSuffix"]
  GETTABLEKS R6 R7 K3 ["RequestRejected"]
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getPlayerName"]
  GETUPVAL R1 1
  CALL R0 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R0 R0 K1 ["andThen"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["Counters"]
  GETTABLEKS R5 R7 K1 ["GetPlayerName"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["CounterSuffix"]
  GETTABLEKS R6 R7 K3 ["RequestFailed"]
  CONCAT R4 R5 R6
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  GETUPVAL R3 1
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K1 ["storeId"]
  GETUPVAL R5 2
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["Single"]
  MOVE R5 R3
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R4 2 1
  MOVE R5 R0
  CALL R4 1 1
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NAMECALL R4 R4 K3 ["catch"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETIMPORT R3 K2 [script]
  GETTABLEKS R2 R3 K3 ["Name"]
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Http"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["PerformFetch"]
  GETIMPORT R4 K11 [script]
  GETTABLEKS R3 R4 K12 ["Parent"]
  GETTABLEKS R2 R3 K12 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K13 ["Thunk"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K14 ["Services"]
  GETTABLEKS R5 R6 K15 ["Network"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R2 K16 ["Actions"]
  GETTABLEKS R6 R7 K17 ["SetPlayerName"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K18 ["createInspectAndBuyKeyMapper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R2 K19 ["Thunks"]
  GETTABLEKS R8 R9 K20 ["SendCounter"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K21 ["Constants"]
  CALL R8 1 1
  NEWTABLE R9 0 1
  MOVE R10 R4
  SETLIST R9 R10 1 [1]
  MOVE R10 R6
  LOADK R11 K22 ["getPlayerName"]
  CALL R10 1 1
  DUPCLOSURE R11 K23 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R11 1
