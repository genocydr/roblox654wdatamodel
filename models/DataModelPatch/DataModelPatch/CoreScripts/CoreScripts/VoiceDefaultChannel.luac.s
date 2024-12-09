PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["getService"]
  CALL R1 1 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R2 1
  LOADK R4 K1 ["Joining default channel"]
  NAMECALL R2 R2 K2 ["info"]
  CALL R2 2 0
  LOADK R4 K3 ["default"]
  MOVE R5 R0
  NAMECALL R2 R1 K4 ["JoinByGroupIdToken"]
  CALL R2 3 1
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+15]
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 3
  LOADB R5 1
  LOADK R6 K5 ["defaultJoinSuccess"]
  NAMECALL R3 R3 K6 ["reportVoiceChatJoinResult"]
  CALL R3 3 0
  RETURN R2 1
  GETUPVAL R3 3
  LOADB R5 0
  LOADK R6 K7 ["defaultJoinFailed"]
  LOADK R7 K8 ["error"]
  NAMECALL R3 R3 K6 ["reportVoiceChatJoinResult"]
  CALL R3 4 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  JUMPIFNOTEQKB R0 FALSE [+5]
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["InitialJoinFailedPrompt"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["VoiceChatServiceManager did not initialize"]
  NAMECALL R0 R0 K1 ["info"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["status"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["CallStatus"]
  GETTABLEKS R4 R5 K2 ["Idle"]
  GETTABLEKS R3 R4 K3 ["rawValue"]
  CALL R3 0 1
  JUMPIFEQ R2 R3 [+16]
  GETTABLEKS R2 R0 K0 ["status"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["CallStatus"]
  GETTABLEKS R4 R5 K4 ["Ringing"]
  GETTABLEKS R3 R4 K3 ["rawValue"]
  CALL R3 0 1
  JUMPIFEQ R2 R3 [+4]
  GETTABLEKS R1 R0 K5 ["muted"]
  JUMP [+1]
  GETUPVAL R1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K6 ["asyncInit"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K7 ["andThen"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K8 ["catch"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["AppStorageService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 -1
  NAMECALL R0 R0 K4 ["VoiceChatFirstTimeUX"]
  CALL R0 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["NotificationService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["Players"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K7 ["RobloxGui"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R4 K10 ["Modules"]
  GETTABLEKS R8 R9 K11 ["VoiceChat"]
  GETTABLEKS R7 R8 K12 ["VoiceChatServiceManager"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["default"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K14 ["Workspace"]
  GETTABLEKS R10 R11 K15 ["Packages"]
  GETTABLEKS R9 R10 K16 ["CallProtocol"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K16 ["CallProtocol"]
  GETTABLEKS R6 R7 K13 ["default"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K14 ["Workspace"]
  GETTABLEKS R10 R11 K15 ["Packages"]
  GETTABLEKS R9 R10 K16 ["CallProtocol"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["Enums"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K14 ["Workspace"]
  GETTABLEKS R10 R11 K15 ["Packages"]
  GETTABLEKS R9 R10 K18 ["VoiceChatCore"]
  CALL R8 1 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K19 ["DebugDefaultChannelStartMuted"]
  LOADB R12 1
  NAMECALL R9 R9 K20 ["DefineFastFlag"]
  CALL R9 3 1
  GETIMPORT R10 K1 [game]
  LOADK R12 K21 ["UseNotificationServiceIsConnected"]
  LOADB R13 0
  NAMECALL R10 R10 K20 ["DefineFastFlag"]
  CALL R10 3 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K22 ["DefaultChannelEnableDefaultVoice"]
  LOADB R14 1
  NAMECALL R11 R11 K20 ["DefineFastFlag"]
  CALL R11 3 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K23 ["AlwaysJoinWhenUsingAudioAPI"]
  LOADB R15 0
  NAMECALL R12 R12 K20 ["DefineFastFlag"]
  CALL R12 3 1
  GETIMPORT R13 K1 [game]
  LOADK R15 K24 ["DefaultChannelDontWaitOnCharacterWithAudioApi"]
  LOADB R16 0
  NAMECALL R13 R13 K20 ["DefineFastFlag"]
  CALL R13 3 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R8 K25 ["Flags"]
  GETTABLEKS R15 R16 K26 ["GetFFlagEnableLuaVoiceChatAnalytics"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R4 K10 ["Modules"]
  GETTABLEKS R17 R18 K25 ["Flags"]
  GETTABLEKS R16 R17 K27 ["GetFFlagRemoveInGameChatBubbleChatReferences"]
  CALL R15 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R1 K14 ["Workspace"]
  GETTABLEKS R19 R20 K15 ["Packages"]
  GETTABLEKS R18 R19 K28 ["SharedFlags"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K29 ["GetFFlagSeamlessVoiceFTUX"]
  GETIMPORT R17 K1 [game]
  LOADK R19 K30 ["VoiceServiceGenerateDefaultChannelAvailable"]
  NAMECALL R17 R17 K31 ["GetEngineFeature"]
  CALL R17 2 1
  GETIMPORT R18 K1 [game]
  LOADK R20 K32 ["VoiceServiceEnableDefaultVoiceAvailable"]
  NAMECALL R18 R18 K31 ["GetEngineFeature"]
  CALL R18 2 1
  GETIMPORT R19 K1 [game]
  LOADK R21 K33 ["NotificationServiceIsConnectedAvailable"]
  NAMECALL R19 R19 K31 ["GetEngineFeature"]
  CALL R19 2 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R24 R4 K10 ["Modules"]
  GETTABLEKS R23 R24 K34 ["InGameChat"]
  GETTABLEKS R22 R23 K35 ["BubbleChat"]
  GETTABLEKS R21 R22 K36 ["Logger"]
  CALL R20 1 1
  GETIMPORT R22 K38 [script]
  GETTABLEKS R21 R22 K39 ["Name"]
  CALL R20 1 1
  MOVE R21 R15
  CALL R21 0 1
  JUMPIFNOT R21 [+15]
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R4 K10 ["Modules"]
  GETTABLEKS R23 R24 K11 ["VoiceChat"]
  GETTABLEKS R22 R23 K36 ["Logger"]
  CALL R21 1 1
  GETIMPORT R23 K38 [script]
  GETTABLEKS R22 R23 K39 ["Name"]
  CALL R21 1 1
  MOVE R20 R21
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R4 K10 ["Modules"]
  GETTABLEKS R24 R25 K11 ["VoiceChat"]
  GETTABLEKS R23 R24 K40 ["Analytics"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K41 ["new"]
  CALL R21 0 1
  GETIMPORT R22 K1 [game]
  LOADK R24 K42 ["VoiceChatService"]
  NAMECALL R22 R22 K3 ["GetService"]
  CALL R22 2 1
  NEWCLOSURE R23 P0
  CAPTURE VAL R5
  CAPTURE REF R20
  CAPTURE VAL R14
  CAPTURE VAL R21
  JUMPIFNOT R19 [+19]
  JUMPIFNOT R10 [+18]
  GETTABLEKS R24 R2 K43 ["IsConnected"]
  JUMPIF R24 [+11]
  LOADK R26 K44 ["NotificationService is not yet connected"]
  NAMECALL R24 R20 K45 ["debug"]
  CALL R24 2 0
  LOADK R26 K43 ["IsConnected"]
  NAMECALL R24 R2 K46 ["GetPropertyChangedSignal"]
  CALL R24 2 1
  NAMECALL R24 R24 K47 ["Wait"]
  CALL R24 1 0
  LOADK R26 K48 ["NotificationService connected"]
  NAMECALL R24 R20 K45 ["debug"]
  CALL R24 2 0
  JUMPIFNOT R13 [+3]
  GETTABLEKS R24 R22 K49 ["UseNewAudioApi"]
  JUMPIF R24 [+21]
  GETTABLEKS R25 R3 K50 ["LocalPlayer"]
  GETTABLEKS R24 R25 K51 ["Character"]
  JUMPIF R24 [+12]
  GETTABLEKS R25 R3 K50 ["LocalPlayer"]
  GETTABLEKS R24 R25 K52 ["CharacterAdded"]
  NAMECALL R24 R24 K47 ["Wait"]
  CALL R24 1 0
  LOADK R26 K53 ["Player character loaded"]
  NAMECALL R24 R20 K45 ["debug"]
  CALL R24 2 0
  JUMP [+4]
  LOADK R26 K54 ["Player character already loaded"]
  NAMECALL R24 R20 K45 ["debug"]
  CALL R24 2 0
  JUMPIFNOT R18 [+58]
  JUMPIFNOT R11 [+57]
  GETIMPORT R24 K1 [game]
  LOADK R26 K42 ["VoiceChatService"]
  NAMECALL R24 R24 K55 ["FindService"]
  CALL R24 2 1
  JUMPIFNOT R12 [+27]
  JUMPIF R24 [+5]
  LOADK R27 K56 ["VoiceChatService not found. Assuming default values."]
  NAMECALL R25 R20 K57 ["info"]
  CALL R25 2 0
  JUMP [+44]
  GETTABLEKS R25 R24 K58 ["EnableDefaultVoice"]
  JUMPIF R25 [+41]
  GETTABLEKS R25 R24 K49 ["UseNewAudioApi"]
  JUMPIF R25 [+38]
  LOADK R27 K59 ["Default channel is disabled."]
  NAMECALL R25 R20 K45 ["debug"]
  CALL R25 2 0
  MOVE R25 R14
  CALL R25 0 1
  JUMPIFNOT R25 [+5]
  LOADB R27 0
  LOADK R28 K60 ["defaultDisabled"]
  NAMECALL R25 R21 K61 ["reportVoiceChatJoinResult"]
  CALL R25 3 0
  CLOSEUPVALS R20
  RETURN R0 0
  JUMP [+23]
  JUMPIF R24 [+5]
  LOADK R27 K56 ["VoiceChatService not found. Assuming default values."]
  NAMECALL R25 R20 K57 ["info"]
  CALL R25 2 0
  JUMP [+17]
  GETTABLEKS R25 R24 K58 ["EnableDefaultVoice"]
  JUMPIF R25 [+14]
  LOADK R27 K59 ["Default channel is disabled."]
  NAMECALL R25 R20 K45 ["debug"]
  CALL R25 2 0
  MOVE R25 R14
  CALL R25 0 1
  JUMPIFNOT R25 [+5]
  LOADB R27 0
  LOADK R28 K60 ["defaultDisabled"]
  NAMECALL R25 R21 K61 ["reportVoiceChatJoinResult"]
  CALL R25 3 0
  CLOSEUPVALS R20
  RETURN R0 0
  NAMECALL R24 R6 K62 ["getCallState"]
  CALL R24 1 1
  NEWCLOSURE R26 P1
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE REF R20
  NAMECALL R24 R24 K63 ["andThen"]
  CALL R24 2 0
  MOVE R24 R16
  CALL R24 0 1
  JUMPIFNOT R24 [+5]
  GETIMPORT R24 K66 [task.spawn]
  DUPCLOSURE R25 K67 [PROTO_4]
  CAPTURE VAL R5
  CALL R24 1 0
  CLOSEUPVALS R20
  RETURN R0 0
