PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"leftHint", "rightHints"}]
  DUPTABLE R4 K6 [{"text", "keyCode"}]
  GETTABLEKS R5 R0 K7 ["cancel"]
  SETTABLEKS R5 R4 K4 ["text"]
  GETIMPORT R5 K11 [Enum.KeyCode.ButtonB]
  SETTABLEKS R5 R4 K5 ["keyCode"]
  SETTABLEKS R4 R3 K1 ["leftHint"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K6 [{"text", "keyCode"}]
  GETTABLEKS R6 R0 K12 ["respawn"]
  SETTABLEKS R6 R5 K4 ["text"]
  GETIMPORT R6 K14 [Enum.KeyCode.ButtonA]
  SETTABLEKS R6 R5 K5 ["keyCode"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K2 ["rightHints"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["inputType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["InputType"]
  GETTABLEKS R2 R3 K3 ["Gamepad"]
  JUMPIFNOTEQ R1 R2 [+15]
  GETUPVAL R1 1
  DUPTABLE R2 K6 [{"cancel", "respawn"}]
  LOADK R3 K7 ["CoreScripts.InGameMenu.ControllerBar.Cancel"]
  SETTABLEKS R3 R2 K4 ["cancel"]
  LOADK R3 K8 ["CoreScripts.InGameMenu.ControllerBar.Respawn"]
  SETTABLEKS R3 R2 K5 ["respawn"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
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
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["t"]
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K11 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K13 ["IGMControllerBar2"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R4 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R4 K16 ["Localization"]
  GETTABLEKS R8 R9 K17 ["withLocalization"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K18 ["PureComponent"]
  LOADK R10 K19 ["IGMRespawnControllerBar"]
  NAMECALL R8 R8 K20 ["extend"]
  CALL R8 2 1
  GETTABLEKS R9 R3 K21 ["strictInterface"]
  DUPTABLE R10 K23 [{"inputType"}]
  GETTABLEKS R11 R3 K24 ["string"]
  SETTABLEKS R11 R10 K22 ["inputType"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K25 ["validateProps"]
  DUPCLOSURE R9 K26 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K27 ["render"]
  RETURN R8 1
