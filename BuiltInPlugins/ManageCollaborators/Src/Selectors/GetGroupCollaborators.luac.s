PROTO_0:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETTABLEKS R4 R1 K0 ["Name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["GroupMetadata"]
  GETTABLEKS R1 R2 K1 ["NewGroupMetadata"]
  JUMPIF R1 [+4]
  GETTABLEKS R2 R0 K0 ["GroupMetadata"]
  GETTABLEKS R1 R2 K2 ["CurrentGroupMetadata"]
  GETTABLEKS R3 R0 K0 ["GroupMetadata"]
  GETTABLEKS R2 R3 K2 ["CurrentGroupMetadata"]
  NEWTABLE R3 0 0
  GETIMPORT R4 K4 [pairs]
  MOVE R5 R1
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R8 K5 ["Name"]
  GETUPVAL R10 0
  MOVE R11 R0
  MOVE R12 R7
  CALL R10 2 1
  JUMPIF R10 [+11]
  DUPTABLE R12 K7 [{"Name", "Id"}]
  SETTABLEKS R9 R12 K5 ["Name"]
  SETTABLEKS R7 R12 K6 ["Id"]
  FASTCALL2 TABLE_INSERT R3 R12 [+4]
  MOVE R11 R3
  GETIMPORT R10 K10 [table.insert]
  CALL R10 2 0
  FORGLOOP R4 2 [-19]
  GETIMPORT R4 K12 [table.sort]
  MOVE R5 R3
  DUPCLOSURE R6 K13 [PROTO_0]
  CALL R4 2 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETIMPORT R6 K15 [ipairs]
  MOVE R7 R3
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R12 R10 K6 ["Id"]
  GETTABLE R11 R2 R12
  JUMPIF R11 [+8]
  GETTABLEKS R13 R10 K6 ["Id"]
  FASTCALL2 TABLE_INSERT R4 R13 [+4]
  MOVE R12 R4
  GETIMPORT R11 K10 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [inext] [-13]
  GETIMPORT R6 K15 [ipairs]
  MOVE R7 R3
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R12 R10 K6 ["Id"]
  GETTABLE R11 R2 R12
  JUMPIFNOT R11 [+8]
  GETTABLEKS R13 R10 K6 ["Id"]
  FASTCALL2 TABLE_INSERT R5 R13 [+4]
  MOVE R12 R5
  GETIMPORT R11 K10 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [inext] [-13]
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Selectors"]
  GETTABLEKS R2 R3 K7 ["IsGroupOwner"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1