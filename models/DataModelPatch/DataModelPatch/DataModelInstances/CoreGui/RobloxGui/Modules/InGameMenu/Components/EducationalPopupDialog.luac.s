PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Portal"]
  DUPTABLE R3 K3 [{"target"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K2 ["target"]
  DUPTABLE R4 K5 [{"InGameMenuEducationalPopupDialog"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K6 ["ScreenGui"]
  DUPTABLE R7 K11 [{"IgnoreGuiInset", "OnTopOfCoreBlur", "Enabled", "ZIndexBehavior"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["IgnoreGuiInset"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["props"]
  GETTABLEKS R8 R9 K13 ["blurBackground"]
  SETTABLEKS R8 R7 K8 ["OnTopOfCoreBlur"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K12 ["props"]
  GETTABLEKS R8 R9 K14 ["visible"]
  SETTABLEKS R8 R7 K9 ["Enabled"]
  GETIMPORT R8 K17 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K10 ["ZIndexBehavior"]
  DUPTABLE R8 K20 [{"Overlay", "Popup"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K21 ["TextButton"]
  DUPTABLE R11 K28 [{"AutoButtonColor", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "Text"}]
  LOADB R12 0
  SETTABLEKS R12 R11 K22 ["AutoButtonColor"]
  GETTABLEKS R14 R0 K29 ["Theme"]
  GETTABLEKS R13 R14 K18 ["Overlay"]
  GETTABLEKS R12 R13 K30 ["Color"]
  SETTABLEKS R12 R11 K23 ["BackgroundColor3"]
  GETTABLEKS R14 R0 K29 ["Theme"]
  GETTABLEKS R13 R14 K18 ["Overlay"]
  GETTABLEKS R12 R13 K31 ["Transparency"]
  SETTABLEKS R12 R11 K24 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K25 ["BorderSizePixel"]
  GETIMPORT R12 K34 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["Size"]
  LOADK R12 K35 [""]
  SETTABLEKS R12 R11 K27 ["Text"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["Overlay"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K45 [{"bodyContents", "cancelText", "confirmText", "titleText", "titleBackgroundImageProps", "screenSize", "onDismiss", "onCancel", "onConfirm"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K36 ["bodyContents"]
  SETTABLEKS R12 R11 K36 ["bodyContents"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K37 ["cancelText"]
  SETTABLEKS R12 R11 K37 ["cancelText"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K38 ["confirmText"]
  SETTABLEKS R12 R11 K38 ["confirmText"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K39 ["titleText"]
  SETTABLEKS R12 R11 K39 ["titleText"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K40 ["titleBackgroundImageProps"]
  SETTABLEKS R12 R11 K40 ["titleBackgroundImageProps"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K41 ["screenSize"]
  SETTABLEKS R12 R11 K41 ["screenSize"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K42 ["onDismiss"]
  SETTABLEKS R12 R11 K42 ["onDismiss"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K43 ["onCancel"]
  SETTABLEKS R12 R11 K43 ["onCancel"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K12 ["props"]
  GETTABLEKS R12 R13 K44 ["onConfirm"]
  SETTABLEKS R12 R11 K44 ["onConfirm"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["Popup"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["InGameMenuEducationalPopupDialog"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K5 ["onDismiss"]
  CALL R3 0 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETUPVAL R2 0
  LOADK R4 K0 ["EducationalPopupConfirm"]
  MOVE R5 R1
  LOADB R6 0
  GETIMPORT R7 K4 [Enum.KeyCode.Escape]
  NAMECALL R2 R2 K5 ["BindCoreAction"]
  CALL R2 5 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["EducationalPopupConfirm"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["blurBackground"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["visible"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  MOVE R2 R1
  JUMPIFNOT R2 [+9]
  GETIMPORT R4 K4 [game]
  LOADK R6 K5 ["VRService"]
  NAMECALL R4 R4 K6 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K7 ["VREnabled"]
  NOT R2 R3
  MOVE R1 R2
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K8 ["SetRobloxGuiFocused"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  NAMECALL R1 R0 K0 ["updateBlur"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["visible"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K3 ["bindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["updateBlur"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["visible"]
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K3 ["bindActions"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K4 ["unbindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["blurBackground"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K2 ["SetRobloxGuiFocused"]
  CALL R1 2 0
  NAMECALL R1 R0 K3 ["unbindActions"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["ContextActionService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R2 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["InGameMenuDependencies"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["Roact"]
  GETTABLEKS R6 R4 K12 ["t"]
  GETTABLEKS R7 R4 K13 ["UIBlox"]
  GETTABLEKS R11 R7 K14 ["App"]
  GETTABLEKS R10 R11 K15 ["Dialog"]
  GETTABLEKS R9 R10 K16 ["Modal"]
  GETTABLEKS R8 R9 K17 ["EducationalModal"]
  GETTABLEKS R11 R7 K18 ["Core"]
  GETTABLEKS R10 R11 K19 ["Style"]
  GETTABLEKS R9 R10 K20 ["withStyle"]
  GETIMPORT R10 K8 [require]
  GETIMPORT R15 K22 [script]
  GETTABLEKS R14 R15 K23 ["Parent"]
  GETTABLEKS R13 R14 K23 ["Parent"]
  GETTABLEKS R12 R13 K24 ["Flags"]
  GETTABLEKS R11 R12 K25 ["FFlagFixExitDialogBlockVRView"]
  CALL R10 1 1
  GETTABLEKS R11 R5 K26 ["PureComponent"]
  LOADK R13 K27 ["EducationalPopupDialog"]
  NAMECALL R11 R11 K28 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R6 K29 ["strictInterface"]
  DUPTABLE R13 K41 [{"bodyContents", "cancelText", "confirmText", "titleText", "titleBackgroundImageProps", "screenSize", "onDismiss", "onCancel", "onConfirm", "blurBackground", "visible"}]
  GETTABLEKS R14 R6 K42 ["array"]
  GETTABLEKS R15 R6 K29 ["strictInterface"]
  DUPTABLE R16 K47 [{"icon", "text", "layoutOrder", "isSystemMenuIcon"}]
  GETTABLEKS R17 R6 K48 ["optional"]
  GETTABLEKS R18 R6 K49 ["union"]
  GETTABLEKS R19 R6 K50 ["string"]
  GETTABLEKS R20 R6 K51 ["table"]
  CALL R18 2 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K43 ["icon"]
  GETTABLEKS R17 R6 K50 ["string"]
  SETTABLEKS R17 R16 K44 ["text"]
  GETTABLEKS R17 R6 K48 ["optional"]
  GETTABLEKS R18 R6 K52 ["integer"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["layoutOrder"]
  GETTABLEKS R17 R6 K48 ["optional"]
  GETTABLEKS R18 R6 K53 ["boolean"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K46 ["isSystemMenuIcon"]
  CALL R15 1 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K30 ["bodyContents"]
  GETTABLEKS R14 R6 K50 ["string"]
  SETTABLEKS R14 R13 K31 ["cancelText"]
  GETTABLEKS R14 R6 K50 ["string"]
  SETTABLEKS R14 R13 K32 ["confirmText"]
  GETTABLEKS R14 R6 K48 ["optional"]
  GETTABLEKS R15 R6 K50 ["string"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K33 ["titleText"]
  GETTABLEKS R14 R6 K29 ["strictInterface"]
  DUPTABLE R15 K56 [{"image", "imageHeight", "text"}]
  GETTABLEKS R16 R6 K50 ["string"]
  SETTABLEKS R16 R15 K54 ["image"]
  GETTABLEKS R16 R6 K57 ["number"]
  SETTABLEKS R16 R15 K55 ["imageHeight"]
  GETTABLEKS R16 R6 K48 ["optional"]
  GETTABLEKS R17 R6 K50 ["string"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K44 ["text"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K34 ["titleBackgroundImageProps"]
  GETTABLEKS R14 R6 K58 ["Vector2"]
  SETTABLEKS R14 R13 K35 ["screenSize"]
  GETTABLEKS R14 R6 K59 ["callback"]
  SETTABLEKS R14 R13 K36 ["onDismiss"]
  GETTABLEKS R14 R6 K59 ["callback"]
  SETTABLEKS R14 R13 K37 ["onCancel"]
  GETTABLEKS R14 R6 K59 ["callback"]
  SETTABLEKS R14 R13 K38 ["onConfirm"]
  GETTABLEKS R14 R6 K53 ["boolean"]
  SETTABLEKS R14 R13 K39 ["blurBackground"]
  GETTABLEKS R14 R6 K53 ["boolean"]
  SETTABLEKS R14 R13 K40 ["visible"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K60 ["validateProps"]
  DUPTABLE R12 K61 [{"blurBackground"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K39 ["blurBackground"]
  SETTABLEKS R12 R11 K62 ["defaultProps"]
  DUPCLOSURE R12 K63 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K64 ["render"]
  DUPCLOSURE R12 K65 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K66 ["bindActions"]
  DUPCLOSURE R12 K67 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K68 ["unbindActions"]
  DUPCLOSURE R12 K69 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K70 ["updateBlur"]
  DUPCLOSURE R12 K71 [PROTO_6]
  SETTABLEKS R12 R11 K72 ["didMount"]
  DUPCLOSURE R12 K73 [PROTO_7]
  SETTABLEKS R12 R11 K74 ["didUpdate"]
  DUPCLOSURE R12 K75 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K76 ["willUnmount"]
  RETURN R11 1
