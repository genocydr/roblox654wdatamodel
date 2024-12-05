PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isPageInfoStale"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["responseBody"]
  NEWTABLE R2 0 0
  GETIMPORT R3 K3 [pairs]
  GETTABLEKS R4 R1 K4 ["data"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["fromItemDetailsRequest"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K6 ["Asset"]
  JUMPIFNOT R9 [+17]
  GETTABLEKS R10 R8 K6 ["Asset"]
  GETTABLEKS R9 R10 K7 ["Id"]
  JUMPIFNOT R9 [+12]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["AddContextToItemDetails"]
  MOVE R10 R8
  GETUPVAL R12 4
  GETTABLEKS R14 R8 K6 ["Asset"]
  GETTABLEKS R13 R14 K7 ["Id"]
  GETTABLE R11 R12 R13
  CALL R9 2 1
  MOVE R8 R9
  FASTCALL2 TABLE_INSERT R2 R8 [+5]
  MOVE R10 R2
  MOVE R11 R8
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-33]
  GETUPVAL R3 2
  GETUPVAL R5 5
  MOVE R6 R2
  GETUPVAL R7 6
  GETUPVAL R8 7
  CALL R5 3 -1
  NAMECALL R3 R3 K12 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 2
  GETUPVAL R5 8
  GETUPVAL R6 9
  CALL R5 1 -1
  NAMECALL R3 R3 K12 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 2
  GETUPVAL R5 10
  LOADB R6 0
  CALL R5 1 -1
  NAMECALL R3 R3 K12 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isPageInfoStale"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 2
  GETUPVAL R3 4
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isPageInfoStale"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETUPVAL R3 2
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R0 K1 ["dispatch"]
  CALL R1 -1 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U2
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U10
  GETUPVAL R4 11
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K2 [0] [+12]
  MOVE R3 R1
  DUPTABLE R4 K4 [{"responseBody"}]
  DUPTABLE R5 K6 [{"data"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K5 ["data"]
  SETTABLEKS R5 R4 K3 ["responseBody"]
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R3 12
  GETUPVAL R5 11
  NAMECALL R3 R3 K7 ["getItemDetails"]
  CALL R3 2 1
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K8 ["andThen"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R7
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R8 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Actions"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["NetworkError"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["SetLoading"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["GetAssets"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["SetCurrentPage"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K3 ["Core"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K12 ["Analytics"]
  GETTABLEKS R8 R9 K13 ["AssetAnalytics"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R6 K14 ["PageInfoHelper"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K3 ["Core"]
  GETTABLEKS R11 R12 K15 ["Models"]
  GETTABLEKS R10 R11 K16 ["AssetInfo"]
  CALL R9 1 1
  DUPCLOSURE R10 K17 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R10 1