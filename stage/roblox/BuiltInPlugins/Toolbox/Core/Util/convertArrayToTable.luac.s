PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLE R7 R1 R6
  JUMPIFEQKNIL R7 [+6]
  GETIMPORT R7 K3 [error]
  LOADK R8 K4 ["convertArrayToTable: sourceArray should not contain duplicate values"]
  CALL R7 1 0
  JUMP [+1]
  SETTABLE R6 R1 R6
  FORGLOOP R2 2 [inext] [-10]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1