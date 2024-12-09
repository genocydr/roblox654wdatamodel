PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AnalyticsLeaveToHomeName"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AnalyticsLeaveToHomeName"]
  DUPTABLE R3 K2 [{"confirmed"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["AnalyticsLeaveToHomeName"]
  SETTABLEKS R4 R3 K1 ["confirmed"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["Heartbeat"]
  NAMECALL R0 R0 K4 ["Wait"]
  CALL R0 1 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K5 ["props"]
  GETTABLEKS R0 R1 K6 ["linkingProtocol"]
  LOADK R2 K7 ["roblox://navigation/home"]
  NAMECALL R0 R0 K8 ["detectURL"]
  CALL R0 2 0
  GETIMPORT R0 K10 [game]
  NAMECALL R0 R0 K11 ["Shutdown"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["goToHomePage"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"titleText", "bodyText", "confirmText", "cancelText", "onConfirm", "onCancel", "canGamepadCaptureFocus", "canKeyboardCaptureFocus"}]
  GETTABLEKS R4 R0 K1 ["titleText"]
  SETTABLEKS R4 R3 K1 ["titleText"]
  GETTABLEKS R4 R0 K2 ["bodyText"]
  SETTABLEKS R4 R3 K2 ["bodyText"]
  GETTABLEKS R4 R0 K3 ["confirmText"]
  SETTABLEKS R4 R3 K3 ["confirmText"]
  GETTABLEKS R4 R0 K4 ["cancelText"]
  SETTABLEKS R4 R3 K4 ["cancelText"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K5 ["onConfirm"]
  JUMPIF R4 [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["goToHomePage"]
  SETTABLEKS R4 R3 K5 ["onConfirm"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K12 ["closeMenu"]
  SETTABLEKS R4 R3 K6 ["onCancel"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K7 ["canGamepadCaptureFocus"]
  SETTABLEKS R4 R3 K7 ["canGamepadCaptureFocus"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["props"]
  GETTABLEKS R4 R5 K8 ["canKeyboardCaptureFocus"]
  SETTABLEKS R4 R3 K8 ["canKeyboardCaptureFocus"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R2 K4 [{"titleText", "bodyText", "confirmText", "cancelText"}]
  LOADK R3 K5 ["CoreScripts.InGameMenu.Prompt.LeaveGameTitle"]
  SETTABLEKS R3 R2 K0 ["titleText"]
  LOADK R3 K6 ["CoreScripts.InGameMenu.Prompt.LeaveGameBodyText"]
  SETTABLEKS R3 R2 K1 ["bodyText"]
  LOADK R3 K7 ["CoreScripts.InGameMenu.Prompt.BackToHome"]
  SETTABLEKS R3 R2 K2 ["confirmText"]
  LOADK R3 K8 ["CoreScripts.InGameMenu.Prompt.ResumeGame"]
  SETTABLEKS R3 R2 K3 ["cancelText"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  LOADB R2 0
  GETTABLEKS R3 R0 K0 ["menuPage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["LeaveToAppPromptPageKey"]
  JUMPIFNOTEQ R3 R4 [+25]
  LOADB R2 0
  GETTABLEKS R4 R0 K2 ["displayOptions"]
  GETTABLEKS R3 R4 K3 ["inputType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["InputType"]
  GETTABLEKS R4 R5 K5 ["Gamepad"]
  JUMPIFNOTEQ R3 R4 [+13]
  GETTABLEKS R4 R0 K6 ["respawn"]
  GETTABLEKS R3 R4 K7 ["dialogOpen"]
  NOT R2 R3
  JUMPIFNOT R2 [+6]
  GETTABLEKS R3 R0 K8 ["currentZone"]
  JUMPIFEQKN R3 K9 [1] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADB R3 0
  GETTABLEKS R4 R0 K0 ["menuPage"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["LeaveToAppPromptPageKey"]
  JUMPIFNOTEQ R4 R5 [+18]
  LOADB R3 0
  GETTABLEKS R5 R0 K2 ["displayOptions"]
  GETTABLEKS R4 R5 K3 ["inputType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["InputType"]
  GETTABLEKS R5 R6 K10 ["MouseAndKeyboard"]
  JUMPIFNOTEQ R4 R5 [+6]
  GETTABLEKS R5 R0 K6 ["respawn"]
  GETTABLEKS R4 R5 K7 ["dialogOpen"]
  NOT R3 R4
  DUPTABLE R4 K13 [{"canGamepadCaptureFocus", "canKeyboardCaptureFocus"}]
  SETTABLEKS R2 R4 K11 ["canGamepadCaptureFocus"]
  SETTABLEKS R3 R4 K12 ["canKeyboardCaptureFocus"]
  RETURN R4 1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"closeMenu"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closeMenu"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R1 K7 ["Workspace"]
  GETTABLEKS R5 R6 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["LinkingProtocol"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["LinkingProtocol"]
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["InGameMenuDependencies"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["Roact"]
  GETTABLEKS R5 R3 K12 ["RoactRodux"]
  GETTABLEKS R6 R3 K13 ["t"]
  GETIMPORT R7 K6 [require]
  GETIMPORT R10 K15 [script]
  GETTABLEKS R9 R10 K16 ["Parent"]
  GETTABLEKS R8 R9 K17 ["LeavePrompt"]
  CALL R7 1 1
  GETIMPORT R12 K15 [script]
  GETTABLEKS R11 R12 K16 ["Parent"]
  GETTABLEKS R10 R11 K16 ["Parent"]
  GETTABLEKS R9 R10 K16 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Parent"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R8 K18 ["Localization"]
  GETTABLEKS R10 R11 K19 ["withLocalization"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R8 K20 ["Thunks"]
  GETTABLEKS R11 R12 K21 ["CloseMenu"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R8 K22 ["Utility"]
  GETTABLEKS R12 R13 K23 ["SendAnalytics"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R8 K24 ["Resources"]
  GETTABLEKS R13 R14 K25 ["Constants"]
  CALL R12 1 1
  GETTABLEKS R13 R4 K26 ["PureComponent"]
  LOADK R15 K27 ["LeaveToAppPrompt"]
  NAMECALL R13 R13 K28 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R6 K29 ["strictInterface"]
  DUPTABLE R15 K35 [{"closeMenu", "canGamepadCaptureFocus", "canKeyboardCaptureFocus", "onConfirm", "linkingProtocol"}]
  GETTABLEKS R16 R6 K36 ["callback"]
  SETTABLEKS R16 R15 K30 ["closeMenu"]
  GETTABLEKS R16 R6 K37 ["optional"]
  GETTABLEKS R17 R6 K38 ["boolean"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["canGamepadCaptureFocus"]
  GETTABLEKS R16 R6 K37 ["optional"]
  GETTABLEKS R17 R6 K38 ["boolean"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["canKeyboardCaptureFocus"]
  GETTABLEKS R16 R6 K37 ["optional"]
  GETTABLEKS R17 R6 K36 ["callback"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K33 ["onConfirm"]
  GETTABLEKS R16 R6 K39 ["table"]
  SETTABLEKS R16 R15 K34 ["linkingProtocol"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K40 ["validateProps"]
  DUPTABLE R14 K41 [{"linkingProtocol"}]
  GETTABLEKS R15 R2 K42 ["default"]
  SETTABLEKS R15 R14 K34 ["linkingProtocol"]
  SETTABLEKS R14 R13 K43 ["defaultProps"]
  DUPCLOSURE R14 K44 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K45 ["init"]
  DUPCLOSURE R14 K46 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K47 ["render"]
  GETTABLEKS R14 R5 K48 ["UNSTABLE_connect2"]
  DUPCLOSURE R15 K49 [PROTO_4]
  CAPTURE VAL R12
  DUPCLOSURE R16 K50 [PROTO_6]
  CAPTURE VAL R10
  CALL R14 2 1
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1
