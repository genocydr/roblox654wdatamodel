PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize"}]
  GETUPVAL R4 2
  LOADK R6 K7 ["CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptTitle"]
  NAMECALL R4 R4 K8 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["title"]
  GETUPVAL R4 2
  LOADK R6 K9 ["CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptText"]
  DUPTABLE R7 K11 [{"RBX_NAME"}]
  GETTABLEKS R9 R0 K12 ["props"]
  GETTABLEKS R8 R9 K13 ["gameName"]
  SETTABLEKS R8 R7 K10 ["RBX_NAME"]
  NAMECALL R4 R4 K8 ["FormatByKey"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["bodyText"]
  DUPTABLE R4 K15 [{"buttons"}]
  NEWTABLE R5 0 2
  DUPTABLE R6 K17 [{"props", "isDefaultChild"}]
  DUPTABLE R7 K20 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K12 ["props"]
  GETTABLEKS R8 R9 K21 ["setAvatarReadAccessDenied"]
  SETTABLEKS R8 R7 K18 ["onActivated"]
  GETUPVAL R8 2
  LOADK R10 K22 ["CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptNo"]
  NAMECALL R8 R8 K8 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["text"]
  SETTABLEKS R7 R6 K12 ["props"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["isDefaultChild"]
  DUPTABLE R7 K24 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K25 ["PrimarySystem"]
  SETTABLEKS R8 R7 K23 ["buttonType"]
  DUPTABLE R8 K20 [{"onActivated", "text"}]
  GETTABLEKS R10 R0 K12 ["props"]
  GETTABLEKS R9 R10 K26 ["setAvatarReadAccessAllowed"]
  SETTABLEKS R9 R8 K18 ["onActivated"]
  GETUPVAL R9 2
  LOADK R11 K27 ["CoreScripts.AvatarEditorPrompts.InventoryReadAccessPromptYes"]
  NAMECALL R9 R9 K8 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["text"]
  SETTABLEKS R8 R7 K12 ["props"]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["isDefaultChild"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K14 ["buttons"]
  SETTABLEKS R4 R3 K3 ["buttonStackInfo"]
  GETIMPORT R4 K30 [UDim2.fromScale]
  LOADK R5 K31 [0.5]
  LOADK R6 K31 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["position"]
  GETTABLEKS R5 R0 K12 ["props"]
  GETTABLEKS R4 R5 K5 ["screenSize"]
  SETTABLEKS R4 R3 K5 ["screenSize"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R1 K2 [{"gameName", "screenSize"}]
  GETTABLEKS R2 R0 K0 ["gameName"]
  SETTABLEKS R2 R1 K0 ["gameName"]
  GETTABLEKS R2 R0 K1 ["screenSize"]
  SETTABLEKS R2 R1 K1 ["screenSize"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADB R2 1
  CALL R1 1 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_4:
  DUPTABLE R1 K2 [{"setAvatarReadAccessDenied", "setAvatarReadAccessAllowed"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setAvatarReadAccessDenied"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K1 ["setAvatarReadAccessAllowed"]
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
  GETTABLEKS R8 R9 K13 ["Dialog"]
  GETTABLEKS R7 R8 K14 ["Alert"]
  GETTABLEKS R6 R7 K15 ["InteractiveAlert"]
  GETTABLEKS R10 R5 K12 ["App"]
  GETTABLEKS R9 R10 K16 ["Button"]
  GETTABLEKS R8 R9 K17 ["Enum"]
  GETTABLEKS R7 R8 K18 ["ButtonType"]
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
  GETTABLEKS R14 R11 K26 ["Thunks"]
  GETTABLEKS R13 R14 K27 ["SetAllowInventoryReadAccess"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K28 ["PureComponent"]
  LOADK R15 K29 ["AllowInventoryReadAccessPrompt"]
  NAMECALL R13 R13 K30 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R4 K31 ["strictInterface"]
  DUPTABLE R15 K36 [{"gameName", "screenSize", "setAvatarReadAccessAllowed", "setAvatarReadAccessDenied"}]
  GETTABLEKS R16 R4 K37 ["string"]
  SETTABLEKS R16 R15 K32 ["gameName"]
  GETTABLEKS R16 R4 K38 ["Vector2"]
  SETTABLEKS R16 R15 K33 ["screenSize"]
  GETTABLEKS R16 R4 K39 ["callback"]
  SETTABLEKS R16 R15 K34 ["setAvatarReadAccessAllowed"]
  GETTABLEKS R16 R4 K39 ["callback"]
  SETTABLEKS R16 R15 K35 ["setAvatarReadAccessDenied"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K40 ["validateProps"]
  DUPCLOSURE R14 K41 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K42 ["render"]
  DUPCLOSURE R14 K43 [PROTO_1]
  DUPCLOSURE R15 K44 [PROTO_4]
  CAPTURE VAL R12
  GETTABLEKS R16 R3 K45 ["connect"]
  MOVE R17 R14
  MOVE R18 R15
  CALL R16 2 1
  MOVE R17 R13
  CALL R16 1 -1
  RETURN R16 -1
