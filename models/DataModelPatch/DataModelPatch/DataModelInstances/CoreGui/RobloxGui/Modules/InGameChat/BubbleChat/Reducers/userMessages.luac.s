PROTO_0:
  GETTABLEKS R4 R1 K0 ["message"]
  GETTABLEKS R3 R4 K1 ["userId"]
  GETTABLE R2 R0 R3
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Dictionary"]
  GETTABLEKS R3 R4 K3 ["join"]
  MOVE R4 R0
  NEWTABLE R5 1 0
  GETTABLEKS R7 R1 K0 ["message"]
  GETTABLEKS R6 R7 K1 ["userId"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["List"]
  GETTABLEKS R7 R8 K3 ["join"]
  MOVE R8 R2
  NEWTABLE R9 0 1
  GETTABLEKS R11 R1 K0 ["message"]
  GETTABLEKS R10 R11 K5 ["id"]
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["message"]
  GETTABLEKS R2 R3 K1 ["id"]
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETTABLEKS R4 R1 K0 ["message"]
  GETTABLEKS R3 R4 K1 ["userId"]
  GETTABLE R2 R0 R3
  JUMPIFNOT R2 [+52]
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K2 [1] [+26]
  GETTABLEN R3 R2 1
  GETTABLEKS R5 R1 K0 ["message"]
  GETTABLEKS R4 R5 K3 ["id"]
  JUMPIFNOTEQ R3 R4 [+19]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Dictionary"]
  GETTABLEKS R3 R4 K5 ["join"]
  MOVE R4 R0
  NEWTABLE R5 1 0
  GETTABLEKS R7 R1 K0 ["message"]
  GETTABLEKS R6 R7 K1 ["userId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Dictionary"]
  GETTABLEKS R3 R4 K5 ["join"]
  MOVE R4 R0
  NEWTABLE R5 1 0
  GETTABLEKS R7 R1 K0 ["message"]
  GETTABLEKS R6 R7 K1 ["userId"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["List"]
  GETTABLEKS R7 R8 K8 ["filter"]
  MOVE R8 R2
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CALL R7 2 1
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 1

PROTO_3:
  GETTABLEKS R3 R1 K0 ["userId"]
  GETTABLE R2 R0 R3
  JUMPIFNOT R2 [+16]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  NEWTABLE R5 1 0
  GETTABLEKS R6 R1 K0 ["userId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["None"]
  SETTABLE R7 R5 R6
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETIMPORT R10 K13 [script]
  GETTABLEKS R9 R10 K14 ["Parent"]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Actions"]
  GETTABLEKS R6 R7 K16 ["AddMessage"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETIMPORT R11 K13 [script]
  GETTABLEKS R10 R11 K14 ["Parent"]
  GETTABLEKS R9 R10 K14 ["Parent"]
  GETTABLEKS R8 R9 K15 ["Actions"]
  GETTABLEKS R7 R8 K17 ["RemoveMessage"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R11 R2 K18 ["Modules"]
  GETTABLEKS R10 R11 K19 ["VoiceChat"]
  GETTABLEKS R9 R10 K15 ["Actions"]
  GETTABLEKS R8 R9 K20 ["PlayerRemoved"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K21 ["createReducer"]
  NEWTABLE R9 0 0
  NEWTABLE R10 4 0
  GETTABLEKS R11 R5 K22 ["name"]
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R6 K22 ["name"]
  DUPCLOSURE R12 K24 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R7 K22 ["name"]
  DUPCLOSURE R12 K25 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R12 R10 R11
  CALL R8 2 1
  RETURN R8 1
