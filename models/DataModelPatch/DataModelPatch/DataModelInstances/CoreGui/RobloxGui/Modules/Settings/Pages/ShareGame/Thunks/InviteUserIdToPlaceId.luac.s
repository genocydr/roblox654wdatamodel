PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Invites"]
  GETUPVAL R5 1
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K2 [tostring]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["Pending"]
  JUMPIFNOTEQ R2 R3 [+4]
  MOVE R2 R1
  CALL R2 0 0
  RETURN R0 0
  MOVE R2 R0
  CALL R2 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEN R1 R0 1
  JUMPIFEQKNIL R1 [+5]
  GETUPVAL R1 0
  GETTABLEN R2 R0 1
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K0 ["Pending"]
  CALL R4 2 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 4
  JUMPIFNOT R2 [+4]
  MOVE R2 R0
  GETUPVAL R3 4
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETUPVAL R4 5
  GETUPVAL R5 6
  NEWTABLE R6 0 1
  GETUPVAL R7 7
  SETLIST R6 R7 1 [1]
  CALL R4 2 -1
  NAMECALL R2 R2 K1 ["dispatch"]
  CALL R2 -1 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  NAMECALL R2 R2 K2 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  MOVE R6 R0
  CALL R3 3 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K0 ["resultType"]
  CALL R3 2 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["Failed"]
  CALL R2 2 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PlaceInfos"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  CALL R1 1 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U9
  CAPTURE UPVAL U8
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K2 ["andThen"]
  CALL R1 2 1
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NAMECALL R1 R1 K2 ["andThen"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R1 0
  JUMPIFNOTEQKS R1 K0 ["0"] [+19]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Game Invite failed to send. Cannot send invite to unpublished Place."]
  CALL R1 1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["Failed"]
  CALL R3 2 -1
  NAMECALL R1 R0 K5 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K6 ["reject"]
  CALL R1 0 -1
  RETURN R1 -1
  NAMECALL R1 R0 K7 ["getState"]
  CALL R1 1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K8 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R2 1 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  NAMECALL R2 R2 K9 ["andThen"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETTABLEKS R6 R2 K7 ["Modules"]
  GETTABLEKS R5 R6 K8 ["Settings"]
  GETTABLEKS R4 R5 K9 ["Pages"]
  GETTABLEKS R3 R4 K10 ["ShareGame"]
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R3 K13 ["Thunks"]
  GETTABLEKS R5 R6 K14 ["ApiSendGameInvite"]
  CALL R4 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R10 R0 K15 ["Workspace"]
  GETTABLEKS R9 R10 K16 ["Packages"]
  GETTABLEKS R8 R9 K17 ["PlaceInfoRodux"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K13 ["Thunks"]
  GETTABLEKS R5 R6 K18 ["ApiFetchPlaceInfos"]
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R0 K16 ["Packages"]
  GETTABLEKS R7 R8 K19 ["Promise"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R3 K20 ["Actions"]
  GETTABLEKS R8 R9 K21 ["ReceivedUserInviteStatus"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R9 R3 K22 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K23 ["InviteStatus"]
  DUPCLOSURE R10 K24 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R10 1
