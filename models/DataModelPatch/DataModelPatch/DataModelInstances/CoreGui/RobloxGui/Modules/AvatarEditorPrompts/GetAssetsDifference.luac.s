PROTO_0:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["toSet"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["List"]
  GETTABLEKS R3 R4 K1 ["toSet"]
  MOVE R4 R1
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["List"]
  GETTABLEKS R4 R5 K2 ["filter"]
  MOVE R5 R1
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CALL R4 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["List"]
  GETTABLEKS R5 R6 K2 ["filter"]
  MOVE R6 R0
  NEWCLOSURE R7 P1
  CAPTURE VAL R3
  CALL R5 2 1
  RETURN R4 2

PROTO_3:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLE R9 R0 R6
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-8]
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  GETUPVAL R4 1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLE R10 R0 R7
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K4 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-8]
  DUPTABLE R3 K9 [{"addedNames", "removedNames", "addedAssetIds", "removedAssetIds"}]
  SETTABLEKS R1 R3 K5 ["addedNames"]
  SETTABLEKS R2 R3 K6 ["removedNames"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K7 ["addedAssetIds"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K8 ["removedAssetIds"]
  RETURN R3 1

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETUPVAL R3 2
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K0 ["List"]
  GETTABLEKS R5 R6 K1 ["join"]
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R6 4
  MOVE R7 R5
  CALL R6 1 1
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  NAMECALL R6 R6 K2 ["andThen"]
  CALL R6 2 -1
  RETURN R6 -1

PROTO_5:
  DUPCLOSURE R1 K0 [PROTO_2]
  CAPTURE UPVAL U0
  GETUPVAL R2 1
  CALL R2 0 1
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Promise"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["GetCurrentHumanoidDescription"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K13 ["GetAssetIdsFromDescription"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K14 ["GetAssetNamesForIds"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
