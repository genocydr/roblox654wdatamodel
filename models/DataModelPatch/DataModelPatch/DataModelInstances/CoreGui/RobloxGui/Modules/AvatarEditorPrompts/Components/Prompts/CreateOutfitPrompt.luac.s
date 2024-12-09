PROTO_0:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["showCustomOutfitNames"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["createOutfitConfirmed"]
  JUMP [+4]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["performCreateOutfit"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K10 [{"humanoidDescription", "rigType", "title", "bodyText", "buttonStackInfo"}]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["humanoidDescription"]
  SETTABLEKS R5 R4 K5 ["humanoidDescription"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K6 ["rigType"]
  SETTABLEKS R5 R4 K6 ["rigType"]
  GETUPVAL R5 2
  LOADK R7 K11 ["CoreScripts.AvatarEditorPrompts.CreateOutfitPromptTitle"]
  NAMECALL R5 R5 K12 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["title"]
  GETUPVAL R5 2
  LOADK R7 K13 ["CoreScripts.AvatarEditorPrompts.CreateOutfitPromptText"]
  NAMECALL R5 R5 K12 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["bodyText"]
  DUPTABLE R5 K15 [{"buttons"}]
  NEWTABLE R6 0 2
  DUPTABLE R7 K17 [{"props", "isDefaultChild"}]
  DUPTABLE R8 K20 [{"onActivated", "text"}]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K21 ["signalCreateOutfitPermissionDenied"]
  SETTABLEKS R9 R8 K18 ["onActivated"]
  GETUPVAL R9 2
  LOADK R11 K22 ["CoreScripts.AvatarEditorPrompts.CreateOutfitPromptNo"]
  NAMECALL R9 R9 K12 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["text"]
  SETTABLEKS R8 R7 K0 ["props"]
  LOADB R8 1
  SETTABLEKS R8 R7 K16 ["isDefaultChild"]
  DUPTABLE R8 K24 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K25 ["PrimarySystem"]
  SETTABLEKS R9 R8 K23 ["buttonType"]
  DUPTABLE R9 K20 [{"onActivated", "text"}]
  SETTABLEKS R1 R9 K18 ["onActivated"]
  GETUPVAL R10 2
  LOADK R12 K26 ["CoreScripts.AvatarEditorPrompts.CreateOutfitPromptYes"]
  NAMECALL R10 R10 K12 ["FormatByKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["text"]
  SETTABLEKS R9 R8 K0 ["props"]
  LOADB R9 0
  SETTABLEKS R9 R8 K16 ["isDefaultChild"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K14 ["buttons"]
  SETTABLEKS R5 R4 K9 ["buttonStackInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  DUPTABLE R1 K2 [{"humanoidDescription", "rigType"}]
  GETTABLEKS R3 R0 K3 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["humanoidDescription"]
  SETTABLEKS R2 R1 K0 ["humanoidDescription"]
  GETTABLEKS R3 R0 K3 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["rigType"]
  SETTABLEKS R2 R1 K1 ["rigType"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 [""]
  CALL R1 1 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_5:
  DUPTABLE R1 K3 [{"signalCreateOutfitPermissionDenied", "createOutfitConfirmed", "performCreateOutfit"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["signalCreateOutfitPermissionDenied"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["createOutfitConfirmed"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["performCreateOutfit"]
  RETURN R1 1

PROTO_6:
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
  GETTABLEKS R13 R9 K23 ["Prompts"]
  GETTABLEKS R12 R13 K24 ["PromptWithAvatarViewport"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R10 K25 ["Thunks"]
  GETTABLEKS R13 R14 K26 ["SignalCreateOutfitPermissionDenied"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R10 K27 ["Actions"]
  GETTABLEKS R14 R15 K28 ["CreateOutfitConfirmed"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R10 K25 ["Thunks"]
  GETTABLEKS R15 R16 K29 ["PerformCreateOutfit"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R10 K30 ["AvatarEditorPromptsPolicy"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K31 ["PureComponent"]
  LOADK R18 K32 ["CreateOutfitPrompt"]
  NAMECALL R16 R16 K33 ["extend"]
  CALL R16 2 1
  GETTABLEKS R17 R4 K34 ["strictInterface"]
  DUPTABLE R18 K41 [{"humanoidDescription", "rigType", "createOutfitConfirmed", "signalCreateOutfitPermissionDenied", "performCreateOutfit", "showCustomOutfitNames"}]
  GETTABLEKS R19 R4 K42 ["instanceOf"]
  LOADK R20 K43 ["HumanoidDescription"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K35 ["humanoidDescription"]
  GETTABLEKS R19 R4 K44 ["enum"]
  GETIMPORT R20 K46 [Enum.HumanoidRigType]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["rigType"]
  GETTABLEKS R19 R4 K47 ["callback"]
  SETTABLEKS R19 R18 K37 ["createOutfitConfirmed"]
  GETTABLEKS R19 R4 K47 ["callback"]
  SETTABLEKS R19 R18 K38 ["signalCreateOutfitPermissionDenied"]
  GETTABLEKS R19 R4 K47 ["callback"]
  SETTABLEKS R19 R18 K39 ["performCreateOutfit"]
  GETTABLEKS R19 R4 K48 ["boolean"]
  SETTABLEKS R19 R18 K40 ["showCustomOutfitNames"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K49 ["validateProps"]
  DUPCLOSURE R17 K50 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R17 R16 K51 ["render"]
  DUPCLOSURE R17 K52 [PROTO_1]
  DUPCLOSURE R18 K53 [PROTO_5]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  GETTABLEKS R19 R3 K54 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  GETTABLEKS R19 R15 K54 ["connect"]
  DUPCLOSURE R20 K55 [PROTO_6]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  RETURN R16 1
