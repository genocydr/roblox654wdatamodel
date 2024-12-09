PROTO_0:
  LOADNIL R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["VREnabled"]
  JUMPIF R2 [+42]
  NEWTABLE R2 0 3
  DUPTABLE R3 K3 [{"text", "keyCode"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["props"]
  GETTABLEKS R5 R6 K5 ["isMainPageMoreMenuOpen"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R0 K6 ["closeMoreMenu"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R0 K7 ["openMoreMenu"]
  SETTABLEKS R4 R3 K1 ["text"]
  GETIMPORT R4 K11 [Enum.KeyCode.ButtonL3]
  SETTABLEKS R4 R3 K2 ["keyCode"]
  DUPTABLE R4 K3 [{"text", "keyCode"}]
  GETTABLEKS R5 R0 K12 ["respawnCharacter"]
  SETTABLEKS R5 R4 K1 ["text"]
  GETIMPORT R5 K14 [Enum.KeyCode.ButtonY]
  SETTABLEKS R5 R4 K2 ["keyCode"]
  DUPTABLE R5 K3 [{"text", "keyCode"}]
  GETTABLEKS R6 R0 K15 ["leave"]
  SETTABLEKS R6 R5 K1 ["text"]
  GETIMPORT R6 K17 [Enum.KeyCode.ButtonX]
  SETTABLEKS R6 R5 K2 ["keyCode"]
  SETLIST R2 R3 3 [1]
  MOVE R1 R2
  JUMP [+23]
  NEWTABLE R2 0 2
  DUPTABLE R3 K3 [{"text", "keyCode"}]
  GETTABLEKS R4 R0 K12 ["respawnCharacter"]
  SETTABLEKS R4 R3 K1 ["text"]
  GETIMPORT R4 K14 [Enum.KeyCode.ButtonY]
  SETTABLEKS R4 R3 K2 ["keyCode"]
  DUPTABLE R4 K3 [{"text", "keyCode"}]
  GETTABLEKS R5 R0 K15 ["leave"]
  SETTABLEKS R5 R4 K1 ["text"]
  GETIMPORT R5 K17 [Enum.KeyCode.ButtonX]
  SETTABLEKS R5 R4 K2 ["keyCode"]
  SETLIST R2 R3 2 [1]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K18 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K21 [{"leftHint", "rightHints"}]
  DUPTABLE R5 K3 [{"text", "keyCode"}]
  GETTABLEKS R6 R0 K22 ["back"]
  SETTABLEKS R6 R5 K1 ["text"]
  GETIMPORT R6 K24 [Enum.KeyCode.ButtonB]
  SETTABLEKS R6 R5 K2 ["keyCode"]
  SETTABLEKS R5 R4 K19 ["leftHint"]
  SETTABLEKS R1 R4 K20 ["rightHints"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["canCaptureFocus"]
  JUMPIFNOT R1 [+25]
  GETUPVAL R1 0
  DUPTABLE R2 K7 [{"openMoreMenu", "closeMoreMenu", "back", "respawnCharacter", "leave"}]
  LOADK R3 K8 ["CoreScripts.InGameMenu.ControllerBar.OpenMoreMenu"]
  SETTABLEKS R3 R2 K2 ["openMoreMenu"]
  LOADK R3 K9 ["CoreScripts.InGameMenu.ControllerBar.CloseMoreMenu"]
  SETTABLEKS R3 R2 K3 ["closeMoreMenu"]
  LOADK R3 K10 ["CoreScripts.InGameMenu.ControllerBar.Back"]
  SETTABLEKS R3 R2 K4 ["back"]
  LOADK R3 K11 ["CoreScripts.InGameMenu.ControllerBar.RespawnCharacter"]
  SETTABLEKS R3 R2 K5 ["respawnCharacter"]
  LOADK R3 K12 ["CoreScripts.InGameMenu.ControllerBar.Leave"]
  SETTABLEKS R3 R2 K6 ["leave"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1
  LOADNIL R1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["VRService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["t"]
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K6 [require]
  GETIMPORT R9 K12 [script]
  GETTABLEKS R8 R9 K13 ["Parent"]
  GETTABLEKS R7 R8 K14 ["IGMControllerBar2"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R5 K15 ["Localization"]
  GETTABLEKS R8 R9 K16 ["withLocalization"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K17 ["PureComponent"]
  LOADK R10 K18 ["IGMMainPageControllerBar"]
  NAMECALL R8 R8 K19 ["extend"]
  CALL R8 2 1
  GETTABLEKS R9 R4 K20 ["strictInterface"]
  DUPTABLE R10 K23 [{"canCaptureFocus", "isMainPageMoreMenuOpen"}]
  GETTABLEKS R11 R4 K24 ["boolean"]
  SETTABLEKS R11 R10 K21 ["canCaptureFocus"]
  GETTABLEKS R11 R4 K24 ["boolean"]
  SETTABLEKS R11 R10 K22 ["isMainPageMoreMenuOpen"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K25 ["validateProps"]
  DUPCLOSURE R9 K26 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K27 ["render"]
  RETURN R8 1
