PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  LOADB R0 0
  NEWCLOSURE R1 P0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1