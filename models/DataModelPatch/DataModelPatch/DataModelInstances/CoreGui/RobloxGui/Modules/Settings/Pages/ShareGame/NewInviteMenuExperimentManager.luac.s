PROTO_0:
  DUPTABLE R1 K5 [{"_ixpServiceWrapper", "_styleEnabled", "_customizationEnabled", "_newSendEndpointEnabled", "_inviteListSortOrder"}]
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["_ixpServiceWrapper"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["_styleEnabled"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["_customizationEnabled"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["_newSendEndpointEnabled"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+2]
  LOADN R2 0
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["_inviteListSortOrder"]
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K7 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_styleEnabled"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_customizationEnabled"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_newSendEndpointEnabled"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_inviteListSortOrder"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_ixpServiceWrapper"]
  NAMECALL R0 R0 K1 ["WaitForInitialization"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_ixpServiceWrapper"]
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K2 ["GetLayerData"]
  CALL R0 -1 1
  JUMPIFNOT R0 [+29]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K4 ["NewInviteMenuStyleEnabled"]
  ORK R2 R3 K3 [False]
  SETTABLEKS R2 R1 K5 ["_styleEnabled"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K6 ["NewInviteMenuCustomizationEnabled"]
  ORK R2 R3 K3 [False]
  SETTABLEKS R2 R1 K7 ["_customizationEnabled"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K8 ["NewInviteMenuEndpointEnabled"]
  ORK R2 R3 K3 [False]
  SETTABLEKS R2 R1 K9 ["_newSendEndpointEnabled"]
  GETUPVAL R1 0
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K11 ["invite_list_sort_order"]
  ORK R2 R3 K10 [0]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K12 ["_inviteListSortOrder"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K4 ["RobloxGui"]
  GETTABLEKS R3 R4 K7 ["Modules"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K7 ["Modules"]
  GETTABLEKS R6 R7 K10 ["Common"]
  GETTABLEKS R5 R6 K11 ["IXPServiceWrapper"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R3 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["GetFStringInExperienceNotificationsLayer"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R3 K12 ["Flags"]
  GETTABLEKS R7 R8 K14 ["GetFFlagEnableNewInviteMenuIXP"]
  CALL R6 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R2 K15 ["Workspace"]
  GETTABLEKS R10 R11 K16 ["Packages"]
  GETTABLEKS R9 R10 K17 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K18 ["GetFFlagInviteListRerank"]
  NEWTABLE R8 8 0
  SETTABLEKS R8 R8 K19 ["__index"]
  DUPCLOSURE R9 K20 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K21 ["new"]
  DUPCLOSURE R9 K22 [PROTO_1]
  SETTABLEKS R9 R8 K23 ["getStyleEnabled"]
  DUPCLOSURE R9 K24 [PROTO_2]
  SETTABLEKS R9 R8 K25 ["getCustomizationEnabled"]
  DUPCLOSURE R9 K26 [PROTO_3]
  SETTABLEKS R9 R8 K27 ["getNewSendEndpointEnabled"]
  MOVE R9 R7
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  DUPCLOSURE R9 K28 [PROTO_4]
  SETTABLEKS R9 R8 K29 ["getInviteListSortOrder"]
  DUPCLOSURE R9 K30 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K31 ["initialize"]
  GETTABLEKS R9 R8 K21 ["new"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K32 ["default"]
  RETURN R8 1
