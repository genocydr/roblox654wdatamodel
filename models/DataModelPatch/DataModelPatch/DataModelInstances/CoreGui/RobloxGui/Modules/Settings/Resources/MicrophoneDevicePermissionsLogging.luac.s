PROTO_0:
  LOADB R3 1
  SETTABLEKS R3 R0 K0 ["_initialized"]
  GETIMPORT R4 K2 [game]
  GETTABLEKS R3 R4 K3 ["PlaceId"]
  SETTABLEKS R3 R0 K4 ["placeId"]
  GETIMPORT R4 K2 [game]
  GETTABLEKS R3 R4 K5 ["GameId"]
  SETTABLEKS R3 R0 K6 ["universeId"]
  GETUPVAL R3 0
  MOVE R5 R1
  GETIMPORT R6 K10 [Enum.AvatarChatServiceFeature.PlaceAudio]
  NAMECALL R3 R3 K11 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R0 K12 ["placeVoiceEnabled"]
  GETUPVAL R3 0
  MOVE R5 R1
  GETIMPORT R6 K14 [Enum.AvatarChatServiceFeature.UniverseAudio]
  NAMECALL R3 R3 K11 ["IsEnabled"]
  CALL R3 3 1
  SETTABLEKS R3 R0 K15 ["universeVoiceEnabled"]
  DUPTABLE R5 K17 [{"didAuthorize"}]
  SETTABLEKS R2 R5 K16 ["didAuthorize"]
  NAMECALL R3 R0 K18 ["logExperienceJoin"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R3 K8 [{"uiType", "uiContext", "didAuthorize", "placeId", "universeId", "placeVoiceEnabled", "universeVoiceEnabled", "clientSessionId"}]
  SETTABLEKS R1 R3 K0 ["uiType"]
  GETTABLEKS R4 R2 K1 ["uiContext"]
  SETTABLEKS R4 R3 K1 ["uiContext"]
  GETTABLEKS R4 R2 K2 ["didAuthorize"]
  SETTABLEKS R4 R3 K2 ["didAuthorize"]
  GETTABLEKS R4 R0 K3 ["placeId"]
  SETTABLEKS R4 R3 K3 ["placeId"]
  GETTABLEKS R4 R0 K4 ["universeId"]
  SETTABLEKS R4 R3 K4 ["universeId"]
  GETTABLEKS R4 R0 K5 ["placeVoiceEnabled"]
  SETTABLEKS R4 R3 K5 ["placeVoiceEnabled"]
  GETTABLEKS R4 R0 K6 ["universeVoiceEnabled"]
  SETTABLEKS R4 R3 K6 ["universeVoiceEnabled"]
  GETTABLEKS R4 R0 K7 ["clientSessionId"]
  SETTABLEKS R4 R3 K7 ["clientSessionId"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K0 ["_initialized"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["ClientFeatures"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K1 ["_init"]
  CALL R0 3 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K2 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ClientFeaturesInitialized"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ClientFeatures"]
  MOVE R5 R1
  NAMECALL R2 R0 K2 ["_init"]
  CALL R2 3 0
  RETURN R0 0
  LOADNIL R2
  GETUPVAL R3 0
  LOADK R5 K1 ["ClientFeatures"]
  NAMECALL R3 R3 K3 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE REF R2
  NAMECALL R3 R3 K4 ["Connect"]
  CALL R3 2 1
  MOVE R2 R3
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_5:
  NAMECALL R2 R0 K0 ["_isReady"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["voice"]
  GETUPVAL R6 1
  GETTABLEKS R10 R0 K3 ["UIType"]
  GETTABLEKS R9 R10 K4 ["EXPERIENCE_JOIN"]
  MOVE R10 R1
  NAMECALL R7 R0 K5 ["_getEventPayload"]
  CALL R7 3 -1
  NAMECALL R2 R2 K6 ["SendEventDeferred"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_6:
  NAMECALL R2 R0 K0 ["_isReady"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["voice"]
  GETUPVAL R6 1
  GETTABLEKS R10 R0 K3 ["UIType"]
  GETTABLEKS R9 R10 K4 ["PROMPT_IMPRESSION"]
  MOVE R10 R1
  NAMECALL R7 R0 K5 ["_getEventPayload"]
  CALL R7 3 -1
  NAMECALL R2 R2 K6 ["SendEventDeferred"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  NAMECALL R2 R0 K0 ["_isReady"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["voice"]
  GETUPVAL R6 1
  GETTABLEKS R10 R0 K3 ["UIType"]
  GETTABLEKS R9 R10 K4 ["PROMPT_INTERACTION"]
  MOVE R10 R1
  NAMECALL R7 R0 K5 ["_getEventPayload"]
  CALL R7 3 -1
  NAMECALL R2 R2 K6 ["SendEventDeferred"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R2 R0 K0 ["_isReady"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R0 K1 ["clientSessionId"]
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K1 ["clientSessionId"]
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
  LOADK R4 K6 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["AvatarChatService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K10 ["Modules"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagMicrophoneDevicePermissionsPromptLogging"]
  CALL R4 1 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K13 ["MicrophoneDevicePermissionsLoggingEventName"]
  LOADK R8 K14 ["microphoneDevicePermissionPrompted"]
  NAMECALL R5 R5 K15 ["DefineFastString"]
  CALL R5 3 1
  DUPTABLE R6 K23 [{"_initialized", "placeId", "universeId", "placeVoiceEnabled", "universeVoiceEnabled", "clientSessionId", "UIType"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K16 ["_initialized"]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["placeId"]
  LOADN R7 0
  SETTABLEKS R7 R6 K18 ["universeId"]
  LOADB R7 0
  SETTABLEKS R7 R6 K19 ["placeVoiceEnabled"]
  LOADB R7 0
  SETTABLEKS R7 R6 K20 ["universeVoiceEnabled"]
  LOADK R7 K24 [""]
  SETTABLEKS R7 R6 K21 ["clientSessionId"]
  DUPTABLE R7 K28 [{"EXPERIENCE_JOIN", "PROMPT_IMPRESSION", "PROMPT_INTERACTION"}]
  LOADN R8 0
  SETTABLEKS R8 R7 K25 ["EXPERIENCE_JOIN"]
  LOADN R8 1
  SETTABLEKS R8 R7 K26 ["PROMPT_IMPRESSION"]
  LOADN R8 2
  SETTABLEKS R8 R7 K27 ["PROMPT_INTERACTION"]
  SETTABLEKS R7 R6 K22 ["UIType"]
  DUPCLOSURE R7 K29 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K30 ["_init"]
  DUPCLOSURE R7 K31 [PROTO_1]
  SETTABLEKS R7 R6 K32 ["_getEventPayload"]
  DUPCLOSURE R7 K33 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K34 ["_isReady"]
  DUPCLOSURE R7 K35 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K36 ["init"]
  DUPCLOSURE R7 K37 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K38 ["logExperienceJoin"]
  DUPCLOSURE R7 K39 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K40 ["logPromptImpression"]
  DUPCLOSURE R7 K41 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K42 ["logPromptInteraction"]
  DUPCLOSURE R7 K43 [PROTO_8]
  SETTABLEKS R7 R6 K44 ["setClientSessionId"]
  RETURN R6 1
