PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["performCreateOutfit"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K3 ["outfitName"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"outfitName"}]
  SETTABLEKS R0 R3 K0 ["outfitName"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K10 ["textBoxRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["confirmCreateOutfit"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["textUpdated"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"fieldText", "onFieldTextUpdated", "title", "buttonStackInfo"}]
  GETTABLEKS R5 R0 K6 ["state"]
  GETTABLEKS R4 R5 K7 ["outfitName"]
  SETTABLEKS R4 R3 K1 ["fieldText"]
  GETTABLEKS R4 R0 K8 ["textUpdated"]
  SETTABLEKS R4 R3 K2 ["onFieldTextUpdated"]
  GETUPVAL R4 2
  LOADK R6 K9 ["CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptTitle"]
  NAMECALL R4 R4 K10 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["title"]
  DUPTABLE R4 K12 [{"buttons"}]
  NEWTABLE R5 0 2
  DUPTABLE R6 K15 [{"props", "isDefaultChild"}]
  DUPTABLE R7 K18 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K13 ["props"]
  GETTABLEKS R8 R9 K19 ["signalCreateOutfitPermissionDenied"]
  SETTABLEKS R8 R7 K16 ["onActivated"]
  GETUPVAL R8 2
  LOADK R10 K20 ["CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptNo"]
  NAMECALL R8 R8 K10 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["text"]
  SETTABLEKS R7 R6 K13 ["props"]
  LOADB R7 1
  SETTABLEKS R7 R6 K14 ["isDefaultChild"]
  DUPTABLE R7 K22 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["PrimarySystem"]
  SETTABLEKS R8 R7 K21 ["buttonType"]
  DUPTABLE R8 K25 [{"isDisabled", "onActivated", "text"}]
  GETTABLEKS R11 R0 K6 ["state"]
  GETTABLEKS R10 R11 K7 ["outfitName"]
  JUMPIFEQKS R10 K26 [""] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K24 ["isDisabled"]
  GETTABLEKS R9 R0 K27 ["confirmCreateOutfit"]
  SETTABLEKS R9 R8 K16 ["onActivated"]
  GETUPVAL R9 2
  LOADK R11 K28 ["CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptYes"]
  NAMECALL R9 R9 K10 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["text"]
  SETTABLEKS R8 R7 K13 ["props"]
  LOADB R8 0
  SETTABLEKS R8 R7 K14 ["isDefaultChild"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K11 ["buttons"]
  SETTABLEKS R4 R3 K4 ["buttonStackInfo"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETTABLEKS R2 R0 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
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
  DUPTABLE R1 K2 [{"signalCreateOutfitPermissionDenied", "performCreateOutfit"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["signalCreateOutfitPermissionDenied"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["performCreateOutfit"]
  RETURN R1 1

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
  GETTABLEKS R12 R13 K24 ["PromptWithTextField"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R10 K25 ["Thunks"]
  GETTABLEKS R13 R14 K26 ["SignalCreateOutfitPermissionDenied"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R10 K25 ["Thunks"]
  GETTABLEKS R14 R15 K27 ["PerformCreateOutfit"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K28 ["PureComponent"]
  LOADK R16 K29 ["EnterOutfitNamePrompt"]
  NAMECALL R14 R14 K30 ["extend"]
  CALL R14 2 1
  GETTABLEKS R15 R4 K31 ["strictInterface"]
  DUPTABLE R16 K35 [{"screenSize", "signalCreateOutfitPermissionDenied", "performCreateOutfit"}]
  GETTABLEKS R17 R4 K36 ["Vector2"]
  SETTABLEKS R17 R16 K32 ["screenSize"]
  GETTABLEKS R17 R4 K37 ["callback"]
  SETTABLEKS R17 R16 K33 ["signalCreateOutfitPermissionDenied"]
  GETTABLEKS R17 R4 K37 ["callback"]
  SETTABLEKS R17 R16 K34 ["performCreateOutfit"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K38 ["validateProps"]
  DUPCLOSURE R15 K39 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R15 R14 K40 ["init"]
  DUPCLOSURE R15 K41 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R15 R14 K42 ["render"]
  DUPCLOSURE R15 K43 [PROTO_4]
  DUPCLOSURE R16 K44 [PROTO_7]
  CAPTURE VAL R12
  CAPTURE VAL R13
  GETTABLEKS R17 R3 K45 ["connect"]
  MOVE R18 R15
  MOVE R19 R16
  CALL R17 2 1
  MOVE R18 R14
  CALL R17 1 -1
  RETURN R17 -1
