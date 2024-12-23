PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Activation"]
  LOADB R2 0
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["_enabled"]
  RETURN R0 0

PROTO_1:
  JUMPIF R1 [+7]
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R3 R0
  LOADK R4 K0 ["PluginController.new() requires a plugin"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  DUPTABLE R3 K11 [{"_mock", "_plugin", "_store", "_session", "Activation", "Compact", "Focused", "PluginWidth"}]
  SETTABLEKS R1 R3 K3 ["_mock"]
  SETTABLEKS R0 R3 K4 ["_plugin"]
  NEWTABLE R4 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["SelectionSettings"]
  NEWTABLE R6 4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["Size"]
  LOADK R8 K14 [{64, 32, 64}]
  SETTABLE R8 R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["SnapToVoxels"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["Transform"]
  GETIMPORT R8 K19 [CFrame.new]
  CALL R8 0 1
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K20 ["TransformSettings"]
  NEWTABLE R6 4 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["Size"]
  LOADK R8 K14 [{64, 32, 64}]
  SETTABLE R8 R6 R7
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["SnapToVoxels"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K16 ["Transform"]
  GETIMPORT R8 K19 [CFrame.new]
  CALL R8 0 1
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["BrushSettings"]
  NEWTABLE R6 4 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K22 ["ManualPlaneLock"]
  LOADB R8 0
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K23 ["PlaneLock"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K24 ["Off"]
  SETTABLE R8 R6 R7
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K25 ["PlaneTransform"]
  GETIMPORT R8 K27 [CFrame.Angles]
  LOADK R9 K28 [1.5707963267949]
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K5 ["_store"]
  NEWTABLE R4 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K29 ["BuildSettings"]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+10]
  NEWTABLE R6 1 0
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K30 ["TerrainType"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K31 ["None"]
  SETTABLE R8 R6 R7
  JUMP [+1]
  LOADNIL R6
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K21 ["BrushSettings"]
  NEWTABLE R6 0 0
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["SelectionSettings"]
  NEWTABLE R6 0 0
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K20 ["TransformSettings"]
  NEWTABLE R6 1 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K32 ["TransformMode"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K33 ["Move"]
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K6 ["_session"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K18 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K7 ["Activation"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K18 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["Compact"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K18 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["Focused"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K18 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K10 ["PluginWidth"]
  GETUPVAL R4 10
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K35 [setmetatable]
  CALL R2 2 1
  GETUPVAL R4 11
  GETTABLEKS R3 R4 K36 ["IsDebuggingSavedSettings"]
  JUMPIF R3 [+20]
  GETUPVAL R3 12
  GETTABLEKS R4 R2 K4 ["_plugin"]
  LOADK R6 K37 ["Global"]
  NAMECALL R4 R4 K38 ["GetSetting"]
  CALL R4 2 1
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  CALL R3 1 1
  GETUPVAL R5 13
  GETTABLEKS R4 R5 K39 ["join"]
  GETTABLEKS R5 R2 K5 ["_store"]
  MOVE R6 R3
  CALL R4 2 1
  SETTABLEKS R4 R2 K5 ["_store"]
  GETTABLEKS R4 R2 K4 ["_plugin"]
  GETTABLEKS R3 R4 K40 ["Deactivation"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  NAMECALL R3 R3 K41 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K42 ["_deactivationListener"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_mock"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_plugin"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_plugin"]
  LOADK R2 K1 ["Global"]
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_store"]
  CALL R3 1 -1
  NAMECALL R0 R0 K3 ["SetSetting"]
  CALL R0 -1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_saveSettingsTask"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["GlobalPersistent"]
  JUMPIFNOTEQ R4 R6 [+4]
  GETTABLEKS R5 R0 K1 ["_store"]
  JUMP [+2]
  GETTABLEKS R5 R0 K2 ["_session"]
  GETTABLE R6 R5 R1
  SETTABLE R3 R6 R2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["GlobalPersistent"]
  JUMPIFNOTEQ R4 R6 [+54]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["PlaneLock"]
  JUMPIFNOTEQ R2 R6 [+29]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["Manual"]
  JUMPIFNOTEQ R3 R6 [+24]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["CurrentCamera"]
  GETTABLEKS R6 R7 K6 ["CFrame"]
  GETIMPORT R7 K8 [CFrame.Angles]
  LOADK R8 K9 [1.5707963267949]
  LOADN R9 0
  LOADN R10 0
  CALL R7 3 1
  GETTABLEKS R9 R6 K10 ["Position"]
  GETTABLEKS R11 R6 K12 ["LookVector"]
  MULK R10 R11 K11 [64]
  ADD R8 R9 R10
  GETTABLE R9 R5 R1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["PlaneTransform"]
  ADD R11 R7 R8
  SETTABLE R11 R9 R10
  GETTABLEKS R6 R0 K14 ["_saveSettingsTask"]
  JUMPIFNOT R6 [+8]
  GETIMPORT R6 K17 [task.cancel]
  GETTABLEKS R7 R0 K14 ["_saveSettingsTask"]
  CALL R6 1 0
  LOADNIL R6
  SETTABLEKS R6 R0 K14 ["_saveSettingsTask"]
  GETIMPORT R6 K19 [task.delay]
  LOADN R7 1
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CALL R6 2 1
  SETTABLEKS R6 R0 K14 ["_saveSettingsTask"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["GlobalPersistent"]
  JUMPIFNOTEQ R3 R5 [+4]
  GETTABLEKS R4 R0 K1 ["_store"]
  JUMP [+2]
  GETTABLEKS R4 R0 K2 ["_session"]
  GETTABLE R6 R4 R1
  GETTABLE R5 R6 R2
  RETURN R5 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["_plugin"]
  MOVE R5 R1
  GETUPVAL R6 0
  MOVE R7 R2
  CALL R6 1 -1
  NAMECALL R3 R3 K1 ["SetSetting"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["_plugin"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["GetSetting"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K1 ["disable"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K2 ["enable"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_enabled"]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  LOADB R3 1
  NAMECALL R1 R1 K2 ["Activate"]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_enabled"]
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_enabled"]
  GETTABLEKS R1 R0 K1 ["_plugin"]
  NAMECALL R1 R1 K2 ["Deactivate"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["Focused"]
  LOADB R3 1
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K2 ["Activation"]
  LOADB R3 1
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["Focused"]
  LOADB R3 0
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_deactivationListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_deactivationListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_deactivationListener"]
  NAMECALL R1 R0 K2 ["disable"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  SETTABLEKS R1 R0 K0 ["_root"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R1 R0 K0 ["_root"]
  RETURN R1 1

PROTO_19:
  NAMECALL R2 R0 K0 ["getShouldBeCompact"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["_pluginWidth"]
  SETTABLEKS R1 R0 K1 ["_pluginWidth"]
  JUMPIFEQ R3 R1 [+7]
  GETTABLEKS R4 R0 K2 ["PluginWidth"]
  MOVE R6 R1
  NAMECALL R4 R4 K3 ["Fire"]
  CALL R4 2 0
  NAMECALL R4 R0 K0 ["getShouldBeCompact"]
  CALL R4 1 1
  JUMPIFEQ R2 R4 [+6]
  GETTABLEKS R4 R0 K4 ["Compact"]
  NAMECALL R4 R4 K3 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_pluginWidth"]
  RETURN R1 1

PROTO_21:
  GETTABLEKS R2 R0 K0 ["_pluginWidth"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R0 K0 ["_pluginWidth"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["MinWindowWidth"]
  JUMPIFLT R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["ContextItem"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["BrushSettings"]
  GETTABLEKS R6 R4 K14 ["BuildSettings"]
  GETTABLEKS R7 R4 K15 ["Category"]
  GETTABLEKS R8 R4 K16 ["PlaneLock"]
  GETTABLEKS R9 R4 K17 ["SelectionSettings"]
  GETTABLEKS R10 R4 K18 ["Storage"]
  GETTABLEKS R11 R4 K19 ["TerrainType"]
  GETTABLEKS R12 R4 K20 ["TransformMode"]
  GETTABLEKS R13 R4 K21 ["TransformSettings"]
  GETTABLEKS R14 R2 K22 ["Util"]
  GETTABLEKS R15 R14 K23 ["Signal"]
  GETTABLEKS R18 R0 K11 ["Src"]
  GETTABLEKS R17 R18 K22 ["Util"]
  GETTABLEKS R16 R17 K24 ["Serialization"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R16 K25 ["Serialize"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R16 K26 ["Deserialize"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K11 ["Src"]
  GETTABLEKS R21 R22 K27 ["Resources"]
  GETTABLEKS R20 R21 K28 ["Constants"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K11 ["Src"]
  GETTABLEKS R22 R23 K29 ["Flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagTerrainEditorGenerationFeature"]
  CALL R20 1 1
  LOADK R23 K31 ["PluginController"]
  NAMECALL R21 R3 K32 ["extend"]
  CALL R21 2 1
  GETIMPORT R22 K34 [game]
  LOADK R24 K35 ["Workspace"]
  NAMECALL R22 R22 K36 ["GetService"]
  CALL R22 2 1
  DUPCLOSURE R23 K37 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R1
  SETTABLEKS R23 R21 K38 ["new"]
  DUPCLOSURE R23 K39 [PROTO_2]
  CAPTURE VAL R21
  SETTABLEKS R23 R21 K40 ["mock"]
  DUPCLOSURE R23 K41 [PROTO_3]
  SETTABLEKS R23 R21 K42 ["isMocking"]
  DUPCLOSURE R23 K43 [PROTO_4]
  SETTABLEKS R23 R21 K44 ["getPlugin"]
  DUPCLOSURE R23 K45 [PROTO_5]
  SETTABLEKS R23 R21 K46 ["getEnabled"]
  DUPCLOSURE R23 K47 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R22
  CAPTURE VAL R17
  SETTABLEKS R23 R21 K48 ["setGlobal"]
  DUPCLOSURE R23 K49 [PROTO_8]
  CAPTURE VAL R10
  SETTABLEKS R23 R21 K50 ["getGlobal"]
  DUPCLOSURE R23 K51 [PROTO_9]
  CAPTURE VAL R17
  SETTABLEKS R23 R21 K52 ["setSetting"]
  DUPCLOSURE R23 K53 [PROTO_10]
  CAPTURE VAL R18
  SETTABLEKS R23 R21 K54 ["getSetting"]
  DUPCLOSURE R23 K55 [PROTO_11]
  SETTABLEKS R23 R21 K56 ["toggle"]
  DUPCLOSURE R23 K57 [PROTO_12]
  SETTABLEKS R23 R21 K58 ["enable"]
  DUPCLOSURE R23 K59 [PROTO_13]
  SETTABLEKS R23 R21 K60 ["disable"]
  DUPCLOSURE R23 K61 [PROTO_14]
  SETTABLEKS R23 R21 K62 ["resume"]
  DUPCLOSURE R23 K63 [PROTO_15]
  SETTABLEKS R23 R21 K64 ["pause"]
  DUPCLOSURE R23 K65 [PROTO_16]
  SETTABLEKS R23 R21 K66 ["destroy"]
  DUPCLOSURE R23 K67 [PROTO_17]
  SETTABLEKS R23 R21 K68 ["setRoot"]
  DUPCLOSURE R23 K69 [PROTO_18]
  SETTABLEKS R23 R21 K70 ["getRoot"]
  DUPCLOSURE R23 K71 [PROTO_19]
  SETTABLEKS R23 R21 K72 ["setPluginWidth"]
  DUPCLOSURE R23 K73 [PROTO_20]
  SETTABLEKS R23 R21 K74 ["getPluginWidth"]
  DUPCLOSURE R23 K75 [PROTO_21]
  CAPTURE VAL R19
  SETTABLEKS R23 R21 K76 ["getShouldBeCompact"]
  RETURN R21 1
