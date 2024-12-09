PROTO_0:
  JUMPIFNOT R0 [+19]
  NAMECALL R2 R1 K0 ["getRecentUsersInteractionData"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["UserId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  GETTABLE R4 R2 R3
  JUMPIFNOT R4 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["voice"]
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["text"]
  RETURN R5 1
  NAMECALL R2 R1 K6 ["GetMutedAnyone"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["voice"]
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["text"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["VoiceChatServiceManager"]
  CALL R0 1 1
  DUPTABLE R1 K9 [{"voice", "text", "other"}]
  LOADK R2 K6 ["voice"]
  SETTABLEKS R2 R1 K6 ["voice"]
  LOADK R2 K7 ["text"]
  SETTABLEKS R2 R1 K7 ["text"]
  LOADK R2 K8 ["other"]
  SETTABLEKS R2 R1 K8 ["other"]
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R2 K11 ["GetDefaultMethodOfAbuse"]
  DUPTABLE R2 K13 [{"MethodsOfAbuse", "GetDefaultMethodOfAbuse"}]
  SETTABLEKS R1 R2 K12 ["MethodsOfAbuse"]
  GETGLOBAL R3 K11 ["GetDefaultMethodOfAbuse"]
  SETTABLEKS R3 R2 K11 ["GetDefaultMethodOfAbuse"]
  RETURN R2 1
