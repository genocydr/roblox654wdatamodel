PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"inputType"}]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["inputType"]
  SETTABLEKS R3 R2 K1 ["inputType"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"RespawnDialogControllerBar", "ConfirmationDialog"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["isRespawning"]
  JUMPIFNOT R4 [+12]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K7 [{"inputType"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["inputType"]
  SETTABLEKS R6 R5 K6 ["inputType"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["RespawnDialogControllerBar"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K16 [{"visible", "titleText", "bodyText", "confirmText", "cancelText", "bindReturnToConfirm", "onCancel", "onConfirm", "inputType"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["isRespawning"]
  SETTABLEKS R6 R5 K8 ["visible"]
  GETTABLEKS R6 R0 K9 ["titleText"]
  SETTABLEKS R6 R5 K9 ["titleText"]
  GETTABLEKS R6 R0 K10 ["bodyText"]
  SETTABLEKS R6 R5 K10 ["bodyText"]
  GETTABLEKS R6 R0 K11 ["confirmText"]
  SETTABLEKS R6 R5 K11 ["confirmText"]
  GETTABLEKS R6 R0 K12 ["cancelText"]
  SETTABLEKS R6 R5 K12 ["cancelText"]
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["bindReturnToConfirm"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["onCancel"]
  SETTABLEKS R6 R5 K14 ["onCancel"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["onConfirm"]
  SETTABLEKS R6 R5 K15 ["onConfirm"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["inputType"]
  SETTABLEKS R6 R5 K6 ["inputType"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["ConfirmationDialog"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  GETUPVAL R2 2
  DUPTABLE R3 K4 [{"titleText", "bodyText", "confirmText", "cancelText"}]
  LOADK R4 K5 ["CoreScripts.InGameMenu.RespawnCharacterDialogTitle"]
  SETTABLEKS R4 R3 K0 ["titleText"]
  LOADK R4 K6 ["CoreScripts.InGameMenu.RespawnCharacterDialogBody"]
  SETTABLEKS R4 R3 K1 ["bodyText"]
  LOADK R4 K7 ["CoreScripts.InGameMenu.RespawnCharacterDialogConfirm"]
  SETTABLEKS R4 R3 K2 ["confirmText"]
  LOADK R4 K8 ["CoreScripts.InGameMenu.Cancel"]
  SETTABLEKS R4 R3 K3 ["cancelText"]
  CALL R2 1 1
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  DUPTABLE R2 K2 [{"isRespawning", "inputType"}]
  GETTABLEKS R4 R0 K3 ["respawn"]
  GETTABLEKS R3 R4 K4 ["dialogOpen"]
  SETTABLEKS R3 R2 K0 ["isRespawning"]
  GETTABLEKS R4 R0 K5 ["displayOptions"]
  GETTABLEKS R3 R4 K1 ["inputType"]
  SETTABLEKS R3 R2 K1 ["inputType"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 -1
  CALL R0 -1 0
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K0 ["AnalyticsInGameMenuName"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K1 ["AnalyticsRespawnCharacterName"]
  DUPTABLE R3 K3 [{"confirmed"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["AnalyticsCancelledName"]
  SETTABLEKS R4 R3 K2 ["confirmed"]
  CALL R0 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K2 [{"onCancel", "onConfirm"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K0 ["onCancel"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["onConfirm"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["RoactRodux"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K13 ["IGMRespawnControllerBar"]
  CALL R4 1 1
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R7 R8 K15 ["withLocalization"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R5 K16 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetRespawning"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R5 K18 ["Thunks"]
  GETTABLEKS R9 R10 K19 ["RespawnPlayer"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K11 [script]
  GETTABLEKS R11 R12 K12 ["Parent"]
  GETTABLEKS R10 R11 K20 ["ConfirmationDialog"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R5 K21 ["Utility"]
  GETTABLEKS R11 R12 K22 ["SendAnalytics"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R5 K23 ["Resources"]
  GETTABLEKS R12 R13 K24 ["Constants"]
  CALL R11 1 1
  DUPCLOSURE R12 K25 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  GETTABLEKS R13 R3 K26 ["UNSTABLE_connect2"]
  DUPCLOSURE R14 K27 [PROTO_3]
  DUPCLOSURE R15 K28 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CALL R13 2 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
