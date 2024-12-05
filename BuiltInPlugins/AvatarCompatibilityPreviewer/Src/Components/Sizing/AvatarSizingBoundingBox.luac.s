PROTO_0:
  JUMPIFNOTEQ R2 R1 [+5]
  GETIMPORT R5 K1 [error]
  LOADK R6 K2 ["Range of zero"]
  CALL R5 1 0
  SUB R8 R0 R1
  SUB R9 R4 R3
  MUL R7 R8 R9
  SUB R8 R2 R1
  DIV R6 R7 R8
  ADD R5 R6 R3
  RETURN R5 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["IsValid"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["AllValid"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["NeutralColor"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["ValidColor"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K4 ["InvalidColor"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  LOADK R3 K2 ["AvatarSizingBoundingBox"]
  NAMECALL R1 R1 K3 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  NEWTABLE R6 0 0
  CALL R4 2 1
  GETTABLEKS R6 R0 K6 ["BoundingBoxCFrame"]
  GETIMPORT R7 K9 [CFrame.new]
  GETTABLEKS R9 R0 K10 ["BoundingBoxSize"]
  LOADK R10 K11 [{0, -0.5, 0}]
  MUL R8 R9 R10
  CALL R7 1 1
  MUL R5 R6 R7
  GETIMPORT R8 K9 [CFrame.new]
  GETTABLEKS R10 R0 K12 ["Size"]
  LOADK R11 K13 [{0, 0.5, 0}]
  MUL R9 R10 R11
  CALL R8 1 -1
  NAMECALL R6 R5 K14 ["ToWorldSpace"]
  CALL R6 -1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["useMemo"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R9 0 2
  GETTABLEKS R10 R0 K16 ["IsValid"]
  GETTABLEKS R11 R0 K17 ["AllValid"]
  SETLIST R9 R10 2 [1]
  CALL R7 2 1
  LOADN R8 0
  GETTABLEKS R9 R0 K16 ["IsValid"]
  JUMPIFNOT R9 [+8]
  GETTABLEKS R9 R0 K17 ["AllValid"]
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R1 K18 ["NeutralTransparency"]
  JUMP [+2]
  GETTABLEKS R8 R1 K19 ["ValidTransparency"]
  GETTABLEKS R9 R0 K20 ["Inside"]
  JUMPIFNOT R9 [+2]
  LOADK R9 K21 [0.5]
  MUL R8 R9 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K22 ["createElement"]
  LOADK R10 K23 ["Part"]
  DUPTABLE R11 K34 [{"Size", "CFrame", "Color", "ref", "Archivable", "CanCollide", "CanQuery", "Anchored", "Locked", "TopSurface", "BottomSurface", "Transparency"}]
  GETTABLEKS R12 R0 K12 ["Size"]
  SETTABLEKS R12 R11 K12 ["Size"]
  SETTABLEKS R6 R11 K7 ["CFrame"]
  SETTABLEKS R7 R11 K24 ["Color"]
  SETTABLEKS R4 R11 K25 ["ref"]
  LOADB R12 0
  SETTABLEKS R12 R11 K26 ["Archivable"]
  LOADB R12 0
  SETTABLEKS R12 R11 K27 ["CanCollide"]
  LOADB R12 0
  SETTABLEKS R12 R11 K28 ["CanQuery"]
  LOADB R12 1
  SETTABLEKS R12 R11 K29 ["Anchored"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["Locked"]
  GETIMPORT R12 K38 [Enum.SurfaceType.Smooth]
  SETTABLEKS R12 R11 K31 ["TopSurface"]
  GETIMPORT R12 K38 [Enum.SurfaceType.Smooth]
  SETTABLEKS R12 R11 K32 ["BottomSurface"]
  LOADN R12 1
  SETTABLEKS R12 R11 K33 ["Transparency"]
  DUPTABLE R12 K42 [{"TopAdornment", "BottomAdornment", "SelectionBox"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K22 ["createElement"]
  LOADK R14 K43 ["BoxHandleAdornment"]
  DUPTABLE R15 K47 [{"Size", "Archivable", "AlwaysOnTop", "CFrame", "Transparency", "Color3", "Adornee"}]
  GETTABLEKS R16 R0 K12 ["Size"]
  SETTABLEKS R16 R15 K12 ["Size"]
  LOADB R16 0
  SETTABLEKS R16 R15 K26 ["Archivable"]
  LOADB R16 1
  SETTABLEKS R16 R15 K44 ["AlwaysOnTop"]
  GETIMPORT R16 K9 [CFrame.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K7 ["CFrame"]
  GETGLOBAL R16 K48 ["mapNumberRange"]
  MOVE R17 R8
  LOADN R18 0
  LOADN R19 1
  LOADK R20 K49 [0.9]
  LOADN R21 1
  CALL R16 5 1
  SETTABLEKS R16 R15 K33 ["Transparency"]
  SETTABLEKS R7 R15 K45 ["Color3"]
  SETTABLEKS R2 R15 K46 ["Adornee"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["TopAdornment"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K22 ["createElement"]
  LOADK R14 K43 ["BoxHandleAdornment"]
  DUPTABLE R15 K47 [{"Size", "Archivable", "AlwaysOnTop", "CFrame", "Transparency", "Color3", "Adornee"}]
  GETTABLEKS R16 R0 K12 ["Size"]
  SETTABLEKS R16 R15 K12 ["Size"]
  LOADB R16 0
  SETTABLEKS R16 R15 K26 ["Archivable"]
  LOADB R16 0
  SETTABLEKS R16 R15 K44 ["AlwaysOnTop"]
  GETIMPORT R16 K9 [CFrame.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K7 ["CFrame"]
  GETGLOBAL R16 K48 ["mapNumberRange"]
  MOVE R17 R8
  LOADN R18 0
  LOADN R19 1
  LOADK R20 K49 [0.9]
  LOADN R21 1
  CALL R16 5 1
  SETTABLEKS R16 R15 K33 ["Transparency"]
  SETTABLEKS R7 R15 K45 ["Color3"]
  SETTABLEKS R2 R15 K46 ["Adornee"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K40 ["BottomAdornment"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K22 ["createElement"]
  LOADK R14 K41 ["SelectionBox"]
  DUPTABLE R15 K52 [{"Archivable", "Color3", "SurfaceColor3", "Adornee", "LineThickness", "Transparency"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K26 ["Archivable"]
  SETTABLEKS R7 R15 K45 ["Color3"]
  SETTABLEKS R7 R15 K50 ["SurfaceColor3"]
  SETTABLEKS R2 R15 K46 ["Adornee"]
  LOADK R16 K53 [0.01]
  SETTABLEKS R16 R15 K51 ["LineThickness"]
  GETGLOBAL R16 K48 ["mapNumberRange"]
  MOVE R17 R8
  LOADN R18 0
  LOADN R19 1
  LOADK R20 K21 [0.5]
  LOADN R21 1
  CALL R16 5 1
  SETTABLEKS R16 R15 K33 ["Transparency"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["SelectionBox"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  SETGLOBAL R4 K13 ["mapNumberRange"]
  DUPCLOSURE R4 K14 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1