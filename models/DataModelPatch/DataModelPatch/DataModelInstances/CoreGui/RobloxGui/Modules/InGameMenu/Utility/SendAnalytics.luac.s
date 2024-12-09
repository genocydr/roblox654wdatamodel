PROTO_0:
  GETIMPORT R1 K1 [UserSettings]
  CALL R1 0 1
  GETTABLEKS R0 R1 K2 ["GameSettings"]
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["TouchEnabled"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K4 ["TouchCameraMovementMode"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["camera_mode_touch"]
  JUMP [+8]
  GETTABLEKS R3 R0 K8 ["ComputerCameraMovementMode"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["camera_mode_desktop"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["TouchEnabled"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R3 R0 K10 ["TouchMovementMode"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["movement_mode_touch"]
  JUMP [+8]
  GETTABLEKS R3 R0 K12 ["ComputerMovementMode"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K13 ["movement_mode_desktop"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["MouseEnabled"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R4 R0 K15 ["ControlMode"]
  GETIMPORT R5 K18 [Enum.ControlMode.MouseLockSwitch]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K19 ["shift_lock_enabled"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K20 ["GamepadEnabled"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K21 ["IsUsingGamepadCameraSensitivity"]
  JUMPIFNOT R2 [+8]
  GETIMPORT R2 K24 [string.format]
  LOADK R3 K25 ["%.2f"]
  GETTABLEKS R4 R0 K26 ["GamepadCameraSensitivity"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K27 ["camera_sensitivity_gamepad"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["MouseEnabled"]
  JUMPIFNOT R2 [+10]
  GETIMPORT R2 K24 [string.format]
  LOADK R3 K25 ["%.2f"]
  GETTABLEKS R5 R0 K28 ["MouseSensitivityFirstPerson"]
  GETTABLEKS R4 R5 K29 ["X"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K30 ["camera_sensitivity_mouse"]
  GETTABLEKS R3 R0 K31 ["CameraYInverted"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K32 ["camera_y_inverted"]
  GETTABLEKS R3 R0 K33 ["PerformanceStatsVisible"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K34 ["show_performance_stats"]
  GETTABLEKS R6 R0 K37 ["MasterVolume"]
  MULK R5 R6 K36 [10]
  ADDK R4 R5 K35 [0.5]
  FASTCALL1 MATH_FLOOR R4 [+2]
  GETIMPORT R3 K40 [math.floor]
  CALL R3 1 1
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K41 ["volume"]
  GETIMPORT R5 K43 [settings]
  CALL R5 0 1
  GETTABLEKS R4 R5 K44 ["Rendering"]
  GETTABLEKS R3 R4 K45 ["QualityLevel"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K46 ["gfx_quality_level"]
  NAMECALL R3 R0 K47 ["InFullScreen"]
  CALL R3 1 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 -1 1
  SETTABLEKS R2 R1 K48 ["fullscreen_enabled"]
  GETTABLEKS R3 R0 K49 ["OnScreenProfilerEnabled"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K50 ["microprofiler_enabled"]
  GETTABLEKS R3 R0 K51 ["MicroProfilerWebServerEnabled"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K6 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K52 ["microprofiler_webserver_enabled"]
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKNIL R4 [+2]
  GETUPVAL R4 0
  DUPCLOSURE R5 K0 [PROTO_0]
  CAPTURE UPVAL U1
  JUMPIFNOTEQKB R3 TRUE [+10]
  MOVE R6 R5
  CALL R6 0 1
  MOVE R2 R6
  GETUPVAL R6 2
  GETTABLEKS R1 R6 K1 ["AnalyticsSettingsChangeName"]
  GETUPVAL R6 2
  GETTABLEKS R0 R6 K2 ["AnalyticsInGameMenuName"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETIMPORT R8 K4 [game]
  GETTABLEKS R7 R8 K5 ["GameId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R2 K8 ["universeid"]
  GETUPVAL R7 3
  GETUPVAL R8 1
  NAMECALL R8 R8 K9 ["GetLastInputType"]
  CALL R8 1 1
  GETTABLE R6 R7 R8
  JUMPIF R6 [+4]
  GETUPVAL R6 1
  NAMECALL R6 R6 K9 ["GetLastInputType"]
  CALL R6 1 1
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  SETTABLEKS R7 R2 K10 ["inputDevice"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["AnalyticsTargetName"]
  MOVE R10 R0
  MOVE R11 R1
  MOVE R12 R2
  NAMECALL R7 R4 K12 ["SetRBXEventStream"]
  CALL R7 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RbxAnalyticsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["InputTypeMap"]
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
