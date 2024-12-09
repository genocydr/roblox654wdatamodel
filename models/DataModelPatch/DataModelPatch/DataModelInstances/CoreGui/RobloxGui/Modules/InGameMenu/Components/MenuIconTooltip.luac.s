PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isTooltipOpen"]
  JUMPIFNOT R1 [+60]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Portal"]
  DUPTABLE R3 K5 [{"target"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K4 ["target"]
  DUPTABLE R4 K7 [{"TooltipScreenGui"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K8 ["ScreenGui"]
  DUPTABLE R7 K11 [{"IgnoreGuiInset", "ZIndexBehavior"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["IgnoreGuiInset"]
  GETIMPORT R8 K14 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K10 ["ZIndexBehavior"]
  DUPTABLE R8 K16 [{"Tooltip"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K22 [{"triggerPosition", "triggerSize", "bodyText", "onDismiss", "forceClickTriggerPoint"}]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K17 ["triggerPosition"]
  GETIMPORT R12 K25 [Vector2.new]
  LOADN R13 32
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["triggerSize"]
  GETTABLEKS R12 R0 K19 ["bodyText"]
  SETTABLEKS R12 R11 K19 ["bodyText"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["props"]
  GETTABLEKS R12 R13 K20 ["onDismiss"]
  SETTABLEKS R12 R11 K20 ["onDismiss"]
  LOADB R12 1
  SETTABLEKS R12 R11 K21 ["forceClickTriggerPoint"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Tooltip"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["TooltipScreenGui"]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"bodyText"}]
  LOADK R3 K2 ["CoreScripts.InGameMenu.EducationalPopup.MenuIconTooltip"]
  SETTABLEKS R3 R2 K0 ["bodyText"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  DUPTABLE R2 K1 [{"isTooltipOpen"}]
  GETTABLEKS R4 R0 K2 ["nativeClosePrompt"]
  GETTABLEKS R3 R4 K3 ["menuIconTooltipOpen"]
  SETTABLEKS R3 R2 K0 ["isTooltipOpen"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADB R2 0
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"onDismiss"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onDismiss"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["RoactRodux"]
  GETTABLEKS R5 R2 K11 ["t"]
  GETTABLEKS R6 R2 K12 ["UIBlox"]
  GETIMPORT R9 K14 [script]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R7 K16 ["Localization"]
  GETTABLEKS R9 R10 K17 ["withLocalization"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R7 K18 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetMenuIconTooltipOpen"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R7 K15 ["Parent"]
  GETTABLEKS R12 R13 K20 ["TopBar"]
  GETTABLEKS R11 R12 K21 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R13 R6 K22 ["App"]
  GETTABLEKS R12 R13 K23 ["Dialog"]
  GETTABLEKS R11 R12 K24 ["Tooltip"]
  GETIMPORT R12 K27 [Vector2.new]
  GETTABLEKS R13 R10 K28 ["ScreenSideOffset"]
  GETTABLEKS R15 R10 K30 ["TopBarHeight"]
  SUBK R14 R15 K29 [32]
  CALL R12 2 1
  GETTABLEKS R13 R3 K31 ["PureComponent"]
  LOADK R15 K32 ["MenuIconTooltip"]
  NAMECALL R13 R13 K33 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R5 K34 ["strictInterface"]
  DUPTABLE R15 K37 [{"isTooltipOpen", "onDismiss"}]
  GETTABLEKS R16 R5 K38 ["boolean"]
  SETTABLEKS R16 R15 K35 ["isTooltipOpen"]
  GETTABLEKS R16 R5 K39 ["callback"]
  SETTABLEKS R16 R15 K36 ["onDismiss"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K40 ["validateProps"]
  DUPCLOSURE R14 K41 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K42 ["render"]
  GETTABLEKS R14 R4 K43 ["UNSTABLE_connect2"]
  DUPCLOSURE R15 K44 [PROTO_2]
  DUPCLOSURE R16 K45 [PROTO_4]
  CAPTURE VAL R9
  CALL R14 2 1
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1
