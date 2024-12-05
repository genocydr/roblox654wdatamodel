PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  LOADK R3 K2 ["AvatarSizeRuler"]
  NAMECALL R1 R1 K3 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETTABLEKS R4 R0 K5 ["Axis1"]
  GETTABLEKS R5 R0 K6 ["Axis2"]
  MOVE R8 R4
  NAMECALL R6 R5 K7 ["Cross"]
  CALL R6 2 1
  GETIMPORT R7 K10 [CFrame.fromMatrix]
  GETTABLEKS R9 R0 K8 ["CFrame"]
  GETTABLEKS R8 R9 K11 ["Position"]
  MOVE R9 R4
  MOVE R10 R6
  CALL R7 3 1
  GETTABLEKS R11 R0 K12 ["Size"]
  GETTABLEKS R12 R0 K5 ["Axis1"]
  MUL R10 R11 R12
  GETTABLEKS R9 R10 K13 ["Magnitude"]
  LOADN R10 0
  GETTABLEKS R13 R0 K12 ["Size"]
  GETTABLEKS R14 R0 K6 ["Axis2"]
  MUL R12 R13 R14
  GETTABLEKS R11 R12 K13 ["Magnitude"]
  FASTCALL VECTOR [+2]
  GETIMPORT R8 K16 [Vector3.new]
  CALL R8 3 1
  LOADK R12 K17 [{-0.5, 0, -0.5}]
  MUL R11 R8 R12
  NAMECALL R9 R7 K18 ["VectorToWorldSpace"]
  CALL R9 2 1
  ADD R7 R7 R9
  LOADN R12 0
  GETTABLEKS R16 R0 K12 ["Size"]
  MUL R15 R16 R6
  GETTABLEKS R14 R15 K13 ["Magnitude"]
  MULK R13 R14 K19 [-0.5]
  LOADN R14 0
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K16 [Vector3.new]
  CALL R11 3 1
  NAMECALL R9 R7 K18 ["VectorToWorldSpace"]
  CALL R9 2 1
  ADD R7 R7 R9
  LOADK R12 K20 [{-0.5, 0, 0}]
  MUL R11 R8 R12
  NAMECALL R9 R7 K18 ["VectorToWorldSpace"]
  CALL R9 2 1
  ADD R7 R7 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K21 ["createPortal"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K22 ["createElement"]
  LOADK R11 K23 ["Part"]
  DUPTABLE R12 K33 [{"Anchored", "CanQuery", "CanCollide", "CanTouch", "Archivable", "ref", "CFrame", "TopSurface", "BottomSurface", "Size", "Transparency"}]
  LOADB R13 1
  SETTABLEKS R13 R12 K24 ["Anchored"]
  LOADB R13 0
  SETTABLEKS R13 R12 K25 ["CanQuery"]
  LOADB R13 0
  SETTABLEKS R13 R12 K26 ["CanCollide"]
  LOADB R13 0
  SETTABLEKS R13 R12 K27 ["CanTouch"]
  LOADB R13 0
  SETTABLEKS R13 R12 K28 ["Archivable"]
  SETTABLEKS R3 R12 K29 ["ref"]
  GETTABLEKS R14 R0 K8 ["CFrame"]
  LOADK R18 K34 [{-1.5, 0, 0}]
  MUL R17 R8 R18
  NAMECALL R15 R7 K18 ["VectorToWorldSpace"]
  CALL R15 2 1
  ADD R13 R14 R15
  SETTABLEKS R13 R12 K8 ["CFrame"]
  GETIMPORT R13 K38 [Enum.SurfaceType.Smooth]
  SETTABLEKS R13 R12 K30 ["TopSurface"]
  GETIMPORT R13 K38 [Enum.SurfaceType.Smooth]
  SETTABLEKS R13 R12 K31 ["BottomSurface"]
  GETTABLEKS R13 R0 K12 ["Size"]
  SETTABLEKS R13 R12 K12 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K32 ["Transparency"]
  DUPTABLE R13 K41 [{"Ruler", "SurfaceGui"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K22 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K48 [{"Color3", "MainTransparency", "DimTransparency", "GridSize", "MajorStep", "CFrame", "Size", "ExtraSize"}]
  GETTABLEKS R17 R1 K49 ["RulerColor"]
  SETTABLEKS R17 R16 K42 ["Color3"]
  GETTABLEKS R17 R1 K43 ["MainTransparency"]
  SETTABLEKS R17 R16 K43 ["MainTransparency"]
  GETTABLEKS R17 R1 K44 ["DimTransparency"]
  SETTABLEKS R17 R16 K44 ["DimTransparency"]
  GETTABLEKS R17 R1 K45 ["GridSize"]
  SETTABLEKS R17 R16 K45 ["GridSize"]
  GETTABLEKS R17 R1 K46 ["MajorStep"]
  SETTABLEKS R17 R16 K46 ["MajorStep"]
  SETTABLEKS R7 R16 K8 ["CFrame"]
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R8 K50 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K16 [Vector3.new]
  CALL R17 3 1
  SETTABLEKS R17 R16 K12 ["Size"]
  LOADNIL R17
  SETTABLEKS R17 R16 K47 ["ExtraSize"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K39 ["Ruler"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K22 ["createElement"]
  LOADK R15 K40 ["SurfaceGui"]
  DUPTABLE R16 K56 [{"Adornee", "AlwaysOnTop", "Face", "SizingMode", "PixelsPerStud"}]
  SETTABLEKS R2 R16 K51 ["Adornee"]
  LOADB R17 1
  SETTABLEKS R17 R16 K52 ["AlwaysOnTop"]
  GETTABLEKS R17 R0 K57 ["TextFace"]
  SETTABLEKS R17 R16 K53 ["Face"]
  GETIMPORT R17 K59 [Enum.SurfaceGuiSizingMode.PixelsPerStud]
  SETTABLEKS R17 R16 K54 ["SizingMode"]
  GETTABLEKS R17 R1 K55 ["PixelsPerStud"]
  SETTABLEKS R17 R16 K55 ["PixelsPerStud"]
  DUPTABLE R17 K61 [{"Container"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K22 ["createElement"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K62 ["UI"]
  GETTABLEKS R19 R20 K60 ["Container"]
  DUPTABLE R20 K65 [{"AutomaticSize", "Padding"}]
  GETIMPORT R21 K67 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K63 ["AutomaticSize"]
  DUPTABLE R21 K69 [{"Left"}]
  GETTABLEKS R22 R1 K64 ["Padding"]
  SETTABLEKS R22 R21 K68 ["Left"]
  SETTABLEKS R21 R20 K64 ["Padding"]
  DUPTABLE R21 K71 [{"SizeLabel"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K22 ["createElement"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K62 ["UI"]
  GETTABLEKS R23 R24 K72 ["TextLabel"]
  DUPTABLE R24 K75 [{"AutomaticSize", "Text", "TextSize"}]
  GETIMPORT R25 K67 [Enum.AutomaticSize.XY]
  SETTABLEKS R25 R24 K63 ["AutomaticSize"]
  GETTABLEKS R25 R0 K73 ["Text"]
  SETTABLEKS R25 R24 K73 ["Text"]
  GETTABLEKS R25 R1 K74 ["TextSize"]
  SETTABLEKS R25 R24 K74 ["TextSize"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K70 ["SizeLabel"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K60 ["Container"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K40 ["SurfaceGui"]
  CALL R10 3 1
  GETTABLEKS R11 R0 K60 ["Container"]
  JUMPIF R11 [+1]
  GETUPVAL R11 4
  LOADK R12 K2 ["AvatarSizeRuler"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K14 ["DraggerFramework"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K15 ["Components"]
  GETTABLEKS R5 R6 K16 ["RulerView"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K17 ["Src"]
  GETTABLEKS R8 R9 K18 ["Resources"]
  GETTABLEKS R7 R8 K19 ["Theme"]
  CALL R6 1 1
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  RETURN R7 1