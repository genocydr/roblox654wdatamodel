PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K5 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K2 ["BackgroundTransparency"]
  GETIMPORT R7 K8 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K3 ["Size"]
  LOADN R7 3
  SETTABLEKS R7 R6 K4 ["ZIndex"]
  DUPTABLE R7 K11 [{"Overlay", "InteractiveAlertWrapper"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K13 [{"showGradient", "ZIndex"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K12 ["showGradient"]
  LOADN R11 3
  SETTABLEKS R11 R10 K4 ["ZIndex"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Overlay"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K1 ["Frame"]
  DUPTABLE R10 K5 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K2 ["BackgroundTransparency"]
  GETIMPORT R11 K8 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Size"]
  LOADN R11 4
  SETTABLEKS R11 R10 K4 ["ZIndex"]
  DUPTABLE R11 K15 [{"InteractiveAlert"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K20 [{"title", "bodyText", "screenSize", "buttonStackInfo"}]
  LOADK R15 K21 ["Something Went Wrong"]
  SETTABLEKS R15 R14 K16 ["title"]
  LOADK R15 K22 ["Your creation could not be created due to an error. A report has been sent to the developer of this experience."]
  SETTABLEKS R15 R14 K17 ["bodyText"]
  GETTABLEKS R15 R0 K18 ["screenSize"]
  SETTABLEKS R15 R14 K18 ["screenSize"]
  DUPTABLE R15 K24 [{"buttons"}]
  NEWTABLE R16 0 1
  DUPTABLE R17 K27 [{"buttonType", "props"}]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K28 ["PrimarySystem"]
  SETTABLEKS R18 R17 K25 ["buttonType"]
  DUPTABLE R18 K32 [{"onActivated", "text", "inputIcon"}]
  SETTABLEKS R3 R18 K29 ["onActivated"]
  GETUPVAL R19 7
  LOADK R21 K33 ["InGame.CommonUI.Button.Ok"]
  NAMECALL R19 R19 K34 ["FormatByKey"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["text"]
  JUMPIFNOT R1 [+2]
  GETUPVAL R19 8
  JUMPIF R19 [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K31 ["inputIcon"]
  SETTABLEKS R18 R17 K26 ["props"]
  SETLIST R16 R17 1 [1]
  SETTABLEKS R16 R15 K23 ["buttons"]
  SETTABLEKS R15 R14 K19 ["buttonStackInfo"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["InteractiveAlert"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["InteractiveAlertWrapper"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETTABLEKS R6 R2 K9 ["App"]
  GETTABLEKS R5 R6 K10 ["Button"]
  GETTABLEKS R4 R5 K11 ["Enum"]
  GETTABLEKS R3 R4 K12 ["ButtonType"]
  GETTABLEKS R7 R2 K9 ["App"]
  GETTABLEKS R6 R7 K13 ["Dialog"]
  GETTABLEKS R5 R6 K14 ["Alert"]
  GETTABLEKS R4 R5 K15 ["InteractiveAlert"]
  GETTABLEKS R7 R2 K9 ["App"]
  GETTABLEKS R6 R7 K13 ["Dialog"]
  GETTABLEKS R5 R6 K16 ["Overlay"]
  LOADK R8 K17 ["RobloxGui"]
  NAMECALL R6 R1 K18 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K19 ["Modules"]
  GETTABLEKS R8 R9 K20 ["RobloxTranslator"]
  CALL R7 1 1
  GETTABLEKS R10 R2 K9 ["App"]
  GETTABLEKS R9 R10 K21 ["ImageSet"]
  GETTABLEKS R8 R9 K22 ["Images"]
  GETTABLEKS R9 R8 K23 ["icons/controls/keys/xboxA"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K24 ["Workspace"]
  GETTABLEKS R12 R13 K7 ["Packages"]
  GETTABLEKS R11 R12 K25 ["RoactUtils"]
  CALL R10 1 1
  GETTABLEKS R12 R10 K26 ["Hooks"]
  GETTABLEKS R11 R12 K27 ["useIsGamepad"]
  GETTABLEKS R14 R10 K26 ["Hooks"]
  GETTABLEKS R13 R14 K28 ["RoactRodux"]
  GETTABLEKS R12 R13 K29 ["useDispatch"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K7 ["Packages"]
  GETTABLEKS R14 R15 K30 ["React"]
  CALL R13 1 1
  GETIMPORT R15 K32 [script]
  GETTABLEKS R14 R15 K33 ["Parent"]
  GETTABLEKS R15 R14 K33 ["Parent"]
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R15 K34 ["Actions"]
  GETTABLEKS R17 R18 K35 ["CloseOpenPrompt"]
  CALL R16 1 1
  DUPCLOSURE R17 K36 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R17 1
