PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Material"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K2 ["Material"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R4 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R3 R4 K1 ["MaterialVariant"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R2 R3 K1 ["MaterialVariant"]
  JUMP [+4]
  GETTABLEKS R3 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R2 R3 K2 ["Material"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["Dictionary"]
  GETTABLEKS R3 R4 K4 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K6 [{"Materials", "Material"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Dictionary"]
  GETTABLEKS R6 R7 K4 ["join"]
  GETTABLEKS R7 R0 K5 ["Materials"]
  NEWTABLE R8 1 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["None"]
  SETTABLE R9 R8 R2
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Materials"]
  GETUPVAL R7 1
  GETTABLEKS R9 R0 K5 ["Materials"]
  GETTABLE R8 R9 R2
  GETTABLEKS R9 R0 K2 ["Material"]
  CALL R7 2 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["None"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["Material"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"ExpandedPane"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["ExpandedPane"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["PaneName"]
  GETTABLEKS R9 R1 K5 ["ExpandedPaneState"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["ExpandedPane"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Material"}]
  GETTABLEKS R5 R1 K2 ["Material"]
  SETTABLEKS R5 R4 K2 ["Material"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"DEPRECATED_ActiveAsTool"}]
  GETTABLEKS R5 R1 K2 ["DEPRECATED_ActiveAsTool"]
  SETTABLEKS R5 R4 K2 ["DEPRECATED_ActiveAsTool"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaterialBrowserLayout"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["MaterialBrowserLayout"]
  GETTABLEKS R7 R1 K2 ["MaterialBrowserLayout"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["MaterialBrowserLayout"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaterialList"}]
  GETTABLEKS R5 R1 K2 ["MaterialList"]
  SETTABLEKS R5 R4 K2 ["MaterialList"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaterialOverride"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["MaterialOverride"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["Material"]
  GETTABLEKS R9 R1 K5 ["Index"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["MaterialOverride"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaterialOverrides"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["MaterialOverrides"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["Material"]
  GETTABLEKS R9 R1 K5 ["Overrides"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["MaterialOverrides"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaterialStatus"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["MaterialStatus"]
  NEWTABLE R7 1 0
  GETTABLEKS R8 R1 K4 ["Material"]
  GETTABLEKS R9 R1 K2 ["MaterialStatus"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["MaterialStatus"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MaterialTileSize"}]
  GETTABLEKS R5 R1 K2 ["MaterialTileSize"]
  SETTABLEKS R5 R4 K2 ["MaterialTileSize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Material"}]
  GETTABLEKS R6 R0 K4 ["Materials"]
  GETTABLEKS R7 R1 K5 ["MaterialVariant"]
  GETTABLE R5 R6 R7
  SETTABLEKS R5 R4 K2 ["Material"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETTABLEKS R4 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R3 R4 K1 ["MaterialVariant"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R2 R3 K1 ["MaterialVariant"]
  JUMP [+4]
  GETTABLEKS R3 R1 K0 ["MaterialWrapper"]
  GETTABLEKS R2 R3 K2 ["Material"]
  GETTABLEKS R3 R0 K2 ["Material"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K6 [{"Materials", "Material"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["Dictionary"]
  GETTABLEKS R7 R8 K4 ["join"]
  GETTABLEKS R8 R0 K5 ["Materials"]
  NEWTABLE R9 1 0
  GETTABLEKS R10 R1 K0 ["MaterialWrapper"]
  SETTABLE R10 R9 R2
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["Materials"]
  JUMPIFNOT R3 [+11]
  GETUPVAL R8 1
  GETTABLEKS R10 R0 K5 ["Materials"]
  GETTABLE R9 R10 R2
  GETTABLEKS R10 R0 K2 ["Material"]
  CALL R8 2 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K0 ["MaterialWrapper"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K2 ["Material"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_13:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"MenuHover"}]
  GETTABLEKS R5 R1 K2 ["MenuHover"]
  SETTABLEKS R5 R4 K2 ["MenuHover"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Path"}]
  GETTABLEKS R5 R1 K2 ["Path"]
  SETTABLEKS R5 R4 K2 ["Path"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Search"}]
  GETTABLEKS R5 R1 K2 ["Search"]
  SETTABLEKS R5 R4 K2 ["Search"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_16:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"ViewType"}]
  GETTABLEKS R5 R1 K2 ["ViewType"]
  SETTABLEKS R5 R4 K2 ["ViewType"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"Use2022Materials"}]
  GETTABLEKS R5 R1 K2 ["Use2022Materials"]
  SETTABLEKS R5 R4 K2 ["Use2022Materials"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K11 ["ClearMaterial"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R4 K12 ["ClearMaterialWrapper"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R4 K13 ["SetExpandedPane"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R4 K14 ["SetMaterial"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R4 K15 ["DEPRECATED_SetMaterialAsTool"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R4 K16 ["SetMaterialBrowserLayout"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R4 K17 ["SetMaterialList"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R4 K18 ["SetMaterialOverride"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R4 K19 ["SetMaterialOverrides"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R4 K20 ["SetMaterialStatus"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R4 K21 ["SetMaterialTileSize"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R4 K22 ["SetMaterialVariant"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R4 K23 ["SetMaterialWrapper"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R4 K24 ["SetMenuHover"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R4 K25 ["SetPath"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R4 K26 ["SetSearch"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R4 K27 ["SetUse2022Materials"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R4 K28 ["SetViewType"]
  CALL R22 1 1
  GETTABLEKS R24 R0 K5 ["Src"]
  GETTABLEKS R23 R24 K29 ["Util"]
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R23 K30 ["CompareMaterials"]
  CALL R24 1 1
  GETTABLEKS R27 R0 K5 ["Src"]
  GETTABLEKS R26 R27 K31 ["Resources"]
  GETTABLEKS R25 R26 K32 ["Constants"]
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R25 K33 ["getSettingsNames"]
  CALL R26 1 1
  GETTABLEKS R28 R0 K5 ["Src"]
  GETTABLEKS R27 R28 K34 ["Flags"]
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R27 K35 ["getFFlagMaterialActionAsTool"]
  CALL R28 1 1
  MOVE R29 R26
  CALL R29 0 1
  NEWTABLE R30 0 0
  GETIMPORT R31 K37 [pairs]
  MOVE R32 R29
  CALL R31 1 3
  FORGPREP_NEXT R31
  LOADB R36 1
  SETTABLE R36 R30 R35
  FORGLOOP R31 2 [-3]
  DUPTABLE R31 K51 [{"DEPRECATED_ActiveAsTool", "ExpandedPane", "MaterialBrowserLayout", "MaterialOverride", "MaterialOverrides", "Materials", "MaterialStatus", "MaterialTileSize", "MenuHover", "Path", "Search", "Use2022Materials", "ViewType"}]
  MOVE R33 R28
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADNIL R32
  JUMP [+1]
  LOADB R32 0
  SETTABLEKS R32 R31 K38 ["DEPRECATED_ActiveAsTool"]
  SETTABLEKS R30 R31 K39 ["ExpandedPane"]
  DUPTABLE R32 K55 [{"BaseShowSideBar", "OverrideShowSideBar", "SideBarWidth"}]
  LOADB R33 1
  SETTABLEKS R33 R32 K52 ["BaseShowSideBar"]
  LOADB R33 0
  SETTABLEKS R33 R32 K53 ["OverrideShowSideBar"]
  LOADN R33 200
  SETTABLEKS R33 R32 K54 ["SideBarWidth"]
  SETTABLEKS R32 R31 K40 ["MaterialBrowserLayout"]
  NEWTABLE R32 0 0
  SETTABLEKS R32 R31 K41 ["MaterialOverride"]
  NEWTABLE R32 0 0
  SETTABLEKS R32 R31 K42 ["MaterialOverrides"]
  NEWTABLE R32 0 0
  SETTABLEKS R32 R31 K43 ["Materials"]
  NEWTABLE R32 0 0
  SETTABLEKS R32 R31 K44 ["MaterialStatus"]
  LOADN R32 130
  SETTABLEKS R32 R31 K45 ["MaterialTileSize"]
  LOADB R32 0
  SETTABLEKS R32 R31 K46 ["MenuHover"]
  NEWTABLE R32 0 0
  SETTABLEKS R32 R31 K47 ["Path"]
  LOADK R32 K56 [""]
  SETTABLEKS R32 R31 K48 ["Search"]
  LOADB R32 0
  SETTABLEKS R32 R31 K49 ["Use2022Materials"]
  LOADK R32 K57 ["Grid"]
  SETTABLEKS R32 R31 K50 ["ViewType"]
  GETTABLEKS R32 R2 K58 ["createReducer"]
  MOVE R33 R31
  NEWTABLE R34 32 0
  GETTABLEKS R35 R5 K59 ["name"]
  DUPCLOSURE R36 K60 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R6 K59 ["name"]
  DUPCLOSURE R36 K61 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R24
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R7 K59 ["name"]
  DUPCLOSURE R36 K62 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R8 K59 ["name"]
  DUPCLOSURE R36 K63 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R9 K59 ["name"]
  MOVE R37 R28
  CALL R37 0 1
  JUMPIFNOT R37 [+2]
  LOADNIL R36
  JUMP [+2]
  DUPCLOSURE R36 K64 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R10 K59 ["name"]
  DUPCLOSURE R36 K65 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R11 K59 ["name"]
  DUPCLOSURE R36 K66 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R12 K59 ["name"]
  DUPCLOSURE R36 K67 [PROTO_7]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R13 K59 ["name"]
  DUPCLOSURE R36 K68 [PROTO_8]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R14 K59 ["name"]
  DUPCLOSURE R36 K69 [PROTO_9]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R15 K59 ["name"]
  DUPCLOSURE R36 K70 [PROTO_10]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R16 K59 ["name"]
  DUPCLOSURE R36 K71 [PROTO_11]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R17 K59 ["name"]
  DUPCLOSURE R36 K72 [PROTO_12]
  CAPTURE VAL R3
  CAPTURE VAL R24
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R18 K59 ["name"]
  DUPCLOSURE R36 K73 [PROTO_13]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R19 K59 ["name"]
  DUPCLOSURE R36 K74 [PROTO_14]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R20 K59 ["name"]
  DUPCLOSURE R36 K75 [PROTO_15]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R22 K59 ["name"]
  DUPCLOSURE R36 K76 [PROTO_16]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R21 K59 ["name"]
  DUPCLOSURE R36 K77 [PROTO_17]
  CAPTURE VAL R3
  SETTABLE R36 R34 R35
  CALL R32 2 1
  RETURN R32 1