PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["InputTypeConstants"]
  GETTABLEKS R3 R4 K1 ["Gamepad"]
  JUMPIFEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  DUPTABLE R3 K1 [{"isGamepad"}]
  GETUPVAL R5 0
  NAMECALL R5 R5 K2 ["GetLastInputType"]
  CALL R5 1 1
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["InputTypeConstants"]
  GETTABLEKS R7 R8 K4 ["Gamepad"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K0 ["isGamepad"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K3 [Enum.PromptPublishAssetResult.Success]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 0
  LOADK R4 K4 ["CoreScripts.PublishAssetPrompt.PublishSuccessMessage"]
  NAMECALL R2 R2 K5 ["FormatByKey"]
  CALL R2 2 -1
  RETURN R2 -1
  GETIMPORT R2 K7 [Enum.PromptPublishAssetResult.UploadFailed]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 0
  LOADK R4 K8 ["CoreScripts.PublishAssetPrompt.PublishFailed"]
  NAMECALL R2 R2 K5 ["FormatByKey"]
  CALL R2 2 -1
  RETURN R2 -1
  GETIMPORT R2 K10 [Enum.PromptPublishAssetResult.NoUserInput]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 0
  LOADK R4 K11 ["CoreScripts.PublishAssetPrompt.NoUserInput"]
  NAMECALL R2 R2 K5 ["FormatByKey"]
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R2 0
  LOADK R4 K12 ["CoreScripts.PublishAssetPrompt.UndefinedError"]
  DUPTABLE R5 K14 [{"RESULT_TYPE"}]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K16 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["RESULT_TYPE"]
  NAMECALL R2 R2 K5 ["FormatByKey"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETIMPORT R2 K3 [Enum.PromptPublishAssetResult.Success]
  JUMPIFNOTEQ R1 R2 [+7]
  GETUPVAL R2 0
  LOADK R4 K4 ["CoreScripts.PublishAssetPrompt.PublishSuccessTitle"]
  NAMECALL R2 R2 K5 ["FormatByKey"]
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R2 0
  LOADK R4 K6 ["CoreScripts.PublishAssetPrompt.PublishFailedTitle"]
  NAMECALL R2 R2 K5 ["FormatByKey"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"title", "bodyText", "screenSize", "buttonStackInfo"}]
  GETTABLEKS R7 R0 K6 ["props"]
  GETTABLEKS R6 R7 K7 ["resultModalType"]
  NAMECALL R4 R0 K8 ["getLocalizedTitleForResultPrompt"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["title"]
  GETTABLEKS R7 R0 K6 ["props"]
  GETTABLEKS R6 R7 K7 ["resultModalType"]
  NAMECALL R4 R0 K9 ["getLocalizedStringForResultPrompt"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["bodyText"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K3 ["screenSize"]
  SETTABLEKS R4 R3 K3 ["screenSize"]
  DUPTABLE R4 K11 [{"buttons"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K13 [{"buttonType", "props"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["PrimarySystem"]
  SETTABLEKS R7 R6 K12 ["buttonType"]
  DUPTABLE R7 K18 [{"onActivated", "text", "inputIcon"}]
  GETTABLEKS R9 R0 K6 ["props"]
  GETTABLEKS R8 R9 K19 ["closeResultModal"]
  SETTABLEKS R8 R7 K15 ["onActivated"]
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+6]
  GETUPVAL R8 4
  LOADK R10 K20 ["CoreScripts.PublishAssetPrompt.ResultModalOk"]
  NAMECALL R8 R8 K21 ["FormatByKey"]
  CALL R8 2 1
  JUMP [+5]
  GETUPVAL R8 4
  LOADK R10 K22 ["InGame.CommonUI.Button.Ok"]
  NAMECALL R8 R8 K21 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["text"]
  GETTABLEKS R10 R0 K23 ["state"]
  GETTABLEKS R9 R10 K24 ["isGamepad"]
  JUMPIFNOT R9 [+2]
  GETUPVAL R8 5
  JUMPIF R8 [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K17 ["inputIcon"]
  SETTABLEKS R7 R6 K6 ["props"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K10 ["buttons"]
  SETTABLEKS R4 R3 K4 ["buttonStackInfo"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  DUPTABLE R1 K1 [{"resultModalType"}]
  GETTABLEKS R3 R0 K2 ["promptRequest"]
  GETTABLEKS R2 R3 K0 ["resultModalType"]
  SETTABLEKS R2 R1 K0 ["resultModalType"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  DUPTABLE R1 K1 [{"closeResultModal"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closeResultModal"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UserInputService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R7 R3 K10 ["App"]
  GETTABLEKS R6 R7 K11 ["Button"]
  GETTABLEKS R5 R6 K12 ["Enum"]
  GETTABLEKS R4 R5 K13 ["ButtonType"]
  GETTABLEKS R8 R3 K10 ["App"]
  GETTABLEKS R7 R8 K14 ["Dialog"]
  GETTABLEKS R6 R7 K15 ["Alert"]
  GETTABLEKS R5 R6 K16 ["InteractiveAlert"]
  LOADK R8 K17 ["RobloxGui"]
  NAMECALL R6 R2 K18 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R6 K19 ["Modules"]
  GETTABLEKS R8 R9 K20 ["RobloxTranslator"]
  CALL R7 1 1
  GETTABLEKS R10 R3 K10 ["App"]
  GETTABLEKS R9 R10 K21 ["ImageSet"]
  GETTABLEKS R8 R9 K22 ["Images"]
  GETTABLEKS R9 R8 K23 ["icons/controls/keys/xboxA"]
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R0 K8 ["Packages"]
  GETTABLEKS R11 R12 K24 ["Roact"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R0 K8 ["Packages"]
  GETTABLEKS R12 R13 K25 ["RoactRodux"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R0 K8 ["Packages"]
  GETTABLEKS R13 R14 K26 ["t"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETTABLEKS R16 R0 K27 ["Workspace"]
  GETTABLEKS R15 R16 K8 ["Packages"]
  GETTABLEKS R14 R15 K28 ["InputType"]
  CALL R13 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R18 R0 K27 ["Workspace"]
  GETTABLEKS R17 R18 K8 ["Packages"]
  GETTABLEKS R16 R17 K28 ["InputType"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K29 ["getInputGroup"]
  GETIMPORT R16 K31 [script]
  GETTABLEKS R15 R16 K32 ["Parent"]
  GETTABLEKS R16 R15 K32 ["Parent"]
  GETIMPORT R17 K7 [require]
  GETTABLEKS R19 R16 K33 ["Thunks"]
  GETTABLEKS R18 R19 K34 ["CloseResultModal"]
  CALL R17 1 1
  GETIMPORT R20 K31 [script]
  GETTABLEKS R19 R20 K32 ["Parent"]
  GETTABLEKS R18 R19 K32 ["Parent"]
  GETIMPORT R19 K7 [require]
  GETTABLEKS R20 R18 K35 ["GetFFlagValidateDescription"]
  CALL R19 1 1
  GETTABLEKS R20 R10 K36 ["PureComponent"]
  LOADK R22 K37 ["ResultModal"]
  NAMECALL R20 R20 K38 ["extend"]
  CALL R20 2 1
  GETTABLEKS R21 R12 K39 ["strictInterface"]
  DUPTABLE R22 K43 [{"screenSize", "resultModalType", "closeResultModal"}]
  GETTABLEKS R23 R12 K44 ["Vector2"]
  SETTABLEKS R23 R22 K40 ["screenSize"]
  GETTABLEKS R23 R12 K45 ["enum"]
  GETIMPORT R24 K47 [Enum.PromptPublishAssetResult]
  CALL R23 1 1
  SETTABLEKS R23 R22 K41 ["resultModalType"]
  GETTABLEKS R23 R12 K48 ["callback"]
  SETTABLEKS R23 R22 K42 ["closeResultModal"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K49 ["validateProps"]
  DUPCLOSURE R21 K50 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R13
  DUPCLOSURE R22 K51 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R13
  SETTABLEKS R22 R20 K52 ["init"]
  DUPCLOSURE R22 K53 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R22 R20 K54 ["getLocalizedStringForResultPrompt"]
  DUPCLOSURE R22 K55 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R22 R20 K56 ["getLocalizedTitleForResultPrompt"]
  DUPCLOSURE R22 K57 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R22 R20 K58 ["render"]
  DUPCLOSURE R22 K59 [PROTO_5]
  DUPCLOSURE R23 K60 [PROTO_7]
  CAPTURE VAL R17
  GETTABLEKS R24 R11 K61 ["connect"]
  MOVE R25 R22
  MOVE R26 R23
  CALL R24 2 1
  MOVE R25 R20
  CALL R24 1 -1
  RETURN R24 -1
