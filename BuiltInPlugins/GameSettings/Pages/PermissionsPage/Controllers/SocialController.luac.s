PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["friends"]
  LOADK R7 K2 ["/v1/users/"]
  MOVE R8 R1
  LOADK R9 K3 ["/friends"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["friendsV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["data"]
  NEWTABLE R4 0 0
  GETIMPORT R5 K5 [ipairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETTABLEKS R12 R9 K6 ["id"]
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K9 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [inext] [-9]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["friendsV1GET"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["getUserFriends"]
  RETURN R0 1