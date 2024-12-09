PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ExperienceStateCaptureService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["ToggleCaptureMode"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  LOADK R5 K7 ["Modules"]
  NAMECALL R3 R2 K6 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["UIBlox"]
  CALL R4 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K12 ["Workspace"]
  GETTABLEKS R8 R9 K10 ["Packages"]
  GETTABLEKS R7 R8 K13 ["CoreScriptsInitializer"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K14 ["UIBloxInGameConfig"]
  GETTABLEKS R6 R4 K15 ["init"]
  MOVE R7 R5
  CALL R6 1 0
  GETIMPORT R6 K1 [game]
  LOADK R8 K16 ["FeedbackModuleEarlyFontInitialization"]
  LOADB R9 0
  NAMECALL R6 R6 K17 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K18 ["CaptureModeNativeExitSupport"]
  LOADB R10 0
  NAMECALL R7 R7 K17 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K12 ["Workspace"]
  GETTABLEKS R11 R12 K10 ["Packages"]
  GETTABLEKS R10 R11 K19 ["SharedFlags"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K20 ["GetFFlagSelectInSceneReportMenu"]
  JUMPIFNOT R6 [+30]
  GETIMPORT R9 K1 [game]
  LOADK R11 K21 ["TextService"]
  NAMECALL R9 R9 K3 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K24 [Instance.new]
  LOADK R11 K25 ["GetTextBoundsParams"]
  CALL R10 1 1
  LOADK R11 K26 ["random text"]
  SETTABLEKS R11 R10 K27 ["Text"]
  GETIMPORT R11 K30 [Font.fromEnum]
  GETIMPORT R12 K33 [Enum.Font.Gotham]
  CALL R11 1 1
  SETTABLEKS R11 R10 K28 ["Font"]
  LOADN R11 19
  SETTABLEKS R11 R10 K34 ["Size"]
  LOADN R11 0
  SETTABLEKS R11 R10 K35 ["Width"]
  MOVE R13 R10
  NAMECALL R11 R9 K36 ["GetTextBoundsAsync"]
  CALL R11 2 1
  JUMPIFNOT R7 [+13]
  DUPCLOSURE R9 K37 [PROTO_0]
  GETIMPORT R11 K1 [game]
  LOADK R13 K38 ["GuiService"]
  NAMECALL R11 R11 K3 ["GetService"]
  CALL R11 2 1
  GETTABLEKS R10 R11 K39 ["NativeClose"]
  MOVE R12 R9
  NAMECALL R10 R10 K40 ["Connect"]
  CALL R10 2 0
  MOVE R9 R8
  CALL R9 0 1
  JUMPIFNOT R9 [+46]
  GETIMPORT R9 K1 [game]
  LOADK R11 K41 ["SafetyServiceCaptureModeReportProp"]
  NAMECALL R9 R9 K42 ["GetEngineFeature"]
  CALL R9 2 1
  JUMPIFNOT R9 [+39]
  GETIMPORT R9 K1 [game]
  LOADK R11 K43 ["SafetyService"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 0
  GETIMPORT R9 K1 [game]
  LOADK R11 K43 ["SafetyService"]
  NAMECALL R9 R9 K3 ["GetService"]
  CALL R9 2 1
  GETTABLEKS R10 R9 K44 ["IsCaptureModeForReport"]
  JUMPIFNOT R10 [+13]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K12 ["Workspace"]
  GETTABLEKS R12 R13 K10 ["Packages"]
  GETTABLEKS R11 R12 K45 ["InGameAssetReporting"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K46 ["initialize"]
  CALL R11 0 0
  RETURN R0 0
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R2 K7 ["Modules"]
  GETTABLEKS R11 R12 K47 ["Feedback"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K46 ["initialize"]
  CALL R11 0 0
  RETURN R0 0
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R2 K7 ["Modules"]
  GETTABLEKS R10 R11 K47 ["Feedback"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K46 ["initialize"]
  CALL R10 0 0
  RETURN R0 0
