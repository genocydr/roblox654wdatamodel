PROTO_0:
  GETIMPORT R0 K1 [game]
  NAMECALL R0 R0 K2 ["IsLoaded"]
  CALL R0 1 1
  JUMPIF R0 [+7]
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K3 ["Loaded"]
  NAMECALL R0 R0 K4 ["Wait"]
  CALL R0 1 0
  DUPTABLE R0 K7 [{"isVoiceEnabledPlaceSettings", "isCameraEnabledPlaceSettings"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["VoiceChatEnabledForUniverseOnRcc"]
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["VoiceChatEnabledForPlaceOnRcc"]
  SETTABLEKS R1 R0 K5 ["isVoiceEnabledPlaceSettings"]
  GETUPVAL R1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["ServiceState"]
  NAMECALL R1 R1 K11 ["IsVideoEnabled"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["isCameraEnabledPlaceSettings"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VoiceChatService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["FacialAnimationStreamingServiceV2"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K5 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
