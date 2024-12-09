PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["userId"]
  DUPTABLE R6 K6 [{"isPlaceOwner", "avatarIcon", "specialGroupIcon"}]
  LOADB R7 0
  GETIMPORT R9 K8 [game]
  GETTABLEKS R8 R9 K9 ["CreatorType"]
  GETIMPORT R9 K12 [Enum.CreatorType.User]
  JUMPIFNOTEQ R8 R9 [+11]
  GETTABLEKS R8 R1 K2 ["userId"]
  GETIMPORT R10 K8 [game]
  GETTABLEKS R9 R10 K13 ["CreatorId"]
  JUMPIFEQ R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K3 ["isPlaceOwner"]
  LOADNIL R7
  SETTABLEKS R7 R6 K4 ["avatarIcon"]
  LOADNIL R7
  SETTABLEKS R7 R6 K5 ["specialGroupIcon"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["userId"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["None"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["userId"]
  DUPTABLE R6 K6 [{"isPlaceOwner", "avatarIcon", "specialGroupIcon"}]
  GETTABLEKS R9 R1 K2 ["userId"]
  GETTABLE R8 R0 R9
  GETTABLEKS R7 R8 K3 ["isPlaceOwner"]
  SETTABLEKS R7 R6 K3 ["isPlaceOwner"]
  GETTABLEKS R7 R1 K4 ["avatarIcon"]
  SETTABLEKS R7 R6 K4 ["avatarIcon"]
  GETTABLEKS R9 R1 K2 ["userId"]
  GETTABLE R8 R0 R9
  GETTABLEKS R7 R8 K5 ["specialGroupIcon"]
  SETTABLEKS R7 R6 K5 ["specialGroupIcon"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["userId"]
  DUPTABLE R6 K6 [{"isPlaceOwner", "avatarIcon", "specialGroupIcon"}]
  GETTABLEKS R7 R1 K7 ["isCreator"]
  SETTABLEKS R7 R6 K3 ["isPlaceOwner"]
  GETTABLEKS R9 R1 K2 ["userId"]
  GETTABLE R8 R0 R9
  GETTABLEKS R7 R8 K4 ["avatarIcon"]
  SETTABLEKS R7 R6 K4 ["avatarIcon"]
  GETTABLEKS R9 R1 K2 ["userId"]
  GETTABLE R8 R0 R9
  GETTABLEKS R7 R8 K5 ["specialGroupIcon"]
  SETTABLEKS R7 R6 K5 ["specialGroupIcon"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["userId"]
  DUPTABLE R6 K6 [{"isPlaceOwner", "avatarIcon", "specialGroupIcon"}]
  GETTABLEKS R9 R1 K2 ["userId"]
  GETTABLE R8 R0 R9
  GETTABLEKS R7 R8 K3 ["isPlaceOwner"]
  SETTABLEKS R7 R6 K3 ["isPlaceOwner"]
  GETTABLEKS R9 R1 K2 ["userId"]
  GETTABLE R8 R0 R9
  GETTABLEKS R7 R8 K4 ["avatarIcon"]
  SETTABLEKS R7 R6 K4 ["avatarIcon"]
  GETTABLEKS R7 R1 K5 ["specialGroupIcon"]
  SETTABLEKS R7 R6 K5 ["specialGroupIcon"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K12 ["Actions"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K13 ["AddPlayer"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K14 ["RemovePlayer"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K15 ["SetPlayerSpecialGroupIcon"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K16 ["SetPlayerIsCreator"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R3 K17 ["SetPlayerAvatarIcon"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K18 ["createReducer"]
  NEWTABLE R10 0 0
  NEWTABLE R11 8 0
  GETTABLEKS R12 R4 K19 ["name"]
  DUPCLOSURE R13 K20 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R5 K19 ["name"]
  DUPCLOSURE R13 K21 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R8 K19 ["name"]
  DUPCLOSURE R13 K22 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R7 K19 ["name"]
  DUPCLOSURE R13 K23 [PROTO_3]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K19 ["name"]
  DUPCLOSURE R13 K24 [PROTO_4]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  CALL R9 2 1
  RETURN R9 1
