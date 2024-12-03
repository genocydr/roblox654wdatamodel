PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorId"]
  CALL R0 2 1
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["getUserFriends"]
  CALL R1 2 1
  GETUPVAL R2 3
  GETUPVAL R4 4
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R1 K0 ["gameMetadataController"]
  GETTABLEKS R3 R1 K1 ["socialController"]
  GETIMPORT R5 K3 [game]
  GETTABLEKS R4 R5 K4 ["GameId"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  RETURN R5 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorName"]
  CALL R0 2 1
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K1 ["getCreatorId"]
  CALL R1 2 1
  GETUPVAL R2 0
  GETUPVAL R4 1
  NAMECALL R2 R2 K2 ["getCreatorType"]
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R3 R3 K3 ["getPermissions"]
  CALL R3 5 2
  GETUPVAL R5 3
  GETUPVAL R7 4
  MOVE R8 R3
  CALL R7 1 -1
  NAMECALL R5 R5 K4 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 3
  GETUPVAL R7 5
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R5 K4 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorType"]
  CALL R0 2 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETIMPORT R1 K5 [Enum.CreatorType.Group]
  JUMPIFNOTEQ R0 R1 [+41]
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K6 ["getCreatorId"]
  CALL R1 2 1
  GETUPVAL R2 4
  MOVE R4 R1
  NAMECALL R2 R2 K7 ["getOwnerId"]
  CALL R2 2 1
  GETUPVAL R3 2
  GETUPVAL R5 5
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K1 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 6
  NAMECALL R3 R3 K8 ["GetUserId"]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+24]
  GETUPVAL R3 7
  NAMECALL R3 R3 K9 ["clearCache"]
  CALL R3 1 0
  GETUPVAL R3 7
  MOVE R5 R1
  NAMECALL R3 R3 K10 ["getGroupRolePermissions"]
  CALL R3 2 1
  GETUPVAL R4 2
  GETUPVAL R6 8
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K1 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  GETIMPORT R1 K12 [Enum.CreatorType.User]
  JUMPIFNOTEQ R0 R1 [+3]
  GETUPVAL R1 9
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorName"]
  CALL R0 2 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getCreatorId"]
  CALL R0 2 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["getMinimumAgeRecommendation"]
  CALL R0 2 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R1 K0 ["gameMetadataController"]
  GETTABLEKS R3 R1 K1 ["groupMetadataController"]
  GETTABLEKS R4 R1 K2 ["groupRolePermisionsController"]
  GETTABLEKS R5 R1 K3 ["gamePermissionsController"]
  GETIMPORT R7 K5 [game]
  GETTABLEKS R6 R7 K6 ["GameId"]
  GETGLOBAL R7 K7 ["GetLoadFriendsJob"]
  MOVE R8 R0
  MOVE R9 R1
  CALL R7 2 1
  NEWTABLE R8 0 5
  NEWCLOSURE R9 P0
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NEWCLOSURE R10 P1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  CAPTURE VAL R7
  NEWCLOSURE R11 P2
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  NEWCLOSURE R12 P3
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  NEWCLOSURE R13 P4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETLIST R8 R9 5 [1]
  RETURN R8 1

PROTO_8:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETGLOBAL R2 K0 ["GetLoadFriendsJob"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETIMPORT R3 K3 [coroutine.wrap]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0

PROTO_10:
  DUPCLOSURE R1 K0 [PROTO_9]
  RETURN R1 1

PROTO_11:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  CALL R0 1 2
  JUMPIF R0 [+18]
  GETUPVAL R2 1
  JUMPIF R2 [+16]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["Failed"]
  MOVE R4 R1
  CALL R2 2 0
  LOADB R2 1
  SETUPVAL R2 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K5 ["LoadFailed"]
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R3 5
  ADDK R2 R3 K7 [1]
  SETUPVAL R2 5
  GETUPVAL R2 5
  GETUPVAL R4 6
  LENGTH R3 R4
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R2 1
  JUMPIF R2 [+9]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["Loaded"]
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  GETGLOBAL R2 K0 ["GetPermissionsLoadJobs"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["Loading"]
  CALL R5 1 -1
  NAMECALL R3 R0 K2 ["dispatch"]
  CALL R3 -1 0
  LOADN R3 0
  LOADB R4 0
  GETIMPORT R5 K4 [ipairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETIMPORT R10 K7 [coroutine.wrap]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE REF R4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE REF R3
  CAPTURE VAL R2
  CALL R10 1 1
  MOVE R11 R10
  CALL R11 0 0
  FORGLOOP R5 2 [inext] [-14]
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_13:
  DUPCLOSURE R1 K0 [PROTO_12]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [game]
  LOADK R4 K5 ["StudioService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Actions"]
  GETTABLEKS R4 R5 K11 ["SetLoadState"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["LoadState"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R1 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetCurrentUserPermissions"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetCurrentGroupMetadata"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K9 ["Src"]
  GETTABLEKS R9 R10 K10 ["Actions"]
  GETTABLEKS R8 R9 K16 ["SetCreatorType"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K9 ["Src"]
  GETTABLEKS R10 R11 K10 ["Actions"]
  GETTABLEKS R9 R10 K17 ["SetCreatorName"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Actions"]
  GETTABLEKS R10 R11 K18 ["SetCreatorId"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K9 ["Src"]
  GETTABLEKS R12 R13 K10 ["Actions"]
  GETTABLEKS R11 R12 K19 ["SetCreatorFriends"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K9 ["Src"]
  GETTABLEKS R13 R14 K10 ["Actions"]
  GETTABLEKS R12 R13 K20 ["SetGroupOwnerId"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K9 ["Src"]
  GETTABLEKS R14 R15 K10 ["Actions"]
  GETTABLEKS R13 R14 K21 ["SetGroupRolePermissions"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K9 ["Src"]
  GETTABLEKS R15 R16 K10 ["Actions"]
  GETTABLEKS R14 R15 K22 ["SetUserMinimumAge"]
  CALL R13 1 1
  DUPCLOSURE R14 K23 [PROTO_1]
  CAPTURE VAL R10
  SETGLOBAL R14 K24 ["GetLoadFriendsJob"]
  DUPCLOSURE R14 K25 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R13
  SETGLOBAL R14 K26 ["GetPermissionsLoadJobs"]
  DUPCLOSURE R14 K27 [PROTO_10]
  SETTABLEKS R14 R0 K28 ["LoadFriends"]
  DUPCLOSURE R14 K29 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R14 R0 K30 ["LoadPermissions"]
  RETURN R0 1