PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LocalPlayer"]
  JUMPIFNOT R3 [+53]
  GETTABLEKS R5 R3 K1 ["UserId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  JUMPIFNOTEQ R0 R4 [+36]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["VOICE_STATE"]
  GETTABLEKS R4 R5 K5 ["ERROR"]
  JUMPIFNOTEQ R1 R4 [+6]
  GETUPVAL R4 2
  NAMECALL R4 R4 K6 ["RejoinPreviousChannel"]
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["VOICE_STATE"]
  GETTABLEKS R4 R5 K7 ["CONNECTING"]
  JUMPIFNOTEQ R1 R4 [+6]
  GETUPVAL R4 2
  NAMECALL R4 R4 K8 ["ShowVoiceChatLoadingMessage"]
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R4 3
  LOADK R6 K9 ["bubbleChatToggle"]
  NAMECALL R4 R4 K10 ["setLastCtx"]
  CALL R4 2 0
  GETUPVAL R4 2
  MOVE R6 R2
  NAMECALL R4 R4 K11 ["ToggleMic"]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R4 2
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K13 [tonumber]
  CALL R6 1 1
  MOVE R7 R2
  NAMECALL R4 R4 K14 ["ToggleMutePlayer"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R1 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R2 K10 ["Workspace"]
  GETTABLEKS R7 R8 K11 ["Packages"]
  GETTABLEKS R6 R7 K12 ["VoiceChat"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K13 ["Constants"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R3 K14 ["Modules"]
  GETTABLEKS R8 R9 K12 ["VoiceChat"]
  GETTABLEKS R7 R8 K15 ["VoiceChatServiceManager"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["default"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R3 K14 ["Modules"]
  GETTABLEKS R9 R10 K17 ["SelfView"]
  GETTABLEKS R8 R9 K18 ["Analytics"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K19 ["new"]
  CALL R6 0 1
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
