PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+2]
  RETURN R0 1
  NEWTABLE R1 0 0
  GETIMPORT R2 K4 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  CALL R7 1 1
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-5]
  RETURN R1 1

PROTO_1:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  FASTCALL1 TYPE R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K3 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K4 ["table"] [+3]
  SETTABLE R6 R0 R5
  JUMP [+6]
  GETTABLE R7 R0 R5
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 0
  GETTABLE R8 R0 R5
  MOVE R9 R6
  CALL R7 2 0
  FORGLOOP R2 2 [-16]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETUPVAL R3 2
  MOVE R4 R2
  GETTABLEKS R5 R1 K0 ["settings"]
  CALL R3 2 0
  GETTABLEKS R4 R1 K0 ["settings"]
  GETTABLEKS R3 R4 K1 ["UserSpecificSettings"]
  JUMPIFNOT R3 [+20]
  GETIMPORT R4 K3 [pairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R9 0
  GETUPVAL R10 1
  CALL R9 1 1
  LOADNIL R10
  SETTABLEKS R10 R9 K1 ["UserSpecificSettings"]
  GETUPVAL R10 2
  MOVE R11 R9
  MOVE R12 R8
  CALL R10 2 0
  GETTABLEKS R10 R2 K1 ["UserSpecificSettings"]
  SETTABLE R9 R10 R7
  FORGLOOP R4 2 [-14]
  RETURN R2 1

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
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETTABLEKS R4 R5 K13 ["UpdateChatSettings"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K14 ["ChatSettings"]
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_0]
  CAPTURE VAL R5
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R6
  GETTABLEKS R7 R2 K17 ["createReducer"]
  MOVE R8 R4
  NEWTABLE R9 1 0
  GETTABLEKS R10 R3 K18 ["name"]
  DUPCLOSURE R11 K19 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLE R11 R9 R10
  CALL R7 2 1
  RETURN R7 1
