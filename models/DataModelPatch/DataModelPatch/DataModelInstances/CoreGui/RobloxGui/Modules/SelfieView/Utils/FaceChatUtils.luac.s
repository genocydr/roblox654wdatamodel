PROTO_0:
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+3]
  GETUPVAL R0 0
  RETURN R0 1
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__TESTEZ_RUNNING_TEST__"]
  JUMPIFNOT R0 [+20]
  DUPTABLE R0 K9 [{"placeCamEnabled", "placeMicEnabled", "userCamEnabled", "userCamEligible", "userMicEnabled", "userMicEligible"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K3 ["placeCamEnabled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["placeMicEnabled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["userCamEnabled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["userCamEligible"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["userMicEnabled"]
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["userMicEligible"]
  RETURN R0 1
  GETIMPORT R0 K11 [pcall]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K12 ["GetClientFeaturesAsync"]
  GETUPVAL R2 2
  CALL R0 2 2
  JUMPIF R0 [+24]
  GETIMPORT R2 K14 [warn]
  LOADK R3 K15 ["Unable to get Client Features from AvatarChatService"]
  CALL R2 1 0
  DUPTABLE R2 K9 [{"placeCamEnabled", "placeMicEnabled", "userCamEnabled", "userCamEligible", "userMicEnabled", "userMicEligible"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["placeCamEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["placeMicEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["userCamEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["userCamEligible"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["userMicEnabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["userMicEligible"]
  RETURN R2 1
  DUPTABLE R2 K16 [{"placeMicEnabled", "userMicEnabled", "userMicEligible", "placeCamEnabled", "userCamEnabled", "userCamEligible"}]
  GETUPVAL R3 2
  MOVE R5 R1
  GETIMPORT R6 K20 [Enum.AvatarChatServiceFeature.PlaceAudio]
  NAMECALL R3 R3 K21 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K4 ["placeMicEnabled"]
  GETUPVAL R3 2
  MOVE R5 R1
  GETIMPORT R6 K23 [Enum.AvatarChatServiceFeature.UserAudio]
  NAMECALL R3 R3 K21 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K7 ["userMicEnabled"]
  GETUPVAL R3 2
  MOVE R5 R1
  GETIMPORT R6 K25 [Enum.AvatarChatServiceFeature.UserAudioEligible]
  NAMECALL R3 R3 K21 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K8 ["userMicEligible"]
  GETUPVAL R3 2
  MOVE R5 R1
  GETIMPORT R6 K27 [Enum.AvatarChatServiceFeature.PlaceVideo]
  NAMECALL R3 R3 K21 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["placeCamEnabled"]
  GETUPVAL R3 2
  MOVE R5 R1
  GETIMPORT R6 K29 [Enum.AvatarChatServiceFeature.UserVideo]
  NAMECALL R3 R3 K21 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K5 ["userCamEnabled"]
  GETUPVAL R3 2
  MOVE R5 R1
  GETIMPORT R6 K31 [Enum.AvatarChatServiceFeature.UserVideoEligible]
  NAMECALL R3 R3 K21 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K6 ["userCamEligible"]
  GETUPVAL R3 3
  JUMPIFNOT R3 [+15]
  GETTABLEKS R3 R2 K3 ["placeCamEnabled"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R3 R2 K6 ["userCamEligible"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R3 R2 K5 ["userCamEnabled"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIF R3 [+3]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["userCamEnabled"]
  SETUPVAL R2 0
  RETURN R2 1

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsStarted"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 2
  CALL R1 0 1
  GETTABLEKS R0 R1 K1 ["userCamEnabled"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["VideoAnimationEnabled"]
  NOT R1 R2
  SETTABLEKS R1 R0 K2 ["VideoAnimationEnabled"]
  RETURN R0 0

PROTO_3:
  DUPCLOSURE R0 K0 [PROTO_2]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R1 3
  MOVE R2 R0
  NEWTABLE R3 0 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K1 ["Permissions"]
  GETTABLEKS R4 R5 K2 ["CAMERA_ACCESS"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AudioAnimationEnabled"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["VideoAnimationEnabled"]
  JUMPIF R0 [+3]
  GETIMPORT R0 K5 [Enum.TrackerMode.Audio]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AudioAnimationEnabled"]
  JUMPIF R0 [+12]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["VideoAnimationEnabled"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 0
  NAMECALL R0 R0 K6 ["IsStarted"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  GETIMPORT R0 K8 [Enum.TrackerMode.Video]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AudioAnimationEnabled"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["VideoAnimationEnabled"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R0 0
  NAMECALL R0 R0 K6 ["IsStarted"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  GETIMPORT R0 K10 [Enum.TrackerMode.AudioVideo]
  RETURN R0 1
  GETIMPORT R0 K12 [Enum.TrackerMode.None]
  RETURN R0 1

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 1
  LOADB R1 1
  GETIMPORT R2 K3 [Enum.TrackerMode.AudioVideo]
  JUMPIFEQ R0 R2 [+7]
  GETIMPORT R2 K5 [Enum.TrackerMode.Video]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarChatService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R2 K9 ["Modules"]
  GETTABLEKS R5 R6 K10 ["Settings"]
  GETTABLEKS R4 R5 K11 ["getCamMicPermissions"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K12 ["CorePackages"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R4 K13 ["Workspace"]
  GETTABLEKS R9 R10 K14 ["Packages"]
  GETTABLEKS R8 R9 K15 ["PermissionsProtocol"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K15 ["PermissionsProtocol"]
  GETTABLEKS R5 R6 K16 ["default"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R4 K13 ["Workspace"]
  GETTABLEKS R9 R10 K14 ["Packages"]
  GETTABLEKS R8 R9 K17 ["SharedFlags"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K18 ["GetFFlagAvatarChatServiceEnabled"]
  GETIMPORT R7 K1 [game]
  LOADK R9 K19 ["DisableCameraOnSelfieViewForLowspecDevices"]
  LOADB R10 0
  NAMECALL R7 R7 K20 ["DefineFastFlag"]
  CALL R7 3 1
  DUPCLOSURE R8 K21 [PROTO_0]
  JUMPIFNOT R7 [+10]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R2 K9 ["Modules"]
  GETTABLEKS R11 R12 K10 ["Settings"]
  GETTABLEKS R10 R11 K22 ["isCamEnabledForUserAndPlace"]
  CALL R9 1 1
  MOVE R8 R9
  GETIMPORT R9 K1 [game]
  LOADK R11 K23 ["FaceAnimatorService"]
  NAMECALL R9 R9 K3 ["GetService"]
  CALL R9 2 1
  LOADNIL R10
  NEWCLOSURE R11 P1
  CAPTURE REF R10
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE REF R8
  DUPCLOSURE R12 K24 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPCLOSURE R13 K25 [PROTO_4]
  CAPTURE VAL R9
  DUPCLOSURE R14 K26 [PROTO_5]
  CAPTURE VAL R13
  DUPTABLE R15 K31 [{"getPermissions", "toggleVideoAnimation", "getTrackerMode", "isCameraOn"}]
  SETTABLEKS R11 R15 K27 ["getPermissions"]
  SETTABLEKS R12 R15 K28 ["toggleVideoAnimation"]
  SETTABLEKS R13 R15 K29 ["getTrackerMode"]
  SETTABLEKS R14 R15 K30 ["isCameraOn"]
  CLOSEUPVALS R8
  RETURN R15 1
