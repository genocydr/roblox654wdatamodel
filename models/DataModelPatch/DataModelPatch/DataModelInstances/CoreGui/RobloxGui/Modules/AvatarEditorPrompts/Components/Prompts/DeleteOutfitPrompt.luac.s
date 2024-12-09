PROTO_0:
  LOADK R1 K0 ["rbxthumb://type=Outfit&id="]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R2 R4 K2 ["outfitId"]
  LOADK R3 K3 ["&w=150&h=150"]
  CONCAT R0 R1 R3
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createElement"]
  LOADK R2 K5 ["Frame"]
  DUPTABLE R3 K8 [{"BackgroundTransparency", "Size"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K6 ["BackgroundTransparency"]
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 150
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["Size"]
  DUPTABLE R4 K13 [{"Thumnail"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K19 [{"Position", "AnchorPoint", "Size", "BackgroundTransparency", "Image", "useShimmerAnimationWhileLoading", "showFailedStateWhenLoadingFailed"}]
  GETIMPORT R8 K21 [UDim2.fromScale]
  LOADK R9 K22 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Position"]
  GETIMPORT R8 K24 [Vector2.new]
  LOADK R9 K22 [0.5]
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K15 ["AnchorPoint"]
  GETIMPORT R8 K26 [UDim2.fromOffset]
  LOADN R9 150
  LOADN R10 150
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["BackgroundTransparency"]
  SETTABLEKS R0 R7 K16 ["Image"]
  LOADB R8 1
  SETTABLEKS R8 R7 K17 ["useShimmerAnimationWhileLoading"]
  LOADB R8 1
  SETTABLEKS R8 R7 K18 ["showFailedStateWhenLoadingFailed"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Thumnail"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["renderAlertMiddleContent"]
  RETURN R0 0

PROTO_2:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["showCustomOutfitNames"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R2 0
  LOADK R4 K2 ["CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptText"]
  DUPTABLE R5 K4 [{"RBX_NAME"}]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K5 ["outfitName"]
  SETTABLEKS R6 R5 K3 ["RBX_NAME"]
  NAMECALL R2 R2 K6 ["FormatByKey"]
  CALL R2 3 1
  MOVE R1 R2
  JUMP [+6]
  GETUPVAL R2 0
  LOADK R4 K7 ["CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptTextNoName"]
  NAMECALL R2 R2 K6 ["FormatByKey"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K16 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize", "middleContent", "isMiddleContentFocusable"}]
  GETUPVAL R5 0
  LOADK R7 K17 ["CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptTitle"]
  NAMECALL R5 R5 K6 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["title"]
  SETTABLEKS R1 R4 K10 ["bodyText"]
  DUPTABLE R5 K19 [{"buttons"}]
  NEWTABLE R6 0 2
  DUPTABLE R7 K21 [{"props", "isDefaultChild"}]
  DUPTABLE R8 K24 [{"onActivated", "text"}]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K25 ["signalDeleteOutfitPermissionDenied"]
  SETTABLEKS R9 R8 K22 ["onActivated"]
  GETUPVAL R9 0
  LOADK R11 K26 ["CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptNo"]
  NAMECALL R9 R9 K6 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["text"]
  SETTABLEKS R8 R7 K0 ["props"]
  LOADB R8 1
  SETTABLEKS R8 R7 K20 ["isDefaultChild"]
  DUPTABLE R8 K28 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K29 ["PrimarySystem"]
  SETTABLEKS R9 R8 K27 ["buttonType"]
  DUPTABLE R9 K24 [{"onActivated", "text"}]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K30 ["performDeleteOutfit"]
  SETTABLEKS R10 R9 K22 ["onActivated"]
  GETUPVAL R10 0
  LOADK R12 K31 ["CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptYes"]
  NAMECALL R10 R10 K6 ["FormatByKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["text"]
  SETTABLEKS R9 R8 K0 ["props"]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["isDefaultChild"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K18 ["buttons"]
  SETTABLEKS R5 R4 K11 ["buttonStackInfo"]
  GETIMPORT R5 K34 [UDim2.fromScale]
  LOADK R6 K35 [0.5]
  LOADK R7 K35 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["position"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K13 ["screenSize"]
  SETTABLEKS R5 R4 K13 ["screenSize"]
  GETTABLEKS R5 R0 K36 ["renderAlertMiddleContent"]
  SETTABLEKS R5 R4 K14 ["middleContent"]
  LOADB R5 0
  SETTABLEKS R5 R4 K15 ["isMiddleContentFocusable"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  DUPTABLE R1 K3 [{"screenSize", "outfitId", "outfitName"}]
  GETTABLEKS R2 R0 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K4 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["outfitId"]
  SETTABLEKS R2 R1 K1 ["outfitId"]
  GETTABLEKS R3 R0 K4 ["promptInfo"]
  GETTABLEKS R2 R3 K2 ["outfitName"]
  SETTABLEKS R2 R1 K2 ["outfitName"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  DUPTABLE R1 K2 [{"signalDeleteOutfitPermissionDenied", "performDeleteOutfit"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["signalDeleteOutfitPermissionDenied"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["performDeleteOutfit"]
  RETURN R1 1

PROTO_7:
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
  GETTABLEKS R8 R9 K13 ["Dialog"]
  GETTABLEKS R7 R8 K14 ["Alert"]
  GETTABLEKS R6 R7 K15 ["InteractiveAlert"]
  GETTABLEKS R10 R5 K12 ["App"]
  GETTABLEKS R9 R10 K16 ["Button"]
  GETTABLEKS R8 R9 K17 ["Enum"]
  GETTABLEKS R7 R8 K18 ["ButtonType"]
  GETTABLEKS R10 R5 K12 ["App"]
  GETTABLEKS R9 R10 K19 ["Loading"]
  GETTABLEKS R8 R9 K20 ["LoadableImage"]
  LOADK R11 K21 ["RobloxGui"]
  NAMECALL R9 R1 K22 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R9 K23 ["Modules"]
  GETTABLEKS R11 R12 K24 ["RobloxTranslator"]
  CALL R10 1 1
  GETIMPORT R13 K26 [script]
  GETTABLEKS R12 R13 K27 ["Parent"]
  GETTABLEKS R11 R12 K27 ["Parent"]
  GETTABLEKS R12 R11 K27 ["Parent"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R12 K28 ["Thunks"]
  GETTABLEKS R14 R15 K29 ["SignalDeleteOutfitPermissionDenied"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R12 K28 ["Thunks"]
  GETTABLEKS R15 R16 K30 ["PerformDeleteOutfit"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R16 R12 K31 ["AvatarEditorPromptsPolicy"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K32 ["PureComponent"]
  LOADK R18 K33 ["DeleteOutfitPrompt"]
  NAMECALL R16 R16 K34 ["extend"]
  CALL R16 2 1
  GETTABLEKS R17 R4 K35 ["strictInterface"]
  DUPTABLE R18 K42 [{"screenSize", "outfitId", "outfitName", "performDeleteOutfit", "signalDeleteOutfitPermissionDenied", "showCustomOutfitNames"}]
  GETTABLEKS R19 R4 K43 ["Vector2"]
  SETTABLEKS R19 R18 K36 ["screenSize"]
  GETTABLEKS R19 R4 K44 ["integer"]
  SETTABLEKS R19 R18 K37 ["outfitId"]
  GETTABLEKS R19 R4 K45 ["string"]
  SETTABLEKS R19 R18 K38 ["outfitName"]
  GETTABLEKS R19 R4 K46 ["callback"]
  SETTABLEKS R19 R18 K39 ["performDeleteOutfit"]
  GETTABLEKS R19 R4 K46 ["callback"]
  SETTABLEKS R19 R18 K40 ["signalDeleteOutfitPermissionDenied"]
  GETTABLEKS R19 R4 K47 ["boolean"]
  SETTABLEKS R19 R18 K41 ["showCustomOutfitNames"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K48 ["validateProps"]
  DUPCLOSURE R17 K49 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K50 ["init"]
  DUPCLOSURE R17 K51 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R17 R16 K52 ["render"]
  DUPCLOSURE R17 K53 [PROTO_3]
  DUPCLOSURE R18 K54 [PROTO_6]
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
  DUPCLOSURE R20 K56 [PROTO_7]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  RETURN R16 1
