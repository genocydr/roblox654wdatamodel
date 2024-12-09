PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["leaveButtonRef"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["leaveButtonRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  SETTABLEKS R1 R0 K2 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K3 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R2 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["props"]
  GETTABLEKS R2 R3 K5 ["onConfirm"]
  CALL R2 0 0
  GETIMPORT R2 K8 [Enum.ContextActionResult.Sink]
  RETURN R2 1
  GETIMPORT R2 K10 [Enum.ContextActionResult.Pass]
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["LeavePromptConfirm"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  LOADB R4 0
  GETIMPORT R5 K4 [Enum.KeyCode.Return]
  NAMECALL R0 R0 K5 ["BindCoreAction"]
  CALL R0 5 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADK R2 K0 ["LeavePromptConfirm"]
  NAMECALL R0 R0 K1 ["UnbindCoreAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["Font"]
  DUPTABLE R2 K6 [{"Layout", "GameThumbnail", "TitleText", "BodyText", "ButtonGroup"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  LOADK R4 K8 ["UIListLayout"]
  DUPTABLE R5 K14 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
  GETIMPORT R6 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K9 ["FillDirection"]
  GETIMPORT R6 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K10 ["HorizontalAlignment"]
  GETIMPORT R6 K20 [Enum.VerticalAlignment.Center]
  SETTABLEKS R6 R5 K11 ["VerticalAlignment"]
  GETIMPORT R6 K23 [UDim.new]
  LOADN R7 0
  LOADN R8 24
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Padding"]
  GETIMPORT R6 K25 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K13 ["SortOrder"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["Layout"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K29 [{"gameId", "iconSize", "layoutOrder"}]
  GETIMPORT R7 K31 [game]
  GETTABLEKS R6 R7 K32 ["GameId"]
  SETTABLEKS R6 R5 K26 ["gameId"]
  LOADN R6 100
  SETTABLEKS R6 R5 K27 ["iconSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K28 ["layoutOrder"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["GameThumbnail"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K37 [{"fontKey", "themeKey", "LayoutOrder", "Size", "Text"}]
  LOADK R6 K38 ["Header1"]
  SETTABLEKS R6 R5 K33 ["fontKey"]
  LOADK R6 K39 ["TextEmphasis"]
  SETTABLEKS R6 R5 K34 ["themeKey"]
  LOADN R6 2
  SETTABLEKS R6 R5 K24 ["LayoutOrder"]
  GETIMPORT R6 K41 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R13 R1 K38 ["Header1"]
  GETTABLEKS R12 R13 K43 ["RelativeSize"]
  GETTABLEKS R13 R1 K44 ["BaseSize"]
  MUL R11 R12 R13
  ADDK R10 R11 K42 [4]
  CALL R6 4 1
  SETTABLEKS R6 R5 K35 ["Size"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K45 ["props"]
  GETTABLEKS R6 R7 K46 ["titleText"]
  SETTABLEKS R6 R5 K36 ["Text"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["TitleText"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K48 [{"fontKey", "themeKey", "LayoutOrder", "Size", "Text", "TextWrapped"}]
  LOADK R6 K49 ["Body"]
  SETTABLEKS R6 R5 K33 ["fontKey"]
  LOADK R6 K50 ["TextDefault"]
  SETTABLEKS R6 R5 K34 ["themeKey"]
  LOADN R6 3
  SETTABLEKS R6 R5 K24 ["LayoutOrder"]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+21]
  GETUPVAL R7 5
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K51 ["QuestVR"]
  CALL R7 1 1
  JUMPIFNOT R7 [+15]
  GETIMPORT R6 K53 [UDim2.fromOffset]
  LOADN R7 97
  LOADN R9 4
  GETTABLEKS R13 R1 K49 ["Body"]
  GETTABLEKS R12 R13 K43 ["RelativeSize"]
  GETTABLEKS R13 R1 K44 ["BaseSize"]
  MUL R11 R12 R13
  ADDK R10 R11 K42 [4]
  MUL R8 R9 R10
  CALL R6 2 1
  JUMP [+14]
  GETIMPORT R6 K53 [UDim2.fromOffset]
  LOADN R7 97
  LOADN R9 2
  GETTABLEKS R13 R1 K49 ["Body"]
  GETTABLEKS R12 R13 K43 ["RelativeSize"]
  GETTABLEKS R13 R1 K44 ["BaseSize"]
  MUL R11 R12 R13
  ADDK R10 R11 K42 [4]
  MUL R8 R9 R10
  CALL R6 2 1
  SETTABLEKS R6 R5 K35 ["Size"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K45 ["props"]
  GETTABLEKS R6 R7 K54 ["bodyText"]
  SETTABLEKS R6 R5 K36 ["Text"]
  LOADB R6 1
  SETTABLEKS R6 R5 K47 ["TextWrapped"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["BodyText"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  LOADK R4 K55 ["Frame"]
  DUPTABLE R5 K57 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K56 ["BackgroundTransparency"]
  GETIMPORT R6 K53 [UDim2.fromOffset]
  LOADN R7 97
  LOADN R8 84
  CALL R6 2 1
  SETTABLEKS R6 R5 K35 ["Size"]
  LOADN R6 4
  SETTABLEKS R6 R5 K24 ["LayoutOrder"]
  DUPTABLE R6 K60 [{"ConfirmButton", "CancelButton"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 7
  DUPTABLE R9 K67 [{"buttonType", "layoutOrder", "position", "size", "onActivated", "text", "buttonRef"}]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K68 ["PrimarySystem"]
  SETTABLEKS R10 R9 K61 ["buttonType"]
  LOADN R10 4
  SETTABLEKS R10 R9 K28 ["layoutOrder"]
  GETIMPORT R10 K53 [UDim2.fromOffset]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K62 ["position"]
  GETIMPORT R10 K53 [UDim2.fromOffset]
  LOADN R11 97
  LOADN R12 36
  CALL R10 2 1
  SETTABLEKS R10 R9 K63 ["size"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K45 ["props"]
  GETTABLEKS R10 R11 K69 ["onConfirm"]
  SETTABLEKS R10 R9 K64 ["onActivated"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K45 ["props"]
  GETTABLEKS R10 R11 K70 ["confirmText"]
  SETTABLEKS R10 R9 K65 ["text"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K71 ["leaveButtonRef"]
  SETTABLEKS R10 R9 K66 ["buttonRef"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K58 ["ConfirmButton"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 7
  DUPTABLE R9 K72 [{"buttonType", "layoutOrder", "position", "size", "onActivated", "text"}]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K73 ["Secondary"]
  SETTABLEKS R10 R9 K61 ["buttonType"]
  LOADN R10 5
  SETTABLEKS R10 R9 K28 ["layoutOrder"]
  GETIMPORT R10 K53 [UDim2.fromOffset]
  LOADN R11 0
  LOADN R12 48
  CALL R10 2 1
  SETTABLEKS R10 R9 K62 ["position"]
  GETIMPORT R10 K53 [UDim2.fromOffset]
  LOADN R11 97
  LOADN R12 36
  CALL R10 2 1
  SETTABLEKS R10 R9 K63 ["size"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K45 ["props"]
  GETTABLEKS R10 R11 K74 ["onCancel"]
  SETTABLEKS R10 R9 K64 ["onActivated"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K45 ["props"]
  GETTABLEKS R10 R11 K75 ["cancelText"]
  SETTABLEKS R10 R9 K65 ["text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K59 ["CancelButton"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K5 ["ButtonGroup"]
  DUPTABLE R3 K80 [{"Content", "FocusHandler", "ZonePortal", "KeyboardFocusHandler"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  LOADK R5 K55 ["Frame"]
  DUPTABLE R6 K82 [{"Size", "BackgroundTransparency", "Selectable"}]
  GETIMPORT R7 K84 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K35 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K56 ["BackgroundTransparency"]
  LOADB R7 0
  SETTABLEKS R7 R6 K81 ["Selectable"]
  MOVE R7 R2
  CALL R4 3 1
  SETTABLEKS R4 R3 K76 ["Content"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 9
  DUPTABLE R6 K87 [{"isFocused", "didFocus"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K45 ["props"]
  GETTABLEKS R7 R8 K88 ["canGamepadCaptureFocus"]
  SETTABLEKS R7 R6 K85 ["isFocused"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U3
  SETTABLEKS R7 R6 K86 ["didFocus"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K77 ["FocusHandler"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 11
  DUPTABLE R6 K91 [{"targetZone", "direction"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K89 ["targetZone"]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K92 ["Left"]
  SETTABLEKS R7 R6 K90 ["direction"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K78 ["ZonePortal"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 9
  DUPTABLE R7 K95 [{"isFocused", "didFocus", "didBlur"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K45 ["props"]
  GETTABLEKS R8 R9 K96 ["canKeyboardCaptureFocus"]
  SETTABLEKS R8 R7 K85 ["isFocused"]
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U13
  CAPTURE UPVAL U3
  SETTABLEKS R8 R7 K86 ["didFocus"]
  DUPCLOSURE R8 K97 [PROTO_4]
  CAPTURE UPVAL U13
  SETTABLEKS R8 R7 K94 ["didBlur"]
  CALL R5 2 1
  ORK R4 R5 K93 []
  SETTABLEKS R4 R3 K79 ["KeyboardFocusHandler"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  LOADK R5 K98 ["ImageButton"]
  DUPTABLE R6 K101 [{"Size", "AutoButtonColor", "BackgroundColor3", "BackgroundTransparency", "Selectable"}]
  GETIMPORT R7 K84 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K35 ["Size"]
  LOADB R7 0
  SETTABLEKS R7 R6 K99 ["AutoButtonColor"]
  GETTABLEKS R9 R0 K102 ["Theme"]
  GETTABLEKS R8 R9 K103 ["BackgroundDefault"]
  GETTABLEKS R7 R8 K104 ["Color"]
  SETTABLEKS R7 R6 K100 ["BackgroundColor3"]
  GETTABLEKS R9 R0 K102 ["Theme"]
  GETTABLEKS R8 R9 K103 ["BackgroundDefault"]
  GETTABLEKS R7 R8 K105 ["Transparency"]
  SETTABLEKS R7 R6 K56 ["BackgroundTransparency"]
  LOADB R7 0
  SETTABLEKS R7 R6 K81 ["Selectable"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CALL R1 1 -1
  RETURN R1 -1

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
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R5 K7 ["RobloxGui"]
  NAMECALL R3 R3 K8 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["InGameMenuDependencies"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["Roact"]
  GETTABLEKS R6 R4 K14 ["UIBlox"]
  GETTABLEKS R7 R4 K15 ["t"]
  GETIMPORT R11 K17 [script]
  GETTABLEKS R10 R11 K18 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Parent"]
  GETTABLEKS R8 R9 K18 ["Parent"]
  GETTABLEKS R9 R8 K18 ["Parent"]
  GETIMPORT R10 K10 [require]
  GETTABLEKS R11 R8 K19 ["GameIcon"]
  CALL R10 1 1
  GETTABLEKS R13 R6 K20 ["App"]
  GETTABLEKS R12 R13 K21 ["Button"]
  GETTABLEKS R11 R12 K21 ["Button"]
  GETTABLEKS R15 R6 K20 ["App"]
  GETTABLEKS R14 R15 K21 ["Button"]
  GETTABLEKS R13 R14 K22 ["Enum"]
  GETTABLEKS R12 R13 K23 ["ButtonType"]
  GETIMPORT R13 K10 [require]
  GETTABLEKS R14 R8 K24 ["ThemedTextLabel"]
  CALL R13 1 1
  GETTABLEKS R16 R6 K25 ["Core"]
  GETTABLEKS R15 R16 K26 ["Style"]
  GETTABLEKS R14 R15 K27 ["withStyle"]
  GETIMPORT R15 K10 [require]
  GETTABLEKS R17 R8 K28 ["Connection"]
  GETTABLEKS R16 R17 K29 ["FocusHandler"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R17 R8 K30 ["ZonePortal"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R19 R9 K31 ["Enums"]
  GETTABLEKS R18 R19 K32 ["Direction"]
  CALL R17 1 1
  GETIMPORT R18 K10 [require]
  GETTABLEKS R22 R3 K33 ["Modules"]
  GETTABLEKS R21 R22 K34 ["FTUX"]
  GETTABLEKS R20 R21 K35 ["Flags"]
  GETTABLEKS R19 R20 K36 ["GetFFlagEnableVRFTUXExperience"]
  CALL R18 1 1
  GETIMPORT R19 K10 [require]
  GETTABLEKS R23 R3 K33 ["Modules"]
  GETTABLEKS R22 R23 K34 ["FTUX"]
  GETTABLEKS R21 R22 K37 ["Utility"]
  GETTABLEKS R20 R21 K38 ["IsFTUXExperience"]
  CALL R19 1 1
  GETIMPORT R20 K10 [require]
  GETTABLEKS R24 R3 K33 ["Modules"]
  GETTABLEKS R23 R24 K34 ["FTUX"]
  GETTABLEKS R22 R23 K31 ["Enums"]
  GETTABLEKS R21 R22 K39 ["PlatformEnum"]
  CALL R20 1 1
  GETTABLEKS R21 R5 K40 ["PureComponent"]
  LOADK R23 K41 ["LeavePrompt"]
  NAMECALL R21 R21 K42 ["extend"]
  CALL R21 2 1
  GETTABLEKS R22 R7 K43 ["strictInterface"]
  DUPTABLE R23 K52 [{"titleText", "bodyText", "confirmText", "cancelText", "onConfirm", "onCancel", "canGamepadCaptureFocus", "canKeyboardCaptureFocus"}]
  GETTABLEKS R24 R7 K53 ["string"]
  SETTABLEKS R24 R23 K44 ["titleText"]
  GETTABLEKS R24 R7 K53 ["string"]
  SETTABLEKS R24 R23 K45 ["bodyText"]
  GETTABLEKS R24 R7 K53 ["string"]
  SETTABLEKS R24 R23 K46 ["confirmText"]
  GETTABLEKS R24 R7 K53 ["string"]
  SETTABLEKS R24 R23 K47 ["cancelText"]
  GETTABLEKS R24 R7 K54 ["callback"]
  SETTABLEKS R24 R23 K48 ["onConfirm"]
  GETTABLEKS R24 R7 K54 ["callback"]
  SETTABLEKS R24 R23 K49 ["onCancel"]
  GETTABLEKS R24 R7 K55 ["boolean"]
  SETTABLEKS R24 R23 K50 ["canGamepadCaptureFocus"]
  GETTABLEKS R24 R7 K55 ["boolean"]
  SETTABLEKS R24 R23 K51 ["canKeyboardCaptureFocus"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K56 ["validateProps"]
  DUPTABLE R22 K57 [{"canGamepadCaptureFocus", "canKeyboardCaptureFocus"}]
  LOADB R23 0
  SETTABLEKS R23 R22 K50 ["canGamepadCaptureFocus"]
  LOADB R23 0
  SETTABLEKS R23 R22 K51 ["canKeyboardCaptureFocus"]
  SETTABLEKS R22 R21 K58 ["defaultProps"]
  DUPCLOSURE R22 K59 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R22 R21 K60 ["init"]
  DUPCLOSURE R22 K61 [PROTO_6]
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R2
  SETTABLEKS R22 R21 K62 ["render"]
  RETURN R21 1
