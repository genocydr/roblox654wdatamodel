PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["buttonRef"]
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K3 [Enum.ContextActionResult.Sink]
  RETURN R2 1

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["ReportSentDialogGroup"]
  NAMECALL R0 R0 K1 ["RemoveSelectionGroup"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADK R2 K0 ["ReportSentDialogGroup"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["buttonRef"]
  NAMECALL R3 R3 K3 ["getValue"]
  CALL R3 1 -1
  NAMECALL R0 R0 K4 ["AddSelectionParent"]
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["buttonRef"]
  NAMECALL R1 R1 K3 ["getValue"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["SelectedCoreObject"]
  GETUPVAL R0 2
  LOADK R2 K6 ["ReporSentDialogSinkAction"]
  DUPCLOSURE R3 K7 [PROTO_1]
  LOADB R4 0
  GETIMPORT R5 K11 [Enum.KeyCode.ButtonB]
  GETIMPORT R6 K13 [Enum.KeyCode.ButtonY]
  GETIMPORT R7 K15 [Enum.KeyCode.ButtonX]
  NAMECALL R0 R0 K16 ["BindCoreAction"]
  CALL R0 7 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["ReporSentDialogSinkAction"]
  NAMECALL R0 R0 K1 ["UnbindCoreAction"]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K2 ["ReportSentDialogGroup"]
  NAMECALL R0 R0 K3 ["RemoveSelectionGroup"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"isFocused", "didFocus", "didBlur"}]
  LOADB R4 0
  GETTABLEKS R6 R0 K5 ["props"]
  GETTABLEKS R5 R6 K6 ["inputType"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["InputType"]
  GETTABLEKS R6 R7 K8 ["Gamepad"]
  JUMPIFNOTEQ R5 R6 [+5]
  GETTABLEKS R5 R0 K5 ["props"]
  GETTABLEKS R4 R5 K9 ["isReportSentOpen"]
  SETTABLEKS R4 R3 K1 ["isFocused"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R4 R3 K2 ["didFocus"]
  DUPCLOSURE R4 K10 [PROTO_3]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U3
  SETTABLEKS R4 R3 K3 ["didBlur"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K3 [{"Dialog", "FocusHandler"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K12 [{"titleText", "bodyText", "dismissText", "iconImage", "buttonRef", "onDismiss", "visible"}]
  GETTABLEKS R6 R0 K5 ["titleText"]
  SETTABLEKS R6 R5 K5 ["titleText"]
  GETTABLEKS R6 R0 K6 ["bodyText"]
  SETTABLEKS R6 R5 K6 ["bodyText"]
  GETTABLEKS R6 R0 K7 ["dismissText"]
  SETTABLEKS R6 R5 K7 ["dismissText"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["Images"]
  GETTABLEKS R6 R7 K14 ["SuccessTick"]
  SETTABLEKS R6 R5 K8 ["iconImage"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["buttonRef"]
  SETTABLEKS R6 R5 K9 ["buttonRef"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K15 ["props"]
  GETTABLEKS R6 R7 K10 ["onDismiss"]
  SETTABLEKS R6 R5 K10 ["onDismiss"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K15 ["props"]
  GETTABLEKS R6 R7 K16 ["isReportSentOpen"]
  SETTABLEKS R6 R5 K11 ["visible"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["Dialog"]
  GETUPVAL R3 3
  NAMECALL R3 R3 K17 ["renderFocusHandler"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["FocusHandler"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R2 K3 [{"titleText", "bodyText", "dismissText"}]
  LOADK R3 K4 ["CoreScripts.InGameMenu.Report.ThanksForReport"]
  SETTABLEKS R3 R2 K0 ["titleText"]
  LOADK R3 K5 ["CoreScripts.InGameMenu.Report.WillReviewBody"]
  SETTABLEKS R3 R2 K1 ["bodyText"]
  LOADK R3 K6 ["CoreScripts.InGameMenu.Ok"]
  SETTABLEKS R3 R2 K2 ["dismissText"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  DUPTABLE R2 K2 [{"isReportSentOpen", "inputType"}]
  GETTABLEKS R4 R0 K3 ["report"]
  GETTABLEKS R3 R4 K4 ["reportSentOpen"]
  SETTABLEKS R3 R2 K0 ["isReportSentOpen"]
  GETTABLEKS R4 R0 K5 ["displayOptions"]
  GETTABLEKS R3 R4 K1 ["inputType"]
  SETTABLEKS R3 R2 K1 ["inputType"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"onDismiss"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onDismiss"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ContextActionService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["InGameMenuDependencies"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["Roact"]
  GETTABLEKS R5 R3 K11 ["RoactRodux"]
  GETTABLEKS R6 R3 K12 ["t"]
  GETIMPORT R10 K14 [script]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R10 R7 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["Assets"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R7 K18 ["Actions"]
  GETTABLEKS R10 R11 K19 ["CloseReportSentDialog"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R7 K16 ["Resources"]
  GETTABLEKS R11 R12 K20 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R7 K21 ["Localization"]
  GETTABLEKS R12 R13 K22 ["withLocalization"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R7 K23 ["Components"]
  GETTABLEKS R13 R14 K24 ["InfoDialog"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETIMPORT R18 K14 [script]
  GETTABLEKS R17 R18 K15 ["Parent"]
  GETTABLEKS R16 R17 K15 ["Parent"]
  GETTABLEKS R15 R16 K25 ["Connection"]
  GETTABLEKS R14 R15 K26 ["FocusHandler"]
  CALL R13 1 1
  GETTABLEKS R14 R6 K27 ["strictInterface"]
  DUPTABLE R15 K31 [{"isReportSentOpen", "onDismiss", "inputType"}]
  GETTABLEKS R16 R6 K32 ["boolean"]
  SETTABLEKS R16 R15 K28 ["isReportSentOpen"]
  GETTABLEKS R16 R6 K33 ["callback"]
  SETTABLEKS R16 R15 K29 ["onDismiss"]
  GETTABLEKS R16 R6 K34 ["optional"]
  GETTABLEKS R17 R6 K35 ["string"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K30 ["inputType"]
  CALL R14 1 1
  GETTABLEKS R15 R4 K36 ["PureComponent"]
  LOADK R17 K37 ["ReportSentDialog"]
  NAMECALL R15 R15 K38 ["extend"]
  CALL R15 2 1
  SETTABLEKS R14 R15 K39 ["validateProps"]
  DUPCLOSURE R16 K40 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K41 ["init"]
  DUPCLOSURE R16 K42 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R16 R15 K43 ["renderFocusHandler"]
  DUPCLOSURE R16 K44 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R8
  SETTABLEKS R16 R15 K45 ["render"]
  GETTABLEKS R16 R5 K46 ["UNSTABLE_connect2"]
  DUPCLOSURE R17 K47 [PROTO_7]
  DUPCLOSURE R18 K48 [PROTO_9]
  CAPTURE VAL R9
  CALL R16 2 1
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1
