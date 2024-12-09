PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize"}]
  GETUPVAL R4 2
  LOADK R6 K7 ["CoreScripts.PublishAvatarPrompt.LeaveCreationTitle"]
  NAMECALL R4 R4 K8 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["title"]
  GETUPVAL R4 2
  LOADK R6 K9 ["CoreScripts.PublishCommon.UnsavedWarning"]
  NAMECALL R4 R4 K8 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["bodyText"]
  DUPTABLE R4 K11 [{"buttons"}]
  NEWTABLE R5 0 2
  DUPTABLE R6 K14 [{"props", "isDefaultChild"}]
  DUPTABLE R7 K17 [{"onActivated", "text"}]
  GETTABLEKS R8 R0 K18 ["closePrompt"]
  SETTABLEKS R8 R7 K15 ["onActivated"]
  GETUPVAL R8 2
  LOADK R10 K19 ["CoreScripts.PublishCommon.Leave"]
  NAMECALL R8 R8 K8 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["text"]
  SETTABLEKS R7 R6 K12 ["props"]
  LOADB R7 0
  SETTABLEKS R7 R6 K13 ["isDefaultChild"]
  DUPTABLE R7 K21 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K22 ["PrimarySystem"]
  SETTABLEKS R8 R7 K20 ["buttonType"]
  DUPTABLE R8 K17 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K23 ["cancelClosePrompt"]
  SETTABLEKS R9 R8 K15 ["onActivated"]
  GETUPVAL R9 2
  LOADK R11 K24 ["CoreScripts.PublishCommon.Stay"]
  NAMECALL R9 R9 K8 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["text"]
  SETTABLEKS R8 R7 K12 ["props"]
  LOADB R8 1
  SETTABLEKS R8 R7 K13 ["isDefaultChild"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K10 ["buttons"]
  SETTABLEKS R4 R3 K3 ["buttonStackInfo"]
  GETIMPORT R4 K27 [UDim2.fromScale]
  LOADK R5 K28 [0.5]
  LOADK R6 K28 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["position"]
  GETTABLEKS R4 R0 K5 ["screenSize"]
  SETTABLEKS R4 R3 K5 ["screenSize"]
  CALL R1 2 -1
  RETURN R1 -1

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
  LOADK R7 K16 ["RobloxGui"]
  NAMECALL R5 R1 K17 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R5 K18 ["Modules"]
  GETTABLEKS R7 R8 K19 ["RobloxTranslator"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K7 ["Packages"]
  GETTABLEKS R8 R9 K20 ["React"]
  CALL R7 1 1
  DUPCLOSURE R8 K21 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R8 1
