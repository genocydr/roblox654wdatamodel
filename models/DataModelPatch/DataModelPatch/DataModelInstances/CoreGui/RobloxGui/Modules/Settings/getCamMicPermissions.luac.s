PROTO_0:
  GETTABLEKS R3 R0 K0 ["isCameraEnabled"]
  JUMPIF R3 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K2 ["find"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K4 ["CAMERA_ACCESS"]
  CALL R3 2 1
  JUMPIFNOT R3 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K5 ["removeValue"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K4 ["CAMERA_ACCESS"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+32]
  GETTABLEKS R3 R0 K6 ["isVoiceEnabled"]
  JUMPIF R3 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K2 ["find"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K7 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  JUMPIFNOTEQKNIL R2 [+44]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K5 ["removeValue"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K7 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  MOVE R1 R3
  JUMP [+29]
  GETTABLEKS R3 R0 K6 ["isVoiceEnabled"]
  JUMPIF R3 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K2 ["find"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K7 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  JUMPIFNOT R3 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K5 ["removeValue"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K7 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 3
  JUMPIFNOT R3 [+26]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K2 ["find"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K7 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  JUMPIFNOT R3 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K5 ["removeValue"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K7 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 4
  JUMPIFNOT R3 [+36]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["List"]
  GETTABLEKS R3 R4 K2 ["find"]
  MOVE R4 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Permissions"]
  GETTABLEKS R5 R6 K4 ["CAMERA_ACCESS"]
  CALL R3 2 1
  JUMPIFNOT R3 [+23]
  GETUPVAL R3 5
  NAMECALL R3 R3 K8 ["GetCameraDevices"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["isEmpty"]
  MOVE R5 R3
  CALL R4 1 1
  JUMPIFNOT R4 [+13]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["List"]
  GETTABLEKS R5 R6 K5 ["removeValue"]
  MOVE R6 R1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["Permissions"]
  GETTABLEKS R7 R8 K4 ["CAMERA_ACCESS"]
  CALL R5 2 1
  MOVE R1 R5
  RETURN R1 1

PROTO_1:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [ipairs]
  GETUPVAL R4 0
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 1
  NEWTABLE R10 0 1
  MOVE R11 R7
  SETLIST R10 R11 1 [1]
  NAMECALL R8 R8 K2 ["hasPermissions"]
  CALL R8 2 1
  NAMECALL R8 R8 K3 ["await"]
  CALL R8 1 2
  JUMPIFNOT R8 [+13]
  GETTABLEKS R11 R9 K4 ["status"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["Status"]
  GETTABLEKS R12 R13 K6 ["AUTHORIZED"]
  JUMPIFEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLE R10 R2 R7
  JUMP [+2]
  LOADB R10 0
  SETTABLE R10 R2 R7
  FORGLOOP R3 2 [inext] [-29]
  DUPTABLE R3 K9 [{"hasCameraPermissions", "hasMicPermissions"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["Permissions"]
  GETTABLEKS R6 R7 K12 ["CAMERA_ACCESS"]
  GETTABLE R5 R2 R6
  ORK R4 R5 K10 [False]
  SETTABLEKS R4 R3 K7 ["hasCameraPermissions"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["Permissions"]
  GETTABLEKS R6 R7 K13 ["MICROPHONE_ACCESS"]
  GETTABLE R5 R2 R6
  ORK R4 R5 K10 [False]
  SETTABLEKS R4 R3 K8 ["hasMicPermissions"]
  GETUPVAL R4 2
  MOVE R5 R3
  CALL R4 1 0
  LOADB R4 0
  SETUPVAL R4 3
  GETUPVAL R4 4
  CALL R4 0 0
  MOVE R4 R0
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+72]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+24]
  LOADB R1 1
  GETTABLEKS R2 R0 K3 ["status"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Status"]
  GETTABLEKS R3 R4 K5 ["AUTHORIZED"]
  JUMPIFEQ R2 R3 [+15]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["List"]
  GETTABLEKS R2 R3 K7 ["find"]
  GETTABLEKS R3 R0 K8 ["missingPermissions"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["Permissions"]
  GETTABLEKS R4 R5 K10 ["CAMERA_ACCESS"]
  CALL R2 2 1
  NOT R1 R2
  GETUPVAL R2 3
  JUMPIFNOT R2 [+24]
  LOADB R2 1
  GETTABLEKS R3 R0 K3 ["status"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Status"]
  GETTABLEKS R4 R5 K5 ["AUTHORIZED"]
  JUMPIFEQ R3 R4 [+15]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["List"]
  GETTABLEKS R3 R4 K7 ["find"]
  GETTABLEKS R4 R0 K8 ["missingPermissions"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Permissions"]
  GETTABLEKS R5 R6 K11 ["MICROPHONE_ACCESS"]
  CALL R3 2 1
  NOT R2 R3
  GETUPVAL R4 5
  JUMPIFNOT R4 [+2]
  MOVE R3 R1
  JUMP [+1]
  LOADNIL R3
  SETUPVAL R3 4
  GETUPVAL R4 7
  JUMPIFNOT R4 [+2]
  MOVE R3 R2
  JUMP [+1]
  LOADNIL R3
  SETUPVAL R3 6
  GETUPVAL R3 4
  JUMPIFNOT R3 [+25]
  GETUPVAL R3 8
  NAMECALL R3 R3 K12 ["fire"]
  CALL R3 1 0
  JUMP [+20]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Status"]
  GETTABLEKS R1 R2 K5 ["AUTHORIZED"]
  JUMPIFNOTEQ R0 R1 [+10]
  GETUPVAL R1 8
  NAMECALL R1 R1 K12 ["fire"]
  CALL R1 1 0
  GETUPVAL R1 0
  SETUPVAL R1 4
  GETUPVAL R1 3
  SETUPVAL R1 6
  JUMP [+4]
  LOADB R1 0
  SETUPVAL R1 4
  LOADB R1 0
  SETUPVAL R1 6
  DUPTABLE R1 K15 [{"hasCameraPermissions", "hasMicPermissions"}]
  GETUPVAL R3 4
  ORK R2 R3 K16 [False]
  SETTABLEKS R2 R1 K13 ["hasCameraPermissions"]
  GETUPVAL R3 6
  ORK R2 R3 K16 [False]
  SETTABLEKS R2 R1 K14 ["hasMicPermissions"]
  GETUPVAL R2 9
  CALL R2 0 1
  JUMPIFNOT R2 [+22]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+20]
  GETUPVAL R3 4
  ORK R2 R3 K16 [False]
  GETUPVAL R4 10
  NAMECALL R4 R4 K17 ["IsStudio"]
  CALL R4 1 1
  JUMPIFNOT R4 [+2]
  LOADK R3 K18 ["studio"]
  JUMP [+1]
  LOADK R3 K19 ["client"]
  GETUPVAL R4 11
  MOVE R6 R3
  LOADK R7 K20 ["avatarChat"]
  LOADK R8 K21 ["CameraDevicePermissionPrompted"]
  DUPTABLE R9 K23 [{"didAuthorize"}]
  SETTABLEKS R2 R9 K22 ["didAuthorize"]
  NAMECALL R4 R4 K24 ["SendEventDeferred"]
  CALL R4 5 0
  GETUPVAL R2 12
  CALL R2 0 1
  JUMPIFNOT R2 [+15]
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 13
  JUMPIFNOT R2 [+11]
  GETUPVAL R2 14
  DUPTABLE R4 K26 [{"didAuthorize", "uiContext"}]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K22 ["didAuthorize"]
  GETUPVAL R5 13
  SETTABLEKS R5 R4 K25 ["uiContext"]
  NAMECALL R2 R2 K27 ["logPromptInteraction"]
  CALL R2 2 0
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETUPVAL R2 4
  JUMPIF R2 [+10]
  GETUPVAL R2 15
  CALL R2 0 1
  JUMPIF R2 [+7]
  GETUPVAL R2 16
  GETUPVAL R5 17
  GETTABLEKS R4 R5 K28 ["VideoNoPermission"]
  NAMECALL R2 R2 K29 ["showPrompt"]
  CALL R2 2 0
  GETUPVAL R2 18
  MOVE R3 R1
  CALL R2 1 0
  LOADB R2 0
  SETUPVAL R2 19
  GETUPVAL R2 20
  CALL R2 0 0
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["AUTHORIZED"]
  JUMPIFNOTEQ R1 R2 [+16]
  DUPTABLE R1 K5 [{"hasCameraPermissions", "hasMicPermissions"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K3 ["hasCameraPermissions"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K4 ["hasMicPermissions"]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  LOADB R2 0
  SETUPVAL R2 4
  GETUPVAL R2 5
  CALL R2 0 0
  RETURN R0 1
  GETUPVAL R1 6
  CALL R1 0 1
  JUMPIFNOT R1 [+15]
  GETUPVAL R1 2
  JUMPIFNOT R1 [+13]
  GETUPVAL R1 7
  JUMPIFNOT R1 [+11]
  GETUPVAL R1 8
  DUPTABLE R3 K8 [{"didAuthorize", "uiContext"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["didAuthorize"]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K7 ["uiContext"]
  NAMECALL R1 R1 K9 ["logPromptImpression"]
  CALL R1 2 0
  GETUPVAL R1 0
  GETUPVAL R3 9
  NAMECALL R1 R1 K10 ["requestPermissions"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U2
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K11 ["andThen"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  LOADB R6 1
  LOADB R7 1
  GETUPVAL R8 0
  JUMPIF R8 [+3]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+32]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K0 ["List"]
  GETTABLEKS R8 R9 K1 ["find"]
  MOVE R9 R3
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K2 ["Permissions"]
  GETTABLEKS R10 R11 K3 ["CAMERA_ACCESS"]
  CALL R8 2 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K0 ["List"]
  GETTABLEKS R8 R9 K1 ["find"]
  MOVE R9 R3
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K2 ["Permissions"]
  GETTABLEKS R10 R11 K4 ["MICROPHONE_ACCESS"]
  CALL R8 2 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R8 4
  MOVE R9 R0
  MOVE R10 R3
  MOVE R11 R4
  CALL R8 3 1
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K0 ["List"]
  GETTABLEKS R10 R11 K1 ["find"]
  MOVE R11 R8
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K2 ["Permissions"]
  GETTABLEKS R12 R13 K3 ["CAMERA_ACCESS"]
  CALL R10 2 1
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K0 ["List"]
  GETTABLEKS R11 R12 K1 ["find"]
  MOVE R12 R8
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K2 ["Permissions"]
  GETTABLEKS R13 R14 K4 ["MICROPHONE_ACCESS"]
  CALL R11 2 1
  JUMPIFNOTEQKNIL R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIFNOT R8 [+4]
  LENGTH R11 R8
  LOADN R12 0
  JUMPIFNOTLE R11 R12 [+17]
  DUPTABLE R11 K7 [{"hasCameraPermissions", "hasMicPermissions"}]
  LOADB R12 0
  SETTABLEKS R12 R11 K5 ["hasCameraPermissions"]
  LOADB R12 0
  SETTABLEKS R12 R11 K6 ["hasMicPermissions"]
  MOVE R12 R1
  MOVE R13 R11
  CALL R12 1 0
  LOADB R12 0
  SETUPVAL R12 5
  MOVE R12 R2
  CALL R12 0 0
  CLOSEUPVALS R6
  RETURN R0 0
  JUMPIFNOTEQKB R4 TRUE [+13]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K8 ["new"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R8
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CALL R11 1 -1
  CLOSEUPVALS R6
  RETURN R11 -1
  GETUPVAL R11 3
  MOVE R13 R8
  NAMECALL R11 R11 K9 ["hasPermissions"]
  CALL R11 2 1
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE UPVAL U8
  CAPTURE VAL R8
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE REF R6
  CAPTURE UPVAL U10
  CAPTURE REF R7
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  NAMECALL R11 R11 K10 ["andThen"]
  CALL R11 2 -1
  CLOSEUPVALS R6
  RETURN R11 -1

PROTO_5:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  SETUPVAL R1 1
  GETUPVAL R1 2
  JUMPIFEQKNIL R1 [+4]
  GETUPVAL R1 1
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R1
  RETURN R1 1
  LOADB R1 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["Permissions"]
  GETTABLEKS R7 R8 K1 ["MICROPHONE_ACCESS"]
  JUMPIFEQ R6 R7 [+9]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["Permissions"]
  GETTABLEKS R7 R8 K2 ["CAMERA_ACCESS"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R1 1
  FORGLOOP R2 2 [-16]
  JUMPIFNOT R1 [+2]
  LOADNIL R2
  RETURN R2 1
  DUPTABLE R2 K5 [{"hasCameraPermissions", "hasMicPermissions"}]
  GETUPVAL R4 2
  ORK R3 R4 K6 [False]
  SETTABLEKS R3 R2 K3 ["hasCameraPermissions"]
  GETUPVAL R4 1
  ORK R3 R4 K6 [False]
  SETTABLEKS R3 R2 K4 ["hasMicPermissions"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEN R0 R1 1
  JUMPIFNOT R0 [+19]
  GETUPVAL R1 0
  GETTABLEN R0 R1 1
  GETIMPORT R1 K2 [table.remove]
  GETUPVAL R2 0
  LOADN R3 1
  CALL R1 2 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K3 ["callback"]
  GETTABLEKS R3 R0 K4 ["permissionsToRequest"]
  GETTABLEKS R4 R0 K5 ["shouldNotRequestPerms"]
  GETTABLEKS R5 R0 K6 ["context"]
  GETTABLEKS R6 R0 K7 ["getRawPermission"]
  CALL R1 5 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  LOADB R1 0
  SETUPVAL R1 1
  GETUPVAL R2 2
  GETTABLEN R1 R2 1
  JUMPIFNOT R1 [+19]
  GETUPVAL R2 2
  GETTABLEN R1 R2 1
  GETIMPORT R2 K2 [table.remove]
  GETUPVAL R3 2
  LOADN R4 1
  CALL R2 2 0
  GETUPVAL R2 3
  GETTABLEKS R3 R1 K3 ["callback"]
  GETTABLEKS R4 R1 K4 ["permissionsToRequest"]
  GETTABLEKS R5 R1 K5 ["shouldNotRequestPerms"]
  GETTABLEKS R6 R1 K6 ["context"]
  GETTABLEKS R7 R1 K7 ["getRawPermission"]
  CALL R2 5 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  DUPTABLE R0 K3 [{"isVoiceEnabled", "isCameraEnabled"}]
  GETUPVAL R1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["ClientFeatures"]
  GETIMPORT R4 K8 [Enum.AvatarChatServiceFeature.UserAudio]
  NAMECALL R1 R1 K9 ["IsEnabled"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["isVoiceEnabled"]
  GETUPVAL R1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["ClientFeatures"]
  GETIMPORT R4 K11 [Enum.AvatarChatServiceFeature.UserVideo]
  NAMECALL R1 R1 K9 ["IsEnabled"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["isCameraEnabled"]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ClientFeaturesInitialized"]
  JUMPIFNOT R2 [+27]
  DUPTABLE R2 K3 [{"isVoiceEnabled", "isCameraEnabled"}]
  GETUPVAL R3 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["ClientFeatures"]
  GETIMPORT R6 K8 [Enum.AvatarChatServiceFeature.UserAudio]
  NAMECALL R3 R3 K9 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["isVoiceEnabled"]
  GETUPVAL R3 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["ClientFeatures"]
  GETIMPORT R6 K11 [Enum.AvatarChatServiceFeature.UserVideo]
  NAMECALL R3 R3 K9 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K2 ["isCameraEnabled"]
  MOVE R3 R0
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0
  LOADNIL R2
  GETUPVAL R3 0
  LOADK R5 K4 ["ClientFeatures"]
  NAMECALL R3 R3 K12 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K13 ["Connect"]
  CALL R3 2 1
  MOVE R2 R3
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  GETUPVAL R7 5
  CALL R1 6 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  CALL R2 0 1
  DUPTABLE R3 K2 [{"isVoiceEnabled", "isCameraEnabled"}]
  GETTABLEKS R4 R2 K3 ["isVoiceEnabledPlaceSettings"]
  SETTABLEKS R4 R3 K0 ["isVoiceEnabled"]
  GETTABLEKS R4 R2 K4 ["isCameraEnabledPlaceSettings"]
  SETTABLEKS R4 R3 K1 ["isCameraEnabled"]
  MOVE R4 R0
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  CALL R2 0 1
  DUPTABLE R3 K2 [{"isVoiceEnabled", "isCameraEnabled"}]
  GETTABLEKS R4 R2 K3 ["isVoiceEnabledUserSettings"]
  SETTABLEKS R4 R3 K0 ["isVoiceEnabled"]
  GETTABLEKS R4 R2 K4 ["isCameraEnabledUserSettings"]
  SETTABLEKS R4 R3 K1 ["isCameraEnabled"]
  MOVE R4 R0
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEN R1 R0 1
  GETTABLEN R2 R0 2
  DUPTABLE R3 K2 [{"isVoiceEnabled", "isCameraEnabled"}]
  GETTABLEKS R4 R1 K0 ["isVoiceEnabled"]
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R2 K0 ["isVoiceEnabled"]
  SETTABLEKS R4 R3 K0 ["isVoiceEnabled"]
  GETTABLEKS R4 R1 K1 ["isCameraEnabled"]
  JUMPIFNOT R4 [+2]
  GETTABLEKS R4 R2 K1 ["isCameraEnabled"]
  SETTABLEKS R4 R3 K1 ["isCameraEnabled"]
  RETURN R3 1

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  GETUPVAL R7 5
  CALL R1 6 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  CALL R2 0 1
  DUPTABLE R3 K2 [{"isVoiceEnabled", "isCameraEnabled"}]
  GETTABLEKS R4 R2 K3 ["isVoiceEnabledUserSettings"]
  SETTABLEKS R4 R3 K0 ["isVoiceEnabled"]
  GETTABLEKS R4 R2 K4 ["isCameraEnabledUserSettings"]
  SETTABLEKS R4 R3 K1 ["isCameraEnabled"]
  MOVE R4 R0
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  GETUPVAL R4 2
  GETUPVAL R5 3
  LOADNIL R6
  GETUPVAL R7 4
  CALL R1 6 0
  RETURN R0 0

PROTO_17:
  NEWTABLE R5 0 0
  JUMPIFNOT R1 [+2]
  MOVE R5 R1
  JUMP [+15]
  NEWTABLE R6 0 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["Permissions"]
  GETTABLEKS R7 R8 K1 ["MICROPHONE_ACCESS"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["Permissions"]
  GETTABLEKS R8 R9 K2 ["CAMERA_ACCESS"]
  SETLIST R6 R7 2 [1]
  MOVE R5 R6
  DUPCLOSURE R6 K3 [PROTO_6]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R7 3
  JUMPIF R7 [+3]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+38]
  GETUPVAL R8 5
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  NOT R7 R4
  JUMP [+1]
  LOADB R7 1
  JUMPIFNOT R7 [+31]
  GETUPVAL R7 6
  MOVE R8 R5
  CALL R7 1 1
  JUMPIFNOT R7 [+27]
  MOVE R8 R0
  MOVE R9 R7
  CALL R8 1 0
  GETUPVAL R9 1
  GETTABLEN R8 R9 1
  JUMPIFNOT R8 [+19]
  GETUPVAL R9 1
  GETTABLEN R8 R9 1
  GETIMPORT R9 K6 [table.remove]
  GETUPVAL R10 1
  LOADN R11 1
  CALL R9 2 0
  GETUPVAL R9 2
  GETTABLEKS R10 R8 K7 ["callback"]
  GETTABLEKS R11 R8 K8 ["permissionsToRequest"]
  GETTABLEKS R12 R8 K9 ["shouldNotRequestPerms"]
  GETTABLEKS R13 R8 K10 ["context"]
  GETTABLEKS R14 R8 K11 ["getRawPermission"]
  CALL R9 5 0
  CLOSEUPVALS R5
  RETURN R0 0
  GETUPVAL R7 7
  JUMPIFNOT R7 [+19]
  GETUPVAL R8 1
  DUPTABLE R9 K12 [{"callback", "permissionsToRequest", "shouldNotRequestPerms", "context", "getRawPermission"}]
  SETTABLEKS R0 R9 K7 ["callback"]
  SETTABLEKS R1 R9 K8 ["permissionsToRequest"]
  SETTABLEKS R2 R9 K9 ["shouldNotRequestPerms"]
  SETTABLEKS R3 R9 K10 ["context"]
  SETTABLEKS R4 R9 K11 ["getRawPermission"]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K14 [table.insert]
  CALL R7 2 0
  CLOSEUPVALS R5
  RETURN R0 0
  LOADB R7 1
  SETUPVAL R7 7
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+16]
  JUMPIFNOT R4 [+15]
  GETUPVAL R7 0
  MOVE R9 R5
  NAMECALL R7 R7 K15 ["hasPermissions"]
  CALL R7 2 1
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R7 R7 K16 ["andThen"]
  CALL R7 2 -1
  CLOSEUPVALS R5
  RETURN R7 -1
  GETUPVAL R7 3
  JUMPIF R7 [+3]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+59]
  GETUPVAL R7 8
  CALL R7 0 1
  JUMPIFNOT R7 [+18]
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K17 ["new"]
  DUPCLOSURE R8 K18 [PROTO_9]
  CAPTURE UPVAL U10
  CALL R7 1 1
  NEWCLOSURE R9 P3
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE REF R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  NAMECALL R7 R7 K16 ["andThen"]
  CALL R7 2 -1
  CLOSEUPVALS R5
  RETURN R7 -1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K17 ["new"]
  DUPCLOSURE R8 K19 [PROTO_11]
  CAPTURE UPVAL U12
  CALL R7 1 1
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K17 ["new"]
  DUPCLOSURE R9 K20 [PROTO_12]
  CAPTURE UPVAL U13
  CALL R8 1 1
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K21 ["all"]
  NEWTABLE R10 0 2
  MOVE R11 R7
  MOVE R12 R8
  SETLIST R10 R11 2 [1]
  CALL R9 1 1
  DUPCLOSURE R11 K22 [PROTO_13]
  NAMECALL R9 R9 K16 ["andThen"]
  CALL R9 2 1
  NEWCLOSURE R11 P7
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE REF R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  NAMECALL R9 R9 K16 ["andThen"]
  CALL R9 2 -1
  CLOSEUPVALS R5
  RETURN R9 -1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K17 ["new"]
  DUPCLOSURE R8 K23 [PROTO_15]
  CAPTURE UPVAL U13
  CALL R7 1 1
  NEWCLOSURE R9 P9
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE REF R5
  CAPTURE VAL R3
  NAMECALL R7 R7 K16 ["andThen"]
  CALL R7 2 -1
  CLOSEUPVALS R5
  RETURN R7 -1

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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RunService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["VideoCaptureService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Cryo"]
  CALL R5 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K12 ["Workspace"]
  GETTABLEKS R10 R11 K10 ["Packages"]
  GETTABLEKS R9 R10 K13 ["PermissionsProtocol"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K13 ["PermissionsProtocol"]
  GETTABLEKS R6 R7 K14 ["default"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R11 R1 K15 ["RobloxGui"]
  GETTABLEKS R10 R11 K16 ["Modules"]
  GETTABLEKS R9 R10 K17 ["Settings"]
  GETTABLEKS R8 R9 K18 ["getVoiceCameraAccountSettings"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R12 R1 K15 ["RobloxGui"]
  GETTABLEKS R11 R12 K16 ["Modules"]
  GETTABLEKS R10 R11 K17 ["Settings"]
  GETTABLEKS R9 R10 K19 ["getPlaceVoiceCameraEnabled"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R13 R1 K15 ["RobloxGui"]
  GETTABLEKS R12 R13 K16 ["Modules"]
  GETTABLEKS R11 R12 K17 ["Settings"]
  GETTABLEKS R10 R11 K20 ["cameraDevicePermissionGrantedSignal"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R15 R1 K15 ["RobloxGui"]
  GETTABLEKS R14 R15 K16 ["Modules"]
  GETTABLEKS R13 R14 K17 ["Settings"]
  GETTABLEKS R12 R13 K21 ["Resources"]
  GETTABLEKS R11 R12 K22 ["MicrophoneDevicePermissionsLogging"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R0 K10 ["Packages"]
  GETTABLEKS R12 R13 K23 ["Promise"]
  CALL R11 1 1
  LOADK R14 K15 ["RobloxGui"]
  NAMECALL R12 R1 K24 ["WaitForChild"]
  CALL R12 2 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R12 K16 ["Modules"]
  GETTABLEKS R15 R16 K25 ["Tracker"]
  GETTABLEKS R14 R15 K26 ["TrackerMenu"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R12 K16 ["Modules"]
  GETTABLEKS R16 R17 K25 ["Tracker"]
  GETTABLEKS R15 R16 K27 ["TrackerPromptType"]
  CALL R14 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R0 K12 ["Workspace"]
  GETTABLEKS R18 R19 K10 ["Packages"]
  GETTABLEKS R17 R18 K28 ["SharedFlags"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K29 ["GetFFlagAvatarChatCoreScriptSupport"]
  CALL R15 0 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R21 R1 K15 ["RobloxGui"]
  GETTABLEKS R20 R21 K16 ["Modules"]
  GETTABLEKS R19 R20 K30 ["SelfieView"]
  GETTABLEKS R18 R19 K31 ["Flags"]
  GETTABLEKS R17 R18 K32 ["GetFFlagSelfieViewEnabled"]
  CALL R16 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R0 K12 ["Workspace"]
  GETTABLEKS R20 R21 K10 ["Packages"]
  GETTABLEKS R19 R20 K28 ["SharedFlags"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K33 ["GetFFlagAvatarChatServiceEnabled"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R12 K16 ["Modules"]
  GETTABLEKS R20 R21 K31 ["Flags"]
  GETTABLEKS R19 R20 K34 ["getFFlagDoNotPromptCameraPermissionsOnMount"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R12 K16 ["Modules"]
  GETTABLEKS R21 R22 K31 ["Flags"]
  GETTABLEKS R20 R21 K35 ["getFFlagEnableAnalyticsForCameraDevicePermissions"]
  CALL R19 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R0 K12 ["Workspace"]
  GETTABLEKS R23 R24 K10 ["Packages"]
  GETTABLEKS R22 R23 K28 ["SharedFlags"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K36 ["GetFFlagJoinWithoutMicPermissions"]
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R0 K12 ["Workspace"]
  GETTABLEKS R24 R25 K10 ["Packages"]
  GETTABLEKS R23 R24 K28 ["SharedFlags"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K37 ["GetFFlagGetRawMicrophonePermissions"]
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R12 K16 ["Modules"]
  GETTABLEKS R24 R25 K31 ["Flags"]
  GETTABLEKS R23 R24 K38 ["getFFlagMicrophoneDevicePermissionsPromptLogging"]
  CALL R22 1 1
  GETIMPORT R23 K1 [game]
  LOADK R25 K39 ["CheckCameraAvailabilityBeforePermissions"]
  LOADB R26 0
  NAMECALL R23 R23 K40 ["DefineFastFlag"]
  CALL R23 3 1
  GETIMPORT R24 K1 [game]
  LOADK R26 K41 ["DebugSkipVoicePermissionCheck"]
  LOADB R27 0
  NAMECALL R24 R24 K40 ["DefineFastFlag"]
  CALL R24 3 1
  MOVE R26 R17
  CALL R26 0 1
  JUMPIFNOT R26 [+7]
  GETIMPORT R25 K1 [game]
  LOADK R27 K42 ["AvatarChatService"]
  NAMECALL R25 R25 K3 ["GetService"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  LOADNIL R26
  LOADNIL R27
  NEWTABLE R28 0 0
  LOADB R29 0
  DUPCLOSURE R30 K43 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R20
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R4
  NEWCLOSURE R31 P1
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R30
  CAPTURE REF R29
  CAPTURE VAL R11
  CAPTURE VAL R22
  CAPTURE VAL R10
  CAPTURE REF R26
  CAPTURE REF R27
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R14
  NEWCLOSURE R32 P2
  CAPTURE VAL R24
  CAPTURE REF R27
  CAPTURE REF R26
  CAPTURE VAL R6
  NEWCLOSURE R33 P3
  CAPTURE VAL R6
  CAPTURE VAL R28
  CAPTURE VAL R33
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R32
  CAPTURE REF R29
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R25
  CAPTURE VAL R31
  CAPTURE VAL R8
  CAPTURE VAL R7
  CLOSEUPVALS R26
  RETURN R33 1
