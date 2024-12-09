PROTO_0:
  GETIMPORT R1 K1 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 0
  MOVE R8 R4
  NAMECALL R6 R6 K2 ["GetPlayerByUserId"]
  CALL R6 2 1
  JUMPIFNOT R6 [+6]
  LOADK R9 K3 ["RBXAttentionVoiceIsActive"]
  GETTABLEKS R10 R5 K4 ["isSignalActive"]
  NAMECALL R7 R6 K5 ["SetAttribute"]
  CALL R7 3 0
  FORGLOOP R1 2 [-13]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  JUMPIFNOT R0 [+7]
  LOADK R3 K1 ["RBXAttentionVideoAnimationEnabled"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["VideoAnimationEnabled"]
  NAMECALL R1 R0 K3 ["SetAttribute"]
  CALL R1 3 0
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
  GETTABLEKS R3 R1 K6 ["RobloxGui"]
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["FaceAnimatorService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R3 K10 ["Modules"]
  GETTABLEKS R8 R9 K11 ["VoiceChat"]
  GETTABLEKS R7 R8 K12 ["VoiceChatServiceManager"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K13 ["default"]
  GETTABLEKS R7 R5 K14 ["participantsUpdate"]
  GETTABLEKS R6 R7 K15 ["Event"]
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R0
  NAMECALL R6 R6 K17 ["Connect"]
  CALL R6 2 0
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R4
  GETTABLEKS R7 R0 K19 ["LocalPlayer"]
  JUMPIFNOT R7 [+6]
  LOADK R10 K20 ["RBXAttentionVideoAnimationEnabled"]
  GETTABLEKS R11 R4 K21 ["VideoAnimationEnabled"]
  NAMECALL R8 R7 K22 ["SetAttribute"]
  CALL R8 3 0
  LOADK R9 K21 ["VideoAnimationEnabled"]
  NAMECALL R7 R4 K23 ["GetPropertyChangedSignal"]
  CALL R7 2 1
  MOVE R9 R6
  NAMECALL R7 R7 K17 ["Connect"]
  CALL R7 2 0
  RETURN R0 0
