PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"outfitName"}]
  SETTABLEKS R0 R3 K0 ["outfitName"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["performRenameOutfit"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["outfitName"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R3 K2 [{"outfitName", "alertPosition"}]
  LOADK R4 K3 [""]
  SETTABLEKS R4 R3 K0 ["outfitName"]
  GETIMPORT R4 K6 [UDim2.fromScale]
  LOADK R5 K7 [0.5]
  LOADK R6 K7 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["alertPosition"]
  NAMECALL R1 R0 K8 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["textUpdated"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["confirmRenameOutfit"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["showCustomOutfitNames"]
  JUMPIF R1 [+71]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize", "isMiddleContentFocusable"}]
  GETUPVAL R4 2
  LOADK R6 K10 ["CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptTitle"]
  NAMECALL R4 R4 K11 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["title"]
  GETUPVAL R4 2
  LOADK R6 K12 ["CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptText"]
  NAMECALL R4 R4 K11 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["bodyText"]
  DUPTABLE R4 K14 [{"buttons"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K17 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K18 ["PrimarySystem"]
  SETTABLEKS R7 R6 K15 ["buttonType"]
  DUPTABLE R7 K21 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K22 ["signalRenameOutfitPermissionDenied"]
  SETTABLEKS R8 R7 K19 ["onActivated"]
  GETUPVAL R8 2
  LOADK R10 K23 ["CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptOkay"]
  NAMECALL R8 R8 K11 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["text"]
  SETTABLEKS R7 R6 K0 ["props"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["isDefaultChild"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K13 ["buttons"]
  SETTABLEKS R4 R3 K5 ["buttonStackInfo"]
  GETIMPORT R4 K26 [UDim2.fromScale]
  LOADK R5 K27 [0.5]
  LOADK R6 K27 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["position"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K7 ["screenSize"]
  SETTABLEKS R4 R3 K7 ["screenSize"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["isMiddleContentFocusable"]
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K30 [{"fieldText", "onFieldTextUpdated", "title", "bodyText", "buttonStackInfo"}]
  GETTABLEKS R5 R0 K31 ["state"]
  GETTABLEKS R4 R5 K32 ["outfitName"]
  SETTABLEKS R4 R3 K28 ["fieldText"]
  GETTABLEKS R4 R0 K33 ["textUpdated"]
  SETTABLEKS R4 R3 K29 ["onFieldTextUpdated"]
  GETUPVAL R4 2
  LOADK R6 K34 ["CoreScripts.AvatarEditorPrompts.RenameOutfitNamePromptTitle"]
  NAMECALL R4 R4 K11 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["title"]
  GETUPVAL R4 2
  LOADK R6 K35 ["CoreScripts.AvatarEditorPrompts.RenameOutfitPromptText"]
  DUPTABLE R7 K37 [{"RBX_NAME"}]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K32 ["outfitName"]
  SETTABLEKS R8 R7 K36 ["RBX_NAME"]
  NAMECALL R4 R4 K11 ["FormatByKey"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K4 ["bodyText"]
  DUPTABLE R4 K14 [{"buttons"}]
  NEWTABLE R5 0 2
  DUPTABLE R6 K38 [{"props", "isDefaultChild"}]
  DUPTABLE R7 K21 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K22 ["signalRenameOutfitPermissionDenied"]
  SETTABLEKS R8 R7 K19 ["onActivated"]
  GETUPVAL R8 2
  LOADK R10 K39 ["CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptNo"]
  NAMECALL R8 R8 K11 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["text"]
  SETTABLEKS R7 R6 K0 ["props"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["isDefaultChild"]
  DUPTABLE R7 K17 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["PrimarySystem"]
  SETTABLEKS R8 R7 K15 ["buttonType"]
  DUPTABLE R8 K41 [{"isDisabled", "onActivated", "text"}]
  GETTABLEKS R11 R0 K31 ["state"]
  GETTABLEKS R10 R11 K32 ["outfitName"]
  JUMPIFEQKS R10 K42 [""] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K40 ["isDisabled"]
  GETTABLEKS R9 R0 K43 ["confirmRenameOutfit"]
  SETTABLEKS R9 R8 K19 ["onActivated"]
  GETUPVAL R9 2
  LOADK R11 K44 ["CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptYes"]
  NAMECALL R9 R9 K11 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["text"]
  SETTABLEKS R8 R7 K0 ["props"]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["isDefaultChild"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K13 ["buttons"]
  SETTABLEKS R4 R3 K5 ["buttonStackInfo"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  DUPTABLE R1 K3 [{"outfitId", "outfitName", "screenSize"}]
  GETTABLEKS R3 R0 K4 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["outfitId"]
  SETTABLEKS R2 R1 K0 ["outfitId"]
  GETTABLEKS R3 R0 K4 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["outfitName"]
  SETTABLEKS R2 R1 K1 ["outfitName"]
  GETTABLEKS R2 R0 K2 ["screenSize"]
  SETTABLEKS R2 R1 K2 ["screenSize"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_7:
  DUPTABLE R1 K2 [{"signalRenameOutfitPermissionDenied", "performRenameOutfit"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["signalRenameOutfitPermissionDenied"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["performRenameOutfit"]
  RETURN R1 1

PROTO_8:
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
  GETTABLEKS R10 R5 K12 ["App"]
  GETTABLEKS R9 R10 K16 ["Dialog"]
  GETTABLEKS R8 R9 K17 ["Alert"]
  GETTABLEKS R7 R8 K18 ["InteractiveAlert"]
  LOADK R10 K19 ["RobloxGui"]
  NAMECALL R8 R1 K20 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R8 K21 ["Modules"]
  GETTABLEKS R10 R11 K22 ["RobloxTranslator"]
  CALL R9 1 1
  GETIMPORT R12 K24 [script]
  GETTABLEKS R11 R12 K25 ["Parent"]
  GETTABLEKS R10 R11 K25 ["Parent"]
  GETTABLEKS R11 R10 K25 ["Parent"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R10 K26 ["Prompts"]
  GETTABLEKS R13 R14 K27 ["PromptWithTextField"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R11 K28 ["Thunks"]
  GETTABLEKS R14 R15 K29 ["SignalRenameOutfitPermissionDenied"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R11 K28 ["Thunks"]
  GETTABLEKS R15 R16 K30 ["PerformRenameOutfit"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R11 K31 ["AvatarEditorPromptsPolicy"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K32 ["PureComponent"]
  LOADK R18 K33 ["RenameOutfitNamePrompt"]
  NAMECALL R16 R16 K34 ["extend"]
  CALL R16 2 1
  GETTABLEKS R17 R4 K35 ["strictInterface"]
  DUPTABLE R18 K42 [{"outfitId", "outfitName", "screenSize", "signalRenameOutfitPermissionDenied", "performRenameOutfit", "showCustomOutfitNames"}]
  GETTABLEKS R19 R4 K43 ["integer"]
  SETTABLEKS R19 R18 K36 ["outfitId"]
  GETTABLEKS R19 R4 K44 ["string"]
  SETTABLEKS R19 R18 K37 ["outfitName"]
  GETTABLEKS R19 R4 K45 ["Vector2"]
  SETTABLEKS R19 R18 K38 ["screenSize"]
  GETTABLEKS R19 R4 K46 ["callback"]
  SETTABLEKS R19 R18 K39 ["signalRenameOutfitPermissionDenied"]
  GETTABLEKS R19 R4 K46 ["callback"]
  SETTABLEKS R19 R18 K40 ["performRenameOutfit"]
  GETTABLEKS R19 R4 K47 ["boolean"]
  SETTABLEKS R19 R18 K41 ["showCustomOutfitNames"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K48 ["validateProps"]
  DUPCLOSURE R17 K49 [PROTO_2]
  SETTABLEKS R17 R16 K50 ["init"]
  DUPCLOSURE R17 K51 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K52 ["render"]
  DUPCLOSURE R17 K53 [PROTO_4]
  DUPCLOSURE R18 K54 [PROTO_7]
  CAPTURE VAL R13
  CAPTURE VAL R14
  GETTABLEKS R19 R3 K55 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  GETTABLEKS R19 R15 K55 ["connect"]
  DUPCLOSURE R20 K56 [PROTO_8]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  RETURN R16 1
