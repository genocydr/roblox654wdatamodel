PROTO_0:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  DUPTABLE R4 K1 [{"__index"}]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K0 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  GETTABLE R2 R0 R1
  RETURN R2 1

PROTO_2:
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [tostring]
  CALL R3 1 1
  SETTABLE R3 R0 R1
  RETURN R0 0

PROTO_3:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["GetItem"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["SetItem"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["flush"]
  RETURN R0 1
