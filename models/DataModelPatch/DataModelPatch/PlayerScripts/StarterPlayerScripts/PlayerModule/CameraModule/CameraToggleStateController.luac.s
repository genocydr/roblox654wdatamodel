PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTogglePan"]
  CALL R1 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R2 1
  JUMPIFEQ R1 R2 [+3]
  LOADB R2 1
  SETUPVAL R2 2
  GETUPVAL R2 1
  JUMPIFNOTEQ R2 R1 [+9]
  GETIMPORT R3 K2 [tick]
  CALL R3 0 1
  GETUPVAL R4 3
  SUB R2 R3 R4
  LOADN R3 3
  JUMPIFNOTLT R3 R2 [+26]
  MOVE R2 R1
  JUMPIFNOT R2 [+10]
  GETIMPORT R4 K2 [tick]
  CALL R4 0 1
  GETUPVAL R5 3
  SUB R3 R4 R5
  LOADN R4 3
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["setCameraModeToastOpen"]
  MOVE R4 R2
  CALL R3 1 0
  JUMPIFNOT R1 [+2]
  LOADB R3 0
  SETUPVAL R3 2
  GETIMPORT R3 K2 [tick]
  CALL R3 0 1
  SETUPVAL R3 3
  SETUPVAL R1 1
  GETUPVAL R2 5
  JUMPIFEQ R0 R2 [+20]
  JUMPIFNOT R0 [+11]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getTogglePan"]
  CALL R2 0 1
  SETUPVAL R2 6
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["setTogglePan"]
  LOADB R3 1
  CALL R2 1 0
  JUMP [+7]
  GETUPVAL R2 2
  JUMPIF R2 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["setTogglePan"]
  GETUPVAL R3 6
  CALL R2 1 0
  JUMPIFNOT R0 [+38]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getTogglePan"]
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K5 ["setMouseIconOverride"]
  LOADK R3 K6 ["rbxasset://textures/Cursors/CrossMouseIcon.png"]
  CALL R2 1 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K7 ["setMouseBehaviorOverride"]
  GETIMPORT R3 K11 [Enum.MouseBehavior.LockCenter]
  CALL R2 1 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K12 ["setRotationTypeOverride"]
  GETIMPORT R3 K15 [Enum.RotationType.CameraRelative]
  CALL R2 1 0
  JUMP [+72]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K16 ["restoreMouseIcon"]
  CALL R2 0 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K17 ["restoreMouseBehavior"]
  CALL R2 0 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K12 ["setRotationTypeOverride"]
  GETIMPORT R3 K15 [Enum.RotationType.CameraRelative]
  CALL R2 1 0
  JUMP [+57]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getTogglePan"]
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K5 ["setMouseIconOverride"]
  LOADK R3 K6 ["rbxasset://textures/Cursors/CrossMouseIcon.png"]
  CALL R2 1 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K7 ["setMouseBehaviorOverride"]
  GETIMPORT R3 K11 [Enum.MouseBehavior.LockCenter]
  CALL R2 1 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K12 ["setRotationTypeOverride"]
  GETIMPORT R3 K19 [Enum.RotationType.MovementRelative]
  CALL R2 1 0
  JUMP [+34]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K20 ["getHoldPan"]
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K16 ["restoreMouseIcon"]
  CALL R2 0 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K7 ["setMouseBehaviorOverride"]
  GETIMPORT R3 K22 [Enum.MouseBehavior.LockCurrentPosition]
  CALL R2 1 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K12 ["setRotationTypeOverride"]
  GETIMPORT R3 K19 [Enum.RotationType.MovementRelative]
  CALL R2 1 0
  JUMP [+12]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K16 ["restoreMouseIcon"]
  CALL R2 0 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K17 ["restoreMouseBehavior"]
  CALL R2 0 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K23 ["restoreRotationType"]
  CALL R2 0 0
  SETUPVAL R0 5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UserInputService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [UserSettings]
  CALL R2 0 1
  LOADK R4 K7 ["UserGameSettings"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K12 ["Parent"]
  LOADK R6 K13 ["CameraInput"]
  NAMECALL R4 R4 K14 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K9 [require]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  LOADK R7 K15 ["CameraUI"]
  NAMECALL R5 R5 K14 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K9 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  LOADK R8 K16 ["CameraUtils"]
  NAMECALL R6 R6 K14 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  LOADB R6 0
  GETIMPORT R7 K18 [tick]
  CALL R7 0 1
  LOADB R8 0
  LOADB R9 0
  LOADB R10 0
  GETTABLEKS R11 R4 K19 ["setCameraModeToastEnabled"]
  LOADB R12 0
  CALL R11 1 0
  NEWCLOSURE R11 P0
  CAPTURE VAL R3
  CAPTURE REF R6
  CAPTURE REF R8
  CAPTURE REF R7
  CAPTURE VAL R4
  CAPTURE REF R10
  CAPTURE REF R9
  CAPTURE VAL R5
  CLOSEUPVALS R6
  RETURN R11 1
