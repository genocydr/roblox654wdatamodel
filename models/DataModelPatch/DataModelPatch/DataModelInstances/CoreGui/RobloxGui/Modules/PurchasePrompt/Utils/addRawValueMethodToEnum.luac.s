PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKS R1 K0 ["toRawValue"] [+4]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_2:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R8 R0 R6
  SETTABLE R7 R2 R8
  FORGLOOP R3 2 [-3]
  FASTCALL1 GETMETATABLE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K3 [getmetatable]
  CALL R3 1 1
  GETTABLEKS R4 R3 K4 ["__index"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R5 R3 K4 ["__index"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_2]
  RETURN R0 1