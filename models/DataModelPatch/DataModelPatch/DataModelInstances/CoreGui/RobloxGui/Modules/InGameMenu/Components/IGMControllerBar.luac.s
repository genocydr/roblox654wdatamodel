PROTO_0:
  GETUPVAL R3 0
  NAMECALL R1 R0 K0 ["getHints"]
  CALL R1 2 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["setControllerBarHeight"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["ControllerBarHeight"]
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["setControllerBarHeight"]
  LOADN R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  NAMECALL R1 R0 K0 ["getHints"]
  CALL R1 2 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["setControllerBarHeight"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["ControllerBarHeight"]
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["setControllerBarHeight"]
  LOADN R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setControllerBarHeight"]
  LOADN R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["inputType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["InputType"]
  GETTABLEKS R3 R4 K3 ["Gamepad"]
  JUMPIFNOTEQ R2 R3 [+100]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["respawnDialogOpen"]
  JUMPIFNOT R2 [+28]
  DUPTABLE R2 K7 [{"leftHint", "rightHints"}]
  DUPTABLE R3 K10 [{"text", "keyCode"}]
  GETTABLEKS R4 R1 K11 ["cancel"]
  SETTABLEKS R4 R3 K8 ["text"]
  GETIMPORT R4 K15 [Enum.KeyCode.ButtonB]
  SETTABLEKS R4 R3 K9 ["keyCode"]
  SETTABLEKS R3 R2 K5 ["leftHint"]
  NEWTABLE R3 0 1
  DUPTABLE R4 K10 [{"text", "keyCode"}]
  GETTABLEKS R5 R1 K16 ["respawn"]
  SETTABLEKS R5 R4 K8 ["text"]
  GETIMPORT R5 K18 [Enum.KeyCode.ButtonA]
  SETTABLEKS R5 R4 K9 ["keyCode"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K6 ["rightHints"]
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K19 ["isMenuOpen"]
  JUMPIFNOT R2 [+61]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K20 ["currentPage"]
  JUMPIFNOTEQKS R2 K21 ["MainPage"] [+56]
  LOADNIL R2
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K22 ["isMainPageMoreMenuOpen"]
  JUMPIF R3 [+3]
  GETTABLEKS R2 R1 K23 ["openMoreMenu"]
  JUMP [+2]
  GETTABLEKS R2 R1 K24 ["closeMoreMenu"]
  DUPTABLE R3 K7 [{"leftHint", "rightHints"}]
  DUPTABLE R4 K10 [{"text", "keyCode"}]
  GETTABLEKS R5 R1 K25 ["back"]
  SETTABLEKS R5 R4 K8 ["text"]
  GETIMPORT R5 K15 [Enum.KeyCode.ButtonB]
  SETTABLEKS R5 R4 K9 ["keyCode"]
  SETTABLEKS R4 R3 K5 ["leftHint"]
  NEWTABLE R4 0 3
  DUPTABLE R5 K10 [{"text", "keyCode"}]
  SETTABLEKS R2 R5 K8 ["text"]
  GETIMPORT R6 K27 [Enum.KeyCode.ButtonL3]
  SETTABLEKS R6 R5 K9 ["keyCode"]
  DUPTABLE R6 K10 [{"text", "keyCode"}]
  GETTABLEKS R7 R1 K28 ["respawnCharacter"]
  SETTABLEKS R7 R6 K8 ["text"]
  GETIMPORT R7 K30 [Enum.KeyCode.ButtonY]
  SETTABLEKS R7 R6 K9 ["keyCode"]
  DUPTABLE R7 K10 [{"text", "keyCode"}]
  GETTABLEKS R8 R1 K31 ["leave"]
  SETTABLEKS R8 R7 K8 ["text"]
  GETIMPORT R8 K33 [Enum.KeyCode.ButtonX]
  SETTABLEKS R8 R7 K9 ["keyCode"]
  SETLIST R4 R5 3 [1]
  SETTABLEKS R4 R3 K6 ["rightHints"]
  RETURN R3 1
  LOADNIL R2
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["getHints"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  DUPTABLE R2 K6 [{"isMenuOpen", "isMainPageMoreMenuOpen", "currentPage", "respawnDialogOpen", "inputType", "screenSize"}]
  GETTABLEKS R3 R0 K0 ["isMenuOpen"]
  SETTABLEKS R3 R2 K0 ["isMenuOpen"]
  GETTABLEKS R3 R0 K1 ["isMainPageMoreMenuOpen"]
  SETTABLEKS R3 R2 K1 ["isMainPageMoreMenuOpen"]
  GETTABLEKS R3 R0 K7 ["menuPage"]
  SETTABLEKS R3 R2 K2 ["currentPage"]
  GETTABLEKS R4 R0 K8 ["respawn"]
  GETTABLEKS R3 R4 K9 ["dialogOpen"]
  SETTABLEKS R3 R2 K3 ["respawnDialogOpen"]
  GETTABLEKS R4 R0 K10 ["displayOptions"]
  GETTABLEKS R3 R4 K4 ["inputType"]
  SETTABLEKS R3 R2 K4 ["inputType"]
  GETTABLEKS R3 R0 K5 ["screenSize"]
  SETTABLEKS R3 R2 K5 ["screenSize"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"setControllerBarHeight"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setControllerBarHeight"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["t"]
  GETTABLEKS R3 R1 K9 ["Roact"]
  GETTABLEKS R4 R1 K10 ["RoactRodux"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R8 R5 K12 ["App"]
  GETTABLEKS R7 R8 K13 ["Bar"]
  GETTABLEKS R6 R7 K14 ["ControllerBar"]
  GETIMPORT R7 K5 [require]
  GETIMPORT R12 K16 [script]
  GETTABLEKS R11 R12 K17 ["Parent"]
  GETTABLEKS R10 R11 K17 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Actions"]
  GETTABLEKS R8 R9 K19 ["SetControllerBarHeight"]
  CALL R7 1 1
  GETIMPORT R10 K16 [script]
  GETTABLEKS R9 R10 K17 ["Parent"]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R8 K20 ["Localization"]
  GETTABLEKS R10 R11 K21 ["withLocalization"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R15 K16 [script]
  GETTABLEKS R14 R15 K17 ["Parent"]
  GETTABLEKS R13 R14 K17 ["Parent"]
  GETTABLEKS R12 R13 K22 ["Resources"]
  GETTABLEKS R11 R12 K23 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K24 ["PureComponent"]
  LOADK R13 K25 ["IGMControllerBar"]
  NAMECALL R11 R11 K26 ["extend"]
  CALL R11 2 1
  DUPTABLE R12 K34 [{"cancel", "respawn", "openMoreMenu", "closeMoreMenu", "back", "respawnCharacter", "leave"}]
  LOADK R13 K35 ["CoreScripts.InGameMenu.ControllerBar.Cancel"]
  SETTABLEKS R13 R12 K27 ["cancel"]
  LOADK R13 K36 ["CoreScripts.InGameMenu.ControllerBar.Respawn"]
  SETTABLEKS R13 R12 K28 ["respawn"]
  LOADK R13 K37 ["CoreScripts.InGameMenu.ControllerBar.OpenMoreMenu"]
  SETTABLEKS R13 R12 K29 ["openMoreMenu"]
  LOADK R13 K38 ["CoreScripts.InGameMenu.ControllerBar.CloseMoreMenu"]
  SETTABLEKS R13 R12 K30 ["closeMoreMenu"]
  LOADK R13 K39 ["CoreScripts.InGameMenu.ControllerBar.Back"]
  SETTABLEKS R13 R12 K31 ["back"]
  LOADK R13 K40 ["CoreScripts.InGameMenu.ControllerBar.RespawnCharacter"]
  SETTABLEKS R13 R12 K32 ["respawnCharacter"]
  LOADK R13 K41 ["CoreScripts.InGameMenu.ControllerBar.Leave"]
  SETTABLEKS R13 R12 K33 ["leave"]
  GETTABLEKS R13 R2 K42 ["strictInterface"]
  DUPTABLE R14 K50 [{"isMenuOpen", "isMainPageMoreMenuOpen", "currentPage", "respawnDialogOpen", "inputType", "screenSize", "setControllerBarHeight"}]
  GETTABLEKS R15 R2 K51 ["boolean"]
  SETTABLEKS R15 R14 K43 ["isMenuOpen"]
  GETTABLEKS R15 R2 K51 ["boolean"]
  SETTABLEKS R15 R14 K44 ["isMainPageMoreMenuOpen"]
  GETTABLEKS R15 R2 K52 ["string"]
  SETTABLEKS R15 R14 K45 ["currentPage"]
  GETTABLEKS R15 R2 K51 ["boolean"]
  SETTABLEKS R15 R14 K46 ["respawnDialogOpen"]
  GETTABLEKS R15 R2 K52 ["string"]
  SETTABLEKS R15 R14 K47 ["inputType"]
  GETTABLEKS R15 R2 K53 ["Vector2"]
  SETTABLEKS R15 R14 K48 ["screenSize"]
  GETTABLEKS R15 R2 K54 ["callback"]
  SETTABLEKS R15 R14 K49 ["setControllerBarHeight"]
  CALL R13 1 1
  SETTABLEKS R13 R11 K55 ["validateProps"]
  DUPCLOSURE R13 K56 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R13 R11 K57 ["didMount"]
  DUPCLOSURE R13 K58 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R13 R11 K59 ["didUpdate"]
  DUPCLOSURE R13 K60 [PROTO_2]
  SETTABLEKS R13 R11 K61 ["willUnmount"]
  DUPCLOSURE R13 K62 [PROTO_3]
  CAPTURE VAL R10
  SETTABLEKS R13 R11 K63 ["getHints"]
  DUPCLOSURE R13 K64 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R13 R11 K65 ["render"]
  DUPCLOSURE R13 K66 [PROTO_6]
  GETTABLEKS R14 R4 K67 ["connect"]
  MOVE R15 R13
  DUPCLOSURE R16 K68 [PROTO_8]
  CAPTURE VAL R7
  CALL R14 2 1
  MOVE R15 R11
  CALL R14 1 -1
  RETURN R14 -1
