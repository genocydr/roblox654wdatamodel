PROTO_0:
  PREPVARARGS 1
  NEWTABLE R1 0 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 1
  MOVE R3 R1
  GETVARARGS R4 -1
  CALL R2 -1 0
  RETURN R1 1
  GETUPVAL R2 2
  JUMPIFNOT R2 [+10]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["init"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["init"]
  MOVE R3 R1
  GETVARARGS R4 -1
  CALL R2 -1 0
  RETURN R1 1

PROTO_1:
  FASTCALL1 GETMETATABLE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [getmetatable]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  JUMPIFNOTEQ R2 R1 [+3]
  LOADB R3 1
  RETURN R3 1
  GETTABLEKS R2 R2 K2 ["_base"]
  JUMPBACK [-8]
  LOADB R3 0
  RETURN R3 1

PROTO_2:
  NEWTABLE R2 4 0
  JUMPIF R1 [+10]
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["function"] [+4]
  MOVE R1 R0
  LOADNIL R0
  JUMP [+17]
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K3 ["table"] [+11]
  GETIMPORT R3 K5 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-2]
  SETTABLEKS R0 R2 K6 ["_base"]
  SETTABLEKS R2 R2 K7 ["__index"]
  NEWTABLE R3 1 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE REF R1
  CAPTURE REF R0
  SETTABLEKS R4 R3 K8 ["__call"]
  SETTABLEKS R1 R2 K9 ["init"]
  DUPCLOSURE R4 K10 [PROTO_1]
  SETTABLEKS R4 R2 K11 ["is_a"]
  FASTCALL2 SETMETATABLE R2 R3 [+5]
  MOVE R5 R2
  MOVE R6 R3
  GETIMPORT R4 K13 [setmetatable]
  CALL R4 2 0
  CLOSEUPVALS R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_2]
  RETURN R0 1