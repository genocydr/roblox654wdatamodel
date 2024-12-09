PROTO_0:
  GETTABLEKS R2 R0 K0 ["Character"]
  JUMPIF R2 [+9]
  MOVE R3 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ErrorTypes"]
  GETTABLEKS R4 R5 K2 ["TemporarilyUnavailable"]
  CALL R3 1 0
  LOADB R3 1
  RETURN R3 1
  JUMPIFNOT R2 [+5]
  LOADK R5 K3 ["Humanoid"]
  NAMECALL R3 R2 K4 ["FindFirstChildOfClass"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  LOADNIL R3
  JUMPIF R3 [+9]
  MOVE R4 R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["ErrorTypes"]
  GETTABLEKS R5 R6 K2 ["TemporarilyUnavailable"]
  CALL R4 1 0
  LOADB R4 1
  RETURN R4 1
  JUMPIFNOT R3 [+15]
  GETTABLEKS R4 R3 K5 ["RigType"]
  GETIMPORT R5 K9 [Enum.HumanoidRigType.R15]
  JUMPIFEQ R4 R5 [+10]
  MOVE R4 R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["ErrorTypes"]
  GETTABLEKS R5 R6 K10 ["SwitchToR15"]
  CALL R4 1 0
  LOADB R4 1
  RETURN R4 1
  JUMPIFNOT R2 [+5]
  LOADK R6 K11 ["Animate"]
  NAMECALL R4 R2 K12 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIF R4 [+1]
  LOADNIL R4
  JUMPIFNOT R3 [+5]
  LOADK R7 K13 ["HumanoidDescription"]
  NAMECALL R5 R3 K4 ["FindFirstChildOfClass"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  LOADNIL R5
  JUMPIFNOT R4 [+1]
  JUMPIF R5 [+9]
  MOVE R6 R1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["ErrorTypes"]
  GETTABLEKS R7 R8 K14 ["NotSupported"]
  CALL R6 1 0
  LOADB R6 1
  RETURN R6 1
  JUMPIFNOT R4 [+5]
  LOADK R8 K15 ["PlayEmote"]
  NAMECALL R6 R4 K12 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIF R6 [+1]
  LOADNIL R6
  JUMPIFNOT R6 [+5]
  LOADK R9 K16 ["BindableFunction"]
  NAMECALL R7 R6 K17 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+9]
  MOVE R7 R1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["ErrorTypes"]
  GETTABLEKS R8 R9 K14 ["NotSupported"]
  CALL R7 1 0
  LOADB R7 1
  RETURN R7 1
  LOADB R7 0
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Constants"]
  CALL R2 1 1
  DUPCLOSURE R3 K6 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1