PROTO_0:
  GETIMPORT R3 K1 [settings]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["Studio"]
  GETTABLEKS R1 R2 K3 ["Theme"]
  GETTABLEKS R0 R1 K4 ["Name"]
  JUMPIFNOTEQKS R0 K5 ["Light"] [+3]
  GETUPVAL R0 0
  RETURN R0 1
  GETUPVAL R0 1
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["enabled"]
  JUMPIF R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["analytics"]
  LOADK R2 K3 ["PopupOpened"]
  NAMECALL R0 R0 K4 ["report"]
  CALL R0 2 0
  GETUPVAL R0 0
  DUPCLOSURE R2 K5 [PROTO_1]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["analytics"]
  LOADK R3 K4 ["PopupOpened"]
  NAMECALL R1 R1 K5 ["report"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["pluginButtonRef"]
  NAMECALL R2 R2 K1 ["getValue"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["button"]
  SETTABLEKS R0 R1 K3 ["Icon"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectedMaterialIdentifier"}]
  SETTABLEKS R0 R3 K0 ["selectedMaterialIdentifier"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R5 2
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K1 [tostring]
  CALL R4 1 1
  NAMECALL R1 R1 K2 ["getMaterialVariant"]
  CALL R1 3 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R3 3
  GETTABLE R2 R3 R0
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["clearSelectedMaterial"]
  CALL R2 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearSelectedMaterial"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 2
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["studioServices"]
  LOADK R6 K1 ["MaterialService"]
  NAMECALL R4 R4 K2 ["getService"]
  CALL R4 2 1
  GETUPVAL R5 2
  DUPTABLE R7 K4 [{"selectedMaterialIdentifier"}]
  SETTABLEKS R3 R7 K3 ["selectedMaterialIdentifier"]
  NAMECALL R5 R5 K5 ["setState"]
  CALL R5 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["selectedMaterialConnection"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["selectedMaterialConnection"]
  NAMECALL R5 R5 K7 ["Disconnect"]
  CALL R5 1 0
  JUMPIFNOT R2 [+15]
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K8 ["Changed"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  NAMECALL R6 R6 K9 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["selectedMaterialConnection"]
  RETURN R0 0
  GETUPVAL R5 2
  MOVE R8 R0
  NAMECALL R6 R4 K10 ["GetMaterialOverrideChanged"]
  CALL R6 2 1
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U2
  NAMECALL R6 R6 K9 ["Connect"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["selectedMaterialConnection"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedMaterialConnection"]
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedMaterialConnection"]
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["selectedMaterialConnection"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["selectedMaterialIdentifier"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["setButtonIcon"]
  GETIMPORT R5 K6 [settings]
  CALL R5 0 1
  GETTABLEKS R4 R5 K7 ["Studio"]
  GETTABLEKS R3 R4 K8 ["Theme"]
  GETTABLEKS R2 R3 K9 ["Name"]
  JUMPIFNOTEQKS R2 K10 ["Light"] [+3]
  GETUPVAL R1 1
  JUMP [+2]
  GETUPVAL R1 2
  JUMP [0]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"viewType"}]
  SETTABLEKS R0 R3 K0 ["viewType"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["savedFilterChips"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["List"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R1 2
  SETTABLEKS R0 R1 K1 ["savedListCanvasPosition"]
  RETURN R0 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Grid"]
  JUMPIFNOTEQ R1 R2 [+4]
  GETUPVAL R1 2
  SETTABLEKS R0 R1 K3 ["savedGridCanvasPosition"]
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R1 1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["selectedMaterialIdentifier"]
  JUMPIFNOTEQKNIL R0 [+20]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["setButtonIcon"]
  GETIMPORT R5 K4 [settings]
  CALL R5 0 1
  GETTABLEKS R4 R5 K5 ["Studio"]
  GETTABLEKS R3 R4 K6 ["Theme"]
  GETTABLEKS R2 R3 K7 ["Name"]
  JUMPIFNOTEQKS R2 K8 ["Light"] [+3]
  GETUPVAL R1 1
  JUMP [+2]
  GETUPVAL R1 2
  JUMP [0]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isMaterialFillToolEnabled"}]
  SETTABLEKS R0 R3 K0 ["isMaterialFillToolEnabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["pluginButtonRef"]
  DUPTABLE R2 K5 [{"recents", "appliedInPlace", "customMaterials"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["recents"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["appliedInPlace"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["customMaterials"]
  SETTABLEKS R2 R0 K6 ["savedFilterChips"]
  GETIMPORT R2 K9 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["savedListCanvasPosition"]
  GETIMPORT R2 K9 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K11 ["savedGridCanvasPosition"]
  LOADNIL R2
  SETTABLEKS R2 R0 K12 ["selectedMaterialConnection"]
  DUPTABLE R4 K17 [{"enabled", "viewType", "selectedMaterialIdentifier", "isMaterialFillToolEnabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K13 ["enabled"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["Grid"]
  SETTABLEKS R5 R4 K14 ["viewType"]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+4]
  GETIMPORT R6 K22 [Enum.Material.Plastic]
  GETTABLEKS R5 R6 K23 ["Name"]
  SETTABLEKS R5 R4 K15 ["selectedMaterialIdentifier"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADB R5 0
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K16 ["isMaterialFillToolEnabled"]
  NAMECALL R2 R0 K24 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K25 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K26 ["openPopup"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K27 ["setButtonIcon"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K28 ["DEPRECATED_setSelectedMaterial"]
  NEWCLOSURE R2 P4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R0 K29 ["setSelectedMaterial"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R2 R0 K30 ["clearSelectedMaterial"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K31 ["onClose"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K32 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K33 ["setViewType"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K34 ["onFilterChipsUpdate"]
  NEWCLOSURE R2 P10
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K35 ["createOnScrollUpdate"]
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K36 ["Store"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 10
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K37 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K38 ["store"]
  GETUPVAL R4 11
  GETTABLEKS R3 R4 K39 ["Localization"]
  GETTABLEKS R2 R3 K8 ["new"]
  DUPTABLE R3 K44 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  GETUPVAL R4 12
  SETTABLEKS R4 R3 K40 ["stringResourceTable"]
  GETUPVAL R4 13
  SETTABLEKS R4 R3 K41 ["translationResourceTable"]
  LOADK R4 K45 ["MaterialPicker"]
  SETTABLEKS R4 R3 K42 ["pluginName"]
  NEWTABLE R4 1 0
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K46 ["Resources"]
  GETTABLEKS R5 R6 K47 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R6 K48 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R9 14
  GETTABLEKS R8 R9 K46 ["Resources"]
  GETTABLEKS R7 R8 K49 ["SourceStrings"]
  SETTABLEKS R7 R6 K40 ["stringResourceTable"]
  GETUPVAL R9 14
  GETTABLEKS R8 R9 K46 ["Resources"]
  GETTABLEKS R7 R8 K50 ["LocalizedStrings"]
  SETTABLEKS R7 R6 K41 ["translationResourceTable"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K43 ["libraries"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K51 ["localization"]
  GETUPVAL R4 11
  GETTABLEKS R3 R4 K52 ["Analytics"]
  GETTABLEKS R2 R3 K8 ["new"]
  GETUPVAL R3 15
  CALL R2 1 1
  SETTABLEKS R2 R0 K53 ["analytics"]
  GETUPVAL R3 16
  GETTABLEKS R2 R3 K8 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K54 ["studioServices"]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+16]
  GETIMPORT R4 K56 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K57 ["Studio"]
  GETTABLEKS R2 R3 K58 ["ThemeChanged"]
  NEWCLOSURE R4 P11
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NAMECALL R2 R2 K59 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K60 ["themeChangedConnection"]
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R0 K54 ["studioServices"]
  LOADK R5 K61 ["MaterialService"]
  NAMECALL R3 R3 K62 ["getService"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K63 ["MaterialFillToolEnabledChanged"]
  NEWCLOSURE R4 P12
  CAPTURE VAL R0
  NAMECALL R2 R2 K59 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K64 ["materialActionAsToolConnection"]
  GETUPVAL R2 17
  CALL R2 0 1
  SETTABLEKS R2 R0 K65 ["themeTable"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+16]
  GETTABLEKS R1 R0 K0 ["themeChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["selectedMaterialConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["selectedMaterialConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["selectedMaterialConnection"]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K3 ["materialActionAsToolConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+28]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["studioServices"]
  LOADK R2 K1 ["MaterialService"]
  NAMECALL R0 R0 K2 ["getService"]
  CALL R0 2 1
  NAMECALL R1 R0 K3 ["GetIsMaterialActionAsToolEnabled"]
  CALL R1 1 1
  JUMPIFNOT R1 [+17]
  NAMECALL R2 R0 K4 ["ToggleMaterialFillToolEnabled"]
  CALL R2 1 0
  GETUPVAL R2 1
  DUPTABLE R4 K6 [{"isMaterialFillToolEnabled"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["state"]
  GETTABLEKS R6 R7 K5 ["isMaterialFillToolEnabled"]
  NOT R5 R6
  SETTABLEKS R5 R4 K5 ["isMaterialFillToolEnabled"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIFNOT R0 [+71]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["state"]
  GETTABLEKS R0 R1 K9 ["selectedMaterialIdentifier"]
  JUMPIFNOTEQKNIL R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K10 ["openPopup"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["pluginButtonRef"]
  NAMECALL R1 R1 K12 ["getValue"]
  CALL R1 1 1
  GETTABLEKS R0 R1 K13 ["button"]
  LOADB R2 1
  NAMECALL R0 R0 K14 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["state"]
  GETTABLEKS R0 R1 K9 ["selectedMaterialIdentifier"]
  GETUPVAL R1 3
  MOVE R2 R0
  GETUPVAL R3 4
  CALL R1 2 0
  GETUPVAL R1 5
  LOADK R4 K15 ["Applied %* Material to Selection"]
  MOVE R6 R0
  NAMECALL R4 R4 K16 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  NAMECALL R1 R1 K17 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R2 4
  NAMECALL R2 R2 K18 ["Get"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+77]
  GETUPVAL R3 6
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADK R2 K19 ["MaterialVariant"]
  JUMP [+1]
  LOADK R2 K20 ["BaseMaterial"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K21 ["analytics"]
  LOADK R5 K22 ["MaterialApplied"]
  LOADK R6 K23 ["IconButton"]
  MOVE R7 R1
  MOVE R8 R0
  MOVE R9 R2
  NAMECALL R3 R3 K24 ["report"]
  CALL R3 6 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["pluginButtonRef"]
  NAMECALL R1 R1 K12 ["getValue"]
  CALL R1 1 1
  GETTABLEKS R0 R1 K13 ["button"]
  LOADB R2 1
  NAMECALL R0 R0 K14 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["state"]
  GETTABLEKS R0 R1 K9 ["selectedMaterialIdentifier"]
  GETUPVAL R1 3
  MOVE R2 R0
  GETUPVAL R3 4
  CALL R1 2 0
  GETUPVAL R1 5
  LOADK R4 K15 ["Applied %* Material to Selection"]
  MOVE R6 R0
  NAMECALL R4 R4 K16 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  NAMECALL R1 R1 K17 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R2 4
  NAMECALL R2 R2 K18 ["Get"]
  CALL R2 1 1
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+19]
  GETUPVAL R3 6
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADK R2 K19 ["MaterialVariant"]
  JUMP [+1]
  LOADK R2 K20 ["BaseMaterial"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K21 ["analytics"]
  LOADK R5 K22 ["MaterialApplied"]
  LOADK R6 K23 ["IconButton"]
  MOVE R7 R1
  MOVE R8 R0
  MOVE R9 R2
  NAMECALL R3 R3 K24 ["report"]
  CALL R3 6 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  GETTABLEKS R3 R0 K2 ["studioServices"]
  LOADK R5 K3 ["Selection"]
  NAMECALL R3 R3 K4 ["getService"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K2 ["studioServices"]
  LOADK R6 K5 ["ChangeHistoryService"]
  NAMECALL R4 R4 K4 ["getService"]
  CALL R4 2 1
  DUPTABLE R5 K7 [{"Toggle"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K21 [{"Toolbar", "Active", "DropdownActive", "Id", "Title", "Tooltip", "Icon", "OnClick", "OnDropdownClick", "ButtonType", "ClickableWhenViewportHidden", "ref"}]
  SETTABLEKS R1 R8 K9 ["Toolbar"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+7]
  MOVE R9 R2
  JUMPIF R9 [+6]
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K22 ["isMaterialFillToolEnabled"]
  JUMP [+1]
  MOVE R9 R2
  SETTABLEKS R9 R8 K10 ["Active"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  MOVE R9 R2
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K11 ["DropdownActive"]
  LOADK R9 K23 ["MaterialPicker"]
  SETTABLEKS R9 R8 K12 ["Id"]
  GETTABLEKS R9 R0 K24 ["localization"]
  LOADK R11 K25 ["Plugin"]
  LOADK R12 K26 ["Button"]
  NAMECALL R9 R9 K27 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Title"]
  GETTABLEKS R9 R0 K24 ["localization"]
  LOADK R11 K25 ["Plugin"]
  LOADK R12 K28 ["Description"]
  NAMECALL R9 R9 K27 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["Tooltip"]
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOT R10 [+16]
  GETIMPORT R13 K30 [settings]
  CALL R13 0 1
  GETTABLEKS R12 R13 K31 ["Studio"]
  GETTABLEKS R11 R12 K32 ["Theme"]
  GETTABLEKS R10 R11 K33 ["Name"]
  JUMPIFNOTEQKS R10 K34 ["Light"] [+3]
  GETUPVAL R9 4
  JUMP [+4]
  GETUPVAL R9 5
  JUMP [+2]
  JUMP [+1]
  LOADK R9 K35 ["rbxasset://textures/MaterialFramework/PlasticWithBorder.png"]
  SETTABLEKS R9 R8 K15 ["Icon"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE UPVAL U7
  SETTABLEKS R9 R8 K16 ["OnClick"]
  GETTABLEKS R9 R0 K36 ["toggleEnabled"]
  SETTABLEKS R9 R8 K17 ["OnDropdownClick"]
  LOADK R9 K37 ["Dropdown"]
  SETTABLEKS R9 R8 K18 ["ButtonType"]
  LOADB R9 0
  SETTABLEKS R9 R8 K19 ["ClickableWhenViewportHidden"]
  GETTABLEKS R9 R0 K38 ["pluginButtonRef"]
  SETTABLEKS R9 R8 K20 ["ref"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Toggle"]
  RETURN R5 1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setButtonIcon"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_23:
  GETTABLEKS R2 R0 K0 ["pluginButtonRef"]
  NAMECALL R2 R2 K1 ["getValue"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K2 [+5]
  MOVE R4 R2
  LOADK R5 K2 ["PluginButton not initialized"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K13 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose", "PopupTarget"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["CreateWidgetImmediately"]
  GETTABLEKS R7 R0 K14 ["state"]
  GETTABLEKS R6 R7 K15 ["enabled"]
  SETTABLEKS R6 R5 K7 ["Enabled"]
  LOADB R6 0
  SETTABLEKS R6 R5 K8 ["Modal"]
  GETTABLEKS R6 R0 K16 ["localization"]
  LOADK R8 K17 ["Plugin"]
  LOADK R9 K9 ["Title"]
  NAMECALL R6 R6 K18 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["Title"]
  GETTABLEKS R8 R0 K19 ["themeTable"]
  GETTABLEKS R7 R8 K20 ["Popup"]
  GETTABLEKS R6 R7 K10 ["Size"]
  SETTABLEKS R6 R5 K10 ["Size"]
  GETTABLEKS R6 R0 K21 ["onClose"]
  SETTABLEKS R6 R5 K11 ["OnClose"]
  GETTABLEKS R6 R2 K22 ["button"]
  SETTABLEKS R6 R5 K12 ["PopupTarget"]
  DUPTABLE R6 K24 [{"MainView"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K36 [{"plugin", "onClose", "onFilterChipsUpdate", "onMaterialSelected", "onScrollUpdate", "onSnapshotTaken", "savedFilterChips", "savedListCanvasPosition", "savedGridCanvasPosition", "setViewType", "selectedMaterialIdentifier", "viewType"}]
  SETTABLEKS R1 R9 K25 ["plugin"]
  GETTABLEKS R10 R0 K21 ["onClose"]
  SETTABLEKS R10 R9 K21 ["onClose"]
  GETTABLEKS R10 R0 K26 ["onFilterChipsUpdate"]
  SETTABLEKS R10 R9 K26 ["onFilterChipsUpdate"]
  GETUPVAL R11 3
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R0 K37 ["setSelectedMaterial"]
  JUMP [+2]
  GETTABLEKS R10 R0 K38 ["DEPRECATED_setSelectedMaterial"]
  SETTABLEKS R10 R9 K27 ["onMaterialSelected"]
  GETTABLEKS R10 R0 K39 ["createOnScrollUpdate"]
  GETTABLEKS R12 R0 K14 ["state"]
  GETTABLEKS R11 R12 K35 ["viewType"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K28 ["onScrollUpdate"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K29 ["onSnapshotTaken"]
  GETTABLEKS R10 R0 K30 ["savedFilterChips"]
  SETTABLEKS R10 R9 K30 ["savedFilterChips"]
  GETTABLEKS R10 R0 K31 ["savedListCanvasPosition"]
  SETTABLEKS R10 R9 K31 ["savedListCanvasPosition"]
  GETTABLEKS R10 R0 K32 ["savedGridCanvasPosition"]
  SETTABLEKS R10 R9 K32 ["savedGridCanvasPosition"]
  GETTABLEKS R10 R0 K33 ["setViewType"]
  SETTABLEKS R10 R9 K33 ["setViewType"]
  GETTABLEKS R11 R0 K14 ["state"]
  GETTABLEKS R10 R11 K34 ["selectedMaterialIdentifier"]
  SETTABLEKS R10 R9 K34 ["selectedMaterialIdentifier"]
  GETTABLEKS R11 R0 K14 ["state"]
  GETTABLEKS R10 R11 K35 ["viewType"]
  SETTABLEKS R10 R9 K35 ["viewType"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K23 ["MainView"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_24:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_25:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Plugin"]
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["new"]
  GETTABLEKS R9 R0 K6 ["store"]
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETTABLEKS R11 R0 K8 ["themeTable"]
  GETTABLEKS R10 R11 K9 ["createTheme"]
  CALL R10 0 1
  GETTABLEKS R11 R0 K10 ["localization"]
  GETTABLEKS R12 R0 K11 ["analytics"]
  GETTABLEKS R13 R0 K12 ["studioServices"]
  SETLIST R6 R7 7 [1]
  DUPTABLE R7 K15 [{"Toolbar", "Popup"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K19 [{"Title", "RenderButtons"}]
  LOADK R11 K20 ["Edit"]
  SETTABLEKS R11 R10 K17 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K18 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Toolbar"]
  JUMPIFNOT R4 [+5]
  MOVE R10 R3
  NAMECALL R8 R0 K21 ["renderPopup"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["Popup"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["applyToSelectionByIdentifier"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["isMaterialVariantByIdentifier"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Constants"]
  GETTABLEKS R4 R5 K11 ["MATERIAL_VARIANT_APPEARANCE_PROPERTIES"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["MaterialFramework"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Packages"]
  GETTABLEKS R7 R8 K15 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K12 ["Packages"]
  GETTABLEKS R8 R9 K16 ["Rodux"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K17 ["UI"]
  GETTABLEKS R9 R8 K18 ["PluginButton"]
  GETTABLEKS R10 R8 K19 ["PluginToolbar"]
  GETTABLEKS R11 R8 K20 ["Popup"]
  GETTABLEKS R12 R4 K21 ["ContextServices"]
  GETTABLEKS R13 R12 K22 ["Mouse"]
  GETTABLEKS R14 R12 K23 ["Store"]
  GETTABLEKS R16 R5 K24 ["Context"]
  GETTABLEKS R15 R16 K25 ["StudioServices"]
  GETTABLEKS R17 R5 K26 ["Enums"]
  GETTABLEKS R16 R17 K27 ["ViewType"]
  GETTABLEKS R18 R5 K7 ["Util"]
  GETTABLEKS R17 R18 K28 ["parseMaterial"]
  GETTABLEKS R19 R5 K7 ["Util"]
  GETTABLEKS R18 R19 K29 ["getSerializedMaterialIdentifier"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K30 ["Reducers"]
  GETTABLEKS R20 R21 K31 ["MainReducer"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K32 ["Resources"]
  GETTABLEKS R21 R22 K33 ["createAnalyticsHandlers"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K6 ["Src"]
  GETTABLEKS R23 R24 K32 ["Resources"]
  GETTABLEKS R22 R23 K34 ["createThemeTable"]
  CALL R21 1 1
  GETTABLEKS R25 R0 K6 ["Src"]
  GETTABLEKS R24 R25 K32 ["Resources"]
  GETTABLEKS R23 R24 K35 ["Localization"]
  GETTABLEKS R22 R23 K36 ["SourceStrings"]
  GETTABLEKS R26 R0 K6 ["Src"]
  GETTABLEKS R25 R26 K32 ["Resources"]
  GETTABLEKS R24 R25 K35 ["Localization"]
  GETTABLEKS R23 R24 K37 ["LocalizedStrings"]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K6 ["Src"]
  GETTABLEKS R26 R27 K38 ["Flags"]
  GETTABLEKS R25 R26 K39 ["getFFlagDropdownIconCanOpenPlugin"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R28 R0 K6 ["Src"]
  GETTABLEKS R27 R28 K38 ["Flags"]
  GETTABLEKS R26 R27 K40 ["getFFlagMaterialActionAsTool"]
  CALL R25 1 1
  GETTABLEKS R27 R0 K6 ["Src"]
  GETTABLEKS R26 R27 K41 ["Components"]
  GETIMPORT R27 K5 [require]
  GETTABLEKS R28 R26 K42 ["MainView"]
  CALL R27 1 1
  GETTABLEKS R28 R6 K43 ["PureComponent"]
  LOADK R30 K44 ["MainPlugin"]
  NAMECALL R28 R28 K45 ["extend"]
  CALL R28 2 1
  GETIMPORT R29 K48 [string.format]
  LOADK R30 K49 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
  LOADK R31 K50 ["Light"]
  CALL R29 2 1
  GETIMPORT R30 K48 [string.format]
  LOADK R31 K49 ["rbxasset://textures/MaterialFramework/%s/Material.png"]
  LOADK R32 K51 ["Dark"]
  CALL R30 2 1
  DUPCLOSURE R31 K52 [PROTO_0]
  CAPTURE VAL R29
  CAPTURE VAL R30
  DUPCLOSURE R32 K53 [PROTO_18]
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R3
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R7
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R15
  CAPTURE VAL R21
  SETTABLEKS R32 R28 K54 ["init"]
  DUPCLOSURE R32 K55 [PROTO_19]
  CAPTURE VAL R24
  CAPTURE VAL R25
  SETTABLEKS R32 R28 K56 ["willUnmount"]
  DUPCLOSURE R32 K57 [PROTO_21]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R32 R28 K58 ["renderButtons"]
  DUPCLOSURE R32 K59 [PROTO_23]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R27
  CAPTURE VAL R24
  SETTABLEKS R32 R28 K60 ["renderPopup"]
  DUPCLOSURE R32 K61 [PROTO_25]
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R32 R28 K62 ["render"]
  RETURN R28 1