PROTO_0:
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.OverrideMouseIconBehavior.ForceShow]
  SETTABLEKS R2 R1 K1 ["OverrideMouseIconBehavior"]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["VREnabled"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 0
  GETIMPORT R2 K6 [Enum.OverrideMouseIconBehavior.ForceHide]
  SETTABLEKS R2 R1 K1 ["OverrideMouseIconBehavior"]
  RETURN R0 0
  GETUPVAL R1 0
  GETIMPORT R2 K8 [Enum.OverrideMouseIconBehavior.None]
  SETTABLEKS R2 R1 K1 ["OverrideMouseIconBehavior"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["VRService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K5 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
