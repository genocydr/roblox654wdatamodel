PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  RETURN R0 1
  GETIMPORT R0 K1 [game]
  NAMECALL R0 R0 K2 ["IsLoaded"]
  CALL R0 1 1
  JUMPIF R0 [+7]
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K3 ["Loaded"]
  NAMECALL R0 R0 K4 ["Wait"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["LocalPlayer"]
  JUMPIF R0 [+8]
  DUPTABLE R0 K8 [{"isVoiceEnabledUserSettings", "isCameraEnabledUserSettings"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["isVoiceEnabledUserSettings"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["isCameraEnabledUserSettings"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K5 ["LocalPlayer"]
  FASTCALL2K ASSERT R0 K9 [+5]
  MOVE R2 R0
  LOADK R3 K9 [""]
  GETIMPORT R1 K11 [assert]
  CALL R1 2 0
  GETIMPORT R1 K13 [pcall]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K14 ["ResolveStateForUser"]
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K15 ["UserId"]
  CALL R1 3 2
  JUMPIF R1 [+8]
  DUPTABLE R3 K8 [{"isVoiceEnabledUserSettings", "isCameraEnabledUserSettings"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["isVoiceEnabledUserSettings"]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["isCameraEnabledUserSettings"]
  RETURN R3 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K16 ["ServiceState"]
  GETUPVAL R4 2
  MOVE R6 R2
  NAMECALL R4 R4 K17 ["IsVideoEnabled"]
  CALL R4 2 1
  JUMPIFNOT R4 [+5]
  GETUPVAL R4 2
  MOVE R6 R3
  NAMECALL R4 R4 K17 ["IsVideoEnabled"]
  CALL R4 2 1
  GETUPVAL R5 2
  MOVE R7 R2
  NAMECALL R5 R5 K18 ["IsAudioEnabled"]
  CALL R5 2 1
  JUMPIFNOT R5 [+5]
  GETUPVAL R5 2
  MOVE R7 R3
  NAMECALL R5 R5 K18 ["IsAudioEnabled"]
  CALL R5 2 1
  DUPTABLE R6 K8 [{"isVoiceEnabledUserSettings", "isCameraEnabledUserSettings"}]
  SETTABLEKS R5 R6 K6 ["isVoiceEnabledUserSettings"]
  SETTABLEKS R4 R6 K7 ["isCameraEnabledUserSettings"]
  SETUPVAL R6 0
  GETUPVAL R6 0
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FacialAnimationStreamingServiceV2"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADNIL R2
  NEWCLOSURE R3 P0
  CAPTURE REF R2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CLOSEUPVALS R2
  RETURN R3 1
