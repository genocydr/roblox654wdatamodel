PROTO_0:
  GETTABLEKS R2 R0 K0 ["isPrimary"]
  GETTABLEKS R3 R1 K0 ["isPrimary"]
  JUMPIFEQ R2 R3 [+4]
  GETTABLEKS R2 R0 K0 ["isPrimary"]
  RETURN R2 1
  GETTABLEKS R2 R0 K1 ["priority"]
  GETTABLEKS R3 R1 K1 ["priority"]
  JUMPIFNOTEQ R2 R3 [+23]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K2 ["serverAddId"]
  GETTABLEKS R3 R1 K2 ["serverAddId"]
  JUMPIFNOT R2 [+6]
  JUMPIFNOT R3 [+5]
  JUMPIFLT R2 R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1
  GETTABLEKS R3 R0 K3 ["addId"]
  GETTABLEKS R4 R1 K3 ["addId"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K1 ["priority"]
  GETTABLEKS R4 R1 K1 ["priority"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["statName"]
  JUMPIFNOTEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["statName"]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Dictionary"]
  GETTABLEKS R1 R2 K3 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K5 [{"text"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["text"]
  SETTABLEKS R4 R3 K4 ["text"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  MOVE R1 R0
  RETURN R1 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["statName"]
  JUMPIFNOTEQ R2 R3 [+15]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Dictionary"]
  GETTABLEKS R1 R2 K3 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K5 [{"serverAddId"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["serverAddId"]
  SETTABLEKS R4 R3 K4 ["serverAddId"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  MOVE R1 R0
  RETURN R1 1

PROTO_4:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+80]
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R4 1
  LOADNIL R5
  CALL R4 1 1
  NEWTABLE R5 0 0
  GETIMPORT R6 K3 [ipairs]
  MOVE R7 R0
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R10 K1 ["name"]
  GETTABLEKS R12 R1 K4 ["statName"]
  JUMPIFNOTEQ R11 R12 [+10]
  GETTABLEKS R2 R10 K5 ["addId"]
  GETTABLEKS R4 R10 K6 ["text"]
  GETUPVAL R11 2
  JUMPIFNOT R11 [+10]
  GETTABLEKS R3 R10 K7 ["serverAddId"]
  JUMP [+7]
  FASTCALL2 TABLE_INSERT R5 R10 [+5]
  MOVE R12 R5
  MOVE R13 R10
  GETIMPORT R11 K10 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [inext] [-23]
  GETUPVAL R7 3
  ADDK R6 R7 K11 [1]
  SETUPVAL R6 3
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["List"]
  GETTABLEKS R6 R7 K13 ["join"]
  MOVE R7 R5
  NEWTABLE R8 0 1
  DUPTABLE R9 K16 [{"name", "text", "addId", "isPrimary", "priority", "serverAddId"}]
  GETTABLEKS R10 R1 K4 ["statName"]
  SETTABLEKS R10 R9 K1 ["name"]
  SETTABLEKS R4 R9 K6 ["text"]
  MOVE R10 R2
  JUMPIF R10 [+1]
  GETUPVAL R10 3
  SETTABLEKS R10 R9 K5 ["addId"]
  GETTABLEKS R10 R1 K14 ["isPrimary"]
  SETTABLEKS R10 R9 K14 ["isPrimary"]
  GETTABLEKS R10 R1 K15 ["priority"]
  SETTABLEKS R10 R9 K15 ["priority"]
  SETTABLEKS R3 R9 K7 ["serverAddId"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  MOVE R5 R6
  GETIMPORT R6 K18 [table.sort]
  MOVE R7 R5
  GETUPVAL R8 5
  CALL R6 2 0
  RETURN R5 1
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+11]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["List"]
  GETTABLEKS R2 R3 K19 ["filter"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["List"]
  GETTABLEKS R2 R3 K20 ["map"]
  MOVE R3 R0
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R2 2
  JUMPIFNOT R2 [+23]
  GETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K1 ["name"]
  JUMPIFNOTEQ R2 R3 [+17]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["List"]
  GETTABLEKS R2 R3 K20 ["map"]
  MOVE R3 R0
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CALL R2 2 1
  GETIMPORT R3 K18 [table.sort]
  MOVE R4 R2
  GETUPVAL R5 5
  CALL R3 2 0
  RETURN R2 1
  RETURN R0 1

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
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETTABLEKS R3 R2 K11 ["Actions"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K12 ["AddGameStat"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K13 ["RemoveGameStat"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K14 ["SetGameStatText"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K15 ["SetGameStatAddId"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R2 K16 ["Flags"]
  GETTABLEKS R9 R10 K17 ["FFlagLeaderstatsWithASideOfClient"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K18 ["FormatStatString"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R8
  LOADN R11 0
  NEWCLOSURE R12 P1
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE REF R11
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CLOSEUPVALS R11
  RETURN R12 1