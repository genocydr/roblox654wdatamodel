PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["OnBoundKeysObjectChanged"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  JUMPIFEQKS R0 K0 ["ControlMode"] [+3]
  JUMPIFNOTEQKS R0 K1 ["ComputerMovementMode"] [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K2 ["UpdateMouseLockAvailability"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["UpdateMouseLockAvailability"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["UpdateMouseLockAvailability"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["isMouseLocked"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["savedMouseCursor"]
  NEWTABLE R1 0 2
  GETIMPORT R2 K7 [Enum.KeyCode.LeftShift]
  GETIMPORT R3 K9 [Enum.KeyCode.RightShift]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K10 ["boundKeys"]
  GETIMPORT R1 K13 [Instance.new]
  LOADK R2 K14 ["BindableEvent"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K15 ["mouseLockToggledEvent"]
  GETIMPORT R1 K17 [script]
  LOADK R3 K18 ["BoundKeys"]
  NAMECALL R1 R1 K19 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  LOADK R4 K20 ["StringValue"]
  NAMECALL R2 R1 K21 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+26]
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K22 ["Destroy"]
  CALL R2 1 0
  GETIMPORT R2 K13 [Instance.new]
  LOADK R3 K20 ["StringValue"]
  CALL R2 1 1
  MOVE R1 R2
  FASTCALL2K ASSERT R1 K23 [+5]
  MOVE R3 R1
  LOADK R4 K23 [""]
  GETIMPORT R2 K25 [assert]
  CALL R2 2 0
  LOADK R2 K18 ["BoundKeys"]
  SETTABLEKS R2 R1 K26 ["Name"]
  LOADK R2 K27 ["LeftShift,RightShift"]
  SETTABLEKS R2 R1 K28 ["Value"]
  GETIMPORT R2 K17 [script]
  SETTABLEKS R2 R1 K29 ["Parent"]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R2 R1 K30 ["Changed"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K31 ["Connect"]
  CALL R2 2 0
  GETTABLEKS R4 R1 K28 ["Value"]
  NAMECALL R2 R0 K32 ["OnBoundKeysObjectChanged"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K30 ["Changed"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K31 ["Connect"]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K33 ["LocalPlayer"]
  LOADK R4 K34 ["DevEnableMouseLock"]
  NAMECALL R2 R2 K35 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P2
  CAPTURE VAL R0
  NAMECALL R2 R2 K31 ["Connect"]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K33 ["LocalPlayer"]
  LOADK R4 K36 ["DevComputerMovementMode"]
  NAMECALL R2 R2 K35 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  NAMECALL R2 R2 K31 ["Connect"]
  CALL R2 2 0
  NAMECALL R2 R0 K37 ["UpdateMouseLockAvailability"]
  CALL R2 1 0
  RETURN R0 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["isMouseLocked"]
  RETURN R1 1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["mouseLockToggledEvent"]
  GETTABLEKS R1 R2 K1 ["Event"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  LOADK R1 K0 [{1.75, 0, 0}]
  RETURN R1 1
  GETIMPORT R1 K2 [script]
  LOADK R3 K3 ["CameraOffset"]
  NAMECALL R1 R1 K4 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  LOADK R4 K5 ["Vector3Value"]
  NAMECALL R2 R1 K6 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K7 ["Value"]
  RETURN R2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K8 ["Destroy"]
  CALL R2 1 0
  GETIMPORT R2 K11 [Instance.new]
  LOADK R3 K5 ["Vector3Value"]
  CALL R2 1 1
  MOVE R1 R2
  FASTCALL2K ASSERT R1 K12 [+5]
  MOVE R3 R1
  LOADK R4 K12 [""]
  GETIMPORT R2 K14 [assert]
  CALL R2 2 0
  LOADK R2 K3 ["CameraOffset"]
  SETTABLEKS R2 R1 K15 ["Name"]
  LOADK R2 K0 [{1.75, 0, 0}]
  SETTABLEKS R2 R1 K7 ["Value"]
  GETIMPORT R2 K2 [script]
  SETTABLEKS R2 R1 K16 ["Parent"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R2 R1 K7 ["Value"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K7 ["Value"]
  RETURN R2 1
  LOADK R2 K0 [{1.75, 0, 0}]
  RETURN R2 1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  GETTABLEKS R1 R2 K1 ["DevEnableMouseLock"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["LocalPlayer"]
  GETTABLEKS R3 R4 K2 ["DevComputerMovementMode"]
  GETIMPORT R4 K5 [Enum.DevComputerMovementMode.Scriptable]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["ControlMode"]
  GETIMPORT R5 K8 [Enum.ControlMode.MouseLockSwitch]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["ComputerMovementMode"]
  GETIMPORT R6 K11 [Enum.ComputerMovementMode.ClickToMove]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R1
  JUMPIFNOT R5 [+5]
  MOVE R5 R3
  JUMPIFNOT R5 [+3]
  NOT R5 R4
  JUMPIFNOT R5 [+1]
  NOT R5 R2
  GETTABLEKS R6 R0 K12 ["enabled"]
  JUMPIFEQ R5 R6 [+5]
  MOVE R8 R5
  NAMECALL R6 R0 K13 ["EnableMouseLock"]
  CALL R6 2 0
  RETURN R0 0

PROTO_9:
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K0 ["boundKeys"]
  GETIMPORT R2 K3 [string.gmatch]
  MOVE R3 R1
  LOADK R4 K4 ["[^%s,]+"]
  CALL R2 2 3
  FORGPREP R2
  GETIMPORT R7 K6 [pairs]
  GETIMPORT R8 K9 [Enum.KeyCode]
  NAMECALL R8 R8 K10 ["GetEnumItems"]
  CALL R8 1 -1
  CALL R7 -1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R11 K11 ["Name"]
  JUMPIFNOTEQ R5 R12 [+9]
  GETTABLEKS R12 R0 K0 ["boundKeys"]
  GETTABLEKS R15 R0 K0 ["boundKeys"]
  LENGTH R14 R15
  ADDK R13 R14 K12 [1]
  SETTABLE R11 R12 R13
  JUMP [+2]
  FORGLOOP R7 2 [-13]
  FORGLOOP R2 1 [-24]
  NAMECALL R2 R0 K13 ["UnbindContextActions"]
  CALL R2 1 0
  NAMECALL R2 R0 K14 ["BindContextActions"]
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["isMouseLocked"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["isMouseLocked"]
  GETTABLEKS R1 R0 K0 ["isMouseLocked"]
  JUMPIFNOT R1 [+54]
  GETIMPORT R1 K2 [script]
  LOADK R3 K3 ["CursorImage"]
  NAMECALL R1 R1 K4 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+15]
  LOADK R4 K5 ["StringValue"]
  NAMECALL R2 R1 K6 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R1 K7 ["Value"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["setMouseIconOverride"]
  GETTABLEKS R3 R1 K7 ["Value"]
  CALL R2 1 0
  JUMP [+36]
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K9 ["Destroy"]
  CALL R2 1 0
  GETIMPORT R2 K12 [Instance.new]
  LOADK R3 K5 ["StringValue"]
  CALL R2 1 1
  MOVE R1 R2
  FASTCALL2K ASSERT R1 K13 [+5]
  MOVE R3 R1
  LOADK R4 K13 [""]
  GETIMPORT R2 K15 [assert]
  CALL R2 2 0
  LOADK R2 K3 ["CursorImage"]
  SETTABLEKS R2 R1 K16 ["Name"]
  LOADK R2 K17 ["rbxasset://textures/MouseLockedCursor.png"]
  SETTABLEKS R2 R1 K7 ["Value"]
  GETIMPORT R2 K2 [script]
  SETTABLEKS R2 R1 K18 ["Parent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["setMouseIconOverride"]
  LOADK R3 K17 ["rbxasset://textures/MouseLockedCursor.png"]
  CALL R2 1 0
  JUMP [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K19 ["restoreMouseIcon"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K20 ["mouseLockToggledEvent"]
  NAMECALL R1 R1 K21 ["Fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R4 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R2 R4 [+7]
  NAMECALL R4 R0 K4 ["OnMouseLockToggled"]
  CALL R4 1 0
  GETIMPORT R4 K7 [Enum.ContextActionResult.Sink]
  RETURN R4 1
  GETIMPORT R4 K9 [Enum.ContextActionResult.Pass]
  RETURN R4 1

PROTO_12:
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K0 ["DoMouseLockSwitch"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_13:
  GETUPVAL R1 0
  LOADK R3 K0 ["MouseLockSwitchAction"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  LOADB R5 0
  GETUPVAL R6 1
  GETTABLEKS R8 R0 K1 ["boundKeys"]
  FASTCALL1 TABLE_UNPACK R8 [+2]
  GETIMPORT R7 K3 [unpack]
  CALL R7 1 -1
  NAMECALL R1 R1 K4 ["BindActionAtPriority"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  LOADK R3 K0 ["MouseLockSwitchAction"]
  NAMECALL R1 R1 K1 ["UnbindAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["enabled"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K1 ["isMouseLocked"]
  RETURN R1 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["enabled"]
  JUMPIFEQ R1 R2 [+28]
  SETTABLEKS R1 R0 K0 ["enabled"]
  GETTABLEKS R2 R0 K0 ["enabled"]
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K1 ["BindContextActions"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["restoreMouseIcon"]
  CALL R2 0 0
  NAMECALL R2 R0 K3 ["UnbindContextActions"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K4 ["isMouseLocked"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K5 ["mouseLockToggledEvent"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 1 0
  LOADB R2 0
  SETTABLEKS R2 R0 K4 ["isMouseLocked"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R2 K3 ["CommonUtils"]
  NAMECALL R0 R0 K4 ["WaitForChild"]
  CALL R0 2 1
  GETIMPORT R1 K6 [require]
  LOADK R4 K7 ["FlagUtil"]
  NAMECALL R2 R0 K4 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R3 K11 [Enum.ContextActionPriority.Medium]
  GETTABLEKS R2 R3 K12 ["Value"]
  GETIMPORT R3 K14 [game]
  LOADK R5 K15 ["Players"]
  NAMECALL R3 R3 K16 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K14 [game]
  LOADK R6 K17 ["ContextActionService"]
  NAMECALL R4 R4 K16 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K19 [UserSettings]
  CALL R5 0 1
  GETTABLEKS R6 R5 K20 ["GameSettings"]
  GETIMPORT R7 K6 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  LOADK R10 K21 ["CameraUtils"]
  NAMECALL R8 R8 K4 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R8 R1 K22 ["getUserFlag"]
  LOADK R9 K23 ["UserFixCameraOffsetJitter2"]
  CALL R8 1 1
  NEWTABLE R9 16 0
  SETTABLEKS R9 R9 K24 ["__index"]
  DUPCLOSURE R10 K25 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K26 ["new"]
  DUPCLOSURE R10 K27 [PROTO_5]
  SETTABLEKS R10 R9 K28 ["GetIsMouseLocked"]
  DUPCLOSURE R10 K29 [PROTO_6]
  SETTABLEKS R10 R9 K30 ["GetBindableToggleEvent"]
  DUPCLOSURE R10 K31 [PROTO_7]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K32 ["GetMouseLockOffset"]
  DUPCLOSURE R10 K33 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K34 ["UpdateMouseLockAvailability"]
  DUPCLOSURE R10 K35 [PROTO_9]
  SETTABLEKS R10 R9 K36 ["OnBoundKeysObjectChanged"]
  DUPCLOSURE R10 K37 [PROTO_10]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K38 ["OnMouseLockToggled"]
  DUPCLOSURE R10 K39 [PROTO_11]
  SETTABLEKS R10 R9 K40 ["DoMouseLockSwitch"]
  DUPCLOSURE R10 K41 [PROTO_13]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K42 ["BindContextActions"]
  DUPCLOSURE R10 K43 [PROTO_14]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K44 ["UnbindContextActions"]
  DUPCLOSURE R10 K45 [PROTO_15]
  SETTABLEKS R10 R9 K46 ["IsMouseLocked"]
  DUPCLOSURE R10 K47 [PROTO_16]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K48 ["EnableMouseLock"]
  RETURN R9 1
