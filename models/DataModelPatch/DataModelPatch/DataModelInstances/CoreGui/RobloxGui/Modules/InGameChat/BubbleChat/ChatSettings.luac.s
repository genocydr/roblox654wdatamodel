MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Style"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["AppFonts"]
  DUPTABLE R2 K34 [{"BubbleDuration", "MaxBubbles", "BackgroundColor3", "TextColor3", "TextSize", "Font", "Transparency", "CornerEnabled", "CornerRadius", "TailVisible", "Padding", "MaxWidth", "BackgroundImage", "BackgroundGradient", "SizeAnimation", "TransparencyAnimation", "VerticalStudsOffset", "LocalPlayerStudsOffset", "BubblesSpacing", "MinimizeDistance", "MaxDistance", "AdorneeName", "Voice", "UserSpecificSettings"}]
  LOADN R3 15
  SETTABLEKS R3 R2 K10 ["BubbleDuration"]
  LOADN R3 3
  SETTABLEKS R3 R2 K11 ["MaxBubbles"]
  GETIMPORT R3 K37 [Color3.fromRGB]
  LOADN R4 250
  LOADN R5 250
  LOADN R6 250
  CALL R3 3 1
  SETTABLEKS R3 R2 K12 ["BackgroundColor3"]
  GETIMPORT R3 K37 [Color3.fromRGB]
  LOADN R4 57
  LOADN R5 59
  LOADN R6 61
  CALL R3 3 1
  SETTABLEKS R3 R2 K13 ["TextColor3"]
  LOADN R3 16
  SETTABLEKS R3 R2 K14 ["TextSize"]
  GETTABLEKS R3 R1 K38 ["default"]
  NAMECALL R3 R3 K39 ["getMedium"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K15 ["Font"]
  LOADK R3 K40 [0.1]
  SETTABLEKS R3 R2 K16 ["Transparency"]
  LOADB R3 1
  SETTABLEKS R3 R2 K17 ["CornerEnabled"]
  GETIMPORT R3 K43 [UDim.new]
  LOADN R4 0
  LOADN R5 12
  CALL R3 2 1
  SETTABLEKS R3 R2 K18 ["CornerRadius"]
  LOADB R3 1
  SETTABLEKS R3 R2 K19 ["TailVisible"]
  LOADN R3 8
  SETTABLEKS R3 R2 K20 ["Padding"]
  LOADN R3 44
  SETTABLEKS R3 R2 K21 ["MaxWidth"]
  DUPTABLE R3 K52 [{"Image", "ImageColor3", "ImageRectOffset", "ImageRectSize", "ScaleType", "SliceCenter", "SliceScale", "TileSize"}]
  LOADK R4 K53 [""]
  SETTABLEKS R4 R3 K44 ["Image"]
  GETIMPORT R4 K54 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K45 ["ImageColor3"]
  GETIMPORT R4 K56 [Vector2.new]
  CALL R4 0 1
  SETTABLEKS R4 R3 K46 ["ImageRectOffset"]
  GETIMPORT R4 K56 [Vector2.new]
  CALL R4 0 1
  SETTABLEKS R4 R3 K47 ["ImageRectSize"]
  GETIMPORT R4 K59 [Enum.ScaleType.Stretch]
  SETTABLEKS R4 R3 K48 ["ScaleType"]
  GETIMPORT R4 K61 [Rect.new]
  GETIMPORT R5 K56 [Vector2.new]
  CALL R5 0 1
  GETIMPORT R6 K56 [Vector2.new]
  CALL R6 0 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K49 ["SliceCenter"]
  LOADN R4 1
  SETTABLEKS R4 R3 K50 ["SliceScale"]
  GETIMPORT R4 K64 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K51 ["TileSize"]
  SETTABLEKS R3 R2 K22 ["BackgroundImage"]
  DUPTABLE R3 K69 [{"Enabled", "Color", "Offset", "Rotation", "Transparency"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K65 ["Enabled"]
  GETIMPORT R4 K71 [ColorSequence.new]
  GETIMPORT R5 K37 [Color3.fromRGB]
  LOADN R6 150
  LOADN R7 150
  LOADN R8 150
  CALL R5 3 1
  GETIMPORT R6 K37 [Color3.fromRGB]
  LOADN R7 250
  LOADN R8 250
  LOADN R9 250
  CALL R6 3 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K66 ["Color"]
  GETIMPORT R4 K56 [Vector2.new]
  CALL R4 0 1
  SETTABLEKS R4 R3 K67 ["Offset"]
  LOADN R4 0
  SETTABLEKS R4 R3 K68 ["Rotation"]
  GETIMPORT R4 K73 [NumberSequence.new]
  LOADN R5 0
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["Transparency"]
  SETTABLEKS R3 R2 K23 ["BackgroundGradient"]
  DUPTABLE R3 K76 [{"Enabled", "SpringDampingRatio", "SpringFrequency"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K65 ["Enabled"]
  LOADN R4 1
  SETTABLEKS R4 R3 K74 ["SpringDampingRatio"]
  LOADN R4 2
  SETTABLEKS R4 R3 K75 ["SpringFrequency"]
  SETTABLEKS R3 R2 K24 ["SizeAnimation"]
  DUPTABLE R3 K76 [{"Enabled", "SpringDampingRatio", "SpringFrequency"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K65 ["Enabled"]
  LOADN R4 1
  SETTABLEKS R4 R3 K74 ["SpringDampingRatio"]
  LOADN R4 2
  SETTABLEKS R4 R3 K75 ["SpringFrequency"]
  SETTABLEKS R3 R2 K25 ["TransparencyAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K26 ["VerticalStudsOffset"]
  LOADK R3 K77 [{0, 0, 2}]
  SETTABLEKS R3 R2 K27 ["LocalPlayerStudsOffset"]
  LOADN R3 6
  SETTABLEKS R3 R2 K28 ["BubblesSpacing"]
  LOADN R3 40
  SETTABLEKS R3 R2 K29 ["MinimizeDistance"]
  LOADN R3 100
  SETTABLEKS R3 R2 K30 ["MaxDistance"]
  LOADK R3 K78 ["HumanoidRootPart"]
  SETTABLEKS R3 R2 K31 ["AdorneeName"]
  DUPTABLE R3 K80 [{"ShowIndicator"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K79 ["ShowIndicator"]
  SETTABLEKS R3 R2 K32 ["Voice"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K33 ["UserSpecificSettings"]
  RETURN R2 1
