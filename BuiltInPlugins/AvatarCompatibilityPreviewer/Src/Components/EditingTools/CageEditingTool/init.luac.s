PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mannequin"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["mannequin"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  JUMPIFEQKS R1 K1 ["ok"] [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  JUMPIFEQKS R3 K1 ["ok"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K5 ["mannequin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["value"]
  MOVE R4 R0
  CALL R1 3 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  NAMECALL R3 R2 K8 ["getMeshesData"]
  CALL R3 1 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R3 R7
  SETTABLEKS R8 R9 K9 ["VertexData"]
  FORGLOOP R4 2 [-4]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K7 ["current"]
  JUMPIFNOTEQKNIL R4 [+2]
  RETURN R0 0
  MOVE R7 R3
  NAMECALL R5 R4 K10 ["resetCurrentContextTo"]
  CALL R5 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  NAMECALL R2 R1 K1 ["undo"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  NAMECALL R2 R1 K1 ["redo"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["deserialize"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["initialMeshesData"]
  CALL R1 1 1
  MOVE R4 R1
  NAMECALL R2 R0 K3 ["resetCurrentContextTo"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["initialMeshesData"]
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["serialize"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  NAMECALL R1 R1 K3 ["getMeshesData"]
  CALL R1 1 -1
  CALL R0 -1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["setInitialMeshesData"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  NAMECALL R1 R0 K1 ["getUndoRedoStack"]
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["serialize"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["setChangeHistory"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["changeHistory"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["deserialize"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["changeHistory"]
  CALL R1 1 2
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K3 ["restoreUndoRedoStack"]
  CALL R3 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  LOADK R1 K0 ["right"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R1 K0 ["left"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["CageEditingTool"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["cageMeshesDataSerializer"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["cageHistorySerializer"]
  GETUPVAL R5 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["new"]
  CALL R5 1 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K5 ["useState"]
  LOADN R7 50
  CALL R6 1 2
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K5 ["useState"]
  LOADK R9 K6 [0.3]
  CALL R8 1 2
  GETUPVAL R10 6
  LOADB R11 1
  CALL R10 1 1
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["useState"]
  NEWTABLE R12 0 0
  CALL R11 1 2
  GETUPVAL R13 7
  MOVE R14 R11
  CALL R13 1 0
  GETUPVAL R13 8
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  NEWTABLE R15 0 1
  GETTABLEKS R16 R0 K7 ["mannequin"]
  SETLIST R15 R16 1 [1]
  CALL R13 2 1
  GETUPVAL R14 8
  NEWCLOSURE R15 P1
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  NEWTABLE R16 0 1
  GETTABLEKS R17 R0 K7 ["mannequin"]
  SETLIST R16 R17 1 [1]
  CALL R14 2 1
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K8 ["useRef"]
  LOADNIL R16
  CALL R15 1 1
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K9 ["useCallback"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R13
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R5
  NEWTABLE R18 0 2
  GETTABLEKS R19 R0 K7 ["mannequin"]
  MOVE R20 R13
  SETLIST R18 R19 2 [1]
  CALL R16 2 1
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K9 ["useCallback"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R15
  CAPTURE VAL R5
  NEWTABLE R19 0 0
  CALL R17 2 1
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K9 ["useCallback"]
  NEWCLOSURE R19 P4
  CAPTURE VAL R15
  CAPTURE VAL R5
  NEWTABLE R20 0 0
  CALL R18 2 1
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K9 ["useCallback"]
  NEWCLOSURE R20 P5
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R21 0 1
  GETTABLEKS R22 R0 K10 ["initialMeshesData"]
  SETLIST R21 R22 1 [1]
  CALL R19 2 1
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K11 ["useEffect"]
  NEWCLOSURE R21 P6
  CAPTURE VAL R15
  CAPTURE VAL R0
  CAPTURE VAL R3
  NEWTABLE R22 0 1
  GETTABLEKS R23 R0 K10 ["initialMeshesData"]
  SETLIST R22 R23 1 [1]
  CALL R20 2 0
  LOADNIL R20
  LOADNIL R21
  JUMPIFEQKNIL R5 [+8]
  GETTABLEKS R22 R5 K12 ["current"]
  NAMECALL R22 R22 K13 ["getUndoRedoStack"]
  CALL R22 1 2
  MOVE R20 R22
  MOVE R21 R23
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K11 ["useEffect"]
  NEWCLOSURE R23 P7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R0
  NEWTABLE R24 0 2
  LOADB R25 0
  JUMPIFEQKNIL R20 [+2]
  LENGTH R25 R20
  LOADB R26 0
  JUMPIFEQKNIL R21 [+2]
  LENGTH R26 R21
  SETLIST R24 R25 2 [1]
  CALL R22 2 0
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K11 ["useEffect"]
  NEWCLOSURE R23 P8
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R24 0 1
  GETTABLEKS R25 R0 K7 ["mannequin"]
  SETLIST R24 R25 1 [1]
  CALL R22 2 0
  GETUPVAL R22 13
  MOVE R23 R17
  MOVE R24 R18
  CALL R22 2 0
  GETUPVAL R23 14
  GETTABLEKS R22 R23 K14 ["provide"]
  NEWTABLE R23 0 1
  GETUPVAL R25 15
  GETTABLEKS R24 R25 K4 ["new"]
  DUPTABLE R25 K16 [{"BrushTool"}]
  GETTABLEKS R26 R5 K12 ["current"]
  SETTABLEKS R26 R25 K15 ["BrushTool"]
  CALL R24 1 -1
  SETLIST R23 R24 -1 [1]
  NEWTABLE R24 2 0
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K17 ["createElement"]
  GETUPVAL R26 16
  DUPTABLE R27 K25 [{"mannequin", "falloff", "radius", "segmentationMap", "symmetrical", "symmetryMap", "onChangeSelectedPositions", "outerCageContextRef"}]
  GETTABLEKS R28 R0 K7 ["mannequin"]
  SETTABLEKS R28 R27 K7 ["mannequin"]
  DIVK R30 R6 K26 [100]
  MUL R29 R30 R8
  GETUPVAL R31 11
  GETTABLEKS R30 R31 K27 ["FALLOFF_CURSOR_ADJUSTMENT"]
  DIV R28 R29 R30
  SETTABLEKS R28 R27 K18 ["falloff"]
  SETTABLEKS R8 R27 K19 ["radius"]
  SETTABLEKS R14 R27 K20 ["segmentationMap"]
  GETTABLEKS R28 R10 K28 ["enabled"]
  SETTABLEKS R28 R27 K21 ["symmetrical"]
  SETTABLEKS R13 R27 K22 ["symmetryMap"]
  SETTABLEKS R12 R27 K23 ["onChangeSelectedPositions"]
  SETTABLEKS R15 R27 K24 ["outerCageContextRef"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K1 ["CageEditingTool"]
  GETUPVAL R27 11
  GETTABLEKS R26 R27 K29 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R25 R26 K30 ["CageEditingToolToolbar"]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K17 ["createElement"]
  GETUPVAL R28 17
  GETTABLEKS R27 R28 K31 ["Toolbar"]
  DUPTABLE R28 K33 [{"HorizontalItems"}]
  NEWTABLE R29 0 8
  DUPTABLE R30 K40 [{"Type", "Icon", "Tooltip", "TooltipDescription", "OnClick", "Selected"}]
  LOADK R31 K41 ["Button"]
  SETTABLEKS R31 R30 K34 ["Type"]
  GETTABLEKS R31 R2 K42 ["SymmetryImage"]
  SETTABLEKS R31 R30 K35 ["Icon"]
  LOADK R33 K1 ["CageEditingTool"]
  LOADK R34 K43 ["Symmetry"]
  NAMECALL R31 R1 K44 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K36 ["Tooltip"]
  LOADK R33 K1 ["CageEditingTool"]
  LOADK R34 K45 ["SymmetryDescription"]
  NAMECALL R31 R1 K44 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K37 ["TooltipDescription"]
  GETTABLEKS R31 R10 K46 ["toggle"]
  SETTABLEKS R31 R30 K38 ["OnClick"]
  GETTABLEKS R31 R10 K28 ["enabled"]
  SETTABLEKS R31 R30 K39 ["Selected"]
  DUPTABLE R31 K48 [{"Type", "Options"}]
  LOADK R32 K49 ["SplitButton"]
  SETTABLEKS R32 R31 K34 ["Type"]
  NEWTABLE R32 0 2
  DUPTABLE R33 K51 [{"Icon", "Text", "OnClick"}]
  GETUPVAL R35 5
  GETTABLEKS R34 R35 K17 ["createElement"]
  LOADK R35 K52 ["ImageLabel"]
  DUPTABLE R36 K55 [{"Image", "Size"}]
  GETTABLEKS R37 R2 K56 ["MirrorToRightImage"]
  SETTABLEKS R37 R36 K53 ["Image"]
  GETIMPORT R37 K59 [UDim2.fromScale]
  LOADN R38 1
  LOADN R39 1
  CALL R37 2 1
  SETTABLEKS R37 R36 K54 ["Size"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K35 ["Icon"]
  LOADK R36 K1 ["CageEditingTool"]
  LOADK R37 K60 ["MirrorLeft"]
  NAMECALL R34 R1 K44 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K50 ["Text"]
  NEWCLOSURE R34 P9
  CAPTURE VAL R16
  SETTABLEKS R34 R33 K38 ["OnClick"]
  DUPTABLE R34 K51 [{"Icon", "Text", "OnClick"}]
  GETUPVAL R36 5
  GETTABLEKS R35 R36 K17 ["createElement"]
  LOADK R36 K52 ["ImageLabel"]
  DUPTABLE R37 K55 [{"Image", "Size"}]
  GETTABLEKS R38 R2 K61 ["MirrorToLeftImage"]
  SETTABLEKS R38 R37 K53 ["Image"]
  GETIMPORT R38 K59 [UDim2.fromScale]
  LOADN R39 1
  LOADN R40 1
  CALL R38 2 1
  SETTABLEKS R38 R37 K54 ["Size"]
  CALL R35 2 1
  SETTABLEKS R35 R34 K35 ["Icon"]
  LOADK R37 K1 ["CageEditingTool"]
  LOADK R38 K62 ["MirrorRight"]
  NAMECALL R35 R1 K44 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K50 ["Text"]
  NEWCLOSURE R35 P10
  CAPTURE VAL R16
  SETTABLEKS R35 R34 K38 ["OnClick"]
  SETLIST R32 R33 2 [1]
  SETTABLEKS R32 R31 K47 ["Options"]
  DUPTABLE R32 K63 [{"Type"}]
  LOADK R33 K64 ["Separator"]
  SETTABLEKS R33 R32 K34 ["Type"]
  DUPTABLE R33 K69 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max"}]
  LOADK R34 K70 ["Slider"]
  SETTABLEKS R34 R33 K34 ["Type"]
  SETTABLEKS R8 R33 K65 ["Value"]
  SETTABLEKS R9 R33 K66 ["OnChange"]
  GETTABLEKS R34 R2 K71 ["RadiusImage"]
  SETTABLEKS R34 R33 K35 ["Icon"]
  LOADK R36 K1 ["CageEditingTool"]
  LOADK R37 K72 ["Radius"]
  NAMECALL R34 R1 K44 ["getText"]
  CALL R34 3 1
  SETTABLEKS R34 R33 K36 ["Tooltip"]
  LOADK R34 K73 [0.01]
  SETTABLEKS R34 R33 K67 ["Min"]
  LOADN R34 2
  SETTABLEKS R34 R33 K68 ["Max"]
  DUPTABLE R34 K76 [{"Type", "Value", "OnChange", "Icon", "Tooltip", "Min", "Max", "InputPrecision", "DisplayFormat"}]
  LOADK R35 K70 ["Slider"]
  SETTABLEKS R35 R34 K34 ["Type"]
  SETTABLEKS R6 R34 K65 ["Value"]
  SETTABLEKS R7 R34 K66 ["OnChange"]
  GETTABLEKS R35 R2 K77 ["FalloffImage"]
  SETTABLEKS R35 R34 K35 ["Icon"]
  LOADK R37 K1 ["CageEditingTool"]
  LOADK R38 K78 ["Falloff"]
  NAMECALL R35 R1 K44 ["getText"]
  CALL R35 3 1
  SETTABLEKS R35 R34 K36 ["Tooltip"]
  LOADN R35 1
  SETTABLEKS R35 R34 K67 ["Min"]
  LOADN R35 100
  SETTABLEKS R35 R34 K68 ["Max"]
  LOADN R35 0
  SETTABLEKS R35 R34 K74 ["InputPrecision"]
  LOADK R35 K79 ["%d%%"]
  SETTABLEKS R35 R34 K75 ["DisplayFormat"]
  DUPTABLE R35 K63 [{"Type"}]
  LOADK R36 K64 ["Separator"]
  SETTABLEKS R36 R35 K34 ["Type"]
  DUPTABLE R36 K80 [{"Type", "Icon", "Tooltip", "OnClick"}]
  LOADK R37 K41 ["Button"]
  SETTABLEKS R37 R36 K34 ["Type"]
  GETTABLEKS R37 R2 K81 ["ResetChangesImage"]
  SETTABLEKS R37 R36 K35 ["Icon"]
  LOADK R39 K82 ["EditingTools"]
  LOADK R40 K83 ["ResetEdits"]
  NAMECALL R37 R1 K44 ["getText"]
  CALL R37 3 1
  SETTABLEKS R37 R36 K36 ["Tooltip"]
  SETTABLEKS R19 R36 K38 ["OnClick"]
  GETTABLEKS R38 R0 K84 ["additionalToolbarItems"]
  FASTCALL1 TABLE_UNPACK R38 [+2]
  GETIMPORT R37 K86 [unpack]
  CALL R37 1 -1
  SETLIST R29 R30 -1 [1]
  SETTABLEKS R29 R28 K32 ["HorizontalItems"]
  CALL R26 2 1
  SETTABLE R26 R24 R25
  CALL R22 2 -1
  RETURN R22 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["LuaMeshEditingModule"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K10 ["_Index"]
  GETTABLEKS R7 R8 K9 ["LuaMeshEditingModule"]
  GETTABLEKS R6 R7 K9 ["LuaMeshEditingModule"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K12 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K13 ["ViewportToolingFramework"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K16 ["EditingTools"]
  GETTABLEKS R9 R10 K17 ["CageEditingTool"]
  GETTABLEKS R8 R9 K18 ["LuaMeshEditingModuleWrapper"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K19 ["Util"]
  GETTABLEKS R9 R10 K20 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K19 ["Util"]
  GETTABLEKS R10 R11 K21 ["Serializers"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K22 ["Resources"]
  GETTABLEKS R11 R12 K23 ["Theme"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K11 ["Types"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K15 ["Components"]
  GETTABLEKS R14 R15 K16 ["EditingTools"]
  GETTABLEKS R13 R14 K24 ["createSegmentationMapAsync"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K15 ["Components"]
  GETTABLEKS R15 R16 K16 ["EditingTools"]
  GETTABLEKS R14 R15 K25 ["createSymmetryMapAsync"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K26 ["mirrorCage"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K27 ["Hooks"]
  GETTABLEKS R16 R17 K28 ["useAsync"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K14 ["Src"]
  GETTABLEKS R19 R20 K15 ["Components"]
  GETTABLEKS R18 R19 K16 ["EditingTools"]
  GETTABLEKS R17 R18 K29 ["useBindFocusOnPositions"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K14 ["Src"]
  GETTABLEKS R19 R20 K27 ["Hooks"]
  GETTABLEKS R18 R19 K30 ["useRefWithInitial"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K14 ["Src"]
  GETTABLEKS R20 R21 K27 ["Hooks"]
  GETTABLEKS R19 R20 K31 ["useToggleState"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K14 ["Src"]
  GETTABLEKS R21 R22 K27 ["Hooks"]
  GETTABLEKS R20 R21 K32 ["useUndoRedoActions"]
  CALL R19 1 1
  GETTABLEKS R21 R3 K33 ["Tools"]
  GETTABLEKS R20 R21 K34 ["BrushTool"]
  GETTABLEKS R22 R3 K35 ["MeshEditingContexts"]
  GETTABLEKS R21 R22 K36 ["CageEditingContext"]
  GETTABLEKS R22 R2 K37 ["ContextServices"]
  GETTABLEKS R23 R22 K38 ["Localization"]
  GETTABLEKS R25 R1 K39 ["Contexts"]
  GETTABLEKS R24 R25 K40 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R25 R22 K41 ["Stylizer"]
  DUPCLOSURE R26 K42 [PROTO_11]
  CAPTURE VAL R23
  CAPTURE VAL R25
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R26 1
