PROTO_0:
  LOADNIL R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["itemType"]
  GETIMPORT R2 K5 [Enum.AvatarItemType.Asset]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADK R0 K4 ["Asset"]
  JUMP [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["itemType"]
  GETIMPORT R2 K7 [Enum.AvatarItemType.Bundle]
  JUMPIFNOTEQ R1 R2 [+2]
  LOADK R0 K8 ["BundleThumbnail"]
  LOADK R2 K9 ["rbxthumb://type="]
  MOVE R3 R0
  LOADK R4 K10 ["&id="]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R5 R7 K11 ["itemId"]
  LOADK R6 K12 ["&w=150&h=150"]
  CONCAT R1 R2 R6
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["createElement"]
  LOADK R3 K14 ["Frame"]
  DUPTABLE R4 K17 [{"BackgroundTransparency", "Size"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K15 ["BackgroundTransparency"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 150
  CALL R5 4 1
  SETTABLEKS R5 R4 K16 ["Size"]
  DUPTABLE R5 K22 [{"Thumnail"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K13 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K28 [{"Position", "AnchorPoint", "Size", "BackgroundTransparency", "Image", "useShimmerAnimationWhileLoading", "showFailedStateWhenLoadingFailed"}]
  GETIMPORT R9 K30 [UDim2.fromScale]
  LOADK R10 K31 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K23 ["Position"]
  GETIMPORT R9 K33 [Vector2.new]
  LOADK R10 K31 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["AnchorPoint"]
  GETIMPORT R9 K35 [UDim2.fromOffset]
  LOADN R10 150
  LOADN R11 150
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K15 ["BackgroundTransparency"]
  SETTABLEKS R1 R8 K25 ["Image"]
  LOADB R9 1
  SETTABLEKS R9 R8 K26 ["useShimmerAnimationWhileLoading"]
  LOADB R9 1
  SETTABLEKS R9 R8 K27 ["showFailedStateWhenLoadingFailed"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["Thumnail"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["renderAlertMiddleContent"]
  RETURN R0 0

PROTO_2:
  LOADNIL R1
  LOADNIL R2
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["shouldFavorite"]
  JUMPIFNOT R3 [+20]
  GETUPVAL R3 0
  LOADK R5 K2 ["CoreScripts.AvatarEditorPrompts.FavouriteItemPromptTitle"]
  NAMECALL R3 R3 K3 ["FormatByKey"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 0
  LOADK R5 K4 ["CoreScripts.AvatarEditorPrompts.FavouriteItemPromptText"]
  DUPTABLE R6 K6 [{"RBX_NAME"}]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["itemName"]
  SETTABLEKS R7 R6 K5 ["RBX_NAME"]
  NAMECALL R3 R3 K3 ["FormatByKey"]
  CALL R3 3 1
  MOVE R2 R3
  JUMP [+19]
  GETUPVAL R3 0
  LOADK R5 K8 ["CoreScripts.AvatarEditorPrompts.UnfavouriteItemPromptTitle"]
  NAMECALL R3 R3 K3 ["FormatByKey"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R3 0
  LOADK R5 K9 ["CoreScripts.AvatarEditorPrompts.UnfavouriteItemPromptText"]
  DUPTABLE R6 K6 [{"RBX_NAME"}]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["itemName"]
  SETTABLEKS R7 R6 K5 ["RBX_NAME"]
  NAMECALL R3 R3 K3 ["FormatByKey"]
  CALL R3 3 1
  MOVE R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K18 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize", "middleContent", "isMiddleContentFocusable"}]
  SETTABLEKS R1 R5 K11 ["title"]
  SETTABLEKS R2 R5 K12 ["bodyText"]
  DUPTABLE R6 K20 [{"buttons"}]
  NEWTABLE R7 0 2
  DUPTABLE R8 K22 [{"props", "isDefaultChild"}]
  DUPTABLE R9 K25 [{"onActivated", "text"}]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K26 ["signalSetFavoritePermissionDenied"]
  SETTABLEKS R10 R9 K23 ["onActivated"]
  GETUPVAL R10 0
  LOADK R12 K27 ["CoreScripts.AvatarEditorPrompts.FavouriteItemPromptNo"]
  NAMECALL R10 R10 K3 ["FormatByKey"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["text"]
  SETTABLEKS R9 R8 K0 ["props"]
  LOADB R9 1
  SETTABLEKS R9 R8 K21 ["isDefaultChild"]
  DUPTABLE R9 K29 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K30 ["PrimarySystem"]
  SETTABLEKS R10 R9 K28 ["buttonType"]
  DUPTABLE R10 K34 [{"onActivated", "text", "isDelayedInput", "enableInputDelayed", "delayInputSeconds"}]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K35 ["performSetFavorite"]
  SETTABLEKS R11 R10 K23 ["onActivated"]
  GETUPVAL R11 0
  LOADK R13 K36 ["CoreScripts.AvatarEditorPrompts.FavouriteItemPromptYes"]
  NAMECALL R11 R11 K3 ["FormatByKey"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K31 ["isDelayedInput"]
  LOADB R11 1
  SETTABLEKS R11 R10 K32 ["enableInputDelayed"]
  LOADN R11 3
  SETTABLEKS R11 R10 K33 ["delayInputSeconds"]
  SETTABLEKS R10 R9 K0 ["props"]
  LOADB R10 0
  SETTABLEKS R10 R9 K21 ["isDefaultChild"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K19 ["buttons"]
  SETTABLEKS R6 R5 K13 ["buttonStackInfo"]
  GETIMPORT R6 K39 [UDim2.fromScale]
  LOADK R7 K40 [0.5]
  LOADK R8 K40 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["position"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K15 ["screenSize"]
  SETTABLEKS R6 R5 K15 ["screenSize"]
  GETTABLEKS R6 R0 K41 ["renderAlertMiddleContent"]
  SETTABLEKS R6 R5 K16 ["middleContent"]
  LOADB R6 0
  SETTABLEKS R6 R5 K17 ["isMiddleContentFocusable"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  DUPTABLE R1 K5 [{"itemId", "itemType", "itemName", "shouldFavorite", "screenSize"}]
  GETTABLEKS R3 R0 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["itemId"]
  SETTABLEKS R2 R1 K0 ["itemId"]
  GETTABLEKS R3 R0 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["itemType"]
  SETTABLEKS R2 R1 K1 ["itemType"]
  GETTABLEKS R3 R0 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K2 ["itemName"]
  SETTABLEKS R2 R1 K2 ["itemName"]
  GETTABLEKS R3 R0 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K3 ["shouldFavorite"]
  SETTABLEKS R2 R1 K3 ["shouldFavorite"]
  GETTABLEKS R2 R0 K4 ["screenSize"]
  SETTABLEKS R2 R1 K4 ["screenSize"]
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
  DUPTABLE R1 K2 [{"performSetFavorite", "signalSetFavoritePermissionDenied"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["performSetFavorite"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["signalSetFavoritePermissionDenied"]
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
  LOADK R8 K12 ["RobloxGui"]
  NAMECALL R6 R1 K13 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K14 ["Modules"]
  GETTABLEKS R8 R9 K15 ["RobloxTranslator"]
  CALL R7 1 1
  GETTABLEKS R11 R5 K16 ["App"]
  GETTABLEKS R10 R11 K17 ["Dialog"]
  GETTABLEKS R9 R10 K18 ["Alert"]
  GETTABLEKS R8 R9 K19 ["InteractiveAlert"]
  GETTABLEKS R12 R5 K16 ["App"]
  GETTABLEKS R11 R12 K20 ["Button"]
  GETTABLEKS R10 R11 K21 ["Enum"]
  GETTABLEKS R9 R10 K22 ["ButtonType"]
  GETTABLEKS R12 R5 K16 ["App"]
  GETTABLEKS R11 R12 K23 ["Loading"]
  GETTABLEKS R10 R11 K24 ["LoadableImage"]
  GETIMPORT R13 K26 [script]
  GETTABLEKS R12 R13 K27 ["Parent"]
  GETTABLEKS R11 R12 K27 ["Parent"]
  GETTABLEKS R12 R11 K27 ["Parent"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R12 K28 ["Thunks"]
  GETTABLEKS R14 R15 K29 ["PerformSetFavorite"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R12 K28 ["Thunks"]
  GETTABLEKS R15 R16 K30 ["SignalSetFavoritePermissionDenied"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K31 ["PureComponent"]
  LOADK R17 K32 ["SetFavoritePrompt"]
  NAMECALL R15 R15 K33 ["extend"]
  CALL R15 2 1
  GETTABLEKS R16 R4 K34 ["strictInterface"]
  DUPTABLE R17 K42 [{"itemId", "itemType", "itemName", "shouldFavorite", "screenSize", "performSetFavorite", "signalSetFavoritePermissionDenied"}]
  GETTABLEKS R18 R4 K43 ["integer"]
  SETTABLEKS R18 R17 K35 ["itemId"]
  GETTABLEKS R18 R4 K44 ["enum"]
  GETIMPORT R19 K46 [Enum.AvatarItemType]
  CALL R18 1 1
  SETTABLEKS R18 R17 K36 ["itemType"]
  GETTABLEKS R18 R4 K47 ["string"]
  SETTABLEKS R18 R17 K37 ["itemName"]
  GETTABLEKS R18 R4 K48 ["boolean"]
  SETTABLEKS R18 R17 K38 ["shouldFavorite"]
  GETTABLEKS R18 R4 K49 ["Vector2"]
  SETTABLEKS R18 R17 K39 ["screenSize"]
  GETTABLEKS R18 R4 K50 ["callback"]
  SETTABLEKS R18 R17 K40 ["performSetFavorite"]
  GETTABLEKS R18 R4 K50 ["callback"]
  SETTABLEKS R18 R17 K41 ["signalSetFavoritePermissionDenied"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K51 ["validateProps"]
  DUPCLOSURE R16 K52 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K53 ["init"]
  DUPCLOSURE R16 K54 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K55 ["render"]
  DUPCLOSURE R16 K56 [PROTO_3]
  DUPCLOSURE R17 K57 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R14
  GETTABLEKS R18 R3 K58 ["connect"]
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 -1
  RETURN R18 -1
