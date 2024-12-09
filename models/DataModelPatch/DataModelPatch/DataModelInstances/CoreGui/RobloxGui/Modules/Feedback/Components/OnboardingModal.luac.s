PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["showOnboardingModal"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ToggleCaptureMode"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onDismiss"]
  DUPCLOSURE R1 K1 [PROTO_1]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K2 ["onCancel"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"visible", "screenSize", "titleText", "maxHeight", "maxWidth", "showCloseButton", "actionButtons", "contents", "onDismiss"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["props"]
  GETTABLEKS R4 R5 K1 ["visible"]
  SETTABLEKS R4 R3 K1 ["visible"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["props"]
  GETTABLEKS R4 R5 K2 ["screenSize"]
  SETTABLEKS R4 R3 K2 ["screenSize"]
  GETTABLEKS R4 R0 K12 ["mainHeader"]
  SETTABLEKS R4 R3 K3 ["titleText"]
  LOADN R4 200
  SETTABLEKS R4 R3 K4 ["maxHeight"]
  LOADN R4 28
  SETTABLEKS R4 R3 K5 ["maxWidth"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["showCloseButton"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K15 [{"buttonHeight", "buttons"}]
  LOADN R7 36
  SETTABLEKS R7 R6 K13 ["buttonHeight"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K17 [{"buttonType", "props"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K18 ["Secondary"]
  SETTABLEKS R9 R8 K16 ["buttonType"]
  DUPTABLE R9 K21 [{"onActivated", "text"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K22 ["onCancel"]
  SETTABLEKS R10 R9 K19 ["onActivated"]
  GETTABLEKS R10 R0 K23 ["cancel"]
  SETTABLEKS R10 R9 K20 ["text"]
  SETTABLEKS R9 R8 K11 ["props"]
  DUPTABLE R9 K17 [{"buttonType", "props"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K24 ["PrimarySystem"]
  SETTABLEKS R10 R9 K16 ["buttonType"]
  DUPTABLE R10 K26 [{"isDisabled", "onActivated", "text"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K25 ["isDisabled"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["onDismiss"]
  SETTABLEKS R11 R10 K19 ["onActivated"]
  GETTABLEKS R11 R0 K27 ["start"]
  SETTABLEKS R11 R10 K20 ["text"]
  SETTABLEKS R10 R9 K11 ["props"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K14 ["buttons"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["actionButtons"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K28 ["Frame"]
  DUPTABLE R6 K31 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K29 ["BackgroundTransparency"]
  GETIMPORT R7 K34 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K30 ["Size"]
  DUPTABLE R7 K38 [{"Padding", "Layout", "InstructionLabel"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K39 ["UIPadding"]
  DUPTABLE R10 K43 [{"PaddingLeft", "PaddingRight", "PaddingBottom"}]
  GETIMPORT R11 K46 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K40 ["PaddingLeft"]
  GETIMPORT R11 K46 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K41 ["PaddingRight"]
  GETIMPORT R11 K46 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K42 ["PaddingBottom"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K35 ["Padding"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K47 ["UIListLayout"]
  DUPTABLE R10 K51 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R11 K54 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K48 ["HorizontalAlignment"]
  GETIMPORT R11 K56 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K49 ["SortOrder"]
  GETIMPORT R11 K58 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K50 ["VerticalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K36 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K66 [{"LayoutOrder", "fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextWrapped", "TextXAlignment"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K55 ["LayoutOrder"]
  LOADK R11 K67 ["Body"]
  SETTABLEKS R11 R10 K59 ["fontKey"]
  LOADK R11 K68 ["TextDefault"]
  SETTABLEKS R11 R10 K60 ["themeKey"]
  GETIMPORT R11 K70 [Vector2.new]
  LOADN R12 0
  LOADK R13 K71 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K61 ["AnchorPoint"]
  GETIMPORT R11 K72 [UDim2.new]
  LOADN R12 0
  LOADN R13 76
  LOADK R14 K71 [0.5]
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K62 ["Position"]
  GETIMPORT R11 K72 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADK R14 K73 [0.4]
  LOADN R15 36
  CALL R11 4 1
  SETTABLEKS R11 R10 K30 ["Size"]
  GETTABLEKS R11 R0 K74 ["instructionLabel"]
  SETTABLEKS R11 R10 K63 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K64 ["TextWrapped"]
  GETIMPORT R11 K76 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K65 ["TextXAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K37 ["InstructionLabel"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K8 ["contents"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["onDismiss"]
  SETTABLEKS R4 R3 K9 ["onDismiss"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R2 K4 [{"mainHeader", "instructionLabel", "cancel", "start"}]
  LOADK R3 K5 ["CoreScripts.Feedback.Onboarding.MainHeader"]
  SETTABLEKS R3 R2 K0 ["mainHeader"]
  LOADK R3 K6 ["CoreScripts.Feedback.Onboarding.Instructions"]
  SETTABLEKS R3 R2 K1 ["instructionLabel"]
  LOADK R3 K7 ["CoreScripts.Feedback.Onboarding.Cancel"]
  SETTABLEKS R3 R2 K2 ["cancel"]
  LOADK R3 K8 ["CoreScripts.Feedback.Onboarding.Start"]
  SETTABLEKS R3 R2 K3 ["start"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  DUPTABLE R1 K2 [{"screenSize", "visible"}]
  GETTABLEKS R3 R0 K3 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K4 ["common"]
  GETTABLEKS R2 R3 K5 ["showOnboardingModal"]
  SETTABLEKS R2 R1 K1 ["visible"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"showOnboardingModal"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["showOnboardingModal"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["UIBlox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K10 ["ExperienceStateCaptureService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R5 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["PortedComponents"]
  GETTABLEKS R7 R8 K16 ["ThemedTextLabel"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R5 K14 ["Components"]
  GETTABLEKS R8 R9 K17 ["ModalDialog"]
  CALL R7 1 1
  GETTABLEKS R10 R1 K18 ["App"]
  GETTABLEKS R9 R10 K19 ["Button"]
  GETTABLEKS R8 R9 K20 ["ButtonStack"]
  GETTABLEKS R12 R1 K18 ["App"]
  GETTABLEKS R11 R12 K19 ["Button"]
  GETTABLEKS R10 R11 K21 ["Enum"]
  GETTABLEKS R9 R10 K22 ["ButtonType"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R5 K23 ["Thunks"]
  GETTABLEKS R11 R12 K24 ["ShowOnboardingModalThunk"]
  CALL R10 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K25 ["Workspace"]
  GETTABLEKS R14 R15 K6 ["Packages"]
  GETTABLEKS R13 R14 K26 ["Localization"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K27 ["withLocalization"]
  GETTABLEKS R12 R2 K28 ["PureComponent"]
  LOADK R14 K29 ["OnboardingModal"]
  NAMECALL R12 R12 K30 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K31 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K32 ["init"]
  DUPCLOSURE R13 K33 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K34 ["render"]
  GETTABLEKS R13 R3 K35 ["connect"]
  DUPCLOSURE R14 K36 [PROTO_5]
  DUPCLOSURE R15 K37 [PROTO_7]
  CAPTURE VAL R10
  CALL R13 2 1
  MOVE R14 R12
  CALL R13 1 -1
  RETURN R13 -1
