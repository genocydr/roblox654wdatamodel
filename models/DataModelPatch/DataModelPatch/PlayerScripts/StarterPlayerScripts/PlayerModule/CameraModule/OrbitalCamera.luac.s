PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K2 [setmetatable]
  CALL R0 2 1
  GETIMPORT R1 K4 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K5 ["lastUpdate"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["changedSignalConnections"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["refAzimuthRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["curAzimuthRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["minAzimuthAbsoluteRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["maxAzimuthAbsoluteRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["useAzimuthLimits"]
  LOADNIL R1
  SETTABLEKS R1 R0 K12 ["curElevationRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K13 ["minElevationRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["maxElevationRad"]
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["curDistance"]
  LOADNIL R1
  SETTABLEKS R1 R0 K16 ["minDistance"]
  LOADNIL R1
  SETTABLEKS R1 R0 K17 ["maxDistance"]
  LOADN R1 1
  SETTABLEKS R1 R0 K18 ["gamepadDollySpeedMultiplier"]
  GETIMPORT R1 K4 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K19 ["lastUserPanCamera"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K20 ["externalProperties"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 25
  SETTABLEKS R2 R1 K21 ["InitialDistance"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 10
  SETTABLEKS R2 R1 K22 ["MinDistance"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 100
  SETTABLEKS R2 R1 K23 ["MaxDistance"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 35
  SETTABLEKS R2 R1 K24 ["InitialElevation"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 35
  SETTABLEKS R2 R1 K25 ["MinElevation"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 35
  SETTABLEKS R2 R1 K26 ["MaxElevation"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 211
  SETTABLEKS R2 R1 K27 ["ReferenceAzimuth"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 90
  SETTABLEKS R2 R1 K28 ["CWAzimuthTravel"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADN R2 90
  SETTABLEKS R2 R1 K29 ["CCWAzimuthTravel"]
  GETTABLEKS R1 R0 K20 ["externalProperties"]
  LOADB R2 0
  SETTABLEKS R2 R1 K30 ["UseAzimuthLimits"]
  NAMECALL R1 R0 K31 ["LoadNumberValueParameters"]
  CALL R1 1 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["externalProperties"]
  GETUPVAL R2 1
  SETTABLE R0 R1 R2
  GETUPVAL R1 2
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R4 K1 [script]
  MOVE R6 R1
  NAMECALL R4 R4 K2 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOT R4 [+11]
  MOVE R7 R2
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R0 K4 ["externalProperties"]
  GETTABLEKS R6 R4 K5 ["Value"]
  SETTABLE R6 R5 R1
  JUMP [+23]
  GETTABLEKS R6 R0 K4 ["externalProperties"]
  GETTABLE R5 R6 R1
  JUMPIFEQKNIL R5 [+18]
  GETIMPORT R5 K8 [Instance.new]
  MOVE R6 R2
  CALL R5 1 1
  MOVE R4 R5
  SETTABLEKS R1 R4 K9 ["Name"]
  GETIMPORT R5 K1 [script]
  SETTABLEKS R5 R4 K10 ["Parent"]
  GETTABLEKS R6 R0 K4 ["externalProperties"]
  GETTABLE R5 R6 R1
  SETTABLEKS R5 R4 K5 ["Value"]
  JUMP [+1]
  RETURN R0 0
  JUMPIFNOT R3 [+22]
  GETTABLEKS R6 R0 K11 ["changedSignalConnections"]
  GETTABLE R5 R6 R1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R0 K11 ["changedSignalConnections"]
  GETTABLE R5 R6 R1
  NAMECALL R5 R5 K12 ["Disconnect"]
  CALL R5 1 0
  GETTABLEKS R5 R0 K11 ["changedSignalConnections"]
  GETTABLEKS R6 R4 K13 ["Changed"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  NAMECALL R6 R6 K14 ["Connect"]
  CALL R6 2 1
  SETTABLE R6 R5 R1
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K1 ["externalProperties"]
  GETTABLEKS R3 R4 K0 ["ReferenceAzimuth"]
  FASTCALL1 MATH_RAD R3 [+2]
  GETIMPORT R2 K4 [math.rad]
  CALL R2 1 1
  GETTABLEKS R6 R0 K1 ["externalProperties"]
  GETTABLEKS R5 R6 K5 ["CWAzimuthTravel"]
  FASTCALL1 MATH_RAD R5 [+2]
  GETIMPORT R4 K4 [math.rad]
  CALL R4 1 1
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K7 [math.abs]
  CALL R3 1 1
  SUB R1 R2 R3
  SETTABLEKS R1 R0 K8 ["minAzimuthAbsoluteRad"]
  GETTABLEKS R4 R0 K1 ["externalProperties"]
  GETTABLEKS R3 R4 K0 ["ReferenceAzimuth"]
  FASTCALL1 MATH_RAD R3 [+2]
  GETIMPORT R2 K4 [math.rad]
  CALL R2 1 1
  GETTABLEKS R6 R0 K1 ["externalProperties"]
  GETTABLEKS R5 R6 K9 ["CCWAzimuthTravel"]
  FASTCALL1 MATH_RAD R5 [+2]
  GETIMPORT R4 K4 [math.rad]
  CALL R4 1 1
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K7 [math.abs]
  CALL R3 1 1
  ADD R1 R2 R3
  SETTABLEKS R1 R0 K10 ["maxAzimuthAbsoluteRad"]
  GETTABLEKS R2 R0 K1 ["externalProperties"]
  GETTABLEKS R1 R2 K11 ["UseAzimuthLimits"]
  SETTABLEKS R1 R0 K12 ["useAzimuthLimits"]
  GETTABLEKS R1 R0 K12 ["useAzimuthLimits"]
  JUMPIFNOT R1 [+22]
  GETTABLEKS R2 R0 K13 ["curAzimuthRad"]
  GETTABLEKS R3 R0 K8 ["minAzimuthAbsoluteRad"]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K15 [math.max]
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["curAzimuthRad"]
  GETTABLEKS R2 R0 K13 ["curAzimuthRad"]
  GETTABLEKS R3 R0 K10 ["maxAzimuthAbsoluteRad"]
  FASTCALL2 MATH_MIN R2 R3 [+3]
  GETIMPORT R1 K17 [math.min]
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["curAzimuthRad"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K1 ["externalProperties"]
  GETTABLEKS R2 R3 K0 ["MinElevation"]
  FASTCALL2K MATH_MAX R2 K2 [+4]
  LOADK R3 K2 [-80]
  GETIMPORT R1 K5 [math.max]
  CALL R1 2 1
  GETTABLEKS R4 R0 K1 ["externalProperties"]
  GETTABLEKS R3 R4 K6 ["MaxElevation"]
  FASTCALL2K MATH_MIN R3 K7 [+4]
  LOADK R4 K7 [80]
  GETIMPORT R2 K9 [math.min]
  CALL R2 2 1
  FASTCALL2 MATH_MIN R1 R2 [+5]
  MOVE R5 R1
  MOVE R6 R2
  GETIMPORT R4 K9 [math.min]
  CALL R4 2 1
  FASTCALL1 MATH_RAD R4 [+2]
  GETIMPORT R3 K11 [math.rad]
  CALL R3 1 1
  SETTABLEKS R3 R0 K12 ["minElevationRad"]
  FASTCALL2 MATH_MAX R1 R2 [+5]
  MOVE R5 R1
  MOVE R6 R2
  GETIMPORT R4 K5 [math.max]
  CALL R4 2 1
  FASTCALL1 MATH_RAD R4 [+2]
  GETIMPORT R3 K11 [math.rad]
  CALL R3 1 1
  SETTABLEKS R3 R0 K13 ["maxElevationRad"]
  GETTABLEKS R4 R0 K14 ["curElevationRad"]
  GETTABLEKS R5 R0 K12 ["minElevationRad"]
  FASTCALL2 MATH_MAX R4 R5 [+3]
  GETIMPORT R3 K5 [math.max]
  CALL R3 2 1
  SETTABLEKS R3 R0 K14 ["curElevationRad"]
  GETTABLEKS R4 R0 K14 ["curElevationRad"]
  GETTABLEKS R5 R0 K13 ["maxElevationRad"]
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K9 [math.min]
  CALL R3 2 1
  SETTABLEKS R3 R0 K14 ["curElevationRad"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K1 ["externalProperties"]
  GETTABLEKS R1 R2 K0 ["MinDistance"]
  SETTABLEKS R1 R0 K2 ["minDistance"]
  GETTABLEKS R2 R0 K1 ["externalProperties"]
  GETTABLEKS R1 R2 K3 ["MaxDistance"]
  SETTABLEKS R1 R0 K4 ["maxDistance"]
  GETTABLEKS R2 R0 K5 ["curDistance"]
  GETTABLEKS R3 R0 K2 ["minDistance"]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K8 [math.max]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["curDistance"]
  GETTABLEKS R2 R0 K5 ["curDistance"]
  GETTABLEKS R3 R0 K4 ["maxDistance"]
  FASTCALL2 MATH_MIN R2 R3 [+3]
  GETIMPORT R1 K10 [math.min]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["curDistance"]
  RETURN R0 0

PROTO_6:
  LOADK R3 K0 ["InitialElevation"]
  LOADK R4 K1 ["NumberValue"]
  LOADNIL R5
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K3 ["InitialDistance"]
  LOADK R4 K1 ["NumberValue"]
  LOADNIL R5
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K4 ["ReferenceAzimuth"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K5 ["SetAndBoundsCheckAzimuthValue"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K6 ["CWAzimuthTravel"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K7 ["SetAndBoundsCheckAzimuthValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K8 ["CCWAzimuthTravel"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K7 ["SetAndBoundsCheckAzimuthValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K9 ["MinElevation"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K10 ["SetAndBoundsCheckElevationValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K11 ["MaxElevation"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K10 ["SetAndBoundsCheckElevationValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K12 ["MinDistance"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K13 ["SetAndBoundsCheckDistanceValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K14 ["MaxDistance"]
  LOADK R4 K1 ["NumberValue"]
  GETTABLEKS R5 R0 K13 ["SetAndBoundsCheckDistanceValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  LOADK R3 K15 ["UseAzimuthLimits"]
  LOADK R4 K16 ["BoolValue"]
  GETTABLEKS R5 R0 K7 ["SetAndBoundsCheckAzimuthValues"]
  NAMECALL R1 R0 K2 ["LoadOrCreateNumberValueParameter"]
  CALL R1 4 0
  GETTABLEKS R3 R0 K17 ["externalProperties"]
  GETTABLEKS R2 R3 K4 ["ReferenceAzimuth"]
  FASTCALL1 MATH_RAD R2 [+2]
  GETIMPORT R1 K20 [math.rad]
  CALL R1 1 1
  SETTABLEKS R1 R0 K21 ["curAzimuthRad"]
  GETTABLEKS R3 R0 K17 ["externalProperties"]
  GETTABLEKS R2 R3 K0 ["InitialElevation"]
  FASTCALL1 MATH_RAD R2 [+2]
  GETIMPORT R1 K20 [math.rad]
  CALL R1 1 1
  SETTABLEKS R1 R0 K22 ["curElevationRad"]
  GETTABLEKS R2 R0 K17 ["externalProperties"]
  GETTABLEKS R1 R2 K3 ["InitialDistance"]
  SETTABLEKS R1 R0 K23 ["curDistance"]
  NAMECALL R1 R0 K7 ["SetAndBoundsCheckAzimuthValues"]
  CALL R1 1 0
  NAMECALL R1 R0 K10 ["SetAndBoundsCheckElevationValues"]
  CALL R1 1 0
  NAMECALL R1 R0 K13 ["SetAndBoundsCheckDistanceValues"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  LOADK R1 K0 ["OrbitalCamera"]
  RETURN R1 1

PROTO_8:
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K0 ["RootPart"]
  JUMPIF R2 [+5]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K3 ["OrbitalCamera could not set initial orientation due to missing humanoid"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R3 R1 K0 ["RootPart"]
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 [""]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETTABLEKS R6 R1 K0 ["RootPart"]
  GETTABLEKS R5 R6 K7 ["CFrame"]
  GETTABLEKS R4 R5 K8 ["LookVector"]
  LOADK R5 K9 [{0, 0.23, 0}]
  SUB R3 R4 R5
  GETTABLEKS R2 R3 K10 ["Unit"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["GetAngleBetweenXZVectors"]
  MOVE R4 R2
  NAMECALL R5 R0 K12 ["GetCameraLookVector"]
  CALL R5 1 -1
  CALL R3 -1 1
  NAMECALL R7 R0 K12 ["GetCameraLookVector"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K13 ["Y"]
  FASTCALL1 MATH_ASIN R6 [+2]
  GETIMPORT R5 K16 [math.asin]
  CALL R5 1 1
  GETTABLEKS R7 R2 K13 ["Y"]
  FASTCALL1 MATH_ASIN R7 [+2]
  GETIMPORT R6 K16 [math.asin]
  CALL R6 1 1
  SUB R4 R5 R6
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["IsFinite"]
  MOVE R6 R3
  CALL R5 1 1
  JUMPIF R5 [+1]
  LOADN R3 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["IsFinite"]
  MOVE R6 R4
  CALL R5 1 1
  JUMPIF R5 [+1]
  LOADN R4 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["curDistance"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  JUMPIFNOT R2 [+23]
  GETTABLEKS R5 R0 K1 ["minDistance"]
  GETTABLEKS R6 R0 K2 ["maxDistance"]
  FASTCALL3 MATH_CLAMP R1 R5 R6
  MOVE R4 R1
  GETIMPORT R3 K5 [math.clamp]
  CALL R3 3 1
  SETTABLEKS R3 R0 K6 ["currentSubjectDistance"]
  GETTABLEKS R4 R0 K6 ["currentSubjectDistance"]
  GETTABLEKS R5 R0 K7 ["FIRST_PERSON_DISTANCE_THRESHOLD"]
  FASTCALL2 MATH_MAX R4 R5 [+3]
  GETIMPORT R3 K9 [math.max]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["currentSubjectDistance"]
  LOADB R3 0
  SETTABLEKS R3 R0 K10 ["inFirstPerson"]
  NAMECALL R3 R0 K11 ["UpdateMouseBehavior"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K6 ["currentSubjectDistance"]
  RETURN R3 1

PROTO_11:
  MOVE R3 R1
  JUMPIF R3 [+3]
  NAMECALL R3 R0 K0 ["GetCameraLookVector"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K1 ["Y"]
  FASTCALL1 MATH_ASIN R5 [+2]
  GETIMPORT R4 K4 [math.asin]
  CALL R4 1 1
  GETTABLEKS R6 R2 K1 ["Y"]
  SUBK R7 R4 K5 [1.39626340159546]
  SUBK R8 R4 K6 [-1.39626340159546]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K8 [math.clamp]
  CALL R5 3 1
  GETIMPORT R6 K11 [Vector2.new]
  GETTABLEKS R7 R2 K12 ["X"]
  MOVE R8 R5
  CALL R6 2 1
  GETIMPORT R7 K14 [CFrame.new]
  LOADK R8 K15 [{0, 0, 0}]
  MOVE R9 R3
  CALL R7 2 1
  GETIMPORT R11 K17 [CFrame.Angles]
  LOADN R12 0
  GETTABLEKS R14 R6 K12 ["X"]
  MINUS R13 R14
  LOADN R14 0
  CALL R11 3 1
  MUL R10 R11 R7
  GETIMPORT R11 K17 [CFrame.Angles]
  GETTABLEKS R13 R6 K1 ["Y"]
  MINUS R12 R13
  LOADN R13 0
  LOADN R14 0
  CALL R11 3 1
  MUL R9 R10 R11
  GETTABLEKS R8 R9 K18 ["LookVector"]
  RETURN R8 1

PROTO_12:
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  GETTABLEKS R4 R0 K2 ["lastUpdate"]
  SUB R3 R2 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["getRotation"]
  GETUPVAL R7 1
  JUMPIFNOT R7 [+2]
  MOVE R6 R1
  JUMP [+1]
  LOADNIL R6
  CALL R5 1 1
  GETIMPORT R6 K6 [Vector2.new]
  CALL R6 0 1
  JUMPIFNOTEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R6 K8 [workspace]
  GETTABLEKS R5 R6 K9 ["CurrentCamera"]
  GETTABLEKS R6 R5 K10 ["CFrame"]
  GETTABLEKS R7 R5 K11 ["Focus"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K12 ["LocalPlayer"]
  MOVE R9 R5
  JUMPIFNOT R9 [+2]
  GETTABLEKS R9 R5 K13 ["CameraSubject"]
  MOVE R10 R9
  JUMPIFNOT R10 [+4]
  LOADK R12 K14 ["VehicleSeat"]
  NAMECALL R10 R9 K15 ["IsA"]
  CALL R10 2 1
  MOVE R11 R9
  JUMPIFNOT R11 [+4]
  LOADK R13 K16 ["SkateboardPlatform"]
  NAMECALL R11 R9 K15 ["IsA"]
  CALL R11 2 1
  GETTABLEKS R12 R0 K2 ["lastUpdate"]
  JUMPIFEQKNIL R12 [+4]
  LOADN R12 1
  JUMPIFNOTLT R12 R3 [+4]
  LOADNIL R12
  SETTABLEKS R12 R0 K17 ["lastCameraTransform"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R12 K1 [tick]
  CALL R12 0 1
  SETTABLEKS R12 R0 K18 ["lastUserPanCamera"]
  NAMECALL R12 R0 K19 ["GetSubjectPosition"]
  CALL R12 1 1
  JUMPIFNOT R12 [+124]
  JUMPIFNOT R8 [+123]
  JUMPIFNOT R5 [+122]
  GETTABLEKS R13 R0 K20 ["gamepadDollySpeedMultiplier"]
  JUMPIFEQKN R13 K21 [1] [+9]
  GETTABLEKS R16 R0 K22 ["currentSubjectDistance"]
  GETTABLEKS R17 R0 K20 ["gamepadDollySpeedMultiplier"]
  MUL R15 R16 R17
  NAMECALL R13 R0 K23 ["SetCameraToSubjectDistance"]
  CALL R13 2 0
  GETIMPORT R13 K24 [CFrame.new]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R7 R13
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["getRotation"]
  MOVE R14 R1
  CALL R13 1 1
  GETTABLEKS R15 R0 K25 ["curAzimuthRad"]
  GETTABLEKS R16 R13 K26 ["X"]
  SUB R14 R15 R16
  SETTABLEKS R14 R0 K25 ["curAzimuthRad"]
  GETTABLEKS R14 R0 K27 ["useAzimuthLimits"]
  JUMPIFNOT R14 [+13]
  GETTABLEKS R15 R0 K25 ["curAzimuthRad"]
  GETTABLEKS R16 R0 K28 ["minAzimuthAbsoluteRad"]
  GETTABLEKS R17 R0 K29 ["maxAzimuthAbsoluteRad"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R14 K32 [math.clamp]
  CALL R14 3 1
  SETTABLEKS R14 R0 K25 ["curAzimuthRad"]
  JUMP [+22]
  GETTABLEKS R15 R0 K25 ["curAzimuthRad"]
  JUMPIFEQKN R15 K33 [0] [+16]
  GETTABLEKS R16 R0 K25 ["curAzimuthRad"]
  FASTCALL1 MATH_SIGN R16 [+2]
  GETIMPORT R15 K35 [math.sign]
  CALL R15 1 1
  GETTABLEKS R18 R0 K25 ["curAzimuthRad"]
  FASTCALL1 MATH_ABS R18 [+2]
  GETIMPORT R17 K38 [math.abs]
  CALL R17 1 1
  MODK R16 R17 K36 [6.28318530717959]
  MUL R14 R15 R16
  JUMPIF R14 [+1]
  LOADN R14 0
  SETTABLEKS R14 R0 K25 ["curAzimuthRad"]
  GETTABLEKS R16 R0 K39 ["curElevationRad"]
  GETTABLEKS R17 R13 K40 ["Y"]
  ADD R15 R16 R17
  GETTABLEKS R16 R0 K41 ["minElevationRad"]
  GETTABLEKS R17 R0 K42 ["maxElevationRad"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R14 K32 [math.clamp]
  CALL R14 3 1
  SETTABLEKS R14 R0 K39 ["curElevationRad"]
  GETTABLEKS R15 R0 K22 ["currentSubjectDistance"]
  GETIMPORT R17 K44 [CFrame.fromEulerAnglesYXZ]
  GETTABLEKS R19 R0 K39 ["curElevationRad"]
  MINUS R18 R19
  GETTABLEKS R19 R0 K25 ["curAzimuthRad"]
  LOADN R20 0
  CALL R17 3 1
  LOADK R18 K45 [{0, 0, 1}]
  MUL R16 R17 R18
  MUL R14 R15 R16
  ADD R15 R12 R14
  GETIMPORT R16 K24 [CFrame.new]
  MOVE R17 R15
  MOVE R18 R12
  CALL R16 2 1
  MOVE R6 R16
  SETTABLEKS R6 R0 K17 ["lastCameraTransform"]
  SETTABLEKS R7 R0 K46 ["lastCameraFocus"]
  JUMPIF R10 [+1]
  JUMPIFNOT R11 [+10]
  LOADK R18 K47 ["BasePart"]
  NAMECALL R16 R9 K15 ["IsA"]
  CALL R16 2 1
  JUMPIFNOT R16 [+5]
  GETTABLEKS R16 R9 K10 ["CFrame"]
  SETTABLEKS R16 R0 K48 ["lastSubjectCFrame"]
  JUMP [+3]
  LOADNIL R16
  SETTABLEKS R16 R0 K48 ["lastSubjectCFrame"]
  SETTABLEKS R2 R0 K2 ["lastUpdate"]
  RETURN R6 2

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
  NEWTABLE R2 0 0
  LOADN R3 25
  SETTABLEKS R3 R2 K8 ["InitialDistance"]
  LOADN R3 10
  SETTABLEKS R3 R2 K9 ["MinDistance"]
  LOADN R3 100
  SETTABLEKS R3 R2 K10 ["MaxDistance"]
  LOADN R3 35
  SETTABLEKS R3 R2 K11 ["InitialElevation"]
  LOADN R3 35
  SETTABLEKS R3 R2 K12 ["MinElevation"]
  LOADN R3 35
  SETTABLEKS R3 R2 K13 ["MaxElevation"]
  LOADN R3 211
  SETTABLEKS R3 R2 K14 ["ReferenceAzimuth"]
  LOADN R3 90
  SETTABLEKS R3 R2 K15 ["CWAzimuthTravel"]
  LOADN R3 90
  SETTABLEKS R3 R2 K16 ["CCWAzimuthTravel"]
  LOADB R3 0
  SETTABLEKS R3 R2 K17 ["UseAzimuthLimits"]
  GETIMPORT R3 K6 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  LOADK R6 K18 ["CameraUtils"]
  NAMECALL R4 R4 K4 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  LOADK R7 K19 ["CameraInput"]
  NAMECALL R5 R5 K4 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K21 [game]
  LOADK R7 K22 ["Players"]
  NAMECALL R5 R5 K23 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R6 R1 K24 ["getUserFlag"]
  LOADK R7 K25 ["UserFixOrbitalCam"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  LOADK R10 K26 ["BaseCamera"]
  NAMECALL R8 R8 K4 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  NEWTABLE R9 16 0
  FASTCALL2 SETMETATABLE R9 R7 [+4]
  MOVE R10 R7
  GETIMPORT R8 K28 [setmetatable]
  CALL R8 2 1
  SETTABLEKS R8 R8 K29 ["__index"]
  DUPCLOSURE R9 K30 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K31 ["new"]
  DUPCLOSURE R9 K32 [PROTO_2]
  SETTABLEKS R9 R8 K33 ["LoadOrCreateNumberValueParameter"]
  DUPCLOSURE R9 K34 [PROTO_3]
  SETTABLEKS R9 R8 K35 ["SetAndBoundsCheckAzimuthValues"]
  DUPCLOSURE R9 K36 [PROTO_4]
  SETTABLEKS R9 R8 K37 ["SetAndBoundsCheckElevationValues"]
  DUPCLOSURE R9 K38 [PROTO_5]
  SETTABLEKS R9 R8 K39 ["SetAndBoundsCheckDistanceValues"]
  DUPCLOSURE R9 K40 [PROTO_6]
  SETTABLEKS R9 R8 K41 ["LoadNumberValueParameters"]
  DUPCLOSURE R9 K42 [PROTO_7]
  SETTABLEKS R9 R8 K43 ["GetModuleName"]
  DUPCLOSURE R9 K44 [PROTO_8]
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K45 ["SetInitialOrientation"]
  DUPCLOSURE R9 K46 [PROTO_9]
  SETTABLEKS R9 R8 K47 ["GetCameraToSubjectDistance"]
  DUPCLOSURE R9 K48 [PROTO_10]
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K49 ["SetCameraToSubjectDistance"]
  DUPCLOSURE R9 K50 [PROTO_11]
  SETTABLEKS R9 R8 K51 ["CalculateNewLookVector"]
  DUPCLOSURE R9 K52 [PROTO_12]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K53 ["Update"]
  RETURN R8 1
