PROTO_0:
  JUMPIFNOT R0 [+7]
  GETTABLEKS R3 R0 K0 ["InviteUser"]
  JUMPIFEQKN R3 K1 [0] [+4]
  GETTABLEKS R2 R0 K0 ["InviteUser"]
  JUMP [+1]
  LOADNIL R2
  JUMPIFNOT R2 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Triggers"]
  GETTABLEKS R3 R4 K3 ["DeveloperSingle"]
  JUMP [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Triggers"]
  GETTABLEKS R3 R4 K4 ["DeveloperMultiple"]
  MOVE R4 R1
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 2
  JUMPIF R4 [+2]
  LOADNIL R6
  RETURN R6 1
  NEWTABLE R6 4 0
  JUMPIFNOT R5 [+33]
  JUMPIFNOT R0 [+32]
  GETTABLEKS R7 R0 K5 ["InviteMessageId"]
  JUMPIFEQKS R7 K6 [""] [+5]
  GETTABLEKS R7 R0 K5 ["InviteMessageId"]
  SETTABLEKS R7 R6 K7 ["inviteMessageId"]
  GETTABLEKS R7 R0 K0 ["InviteUser"]
  JUMPIFEQKN R7 K1 [0] [+5]
  GETTABLEKS R7 R0 K0 ["InviteUser"]
  SETTABLEKS R7 R6 K8 ["inviteUserId"]
  GETTABLEKS R7 R0 K9 ["PromptMessage"]
  JUMPIFEQKS R7 K6 [""] [+5]
  GETTABLEKS R7 R0 K9 ["PromptMessage"]
  SETTABLEKS R7 R6 K10 ["promptMessage"]
  GETTABLEKS R7 R0 K11 ["LaunchData"]
  JUMPIFEQKS R7 K6 [""] [+5]
  GETTABLEKS R7 R0 K11 ["LaunchData"]
  SETTABLEKS R7 R6 K12 ["launchData"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["RobloxGui"]
  GETTABLEKS R1 R2 K5 ["Modules"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R6 R1 K8 ["Settings"]
  GETTABLEKS R5 R6 K9 ["Pages"]
  GETTABLEKS R4 R5 K10 ["ShareGame"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1