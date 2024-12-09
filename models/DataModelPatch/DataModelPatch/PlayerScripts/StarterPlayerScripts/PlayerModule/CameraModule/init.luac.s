PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["OnPlayerAdded"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["OnMouseLockToggled"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["Update"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OnLocalPlayerCameraPropertyChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OnUserGameSettingsPropertyChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["OnCurrentCameraChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R1 8 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["activeCameraController"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["activeOcclusionModule"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["activeTransparencyController"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["activeMouseLockController"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["currentComputerCameraMovementMode"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["cameraSubjectChangedConn"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["cameraTypeChangedConn"]
  GETIMPORT R1 K10 [pairs]
  GETUPVAL R2 1
  NAMECALL R2 R2 K11 ["GetPlayers"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  MOVE R8 R5
  NAMECALL R6 R0 K12 ["OnPlayerAdded"]
  CALL R6 2 0
  FORGLOOP R1 2 [-5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K13 ["PlayerAdded"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K14 ["Connect"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K15 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["activeTransparencyController"]
  GETTABLEKS R1 R0 K4 ["activeTransparencyController"]
  LOADB R3 1
  NAMECALL R1 R1 K16 ["Enable"]
  CALL R1 2 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K17 ["TouchEnabled"]
  JUMPIF R1 [+17]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K15 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["activeMouseLockController"]
  GETTABLEKS R1 R0 K5 ["activeMouseLockController"]
  NAMECALL R1 R1 K18 ["GetBindableToggleEvent"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R1 K14 ["Connect"]
  CALL R2 2 0
  GETUPVAL R1 5
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K19 ["ActivateCameraController"]
  CALL R1 1 0
  JUMP [+6]
  NAMECALL R3 R0 K20 ["GetCameraControlChoice"]
  CALL R3 1 -1
  NAMECALL R1 R0 K19 ["ActivateCameraController"]
  CALL R1 -1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K21 ["LocalPlayer"]
  GETTABLEKS R3 R4 K22 ["DevCameraOcclusionMode"]
  NAMECALL R1 R0 K23 ["ActivateOcclusionModule"]
  CALL R1 2 0
  NAMECALL R1 R0 K24 ["OnCurrentCameraChanged"]
  CALL R1 1 0
  GETUPVAL R1 6
  LOADK R3 K25 ["cameraRenderUpdate"]
  GETIMPORT R5 K29 [Enum.RenderPriority.Camera]
  GETTABLEKS R4 R5 K30 ["Value"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R1 R1 K31 ["BindToRenderStep"]
  CALL R1 4 0
  GETIMPORT R1 K10 [pairs]
  GETUPVAL R2 7
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K21 ["LocalPlayer"]
  MOVE R8 R5
  NAMECALL R6 R6 K32 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  NEWCLOSURE R8 P3
  CAPTURE VAL R0
  CAPTURE VAL R5
  NAMECALL R6 R6 K14 ["Connect"]
  CALL R6 2 0
  FORGLOOP R1 2 [-14]
  GETIMPORT R1 K10 [pairs]
  GETUPVAL R2 8
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 9
  MOVE R8 R5
  NAMECALL R6 R6 K32 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  NEWCLOSURE R8 P4
  CAPTURE VAL R0
  CAPTURE VAL R5
  NAMECALL R6 R6 K14 ["Connect"]
  CALL R6 2 0
  FORGLOOP R1 2 [-12]
  GETIMPORT R2 K34 [game]
  GETTABLEKS R1 R2 K35 ["Workspace"]
  LOADK R3 K36 ["CurrentCamera"]
  NAMECALL R1 R1 K32 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P5
  CAPTURE VAL R0
  NAMECALL R1 R1 K14 ["Connect"]
  CALL R1 2 0
  RETURN R0 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  GETTABLEKS R1 R2 K1 ["CameraMode"]
  GETIMPORT R2 K4 [Enum.CameraMode.LockFirstPerson]
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["ConvertCameraModeEnumToStandard"]
  GETIMPORT R3 K8 [Enum.ComputerCameraMovementMode.Classic]
  CALL R2 1 -1
  RETURN R2 -1
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["TouchEnabled"]
  JUMPIFNOT R4 [+19]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ConvertCameraModeEnumToStandard"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["LocalPlayer"]
  GETTABLEKS R5 R6 K10 ["DevTouchCameraMode"]
  CALL R4 1 1
  MOVE R2 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ConvertCameraModeEnumToStandard"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K11 ["TouchCameraMovementMode"]
  CALL R4 1 1
  MOVE R3 R4
  JUMP [+18]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ConvertCameraModeEnumToStandard"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["LocalPlayer"]
  GETTABLEKS R5 R6 K12 ["DevComputerCameraMode"]
  CALL R4 1 1
  MOVE R2 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["ConvertCameraModeEnumToStandard"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["ComputerCameraMovementMode"]
  CALL R4 1 1
  MOVE R3 R4
  GETIMPORT R4 K15 [Enum.DevComputerCameraMovementMode.UserChoice]
  JUMPIFNOTEQ R2 R4 [+2]
  RETURN R3 1
  RETURN R2 1

PROTO_8:
  LOADNIL R2
  GETIMPORT R3 K3 [Enum.DevCameraOcclusionMode.Zoom]
  JUMPIFNOTEQ R1 R3 [+3]
  GETUPVAL R2 0
  JUMP [+11]
  GETIMPORT R3 K5 [Enum.DevCameraOcclusionMode.Invisicam]
  JUMPIFNOTEQ R1 R3 [+3]
  GETUPVAL R2 1
  JUMP [+5]
  GETIMPORT R3 K7 [warn]
  LOADK R4 K8 ["CameraScript ActivateOcclusionModule called with unsupported mode"]
  CALL R3 1 0
  RETURN R0 0
  SETTABLEKS R1 R0 K9 ["occlusionMode"]
  GETTABLEKS R3 R0 K10 ["activeOcclusionModule"]
  JUMPIFNOT R3 [+20]
  GETTABLEKS R3 R0 K10 ["activeOcclusionModule"]
  NAMECALL R3 R3 K11 ["GetOcclusionMode"]
  CALL R3 1 1
  JUMPIFNOTEQ R3 R1 [+14]
  GETTABLEKS R3 R0 K10 ["activeOcclusionModule"]
  NAMECALL R3 R3 K12 ["GetEnabled"]
  CALL R3 1 1
  JUMPIF R3 [+6]
  GETTABLEKS R3 R0 K10 ["activeOcclusionModule"]
  LOADB R5 1
  NAMECALL R3 R3 K13 ["Enable"]
  CALL R3 2 0
  RETURN R0 0
  GETTABLEKS R3 R0 K10 ["activeOcclusionModule"]
  GETUPVAL R5 2
  GETTABLE R4 R5 R2
  SETTABLEKS R4 R0 K10 ["activeOcclusionModule"]
  GETTABLEKS R4 R0 K10 ["activeOcclusionModule"]
  JUMPIF R4 [+12]
  GETTABLEKS R4 R2 K14 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R0 K10 ["activeOcclusionModule"]
  GETTABLEKS R4 R0 K10 ["activeOcclusionModule"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K10 ["activeOcclusionModule"]
  SETTABLE R5 R4 R2
  GETTABLEKS R4 R0 K10 ["activeOcclusionModule"]
  JUMPIFNOT R4 [+97]
  GETTABLEKS R4 R0 K10 ["activeOcclusionModule"]
  NAMECALL R4 R4 K11 ["GetOcclusionMode"]
  CALL R4 1 1
  JUMPIFEQ R4 R1 [+12]
  GETIMPORT R5 K7 [warn]
  LOADK R6 K15 ["CameraScript ActivateOcclusionModule mismatch: "]
  GETTABLEKS R7 R0 K10 ["activeOcclusionModule"]
  NAMECALL R7 R7 K11 ["GetOcclusionMode"]
  CALL R7 1 1
  LOADK R8 K16 ["~="]
  MOVE R9 R1
  CALL R5 4 0
  JUMPIFNOT R3 [+13]
  GETTABLEKS R5 R0 K10 ["activeOcclusionModule"]
  JUMPIFEQ R3 R5 [+6]
  LOADB R7 0
  NAMECALL R5 R3 K13 ["Enable"]
  CALL R5 2 0
  JUMP [+4]
  GETIMPORT R5 K7 [warn]
  LOADK R6 K17 ["CameraScript ActivateOcclusionModule failure to detect already running correct module"]
  CALL R5 1 0
  GETIMPORT R5 K5 [Enum.DevCameraOcclusionMode.Invisicam]
  JUMPIFNOTEQ R1 R5 [+21]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K18 ["LocalPlayer"]
  GETTABLEKS R5 R6 K19 ["Character"]
  JUMPIFNOT R5 [+49]
  GETTABLEKS R5 R0 K10 ["activeOcclusionModule"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["LocalPlayer"]
  GETTABLEKS R7 R8 K19 ["Character"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["LocalPlayer"]
  NAMECALL R5 R5 K20 ["CharacterAdded"]
  CALL R5 3 0
  JUMP [+35]
  GETIMPORT R5 K22 [pairs]
  GETUPVAL R6 3
  NAMECALL R6 R6 K23 ["GetPlayers"]
  CALL R6 1 -1
  CALL R5 -1 3
  FORGPREP_NEXT R5
  JUMPIFNOT R9 [+11]
  GETTABLEKS R10 R9 K19 ["Character"]
  JUMPIFNOT R10 [+8]
  GETTABLEKS R10 R0 K10 ["activeOcclusionModule"]
  GETTABLEKS R12 R9 K19 ["Character"]
  MOVE R13 R9
  NAMECALL R10 R10 K20 ["CharacterAdded"]
  CALL R10 3 0
  FORGLOOP R5 2 [-13]
  GETTABLEKS R5 R0 K10 ["activeOcclusionModule"]
  GETIMPORT R10 K25 [game]
  GETTABLEKS R9 R10 K26 ["Workspace"]
  GETTABLEKS R8 R9 K27 ["CurrentCamera"]
  GETTABLEKS R7 R8 K28 ["CameraSubject"]
  NAMECALL R5 R5 K29 ["OnCameraSubjectChanged"]
  CALL R5 2 0
  GETTABLEKS R5 R0 K10 ["activeOcclusionModule"]
  LOADB R7 1
  NAMECALL R5 R5 K13 ["Enable"]
  CALL R5 2 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  JUMPIF R1 [+2]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R2 R1 K3 ["CameraType"]
  GETTABLEKS R3 R1 K4 ["CameraSubject"]
  LOADB R4 1
  GETIMPORT R5 K7 [Enum.CameraType.Custom]
  JUMPIFEQ R2 R5 [+7]
  GETIMPORT R5 K9 [Enum.CameraType.Follow]
  JUMPIFEQ R2 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R3 [+5]
  LOADK R7 K10 ["VehicleSeat"]
  NAMECALL R5 R3 K11 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  LOADB R5 0
  GETTABLEKS R7 R0 K12 ["occlusionMode"]
  GETIMPORT R8 K15 [Enum.DevCameraOcclusionMode.Invisicam]
  JUMPIFNOTEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  MOVE R7 R5
  JUMPIFNOT R7 [+3]
  MOVE R7 R4
  JUMPIFNOT R7 [+1]
  MOVE R7 R6
  RETURN R7 1

PROTO_10:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+10]
  GETIMPORT R4 K1 [workspace]
  GETTABLEKS R3 R4 K2 ["CurrentCamera"]
  GETTABLEKS R2 R3 K3 ["CameraType"]
  NAMECALL R3 R0 K4 ["GetCameraMovementModeFromSettings"]
  CALL R3 1 1
  MOVE R1 R3
  LOADNIL R3
  GETUPVAL R5 0
  JUMPIFNOT R5 [+2]
  LOADB R4 1
  JUMP [+4]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+66]
  GETIMPORT R4 K7 [Enum.CameraType.Scriptable]
  JUMPIFNOTEQ R2 R4 [+14]
  GETTABLEKS R4 R0 K8 ["activeCameraController"]
  JUMPIFNOT R4 [+9]
  GETTABLEKS R4 R0 K8 ["activeCameraController"]
  LOADB R6 0
  NAMECALL R4 R4 K9 ["Enable"]
  CALL R4 2 0
  LOADNIL R4
  SETTABLEKS R4 R0 K8 ["activeCameraController"]
  RETURN R0 0
  GETIMPORT R4 K11 [Enum.CameraType.Custom]
  JUMPIFNOTEQ R2 R4 [+6]
  NAMECALL R4 R0 K4 ["GetCameraMovementModeFromSettings"]
  CALL R4 1 1
  MOVE R1 R4
  JUMP [+40]
  GETIMPORT R4 K13 [Enum.CameraType.Track]
  JUMPIFNOTEQ R2 R4 [+4]
  GETIMPORT R1 K16 [Enum.ComputerCameraMovementMode.Classic]
  JUMP [+33]
  GETIMPORT R4 K18 [Enum.CameraType.Follow]
  JUMPIFNOTEQ R2 R4 [+4]
  GETIMPORT R1 K19 [Enum.ComputerCameraMovementMode.Follow]
  JUMP [+26]
  GETIMPORT R4 K21 [Enum.CameraType.Orbital]
  JUMPIFNOTEQ R2 R4 [+4]
  GETIMPORT R1 K22 [Enum.ComputerCameraMovementMode.Orbital]
  JUMP [+19]
  GETIMPORT R4 K24 [Enum.CameraType.Attach]
  JUMPIFEQ R2 R4 [+9]
  GETIMPORT R4 K26 [Enum.CameraType.Watch]
  JUMPIFEQ R2 R4 [+5]
  GETIMPORT R4 K28 [Enum.CameraType.Fixed]
  JUMPIFNOTEQ R2 R4 [+3]
  GETUPVAL R3 1
  JUMP [+5]
  GETIMPORT R4 K30 [warn]
  LOADK R5 K31 ["CameraScript encountered an unhandled Camera.CameraType value: "]
  MOVE R6 R2
  CALL R4 2 0
  JUMPIF R3 [+35]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K32 ["VREnabled"]
  JUMPIFNOT R4 [+2]
  GETUPVAL R3 3
  JUMP [+29]
  GETIMPORT R4 K16 [Enum.ComputerCameraMovementMode.Classic]
  JUMPIFEQ R1 R4 [+13]
  GETIMPORT R4 K19 [Enum.ComputerCameraMovementMode.Follow]
  JUMPIFEQ R1 R4 [+9]
  GETIMPORT R4 K34 [Enum.ComputerCameraMovementMode.Default]
  JUMPIFEQ R1 R4 [+5]
  GETIMPORT R4 K36 [Enum.ComputerCameraMovementMode.CameraToggle]
  JUMPIFNOTEQ R1 R4 [+3]
  GETUPVAL R3 4
  JUMP [+11]
  GETIMPORT R4 K22 [Enum.ComputerCameraMovementMode.Orbital]
  JUMPIFNOTEQ R1 R4 [+3]
  GETUPVAL R3 5
  JUMP [+5]
  GETIMPORT R4 K30 [warn]
  LOADK R5 K37 ["ActivateCameraController did not select a module."]
  CALL R4 1 0
  RETURN R0 0
  NAMECALL R4 R0 K38 ["ShouldUseVehicleCamera"]
  CALL R4 1 1
  JUMPIFNOT R4 [+7]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K32 ["VREnabled"]
  JUMPIFNOT R5 [+2]
  GETUPVAL R3 6
  JUMP [+1]
  GETUPVAL R3 7
  LOADNIL R5
  GETUPVAL R7 8
  GETTABLE R6 R7 R3
  JUMPIF R6 [+7]
  GETTABLEKS R6 R3 K39 ["new"]
  CALL R6 0 1
  MOVE R5 R6
  GETUPVAL R6 8
  SETTABLE R5 R6 R3
  JUMP [+8]
  GETUPVAL R6 8
  GETTABLE R5 R6 R3
  GETTABLEKS R6 R5 K40 ["Reset"]
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K40 ["Reset"]
  CALL R6 1 0
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  JUMPIFNOT R6 [+32]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  JUMPIFEQ R6 R5 [+16]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  LOADB R8 0
  NAMECALL R6 R6 K9 ["Enable"]
  CALL R6 2 0
  SETTABLEKS R5 R0 K8 ["activeCameraController"]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  LOADB R8 1
  NAMECALL R6 R6 K9 ["Enable"]
  CALL R6 2 0
  JUMP [+23]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  NAMECALL R6 R6 K41 ["GetEnabled"]
  CALL R6 1 1
  JUMPIF R6 [+17]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  LOADB R8 1
  NAMECALL R6 R6 K9 ["Enable"]
  CALL R6 2 0
  JUMP [+10]
  JUMPIFEQKNIL R5 [+9]
  SETTABLEKS R5 R0 K8 ["activeCameraController"]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  LOADB R8 1
  NAMECALL R6 R6 K9 ["Enable"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  JUMPIFNOT R6 [+32]
  GETUPVAL R6 0
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  MOVE R8 R1
  NAMECALL R6 R6 K42 ["SetCameraMovementMode"]
  CALL R6 2 0
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  MOVE R8 R2
  NAMECALL R6 R6 K43 ["SetCameraType"]
  CALL R6 2 0
  RETURN R0 0
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  MOVE R8 R1
  NAMECALL R6 R6 K42 ["SetCameraMovementMode"]
  CALL R6 2 0
  RETURN R0 0
  JUMPIFEQKNIL R2 [+7]
  GETTABLEKS R6 R0 K8 ["activeCameraController"]
  MOVE R8 R2
  NAMECALL R6 R6 K43 ["SetCameraType"]
  CALL R6 2 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K3 ["CameraSubject"]
  GETTABLEKS R3 R0 K4 ["activeTransparencyController"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R0 K4 ["activeTransparencyController"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["SetSubject"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K6 ["activeOcclusionModule"]
  JUMPIFNOT R3 [+6]
  GETTABLEKS R3 R0 K6 ["activeOcclusionModule"]
  MOVE R5 R2
  NAMECALL R3 R3 K7 ["OnCameraSubjectChanged"]
  CALL R3 2 0
  LOADNIL R5
  GETTABLEKS R6 R1 K8 ["CameraType"]
  NAMECALL R3 R0 K9 ["ActivateCameraController"]
  CALL R3 3 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K3 [Enum.CameraType.Scriptable]
  JUMPIFNOTEQ R1 R2 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["MouseBehavior"]
  GETIMPORT R3 K6 [Enum.MouseBehavior.LockCenter]
  JUMPIFNOTEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["restoreMouseBehavior"]
  CALL R2 0 0
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R0 K8 ["ActivateCameraController"]
  CALL R2 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["CameraSubject"]
  NAMECALL R0 R0 K1 ["OnCameraSubjectChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["CameraType"]
  NAMECALL R0 R0 K1 ["OnCameraTypeChanged"]
  CALL R0 2 0
  RETURN R0 0

PROTO_15:
  GETIMPORT R3 K1 [game]
  GETTABLEKS R2 R3 K2 ["Workspace"]
  GETTABLEKS R1 R2 K3 ["CurrentCamera"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K4 ["cameraSubjectChangedConn"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K4 ["cameraSubjectChangedConn"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K6 ["cameraTypeChangedConn"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K6 ["cameraTypeChangedConn"]
  NAMECALL R2 R2 K5 ["Disconnect"]
  CALL R2 1 0
  LOADK R4 K7 ["CameraSubject"]
  NAMECALL R2 R1 K8 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K4 ["cameraSubjectChangedConn"]
  LOADK R4 K10 ["CameraType"]
  NAMECALL R2 R1 K8 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K6 ["cameraTypeChangedConn"]
  GETTABLEKS R4 R1 K7 ["CameraSubject"]
  NAMECALL R2 R0 K11 ["OnCameraSubjectChanged"]
  CALL R2 2 0
  GETTABLEKS R4 R1 K10 ["CameraType"]
  NAMECALL R2 R0 K12 ["OnCameraTypeChanged"]
  CALL R2 2 0
  RETURN R0 0

PROTO_16:
  JUMPIFNOTEQKS R1 K0 ["CameraMode"] [+69]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["LocalPlayer"]
  GETTABLEKS R2 R3 K0 ["CameraMode"]
  GETIMPORT R3 K4 [Enum.CameraMode.LockFirstPerson]
  JUMPIFNOTEQ R2 R3 [+29]
  GETTABLEKS R2 R0 K5 ["activeCameraController"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K5 ["activeCameraController"]
  NAMECALL R2 R2 K6 ["GetModuleName"]
  CALL R2 1 1
  JUMPIFEQKS R2 K7 ["ClassicCamera"] [+10]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["ConvertCameraModeEnumToStandard"]
  GETIMPORT R5 K11 [Enum.DevComputerCameraMovementMode.Classic]
  CALL R4 1 -1
  NAMECALL R2 R0 K12 ["ActivateCameraController"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K5 ["activeCameraController"]
  JUMPIFNOT R2 [+85]
  GETTABLEKS R2 R0 K5 ["activeCameraController"]
  NAMECALL R2 R2 K13 ["UpdateForDistancePropertyChange"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["LocalPlayer"]
  GETTABLEKS R2 R3 K0 ["CameraMode"]
  GETIMPORT R3 K14 [Enum.CameraMode.Classic]
  JUMPIFNOTEQ R2 R3 [+13]
  NAMECALL R2 R0 K15 ["GetCameraMovementModeFromSettings"]
  CALL R2 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["ConvertCameraModeEnumToStandard"]
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K12 ["ActivateCameraController"]
  CALL R3 -1 0
  RETURN R0 0
  GETIMPORT R2 K17 [warn]
  LOADK R3 K18 ["Unhandled value for property player.CameraMode: "]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["LocalPlayer"]
  GETTABLEKS R4 R5 K0 ["CameraMode"]
  CALL R2 2 0
  RETURN R0 0
  JUMPIFEQKS R1 K19 ["DevComputerCameraMode"] [+3]
  JUMPIFNOTEQKS R1 K20 ["DevTouchCameraMode"] [+13]
  NAMECALL R2 R0 K15 ["GetCameraMovementModeFromSettings"]
  CALL R2 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["ConvertCameraModeEnumToStandard"]
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K12 ["ActivateCameraController"]
  CALL R3 -1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K21 ["DevCameraOcclusionMode"] [+10]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["LocalPlayer"]
  GETTABLEKS R4 R5 K21 ["DevCameraOcclusionMode"]
  NAMECALL R2 R0 K22 ["ActivateOcclusionModule"]
  CALL R2 2 0
  RETURN R0 0
  JUMPIFEQKS R1 K23 ["CameraMinZoomDistance"] [+3]
  JUMPIFNOTEQKS R1 K24 ["CameraMaxZoomDistance"] [+10]
  GETTABLEKS R2 R0 K5 ["activeCameraController"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R0 K5 ["activeCameraController"]
  NAMECALL R2 R2 K13 ["UpdateForDistancePropertyChange"]
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K25 ["DevTouchMovementMode"] [+2]
  RETURN R0 0
  JUMPIFNOTEQKS R1 K26 ["DevComputerMovementMode"] [+2]
  RETURN R0 0
  JUMPIFNOTEQKS R1 K27 ["DevEnableMouseLock"] [+1]
  RETURN R0 0

PROTO_17:
  JUMPIFNOTEQKS R1 K0 ["ComputerCameraMovementMode"] [+12]
  NAMECALL R2 R0 K1 ["GetCameraMovementModeFromSettings"]
  CALL R2 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["ConvertCameraModeEnumToStandard"]
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K3 ["ActivateCameraController"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["activeCameraController"]
  JUMPIFNOT R2 [+52]
  GETTABLEKS R2 R0 K0 ["activeCameraController"]
  NAMECALL R2 R2 K1 ["UpdateMouseBehavior"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["activeCameraController"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Update"]
  CALL R2 2 2
  GETTABLEKS R4 R0 K3 ["activeOcclusionModule"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R4 R0 K3 ["activeOcclusionModule"]
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R4 R4 K2 ["Update"]
  CALL R4 4 2
  MOVE R2 R4
  MOVE R3 R5
  GETIMPORT R6 K5 [game]
  GETTABLEKS R5 R6 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["CurrentCamera"]
  SETTABLEKS R2 R4 K8 ["CFrame"]
  SETTABLEKS R3 R4 K9 ["Focus"]
  GETTABLEKS R5 R0 K10 ["activeTransparencyController"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R0 K10 ["activeTransparencyController"]
  MOVE R7 R1
  NAMECALL R5 R5 K2 ["Update"]
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["getInputEnabled"]
  CALL R5 0 1
  JUMPIFNOT R5 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["resetInputForFrameEnd"]
  CALL R5 0 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LocalPlayer"]
  JUMPIFNOT R1 [+59]
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["GetLastInputType"]
  CALL R2 1 1
  GETIMPORT R3 K5 [Enum.UserInputType.Touch]
  JUMPIFEQ R2 R3 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["TouchEnabled"]
  JUMPIFNOT R2 [+21]
  GETTABLEKS R2 R1 K7 ["DevTouchCameraMode"]
  GETIMPORT R3 K10 [Enum.DevTouchCameraMovementMode.UserChoice]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["ConvertCameraModeEnumToStandard"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["TouchCameraMovementMode"]
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["ConvertCameraModeEnumToStandard"]
  GETTABLEKS R3 R1 K7 ["DevTouchCameraMode"]
  CALL R2 1 -1
  RETURN R2 -1
  GETTABLEKS R2 R1 K13 ["DevComputerCameraMode"]
  GETIMPORT R3 K15 [Enum.DevComputerCameraMovementMode.UserChoice]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["ConvertCameraModeEnumToStandard"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K16 ["ComputerCameraMovementMode"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["ConvertCameraModeEnumToStandard"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["ConvertCameraModeEnumToStandard"]
  GETTABLEKS R3 R1 K13 ["DevComputerCameraMode"]
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R0 0

PROTO_20:
  GETTABLEKS R3 R0 K0 ["activeOcclusionModule"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R0 K0 ["activeOcclusionModule"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["CharacterAdded"]
  CALL R3 3 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R3 R0 K0 ["activeOcclusionModule"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R0 K0 ["activeOcclusionModule"]
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K1 ["CharacterRemoving"]
  CALL R3 3 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R4 1
  NAMECALL R1 R1 K0 ["OnCharacterAdded"]
  CALL R1 3 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R4 1
  NAMECALL R1 R1 K0 ["OnCharacterRemoving"]
  CALL R1 3 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R2 R1 K0 ["CharacterAdded"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K2 ["CharacterRemoving"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["activeMouseLockController"]
  JUMPIFNOT R1 [+25]
  GETTABLEKS R1 R0 K0 ["activeMouseLockController"]
  NAMECALL R1 R1 K1 ["GetIsMouseLocked"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K0 ["activeMouseLockController"]
  NAMECALL R2 R2 K2 ["GetMouseLockOffset"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K3 ["activeCameraController"]
  JUMPIFNOT R3 [+12]
  GETTABLEKS R3 R0 K3 ["activeCameraController"]
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["SetIsMouseLocked"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K3 ["activeCameraController"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["SetMouseLockOffset"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  SETTABLEKS R0 R0 K0 ["__index"]
  NEWTABLE R1 0 9
  LOADK R2 K1 ["CameraMinZoomDistance"]
  LOADK R3 K2 ["CameraMaxZoomDistance"]
  LOADK R4 K3 ["CameraMode"]
  LOADK R5 K4 ["DevCameraOcclusionMode"]
  LOADK R6 K5 ["DevComputerCameraMode"]
  LOADK R7 K6 ["DevTouchCameraMode"]
  LOADK R8 K7 ["DevComputerMovementMode"]
  LOADK R9 K8 ["DevTouchMovementMode"]
  LOADK R10 K9 ["DevEnableMouseLock"]
  SETLIST R1 R2 9 [1]
  NEWTABLE R2 0 8
  LOADK R3 K10 ["ComputerCameraMovementMode"]
  LOADK R4 K11 ["ComputerMovementMode"]
  LOADK R5 K12 ["ControlMode"]
  LOADK R6 K13 ["GamepadCameraSensitivity"]
  LOADK R7 K14 ["MouseSensitivity"]
  LOADK R8 K15 ["RotationType"]
  LOADK R9 K16 ["TouchCameraMovementMode"]
  LOADK R10 K17 ["TouchMovementMode"]
  SETLIST R2 R3 8 [1]
  GETIMPORT R3 K19 [game]
  LOADK R5 K20 ["Players"]
  NAMECALL R3 R3 K21 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K19 [game]
  LOADK R6 K22 ["RunService"]
  NAMECALL R4 R4 K21 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K19 [game]
  LOADK R7 K23 ["UserInputService"]
  NAMECALL R5 R5 K21 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K19 [game]
  LOADK R8 K24 ["VRService"]
  NAMECALL R6 R6 K21 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K26 [UserSettings]
  CALL R7 0 1
  LOADK R9 K27 ["UserGameSettings"]
  NAMECALL R7 R7 K21 ["GetService"]
  CALL R7 2 1
  GETIMPORT R9 K29 [script]
  GETTABLEKS R8 R9 K30 ["Parent"]
  LOADK R10 K31 ["CommonUtils"]
  NAMECALL R8 R8 K32 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K34 [require]
  LOADK R12 K35 ["FlagUtil"]
  NAMECALL R10 R8 K32 ["WaitForChild"]
  CALL R10 2 -1
  CALL R9 -1 1
  GETIMPORT R10 K34 [require]
  GETIMPORT R11 K29 [script]
  LOADK R13 K36 ["CameraUtils"]
  NAMECALL R11 R11 K32 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETIMPORT R11 K34 [require]
  GETIMPORT R12 K29 [script]
  LOADK R14 K37 ["CameraInput"]
  NAMECALL R12 R12 K32 ["WaitForChild"]
  CALL R12 2 -1
  CALL R11 -1 1
  GETIMPORT R12 K34 [require]
  GETIMPORT R13 K29 [script]
  LOADK R15 K38 ["ClassicCamera"]
  NAMECALL R13 R13 K32 ["WaitForChild"]
  CALL R13 2 -1
  CALL R12 -1 1
  GETIMPORT R13 K34 [require]
  GETIMPORT R14 K29 [script]
  LOADK R16 K39 ["OrbitalCamera"]
  NAMECALL R14 R14 K32 ["WaitForChild"]
  CALL R14 2 -1
  CALL R13 -1 1
  GETIMPORT R14 K34 [require]
  GETIMPORT R15 K29 [script]
  LOADK R17 K40 ["LegacyCamera"]
  NAMECALL R15 R15 K32 ["WaitForChild"]
  CALL R15 2 -1
  CALL R14 -1 1
  GETIMPORT R15 K34 [require]
  GETIMPORT R16 K29 [script]
  LOADK R18 K41 ["VehicleCamera"]
  NAMECALL R16 R16 K32 ["WaitForChild"]
  CALL R16 2 -1
  CALL R15 -1 1
  GETIMPORT R16 K34 [require]
  GETIMPORT R17 K29 [script]
  LOADK R19 K42 ["VRCamera"]
  NAMECALL R17 R17 K32 ["WaitForChild"]
  CALL R17 2 -1
  CALL R16 -1 1
  GETIMPORT R17 K34 [require]
  GETIMPORT R18 K29 [script]
  LOADK R20 K43 ["VRVehicleCamera"]
  NAMECALL R18 R18 K32 ["WaitForChild"]
  CALL R18 2 -1
  CALL R17 -1 1
  GETIMPORT R18 K34 [require]
  GETIMPORT R19 K29 [script]
  LOADK R21 K44 ["Invisicam"]
  NAMECALL R19 R19 K32 ["WaitForChild"]
  CALL R19 2 -1
  CALL R18 -1 1
  GETIMPORT R19 K34 [require]
  GETIMPORT R20 K29 [script]
  LOADK R22 K45 ["Poppercam"]
  NAMECALL R20 R20 K32 ["WaitForChild"]
  CALL R20 2 -1
  CALL R19 -1 1
  GETIMPORT R20 K34 [require]
  GETIMPORT R21 K29 [script]
  LOADK R23 K46 ["TransparencyController"]
  NAMECALL R21 R21 K32 ["WaitForChild"]
  CALL R21 2 -1
  CALL R20 -1 1
  GETIMPORT R21 K34 [require]
  GETIMPORT R22 K29 [script]
  LOADK R24 K47 ["MouseLockController"]
  NAMECALL R22 R22 K32 ["WaitForChild"]
  CALL R22 2 -1
  CALL R21 -1 1
  NEWTABLE R22 0 0
  NEWTABLE R23 0 0
  GETTABLEKS R24 R3 K48 ["LocalPlayer"]
  LOADK R26 K49 ["PlayerScripts"]
  NAMECALL R24 R24 K32 ["WaitForChild"]
  CALL R24 2 1
  GETIMPORT R27 K52 [Enum.TouchCameraMovementMode.Default]
  NAMECALL R25 R24 K53 ["RegisterTouchCameraMovementMode"]
  CALL R25 2 0
  GETIMPORT R27 K55 [Enum.TouchCameraMovementMode.Follow]
  NAMECALL R25 R24 K53 ["RegisterTouchCameraMovementMode"]
  CALL R25 2 0
  GETIMPORT R27 K57 [Enum.TouchCameraMovementMode.Classic]
  NAMECALL R25 R24 K53 ["RegisterTouchCameraMovementMode"]
  CALL R25 2 0
  GETIMPORT R27 K58 [Enum.ComputerCameraMovementMode.Default]
  NAMECALL R25 R24 K59 ["RegisterComputerCameraMovementMode"]
  CALL R25 2 0
  GETIMPORT R27 K60 [Enum.ComputerCameraMovementMode.Follow]
  NAMECALL R25 R24 K59 ["RegisterComputerCameraMovementMode"]
  CALL R25 2 0
  GETIMPORT R27 K61 [Enum.ComputerCameraMovementMode.Classic]
  NAMECALL R25 R24 K59 ["RegisterComputerCameraMovementMode"]
  CALL R25 2 0
  GETIMPORT R27 K63 [Enum.ComputerCameraMovementMode.CameraToggle]
  NAMECALL R25 R24 K59 ["RegisterComputerCameraMovementMode"]
  CALL R25 2 0
  GETTABLEKS R24 R9 K64 ["getUserFlag"]
  LOADK R25 K65 ["UserRespectLegacyCameraOptions"]
  CALL R24 1 1
  DUPCLOSURE R25 K66 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R25 R0 K67 ["new"]
  DUPCLOSURE R25 K68 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R25 R0 K69 ["GetCameraMovementModeFromSettings"]
  DUPCLOSURE R25 K70 [PROTO_8]
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R23
  CAPTURE VAL R3
  SETTABLEKS R25 R0 K71 ["ActivateOcclusionModule"]
  DUPCLOSURE R25 K72 [PROTO_9]
  SETTABLEKS R25 R0 K73 ["ShouldUseVehicleCamera"]
  DUPCLOSURE R25 K74 [PROTO_10]
  CAPTURE VAL R24
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R22
  SETTABLEKS R25 R0 K75 ["ActivateCameraController"]
  DUPCLOSURE R25 K76 [PROTO_11]
  SETTABLEKS R25 R0 K77 ["OnCameraSubjectChanged"]
  DUPCLOSURE R25 K78 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R25 R0 K79 ["OnCameraTypeChanged"]
  DUPCLOSURE R25 K80 [PROTO_15]
  SETTABLEKS R25 R0 K81 ["OnCurrentCameraChanged"]
  DUPCLOSURE R25 K82 [PROTO_16]
  CAPTURE VAL R3
  CAPTURE VAL R10
  SETTABLEKS R25 R0 K83 ["OnLocalPlayerCameraPropertyChanged"]
  DUPCLOSURE R25 K84 [PROTO_17]
  CAPTURE VAL R10
  SETTABLEKS R25 R0 K85 ["OnUserGameSettingsPropertyChanged"]
  DUPCLOSURE R25 K86 [PROTO_18]
  CAPTURE VAL R11
  SETTABLEKS R25 R0 K87 ["Update"]
  JUMPIF R24 [+7]
  DUPCLOSURE R25 K88 [PROTO_19]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R25 R0 K89 ["GetCameraControlChoice"]
  DUPCLOSURE R25 K90 [PROTO_20]
  SETTABLEKS R25 R0 K91 ["OnCharacterAdded"]
  DUPCLOSURE R25 K92 [PROTO_21]
  SETTABLEKS R25 R0 K93 ["OnCharacterRemoving"]
  DUPCLOSURE R25 K94 [PROTO_24]
  SETTABLEKS R25 R0 K95 ["OnPlayerAdded"]
  DUPCLOSURE R25 K96 [PROTO_25]
  SETTABLEKS R25 R0 K97 ["OnMouseLockToggled"]
  GETTABLEKS R25 R0 K67 ["new"]
  CALL R25 0 1
  NEWTABLE R26 0 0
  RETURN R26 1
