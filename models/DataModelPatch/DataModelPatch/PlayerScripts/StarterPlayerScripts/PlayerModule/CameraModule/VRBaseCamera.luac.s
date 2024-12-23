PROTO_0:
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  LOADK R2 K2 ["UserVRVehicleCamera2"]
  NAMECALL R0 R0 K3 ["IsUserFeatureEnabled"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K2 [setmetatable]
  CALL R0 2 1
  NEWTABLE R1 0 2
  LOADN R2 0
  LOADN R3 7
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K3 ["gamepadZoomLevels"]
  LOADN R1 1
  SETTABLEKS R1 R0 K4 ["headScale"]
  LOADN R3 7
  NAMECALL R1 R0 K5 ["SetCameraToSubjectDistance"]
  CALL R1 2 0
  LOADN R1 0
  SETTABLEKS R1 R0 K6 ["VRFadeResetTimer"]
  LOADN R1 0
  SETTABLEKS R1 R0 K7 ["VREdgeBlurTimer"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["gamepadResetConnection"]
  LOADB R1 1
  SETTABLEKS R1 R0 K9 ["needsReset"]
  LOADB R1 0
  SETTABLEKS R1 R0 K10 ["recentered"]
  NAMECALL R1 R0 K11 ["Reset"]
  CALL R1 1 0
  RETURN R0 1

PROTO_2:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["stepRotateTimeout"]
  RETURN R0 0

PROTO_3:
  LOADK R1 K0 ["VRBaseCamera"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GamepadZoomPress"]
  MOVE R2 R0
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["GamepadReset"]
  CALL R1 1 0
  NAMECALL R1 R0 K2 ["ResetZoom"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["stepRotateTimeout"]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["needsReset"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SetZoomParameters"]
  GETTABLEKS R2 R0 K1 ["currentSubjectDistance"]
  LOADN R3 0
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["ReleaseSpring"]
  CALL R1 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GamepadReset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Reset"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["IsInFirstPerson"]
  CALL R0 1 1
  JUMPIF R0 [+4]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Reset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R2 K3 [Enum.UserCFrame.Floor]
  JUMPIFNOTEQ R0 R2 [+5]
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["recentered"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnEnabledChanged"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["enabled"]
  JUMPIFNOT R1 [+34]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["gamepadReset"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["gamepadResetConnection"]
  GETUPVAL R1 2
  LOADK R3 K5 ["ThirdPersonFollowCamEnabled"]
  NAMECALL R1 R1 K6 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["thirdPersonOptionChanged"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["UserCFrameChanged"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K9 ["vrRecentered"]
  RETURN R0 0
  GETTABLEKS R1 R0 K10 ["inFirstPerson"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K11 ["GamepadZoomPress"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K7 ["thirdPersonOptionChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["thirdPersonOptionChanged"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["thirdPersonOptionChanged"]
  GETTABLEKS R1 R0 K9 ["vrRecentered"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K9 ["vrRecentered"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["vrRecentered"]
  GETTABLEKS R1 R0 K13 ["cameraHeadScaleChangedConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K13 ["cameraHeadScaleChangedConn"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K13 ["cameraHeadScaleChangedConn"]
  GETTABLEKS R1 R0 K4 ["gamepadResetConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["gamepadResetConnection"]
  NAMECALL R1 R1 K12 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["gamepadResetConnection"]
  LOADN R1 0
  SETTABLEKS R1 R0 K14 ["VREdgeBlurTimer"]
  GETUPVAL R3 4
  LOADN R4 1
  NAMECALL R1 R0 K15 ["UpdateEdgeBlur"]
  CALL R1 3 0
  GETUPVAL R1 5
  LOADK R3 K16 ["VRFade"]
  NAMECALL R1 R1 K17 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  LOADN R2 0
  SETTABLEKS R2 R1 K18 ["Brightness"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["OnHeadScaleChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnCurrentCameraChanged"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["cameraHeadScaleChangedConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K1 ["cameraHeadScaleChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["cameraHeadScaleChangedConn"]
  GETIMPORT R2 K4 [workspace]
  GETTABLEKS R1 R2 K5 ["CurrentCamera"]
  JUMPIFNOT R1 [+14]
  LOADK R4 K6 ["HeadScale"]
  NAMECALL R2 R1 K7 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K8 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K1 ["cameraHeadScaleChangedConn"]
  NAMECALL R2 R0 K9 ["OnHeadScaleChanged"]
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  GETTABLEKS R2 R1 K3 ["HeadScale"]
  GETTABLEKS R3 R0 K4 ["gamepadZoomLevels"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R0 K4 ["gamepadZoomLevels"]
  MUL R10 R7 R2
  GETTABLEKS R11 R0 K5 ["headScale"]
  DIV R9 R10 R11
  SETTABLE R9 R8 R6
  FORGLOOP R3 2 [-8]
  NAMECALL R7 R0 K6 ["GetCameraToSubjectDistance"]
  CALL R7 1 1
  MUL R6 R7 R2
  GETTABLEKS R7 R0 K5 ["headScale"]
  DIV R5 R6 R7
  NAMECALL R3 R0 K7 ["SetCameraToSubjectDistance"]
  CALL R3 2 0
  SETTABLEKS R2 R0 K5 ["headScale"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R4 R0 K0 ["lastCameraFocus"]
  OR R3 R4 R1
  GETTABLEKS R6 R0 K1 ["cameraTranslationConstraints"]
  GETTABLEKS R5 R6 K2 ["x"]
  LOADN R7 1
  GETTABLEKS R10 R0 K1 ["cameraTranslationConstraints"]
  GETTABLEKS R9 R10 K3 ["y"]
  ADD R8 R9 R2
  FASTCALL2 MATH_MIN R7 R8 [+3]
  GETIMPORT R6 K6 [math.min]
  CALL R6 2 1
  GETTABLEKS R8 R0 K1 ["cameraTranslationConstraints"]
  GETTABLEKS R7 R8 K7 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K10 [Vector3.new]
  CALL R4 3 1
  SETTABLEKS R4 R0 K1 ["cameraTranslationConstraints"]
  LOADN R5 0
  NAMECALL R6 R0 K11 ["GetCameraHeight"]
  CALL R6 1 1
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K10 [Vector3.new]
  CALL R4 3 1
  GETIMPORT R5 K13 [CFrame.new]
  GETTABLEKS R7 R1 K2 ["x"]
  GETTABLEKS R8 R3 K3 ["y"]
  GETTABLEKS R9 R1 K7 ["z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R6 K10 [Vector3.new]
  CALL R6 3 1
  ADD R8 R1 R4
  GETTABLEKS R10 R0 K1 ["cameraTranslationConstraints"]
  GETTABLEKS R9 R10 K3 ["y"]
  NAMECALL R6 R6 K14 ["Lerp"]
  CALL R6 3 -1
  CALL R5 -1 1
  RETURN R5 1

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["VignetteEnabled"]
  JUMPIFNOTEQKB R1 FALSE [+2]
  RETURN R0 0
  GETUPVAL R1 1
  LOADK R3 K1 ["VRFade"]
  NAMECALL R1 R1 K2 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+11]
  GETIMPORT R2 K5 [Instance.new]
  LOADK R3 K6 ["ColorCorrectionEffect"]
  CALL R2 1 1
  MOVE R1 R2
  LOADK R2 K1 ["VRFade"]
  SETTABLEKS R2 R1 K7 ["Name"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K8 ["Parent"]
  LOADN R2 255
  SETTABLEKS R2 R1 K9 ["Brightness"]
  LOADK R2 K10 [0.1]
  SETTABLEKS R2 R0 K11 ["VRFadeResetTimer"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  LOADK R4 K0 ["VRFade"]
  NAMECALL R2 R2 K1 ["FindFirstChild"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K2 ["VRFadeResetTimer"]
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+36]
  GETTABLEKS R5 R0 K2 ["VRFadeResetTimer"]
  SUB R4 R5 R1
  FASTCALL2K MATH_MAX R4 K3 [+4]
  LOADK R5 K3 [0]
  GETIMPORT R3 K6 [math.max]
  CALL R3 2 1
  SETTABLEKS R3 R0 K2 ["VRFadeResetTimer"]
  GETUPVAL R3 0
  LOADK R5 K0 ["VRFade"]
  NAMECALL R3 R3 K1 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+22]
  GETTABLEKS R4 R3 K7 ["Brightness"]
  LOADN R5 0
  JUMPIFNOTLT R4 R5 [+18]
  GETTABLEKS R6 R3 K7 ["Brightness"]
  MULK R7 R1 K8 [10]
  ADD R5 R6 R7
  FASTCALL2K MATH_MIN R5 K3 [+4]
  LOADK R6 K3 [0]
  GETIMPORT R4 K10 [math.min]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["Brightness"]
  RETURN R0 0
  JUMPIFNOT R2 [+3]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["Brightness"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETIMPORT R3 K3 [Enum.UserCFrame.Head]
  NAMECALL R1 R1 K4 ["GetUserCFrame"]
  CALL R1 2 1
  GETIMPORT R5 K6 [workspace]
  GETTABLEKS R4 R5 K7 ["CurrentCamera"]
  GETTABLEKS R3 R4 K8 ["CFrame"]
  GETIMPORT R5 K10 [CFrame.new]
  GETTABLEKS R7 R1 K11 ["p"]
  GETIMPORT R10 K6 [workspace]
  GETTABLEKS R9 R10 K7 ["CurrentCamera"]
  GETTABLEKS R8 R9 K12 ["HeadScale"]
  MUL R6 R7 R8
  CALL R5 1 1
  GETTABLEKS R7 R1 K11 ["p"]
  SUB R6 R1 R7
  MUL R4 R5 R6
  MUL R2 R3 R4
  GETUPVAL R3 1
  GETIMPORT R6 K14 [CFrame.Angles]
  LOADN R7 0
  LOADK R8 K15 [3.14159265358979]
  LOADN R9 0
  CALL R6 3 1
  MUL R5 R2 R6
  GETTABLEKS R7 R2 K16 ["LookVector"]
  LOADK R9 K17 [1.05]
  GETIMPORT R12 K6 [workspace]
  GETTABLEKS R11 R12 K7 ["CurrentCamera"]
  GETTABLEKS R10 R11 K12 ["HeadScale"]
  MUL R8 R9 R10
  MUL R6 R7 R8
  ADD R4 R5 R6
  SETTABLEKS R4 R3 K8 ["CFrame"]
  GETUPVAL R3 1
  LOADK R5 K18 [{0.44, 0.47, 1}]
  GETIMPORT R8 K6 [workspace]
  GETTABLEKS R7 R8 K7 ["CurrentCamera"]
  GETTABLEKS R6 R7 K12 ["HeadScale"]
  MUL R4 R5 R6
  SETTABLEKS R4 R3 K19 ["Size"]
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VignetteEnabled"]
  JUMPIFNOTEQKB R2 FALSE [+2]
  RETURN R0 0
  LOADNIL R2
  GETIMPORT R4 K2 [workspace]
  GETTABLEKS R3 R4 K3 ["CurrentCamera"]
  LOADK R5 K4 ["VRBlurPart"]
  NAMECALL R3 R3 K5 ["FindFirstChild"]
  CALL R3 2 1
  MOVE R2 R3
  JUMPIF R2 [+44]
  GETIMPORT R3 K8 [Instance.new]
  LOADK R4 K9 ["Part"]
  CALL R3 1 1
  MOVE R2 R3
  LOADK R3 K4 ["VRBlurPart"]
  SETTABLEKS R3 R2 K10 ["Name"]
  GETIMPORT R4 K2 [workspace]
  GETTABLEKS R3 R4 K3 ["CurrentCamera"]
  SETTABLEKS R3 R2 K11 ["Parent"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["CanTouch"]
  LOADB R3 0
  SETTABLEKS R3 R2 K13 ["CanCollide"]
  LOADB R3 0
  SETTABLEKS R3 R2 K14 ["CanQuery"]
  LOADB R3 1
  SETTABLEKS R3 R2 K15 ["Anchored"]
  LOADK R3 K16 [{0.44, 0.47, 1}]
  SETTABLEKS R3 R2 K17 ["Size"]
  LOADN R3 1
  SETTABLEKS R3 R2 K18 ["Transparency"]
  LOADB R3 0
  SETTABLEKS R3 R2 K19 ["CastShadow"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K20 ["RenderStepped"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE REF R2
  NAMECALL R3 R3 K21 ["Connect"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K22 ["PlayerGui"]
  LOADK R5 K23 ["VRBlurScreen"]
  NAMECALL R3 R3 K5 ["FindFirstChild"]
  CALL R3 2 1
  LOADNIL R4
  JUMPIFNOT R3 [+5]
  LOADK R7 K24 ["VRBlur"]
  NAMECALL R5 R3 K5 ["FindFirstChild"]
  CALL R5 2 1
  MOVE R4 R5
  JUMPIF R4 [+86]
  JUMPIF R3 [+10]
  GETIMPORT R5 K8 [Instance.new]
  LOADK R6 K25 ["SurfaceGui"]
  CALL R5 1 1
  JUMPIF R5 [+4]
  GETIMPORT R5 K8 [Instance.new]
  LOADK R6 K26 ["ScreenGui"]
  CALL R5 1 1
  MOVE R3 R5
  LOADK R5 K23 ["VRBlurScreen"]
  SETTABLEKS R5 R3 K10 ["Name"]
  GETTABLEKS R5 R1 K22 ["PlayerGui"]
  SETTABLEKS R5 R3 K11 ["Parent"]
  SETTABLEKS R2 R3 K27 ["Adornee"]
  GETIMPORT R5 K8 [Instance.new]
  LOADK R6 K28 ["ImageLabel"]
  CALL R5 1 1
  MOVE R4 R5
  LOADK R5 K24 ["VRBlur"]
  SETTABLEKS R5 R4 K10 ["Name"]
  SETTABLEKS R3 R4 K11 ["Parent"]
  LOADK R5 K29 ["rbxasset://textures/ui/VR/edgeBlur.png"]
  SETTABLEKS R5 R4 K30 ["Image"]
  GETIMPORT R5 K32 [Vector2.new]
  LOADK R6 K33 [0.5]
  LOADK R7 K33 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K34 ["AnchorPoint"]
  GETIMPORT R5 K36 [UDim2.new]
  LOADK R6 K33 [0.5]
  LOADN R7 0
  LOADK R8 K33 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K37 ["Position"]
  GETIMPORT R10 K2 [workspace]
  GETTABLEKS R9 R10 K3 ["CurrentCamera"]
  GETTABLEKS R8 R9 K40 ["ViewportSize"]
  GETTABLEKS R7 R8 K41 ["X"]
  MULK R6 R7 K39 [2.3]
  DIVK R5 R6 K38 [512]
  GETIMPORT R11 K2 [workspace]
  GETTABLEKS R10 R11 K3 ["CurrentCamera"]
  GETTABLEKS R9 R10 K40 ["ViewportSize"]
  GETTABLEKS R8 R9 K42 ["Y"]
  MULK R7 R8 K39 [2.3]
  DIVK R6 R7 K38 [512]
  GETIMPORT R7 K44 [UDim2.fromScale]
  MOVE R8 R5
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R4 K17 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R4 K45 ["BackgroundTransparency"]
  LOADB R7 1
  SETTABLEKS R7 R4 K46 ["Active"]
  GETIMPORT R7 K50 [Enum.ScaleType.Stretch]
  SETTABLEKS R7 R4 K48 ["ScaleType"]
  LOADB R5 1
  SETTABLEKS R5 R4 K51 ["Visible"]
  LOADN R5 0
  SETTABLEKS R5 R4 K52 ["ImageTransparency"]
  LOADK R5 K53 [0.14]
  SETTABLEKS R5 R0 K54 ["VREdgeBlurTimer"]
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_19:
  GETTABLEKS R3 R1 K0 ["PlayerGui"]
  LOADK R5 K1 ["VRBlurScreen"]
  NAMECALL R3 R3 K2 ["FindFirstChild"]
  CALL R3 2 1
  LOADNIL R4
  JUMPIFNOT R3 [+5]
  LOADK R7 K3 ["VRBlur"]
  NAMECALL R5 R3 K2 ["FindFirstChild"]
  CALL R5 2 1
  MOVE R4 R5
  JUMPIFNOT R4 [+38]
  GETTABLEKS R5 R0 K4 ["VREdgeBlurTimer"]
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+31]
  GETTABLEKS R6 R0 K4 ["VREdgeBlurTimer"]
  SUB R5 R6 R2
  SETTABLEKS R5 R0 K4 ["VREdgeBlurTimer"]
  GETTABLEKS R5 R1 K0 ["PlayerGui"]
  LOADK R7 K1 ["VRBlurScreen"]
  NAMECALL R5 R5 K2 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+21]
  LOADK R8 K3 ["VRBlur"]
  NAMECALL R6 R5 K2 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOT R6 [+16]
  GETTABLEKS R10 R0 K4 ["VREdgeBlurTimer"]
  LOADK R11 K7 [0.01]
  LOADK R12 K8 [0.14]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R9 K11 [math.clamp]
  CALL R9 3 1
  MULK R8 R9 K6 [7.14285714285714]
  SUBRK R7 R5 K8 [0.14]
  SETTABLEKS R7 R6 K12 ["ImageTransparency"]
  RETURN R0 0
  LOADB R5 0
  SETTABLEKS R5 R4 K13 ["Visible"]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["inFirstPerson"]
  JUMPIF R1 [+5]
  LOADK R2 K1 [0.258819045102521]
  GETTABLEKS R3 R0 K2 ["currentSubjectDistance"]
  MUL R1 R2 R3
  RETURN R1 1
  LOADN R1 0
  RETURN R1 1

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GetSubjectCFrame"]
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R3 K2 [workspace]
  GETTABLEKS R2 R3 K3 ["CurrentCamera"]
  MOVE R3 R2
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R2 K4 ["CameraSubject"]
  JUMPIF R3 [+1]
  RETURN R1 1
  LOADK R6 K5 ["Humanoid"]
  NAMECALL R4 R3 K6 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+16]
  NAMECALL R5 R3 K7 ["GetState"]
  CALL R5 1 1
  GETIMPORT R6 K11 [Enum.HumanoidStateType.Dead]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K12 ["lastSubject"]
  JUMPIFNOTEQ R3 R5 [+3]
  GETTABLEKS R1 R0 K13 ["lastSubjectCFrame"]
  JUMPIFNOT R1 [+2]
  SETTABLEKS R1 R0 K13 ["lastSubjectCFrame"]
  RETURN R1 1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GetSubjectPosition"]
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R4 K2 [game]
  GETTABLEKS R3 R4 K3 ["Workspace"]
  GETTABLEKS R2 R3 K4 ["CurrentCamera"]
  MOVE R3 R2
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R2 K5 ["CameraSubject"]
  JUMPIFNOT R3 [+39]
  LOADK R6 K6 ["Humanoid"]
  NAMECALL R4 R3 K7 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+17]
  NAMECALL R5 R3 K8 ["GetState"]
  CALL R5 1 1
  GETIMPORT R6 K12 [Enum.HumanoidStateType.Dead]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+26]
  GETTABLEKS R5 R0 K13 ["lastSubject"]
  JUMPIFNOTEQ R3 R5 [+23]
  GETTABLEKS R1 R0 K14 ["lastSubjectPosition"]
  JUMP [+19]
  LOADK R6 K15 ["VehicleSeat"]
  NAMECALL R4 R3 K7 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+14]
  GETTABLEKS R5 R3 K16 ["CFrame"]
  GETTABLEKS R4 R5 K17 ["p"]
  GETTABLEKS R5 R3 K16 ["CFrame"]
  LOADK R7 K18 [{0, 4, 0}]
  NAMECALL R5 R5 K19 ["vectorToWorldSpace"]
  CALL R5 2 1
  ADD R1 R4 R5
  JUMP [+2]
  LOADNIL R4
  RETURN R4 1
  SETTABLEKS R1 R0 K14 ["lastSubjectPosition"]
  RETURN R1 1

PROTO_23:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getRotation"]
  MOVE R3 R1
  CALL R2 1 1
  LOADN R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["VRSmoothRotationEnabled"]
  JUMPIFNOT R4 [+10]
  GETUPVAL R4 2
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R2 K2 ["X"]
  RETURN R3 1
  GETTABLEKS R5 R2 K2 ["X"]
  MULK R4 R5 K3 [40]
  MUL R3 R4 R1
  RETURN R3 1
  GETTABLEKS R5 R2 K2 ["X"]
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K6 [math.abs]
  CALL R4 1 1
  LOADK R5 K7 [0.03]
  JUMPIFNOTLT R5 R4 [+31]
  GETTABLEKS R4 R0 K8 ["stepRotateTimeout"]
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+6]
  GETTABLEKS R4 R0 K8 ["stepRotateTimeout"]
  SUB R4 R4 R1
  SETTABLEKS R4 R0 K8 ["stepRotateTimeout"]
  GETTABLEKS R4 R0 K8 ["stepRotateTimeout"]
  LOADN R5 0
  JUMPIFNOTLE R4 R5 [+28]
  LOADN R3 1
  GETTABLEKS R4 R2 K2 ["X"]
  LOADN R5 0
  JUMPIFNOTLT R4 R5 [+2]
  LOADN R3 255
  MULK R3 R3 K9 [0.523598775598299]
  NAMECALL R4 R0 K10 ["StartFadeFromBlack"]
  CALL R4 1 0
  LOADK R4 K11 [0.25]
  SETTABLEKS R4 R0 K8 ["stepRotateTimeout"]
  RETURN R3 1
  GETTABLEKS R5 R2 K2 ["X"]
  FASTCALL1 MATH_ABS R5 [+2]
  GETIMPORT R4 K6 [math.abs]
  CALL R4 1 1
  LOADK R5 K12 [0.02]
  JUMPIFNOTLT R4 R5 [+4]
  LOADN R4 0
  SETTABLEKS R4 R0 K8 ["stepRotateTimeout"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  DUPCLOSURE R2 K2 [PROTO_0]
  CALL R1 1 2
  AND R0 R1 R2
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["VRService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["Players"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K8 ["LocalPlayer"]
  GETIMPORT R4 K4 [game]
  LOADK R6 K9 ["Lighting"]
  NAMECALL R4 R4 K6 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K4 [game]
  LOADK R7 K10 ["RunService"]
  NAMECALL R5 R5 K6 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K12 [UserSettings]
  CALL R6 0 1
  LOADK R8 K13 ["UserGameSettings"]
  NAMECALL R6 R6 K6 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K15 [require]
  GETIMPORT R9 K17 [script]
  GETTABLEKS R8 R9 K18 ["Parent"]
  LOADK R10 K19 ["CameraInput"]
  NAMECALL R8 R8 K20 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETIMPORT R8 K15 [require]
  GETIMPORT R10 K17 [script]
  GETTABLEKS R9 R10 K18 ["Parent"]
  LOADK R11 K21 ["ZoomController"]
  NAMECALL R9 R9 K20 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  GETIMPORT R11 K17 [script]
  GETTABLEKS R10 R11 K18 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Parent"]
  LOADK R11 K22 ["CommonUtils"]
  NAMECALL R9 R9 K20 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K15 [require]
  LOADK R13 K23 ["FlagUtil"]
  NAMECALL R11 R9 K20 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETTABLEKS R11 R10 K24 ["getUserFlag"]
  LOADK R12 K25 ["UserCameraInputDt"]
  CALL R11 1 1
  GETIMPORT R12 K15 [require]
  GETIMPORT R14 K17 [script]
  GETTABLEKS R13 R14 K18 ["Parent"]
  LOADK R15 K26 ["BaseCamera"]
  NAMECALL R13 R13 K20 ["WaitForChild"]
  CALL R13 2 -1
  CALL R12 -1 1
  NEWTABLE R14 32 0
  FASTCALL2 SETMETATABLE R14 R12 [+4]
  MOVE R15 R12
  GETIMPORT R13 K28 [setmetatable]
  CALL R13 2 1
  SETTABLEKS R13 R13 K29 ["__index"]
  DUPCLOSURE R14 K30 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R14 R13 K31 ["new"]
  DUPCLOSURE R14 K32 [PROTO_2]
  SETTABLEKS R14 R13 K33 ["Reset"]
  DUPCLOSURE R14 K34 [PROTO_3]
  SETTABLEKS R14 R13 K35 ["GetModuleName"]
  DUPCLOSURE R14 K36 [PROTO_4]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K37 ["GamepadZoomPress"]
  DUPCLOSURE R14 K38 [PROTO_5]
  SETTABLEKS R14 R13 K39 ["GamepadReset"]
  DUPCLOSURE R14 K40 [PROTO_6]
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K41 ["ResetZoom"]
  NEWCLOSURE R14 P7
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE REF R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K42 ["OnEnabledChanged"]
  DUPCLOSURE R14 K43 [PROTO_12]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K44 ["OnCurrentCameraChanged"]
  DUPCLOSURE R14 K45 [PROTO_13]
  SETTABLEKS R14 R13 K46 ["OnHeadScaleChanged"]
  DUPCLOSURE R14 K47 [PROTO_14]
  SETTABLEKS R14 R13 K48 ["GetVRFocus"]
  DUPCLOSURE R14 K49 [PROTO_15]
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K50 ["StartFadeFromBlack"]
  DUPCLOSURE R14 K51 [PROTO_16]
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K52 ["UpdateFadeFromBlack"]
  DUPCLOSURE R14 K53 [PROTO_18]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K54 ["StartVREdgeBlur"]
  DUPCLOSURE R14 K55 [PROTO_19]
  SETTABLEKS R14 R13 K56 ["UpdateEdgeBlur"]
  DUPCLOSURE R14 K57 [PROTO_20]
  SETTABLEKS R14 R13 K58 ["GetCameraHeight"]
  DUPCLOSURE R14 K59 [PROTO_21]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K60 ["GetSubjectCFrame"]
  DUPCLOSURE R14 K61 [PROTO_22]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K62 ["GetSubjectPosition"]
  DUPCLOSURE R14 K63 [PROTO_23]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K64 ["getRotation"]
  CLOSEUPVALS R0
  RETURN R13 1
