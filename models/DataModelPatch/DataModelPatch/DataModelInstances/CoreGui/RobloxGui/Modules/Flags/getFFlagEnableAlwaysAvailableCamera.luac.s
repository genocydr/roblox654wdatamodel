PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableAlwaysAvailableCamera"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R1 K8 ["Modules"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagDoNotPromptCameraPermissionsOnMount"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K11 ["EnableAlwaysAvailableCamera"]
  LOADB R6 0
  NAMECALL R3 R3 K12 ["DefineFastFlag"]
  CALL R3 3 0
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
