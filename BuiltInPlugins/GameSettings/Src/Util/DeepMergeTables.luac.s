PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R1 R6
  JUMPIFNOTEQKNIL R8 [+2]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-5]
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  FASTCALL1 TYPE R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K3 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+27]
  GETTABLE R8 R0 R6
  JUMPIFEQKNIL R8 [+16]
  GETTABLE R9 R0 R6
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K3 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["table"] [+9]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["Merge"]
  GETTABLE R9 R0 R6
  MOVE R10 R7
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+17]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["Merge"]
  LOADNIL R9
  MOVE R10 R7
  CALL R8 2 1
  SETTABLE R8 R2 R6
  JUMP [+9]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["None"]
  JUMPIFNOTEQ R7 R8 [+4]
  LOADNIL R8
  SETTABLE R8 R2 R6
  JUMP [+1]
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-43]
  GETIMPORT R3 K8 [next]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R3
  RETURN R3 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K8 ["Merge"]
  RETURN R2 1