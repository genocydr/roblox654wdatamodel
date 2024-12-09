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
  GETTABLEKS R4 R0 K5 ["RobloxGui"]
  GETTABLEKS R3 R4 K7 ["Modules"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R3 K10 ["Chrome"]
  GETTABLEKS R5 R6 K11 ["Enabled"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K12 ["Workspace"]
  GETTABLEKS R7 R8 K13 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Screenshots"]
  CALL R5 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K12 ["Workspace"]
  GETTABLEKS R9 R10 K13 ["Packages"]
  GETTABLEKS R8 R9 K15 ["SharedFlags"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K16 ["FFlagUpdateComposerScreenInsets"]
  GETTABLEKS R8 R5 K17 ["App"]
  GETTABLEKS R7 R8 K18 ["createApp"]
  CALL R7 0 1
  GETIMPORT R8 K21 [Instance.new]
  LOADK R9 K22 ["ScreenGui"]
  CALL R8 1 1
  GETTABLEKS R10 R5 K23 ["Constants"]
  GETTABLEKS R9 R10 K24 ["CarouselDisplayOrder"]
  SETTABLEKS R9 R8 K25 ["DisplayOrder"]
  LOADK R9 K26 ["ScreenshotsCarousel"]
  SETTABLEKS R9 R8 K27 ["Name"]
  LOADB R9 0
  SETTABLEKS R9 R8 K28 ["ResetOnSpawn"]
  GETIMPORT R9 K32 [Enum.ScreenInsets.DeviceSafeInsets]
  SETTABLEKS R9 R8 K30 ["ScreenInsets"]
  GETIMPORT R9 K35 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K33 ["ZIndexBehavior"]
  SETTABLEKS R0 R8 K36 ["Parent"]
  GETIMPORT R9 K21 [Instance.new]
  LOADK R10 K22 ["ScreenGui"]
  CALL R9 1 1
  GETTABLEKS R11 R5 K23 ["Constants"]
  GETTABLEKS R10 R11 K24 ["CarouselDisplayOrder"]
  SETTABLEKS R10 R9 K25 ["DisplayOrder"]
  LOADK R10 K37 ["CaptureManager"]
  SETTABLEKS R10 R9 K27 ["Name"]
  LOADB R10 0
  SETTABLEKS R10 R9 K28 ["ResetOnSpawn"]
  GETIMPORT R10 K35 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K33 ["ZIndexBehavior"]
  SETTABLEKS R0 R9 K36 ["Parent"]
  GETIMPORT R10 K21 [Instance.new]
  LOADK R11 K22 ["ScreenGui"]
  CALL R10 1 1
  GETTABLEKS R12 R5 K23 ["Constants"]
  GETTABLEKS R11 R12 K38 ["ComposerDisplayOrder"]
  SETTABLEKS R11 R10 K25 ["DisplayOrder"]
  LOADK R11 K39 ["Composer"]
  SETTABLEKS R11 R10 K27 ["Name"]
  LOADB R11 0
  SETTABLEKS R11 R10 K28 ["ResetOnSpawn"]
  GETIMPORT R11 K35 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K33 ["ZIndexBehavior"]
  GETIMPORT R11 K42 [Enum.SafeAreaCompatibility.FullscreenExtension]
  SETTABLEKS R11 R10 K40 ["SafeAreaCompatibility"]
  JUMPIFNOT R6 [+3]
  GETIMPORT R11 K44 [Enum.ScreenInsets.None]
  JUMP [+2]
  GETIMPORT R11 K32 [Enum.ScreenInsets.DeviceSafeInsets]
  SETTABLEKS R11 R10 K30 ["ScreenInsets"]
  SETTABLEKS R0 R10 K36 ["Parent"]
  GETIMPORT R11 K21 [Instance.new]
  LOADK R12 K22 ["ScreenGui"]
  CALL R11 1 1
  GETTABLEKS R13 R5 K23 ["Constants"]
  GETTABLEKS R12 R13 K45 ["OverlayDisplayOrder"]
  SETTABLEKS R12 R11 K25 ["DisplayOrder"]
  GETTABLEKS R13 R5 K23 ["Constants"]
  GETTABLEKS R12 R13 K46 ["OverlayName"]
  SETTABLEKS R12 R11 K27 ["Name"]
  LOADB R12 0
  SETTABLEKS R12 R11 K28 ["ResetOnSpawn"]
  GETIMPORT R12 K35 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K33 ["ZIndexBehavior"]
  SETTABLEKS R0 R11 K36 ["Parent"]
  GETTABLEKS R12 R7 K47 ["mountCaptureManager"]
  MOVE R13 R9
  CALL R12 1 0
  GETTABLEKS R12 R7 K48 ["mountCarousel"]
  MOVE R13 R8
  CALL R12 1 0
  GETTABLEKS R12 R7 K49 ["mountComposer"]
  MOVE R13 R10
  CALL R12 1 0
  GETTABLEKS R12 R7 K50 ["mountCoreUI"]
  MOVE R13 R2
  MOVE R14 R4
  CALL R14 0 -1
  CALL R12 -1 0
  GETTABLEKS R12 R7 K51 ["mountCaptureOverlay"]
  MOVE R13 R11
  CALL R12 1 0
  RETURN R7 1
