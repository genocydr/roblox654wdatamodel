PROTO_0:
  DUPTABLE R0 K1 [{"begin"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["begin"]
  RETURN R0 1

PROTO_1:
  JUMPIFNOT R0 [+6]
  DUPTABLE R1 K1 [{"nextPageCursor"}]
  GETTABLEKS R2 R0 K0 ["nextPageCursor"]
  SETTABLEKS R2 R1 K0 ["nextPageCursor"]
  RETURN R1 1
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["begin"]
  JUMPIF R2 [+3]
  GETTABLEKS R2 R0 K1 ["nextPageCursor"]
  JUMPIFNOT R2 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["nextPageCursor"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["createDefaultCursor"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["createCursor"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["isNextPageAvailable"]
  DUPCLOSURE R1 K6 [PROTO_3]
  SETTABLEKS R1 R0 K7 ["getNextPageCursor"]
  RETURN R0 1
