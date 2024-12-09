PROTO_0:
  NEWTABLE R1 0 1
  DUPTABLE R2 K2 [{"text", "keyCode"}]
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["confirm"]
  NAMECALL R3 R3 K4 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["text"]
  GETIMPORT R3 K8 [Enum.KeyCode.ButtonA]
  SETTABLEKS R3 R2 K1 ["keyCode"]
  SETLIST R1 R2 1 [1]
  GETTABLEKS R3 R0 K9 ["props"]
  GETTABLEKS R2 R3 K10 ["showTryOn"]
  JUMPIFNOT R2 [+33]
  LOADN R4 1
  DUPTABLE R5 K2 [{"text", "keyCode"}]
  GETTABLEKS R8 R0 K9 ["props"]
  GETTABLEKS R7 R8 K11 ["tryingOn"]
  JUMPIFNOT R7 [+8]
  GETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["takeOff"]
  NAMECALL R6 R6 K4 ["FormatByKey"]
  CALL R6 2 1
  JUMPIF R6 [+7]
  GETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K13 ["tryOn"]
  NAMECALL R6 R6 K4 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["text"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K1 ["keyCode"]
  FASTCALL3 TABLE_INSERT R1 R4 R5
  MOVE R3 R1
  GETIMPORT R2 K16 [table.insert]
  CALL R2 3 0
  GETTABLEKS R3 R0 K9 ["props"]
  GETTABLEKS R2 R3 K17 ["showFavorite"]
  JUMPIFNOT R2 [+33]
  LOADN R4 1
  DUPTABLE R5 K2 [{"text", "keyCode"}]
  GETTABLEKS R8 R0 K9 ["props"]
  GETTABLEKS R7 R8 K18 ["isFavorited"]
  JUMPIFNOT R7 [+8]
  GETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K19 ["unfavorite"]
  NAMECALL R6 R6 K4 ["FormatByKey"]
  CALL R6 2 1
  JUMPIF R6 [+7]
  GETUPVAL R6 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K20 ["favorite"]
  NAMECALL R6 R6 K4 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["text"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K1 ["keyCode"]
  FASTCALL3 TABLE_INSERT R1 R4 R5
  MOVE R3 R1
  GETIMPORT R2 K16 [table.insert]
  CALL R2 3 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K21 ["createElement"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K22 ["Portal"]
  DUPTABLE R4 K24 [{"target"}]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K23 ["target"]
  DUPTABLE R5 K26 [{"InspectAndBuyControllerBar"}]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K21 ["createElement"]
  LOADK R7 K27 ["ScreenGui"]
  DUPTABLE R8 K30 [{"DisplayOrder", "ZIndexBehavior"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K28 ["DisplayOrder"]
  GETIMPORT R9 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K29 ["ZIndexBehavior"]
  DUPTABLE R9 K34 [{"ControllerBar"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K37 [{"leftHint", "rightHints"}]
  DUPTABLE R13 K2 [{"text", "keyCode"}]
  GETUPVAL R14 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K38 ["back"]
  NAMECALL R14 R14 K4 ["FormatByKey"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K0 ["text"]
  GETIMPORT R14 K40 [Enum.KeyCode.ButtonB]
  SETTABLEKS R14 R13 K1 ["keyCode"]
  SETTABLEKS R13 R12 K35 ["leftHint"]
  SETTABLEKS R1 R12 K36 ["rightHints"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K33 ["ControllerBar"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K25 ["InspectAndBuyControllerBar"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R1 K10 ["RobloxGui"]
  GETTABLEKS R6 R7 K11 ["Modules"]
  GETTABLEKS R5 R6 K12 ["RobloxTranslator"]
  CALL R4 1 1
  GETTABLEKS R7 R3 K13 ["App"]
  GETTABLEKS R6 R7 K14 ["Bar"]
  GETTABLEKS R5 R6 K15 ["ControllerBar"]
  GETIMPORT R6 K6 [require]
  GETIMPORT R10 K17 [script]
  GETTABLEKS R9 R10 K18 ["Parent"]
  GETTABLEKS R8 R9 K19 ["Common"]
  GETTABLEKS R7 R8 K20 ["ControllerShortcutKeycodes"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K21 ["Favorite"]
  GETTABLEKS R8 R6 K22 ["TryOn"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K7 ["Packages"]
  GETTABLEKS R10 R11 K23 ["t"]
  CALL R9 1 1
  DUPTABLE R10 K30 [{"back", "confirm", "favorite", "unfavorite", "tryOn", "takeOff"}]
  LOADK R11 K31 ["CoreScripts.TopBar.Back"]
  SETTABLEKS R11 R10 K24 ["back"]
  LOADK R11 K32 ["InGame.InspectMenu.Action.Confirm"]
  SETTABLEKS R11 R10 K25 ["confirm"]
  LOADK R11 K33 ["InGame.InspectMenu.Action.Favorite"]
  SETTABLEKS R11 R10 K26 ["favorite"]
  LOADK R11 K34 ["InGame.InspectMenu.Action.Unfavorite"]
  SETTABLEKS R11 R10 K27 ["unfavorite"]
  LOADK R11 K35 ["InGame.InspectMenu.Action.TryOn"]
  SETTABLEKS R11 R10 K28 ["tryOn"]
  LOADK R11 K36 ["InGame.InspectMenu.Action.TakeOff"]
  SETTABLEKS R11 R10 K29 ["takeOff"]
  GETTABLEKS R11 R2 K37 ["PureComponent"]
  LOADK R13 K38 ["InspectAndBuyControllerBar"]
  NAMECALL R11 R11 K39 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R9 K40 ["strictInterface"]
  DUPTABLE R13 K44 [{"showTryOn", "showFavorite", "isFavorited"}]
  GETTABLEKS R14 R9 K45 ["boolean"]
  SETTABLEKS R14 R13 K41 ["showTryOn"]
  GETTABLEKS R14 R9 K45 ["boolean"]
  SETTABLEKS R14 R13 K42 ["showFavorite"]
  GETTABLEKS R14 R9 K45 ["boolean"]
  SETTABLEKS R14 R13 K43 ["isFavorited"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K46 ["validateProps"]
  DUPCLOSURE R12 K47 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K48 ["render"]
  RETURN R11 1
