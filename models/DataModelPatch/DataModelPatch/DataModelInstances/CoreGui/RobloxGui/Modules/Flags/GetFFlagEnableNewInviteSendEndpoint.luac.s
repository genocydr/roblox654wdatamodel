PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableNewInviteSendEndpoint"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+13]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["EnableNewInviteSendEndpointIXP"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["default"]
  NAMECALL R0 R0 K6 ["getCustomizationEnabled"]
  CALL R0 1 1
  RETURN R0 1

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
  GETTABLEKS R3 R1 K5 ["RobloxGui"]
  GETTABLEKS R2 R3 K6 ["Modules"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R7 R2 K9 ["Settings"]
  GETTABLEKS R6 R7 K10 ["Pages"]
  GETTABLEKS R5 R6 K11 ["ShareGame"]
  GETTABLEKS R4 R5 K12 ["NewInviteMenuExperimentManager"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K13 ["EnableNewInviteSendEndpoint"]
  LOADB R7 0
  NAMECALL R4 R4 K14 ["DefineFastFlag"]
  CALL R4 3 0
  GETIMPORT R4 K1 [game]
  LOADK R6 K15 ["EnableNewInviteSendEndpointIXP"]
  LOADB R7 0
  NAMECALL R4 R4 K14 ["DefineFastFlag"]
  CALL R4 3 0
  DUPCLOSURE R4 K16 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1
