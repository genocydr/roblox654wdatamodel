PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 1
  CALL R1 0 1
  NOT R0 R1
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
  GETTABLEKS R4 R1 K8 ["Modules"]
  GETTABLEKS R3 R4 K9 ["isNewInGameMenuEnabled"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R1 K8 ["Modules"]
  GETTABLEKS R5 R6 K10 ["Chrome"]
  GETTABLEKS R4 R5 K11 ["Enabled"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1