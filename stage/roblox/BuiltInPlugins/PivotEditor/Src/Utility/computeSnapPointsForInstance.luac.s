PROTO_0:
  DIVK R2 R1 K0 [2]
  NEWTABLE R3 0 0
  GETIMPORT R4 K2 [ipairs]
  GETUPVAL R5 0
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETIMPORT R12 K5 [CFrame.new]
  MUL R13 R8 R2
  CALL R12 1 1
  MUL R11 R0 R12
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K8 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [inext] [-12]
  RETURN R3 1

PROTO_1:
  JUMPIF R0 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  LOADK R3 K0 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K2 ["CFrame"]
  GETTABLEKS R3 R0 K3 ["Size"]
  CALL R1 2 1
  RETURN R1 1
  LOADK R3 K4 ["Model"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 0
  NAMECALL R2 R0 K5 ["GetBoundingBox"]
  CALL R2 1 -1
  CALL R1 -1 1
  RETURN R1 1
  NEWTABLE R1 0 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 27
  LOADK R1 K0 [{0, 0, 0}]
  LOADK R2 K1 [{-1, -1, -1}]
  LOADK R3 K2 [{1, -1, -1}]
  LOADK R4 K3 [{-1, 1, -1}]
  LOADK R5 K4 [{1, 1, -1}]
  LOADK R6 K5 [{-1, -1, 1}]
  LOADK R7 K6 [{1, -1, 1}]
  LOADK R8 K7 [{-1, 1, 1}]
  LOADK R9 K8 [{1, 1, 1}]
  LOADK R10 K9 [{-1, 0, 0}]
  LOADK R11 K10 [{1, 0, 0}]
  LOADK R12 K11 [{0, -1, 0}]
  LOADK R13 K12 [{0, 1, 0}]
  LOADK R14 K13 [{0, 0, -1}]
  LOADK R15 K14 [{0, 0, 1}]
  LOADK R16 K15 [{1, 1, 0}]
  SETLIST R0 R1 16 [1]
  LOADK R1 K16 [{-1, 1, 0}]
  LOADK R2 K17 [{-1, -1, 0}]
  LOADK R3 K18 [{1, -1, 0}]
  LOADK R4 K19 [{0, 1, 1}]
  LOADK R5 K20 [{0, -1, 1}]
  LOADK R6 K21 [{0, -1, -1}]
  LOADK R7 K22 [{0, 1, -1}]
  LOADK R8 K23 [{1, 0, 1}]
  LOADK R9 K24 [{-1, 0, 1}]
  LOADK R10 K25 [{-1, 0, -1}]
  LOADK R11 K26 [{1, 0, -1}]
  SETLIST R0 R1 11 [17]
  DUPCLOSURE R1 K27 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R2 K28 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1