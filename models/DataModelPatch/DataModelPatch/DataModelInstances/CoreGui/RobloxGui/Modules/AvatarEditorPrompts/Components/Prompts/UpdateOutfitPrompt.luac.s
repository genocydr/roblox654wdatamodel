PROTO_0:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["showCustomOutfitNames"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R2 0
  LOADK R4 K2 ["CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptText"]
  DUPTABLE R5 K4 [{"RBX_NAME"}]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K5 ["outfitName"]
  SETTABLEKS R6 R5 K3 ["RBX_NAME"]
  NAMECALL R2 R2 K6 ["FormatByKey"]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+6]
  GETUPVAL R2 0
  LOADK R4 K7 ["CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptTextNoOutfitName"]
  NAMECALL R2 R2 K6 ["FormatByKey"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K14 [{"humanoidDescription", "rigType", "title", "bodyText", "buttonStackInfo"}]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K9 ["humanoidDescription"]
  SETTABLEKS R5 R4 K9 ["humanoidDescription"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K10 ["rigType"]
  SETTABLEKS R5 R4 K10 ["rigType"]
  GETUPVAL R5 0
  LOADK R7 K15 ["CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptTitle"]
  NAMECALL R5 R5 K6 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["title"]
  SETTABLEKS R1 R4 K12 ["bodyText"]
  DUPTABLE R5 K17 [{"buttons"}]
  NEWTABLE R6 0 2
  DUPTABLE R7 K19 [{"props", "isDefaultChild"}]
  DUPTABLE R8 K22 [{"onActivated", "text"}]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K23 ["signalUpdateOutfitPermissionDenied"]
  SETTABLEKS R9 R8 K20 ["onActivated"]
  GETUPVAL R9 0
  LOADK R11 K24 ["CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptNo"]
  NAMECALL R9 R9 K6 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["text"]
  SETTABLEKS R8 R7 K0 ["props"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["isDefaultChild"]
  DUPTABLE R8 K26 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K27 ["PrimarySystem"]
  SETTABLEKS R9 R8 K25 ["buttonType"]
  DUPTABLE R9 K22 [{"onActivated", "text"}]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K28 ["performUpdateOutfit"]
  SETTABLEKS R10 R9 K20 ["onActivated"]
  GETUPVAL R10 0
  LOADK R12 K29 ["CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptYes"]
  NAMECALL R10 R10 K6 ["FormatByKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["text"]
  SETTABLEKS R9 R8 K0 ["props"]
  LOADB R9 0
  SETTABLEKS R9 R8 K18 ["isDefaultChild"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K16 ["buttons"]
  SETTABLEKS R5 R4 K13 ["buttonStackInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  DUPTABLE R1 K4 [{"screenSize", "humanoidDescription", "rigType", "outfitName"}]
  GETTABLEKS R2 R0 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K5 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["humanoidDescription"]
  SETTABLEKS R2 R1 K1 ["humanoidDescription"]
  GETTABLEKS R3 R0 K5 ["promptInfo"]
  GETTABLEKS R2 R3 K2 ["rigType"]
  SETTABLEKS R2 R1 K2 ["rigType"]
  GETTABLEKS R3 R0 K5 ["promptInfo"]
  GETTABLEKS R2 R3 K3 ["outfitName"]
  SETTABLEKS R2 R1 K3 ["outfitName"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  DUPTABLE R1 K2 [{"signalUpdateOutfitPermissionDenied", "performUpdateOutfit"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["signalUpdateOutfitPermissionDenied"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  ORK R2 R3 K3 []
  SETTABLEKS R2 R1 K1 ["performUpdateOutfit"]
  RETURN R1 1

PROTO_5:
  DUPTABLE R2 K1 [{"showCustomOutfitNames"}]
  GETTABLEKS R3 R0 K2 ["getCustomOutfitNames"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["showCustomOutfitNames"]
  RETURN R2 1

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
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K7 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R9 R5 K12 ["App"]
  GETTABLEKS R8 R9 K13 ["Button"]
  GETTABLEKS R7 R8 K14 ["Enum"]
  GETTABLEKS R6 R7 K15 ["ButtonType"]
  LOADK R9 K16 ["RobloxGui"]
  NAMECALL R7 R1 K17 ["WaitForChild"]
  CALL R7 2 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R7 K18 ["Modules"]
  GETTABLEKS R9 R10 K19 ["RobloxTranslator"]
  CALL R8 1 1
  GETIMPORT R11 K21 [script]
  GETTABLEKS R10 R11 K22 ["Parent"]
  GETTABLEKS R9 R10 K22 ["Parent"]
  GETTABLEKS R10 R9 K22 ["Parent"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R10 K23 ["Thunks"]
  GETTABLEKS R12 R13 K24 ["SignalUpdateOutfitPermissionDenied"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R10 K23 ["Thunks"]
  GETTABLEKS R13 R14 K25 ["PerformUpdateOutfit"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R9 K26 ["Prompts"]
  GETTABLEKS R14 R15 K27 ["PromptWithAvatarViewport"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R15 R10 K28 ["AvatarEditorPromptsPolicy"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K29 ["PureComponent"]
  LOADK R17 K30 ["UpdateOutfitPrompt"]
  NAMECALL R15 R15 K31 ["extend"]
  CALL R15 2 1
  GETTABLEKS R16 R4 K32 ["strictInterface"]
  DUPTABLE R17 K40 [{"screenSize", "humanoidDescription", "rigType", "outfitName", "signalUpdateOutfitPermissionDenied", "performUpdateOutfit", "showCustomOutfitNames"}]
  GETTABLEKS R18 R4 K41 ["Vector2"]
  SETTABLEKS R18 R17 K33 ["screenSize"]
  GETTABLEKS R18 R4 K42 ["instanceOf"]
  LOADK R19 K43 ["HumanoidDescription"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K34 ["humanoidDescription"]
  GETTABLEKS R18 R4 K44 ["enum"]
  GETIMPORT R19 K46 [Enum.HumanoidRigType]
  CALL R18 1 1
  SETTABLEKS R18 R17 K35 ["rigType"]
  GETTABLEKS R18 R4 K47 ["string"]
  SETTABLEKS R18 R17 K36 ["outfitName"]
  GETTABLEKS R18 R4 K48 ["callback"]
  SETTABLEKS R18 R17 K37 ["signalUpdateOutfitPermissionDenied"]
  GETTABLEKS R18 R4 K48 ["callback"]
  SETTABLEKS R18 R17 K38 ["performUpdateOutfit"]
  GETTABLEKS R18 R4 K49 ["boolean"]
  SETTABLEKS R18 R17 K39 ["showCustomOutfitNames"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K50 ["validateProps"]
  DUPCLOSURE R16 K51 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R6
  SETTABLEKS R16 R15 K52 ["render"]
  DUPCLOSURE R16 K53 [PROTO_1]
  DUPCLOSURE R17 K54 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R12
  GETTABLEKS R18 R3 K55 ["connect"]
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 1
  MOVE R15 R18
  GETTABLEKS R18 R14 K55 ["connect"]
  DUPCLOSURE R19 K56 [PROTO_5]
  CALL R18 1 1
  MOVE R19 R15
  CALL R18 1 1
  MOVE R15 R18
  RETURN R15 1
