PROTO_0:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R3 [+4]
  GETIMPORT R3 K6 [Enum.ContextActionResult.Pass]
  RETURN R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["props"]
  GETTABLEKS R3 R4 K8 ["onConfirm"]
  CALL R3 0 0
  GETIMPORT R3 K10 [Enum.ContextActionResult.Sink]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["guiService"]
  SETTABLEKS R1 R0 K1 ["guiService"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onConfirmBindingAction"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K7 [{"BackgroundTransparency", "width", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "contentPadding"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["BackgroundTransparency"]
  GETIMPORT R3 K10 [UDim.new]
  LOADN R4 1
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["width"]
  GETIMPORT R3 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R3 R2 K3 ["FillDirection"]
  GETIMPORT R3 K15 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R3 R2 K4 ["HorizontalAlignment"]
  GETIMPORT R3 K16 [Enum.VerticalAlignment.Center]
  SETTABLEKS R3 R2 K5 ["VerticalAlignment"]
  GETIMPORT R3 K10 [UDim.new]
  LOADN R4 0
  LOADN R5 24
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["contentPadding"]
  DUPTABLE R3 K19 [{"Icon", "BodyText"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K25 [{"LayoutOrder", "BackgroundTransparency", "Position", "Size", "Image", "ImageTransparency"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K20 ["LayoutOrder"]
  LOADN R7 1
  SETTABLEKS R7 R6 K1 ["BackgroundTransparency"]
  GETIMPORT R7 K27 [UDim2.new]
  LOADN R8 0
  LOADN R9 5
  LOADN R10 0
  LOADN R11 5
  CALL R7 4 1
  SETTABLEKS R7 R6 K21 ["Position"]
  GETIMPORT R7 K29 [UDim2.fromOffset]
  LOADN R8 40
  LOADN R9 40
  CALL R7 2 1
  SETTABLEKS R7 R6 K22 ["Size"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K23 ["Image"]
  LOADN R7 0
  SETTABLEKS R7 R6 K24 ["ImageTransparency"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K17 ["Icon"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K34 [{"LayoutOrder", "BackgroundTransparency", "width", "Font", "Text", "TextSize", "TextColor3"}]
  LOADN R7 2
  SETTABLEKS R7 R6 K20 ["LayoutOrder"]
  LOADN R7 1
  SETTABLEKS R7 R6 K1 ["BackgroundTransparency"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K35 ["Width"]
  GETTABLEKS R7 R8 K36 ["FitToText"]
  SETTABLEKS R7 R6 K2 ["width"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K37 ["Body"]
  GETTABLEKS R7 R8 K30 ["Font"]
  SETTABLEKS R7 R6 K30 ["Font"]
  GETUPVAL R7 6
  SETTABLEKS R7 R6 K31 ["Text"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K38 ["BaseSize"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K37 ["Body"]
  GETTABLEKS R9 R10 K39 ["RelativeSize"]
  MUL R7 R8 R9
  SETTABLEKS R7 R6 K32 ["TextSize"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K40 ["TextDefault"]
  GETTABLEKS R7 R8 K41 ["Color"]
  SETTABLEKS R7 R6 K33 ["TextColor3"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["BodyText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETTABLEKS R2 R0 K1 ["Font"]
  GETUPVAL R3 0
  LOADK R5 K2 ["InGame.ConnectionError.Heading.VRDisconnected"]
  NAMECALL R3 R3 K3 ["FormatByKey"]
  CALL R3 2 1
  GETUPVAL R4 0
  LOADK R6 K4 ["InGame.ConnectionError.Message.RestartApp"]
  NAMECALL R4 R4 K3 ["FormatByKey"]
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R7 K5 ["InGame.ConnectionError.Action.Restart"]
  NAMECALL R5 R5 K3 ["FormatByKey"]
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K11 [{"title", "middleContent", "buttonStackInfo", "screenSize"}]
  SETTABLEKS R3 R8 K7 ["title"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K8 ["middleContent"]
  DUPTABLE R9 K13 [{"buttons"}]
  NEWTABLE R10 0 1
  DUPTABLE R11 K16 [{"buttonType", "props"}]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K17 ["PrimarySystem"]
  SETTABLEKS R12 R11 K14 ["buttonType"]
  DUPTABLE R12 K20 [{"onActivated", "text"}]
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K15 ["props"]
  GETTABLEKS R13 R14 K21 ["onConfirm"]
  SETTABLEKS R13 R12 K18 ["onActivated"]
  SETTABLEKS R5 R12 K19 ["text"]
  SETTABLEKS R12 R11 K15 ["props"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K12 ["buttons"]
  SETTABLEKS R9 R8 K9 ["buttonStackInfo"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K15 ["props"]
  GETTABLEKS R9 R10 K10 ["screenSize"]
  SETTABLEKS R9 R8 K10 ["screenSize"]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K22 ["Portal"]
  DUPTABLE R9 K24 [{"target"}]
  GETUPVAL R10 9
  SETTABLEKS R10 R9 K23 ["target"]
  DUPTABLE R10 K26 [{"HeadsetDisconnectedDialog"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K27 ["ScreenGui"]
  DUPTABLE R13 K33 [{"DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "Enabled", "ZIndexBehavior"}]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K28 ["DisplayOrder"]
  GETTABLEKS R14 R15 K25 ["HeadsetDisconnectedDialog"]
  SETTABLEKS R14 R13 K28 ["DisplayOrder"]
  LOADB R14 1
  SETTABLEKS R14 R13 K29 ["IgnoreGuiInset"]
  LOADB R14 1
  SETTABLEKS R14 R13 K30 ["OnTopOfCoreBlur"]
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K15 ["props"]
  GETTABLEKS R14 R15 K34 ["visible"]
  SETTABLEKS R14 R13 K31 ["Enabled"]
  GETIMPORT R14 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R14 R13 K32 ["ZIndexBehavior"]
  DUPTABLE R14 K39 [{"Overlay"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K6 ["createElement"]
  LOADK R16 K40 ["Frame"]
  DUPTABLE R17 K46 [{"Active", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K41 ["Active"]
  GETTABLEKS R19 R1 K38 ["Overlay"]
  GETTABLEKS R18 R19 K47 ["Color"]
  SETTABLEKS R18 R17 K42 ["BackgroundColor3"]
  GETTABLEKS R19 R1 K38 ["Overlay"]
  GETTABLEKS R18 R19 K48 ["Transparency"]
  SETTABLEKS R18 R17 K43 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K44 ["BorderSizePixel"]
  GETIMPORT R18 K51 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K45 ["Size"]
  DUPTABLE R18 K53 [{"Alert"}]
  SETTABLEKS R6 R18 K52 ["Alert"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K38 ["Overlay"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K25 ["HeadsetDisconnectedDialog"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADK R3 K0 ["TopBarGamepadDisableMenuShortcut"]
  DUPCLOSURE R4 K1 [PROTO_5]
  LOADB R5 0
  GETIMPORT R6 K5 [Enum.KeyCode.ButtonStart]
  GETIMPORT R7 K7 [Enum.KeyCode.Escape]
  NAMECALL R1 R1 K8 ["BindCoreAction"]
  CALL R1 6 0
  GETUPVAL R1 0
  LOADK R3 K9 ["TopBarDialogConfirm"]
  GETTABLEKS R4 R0 K10 ["onConfirmBindingAction"]
  LOADB R5 0
  GETIMPORT R6 K12 [Enum.KeyCode.Return]
  GETIMPORT R7 K14 [Enum.KeyCode.ButtonA]
  NAMECALL R1 R1 K8 ["BindCoreAction"]
  CALL R1 6 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["TopBarGamepadDisableMenuShortcut"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K2 ["TopBarDialogConfirm"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["visible"]
  JUMPIFNOT R1 [+10]
  NAMECALL R1 R0 K2 ["bindActions"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["guiService"]
  LOADB R3 1
  LOADK R4 K4 ["HeadsetDisconnectedDialog"]
  NAMECALL R1 R1 K5 ["SetMenuIsOpen"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["visible"]
  GETTABLEKS R4 R1 K1 ["visible"]
  JUMPIFEQ R3 R4 [+27]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["visible"]
  JUMPIFNOT R3 [+11]
  NAMECALL R3 R0 K2 ["bindActions"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K3 ["guiService"]
  LOADB R5 1
  LOADK R6 K4 ["HeadsetDisconnectedDialog"]
  NAMECALL R3 R3 K5 ["SetMenuIsOpen"]
  CALL R3 3 0
  RETURN R0 0
  NAMECALL R3 R0 K6 ["unbindActions"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K3 ["guiService"]
  LOADB R5 0
  LOADK R6 K4 ["HeadsetDisconnectedDialog"]
  NAMECALL R3 R3 K5 ["SetMenuIsOpen"]
  CALL R3 3 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["unbindActions"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["guiService"]
  LOADB R3 0
  LOADK R4 K2 ["HeadsetDisconnectedDialog"]
  NAMECALL R1 R1 K3 ["SetMenuIsOpen"]
  CALL R1 3 0
  RETURN R0 0

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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ContextActionService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K11 ["t"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["FitFrame"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K13 ["FitFrameVertical"]
  GETTABLEKS R8 R6 K14 ["FitTextLabel"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R1 K9 ["Packages"]
  GETTABLEKS R10 R11 K15 ["UIBlox"]
  CALL R9 1 1
  GETTABLEKS R13 R9 K16 ["App"]
  GETTABLEKS R12 R13 K17 ["Dialog"]
  GETTABLEKS R11 R12 K18 ["Alert"]
  GETTABLEKS R10 R11 K19 ["InteractiveAlert"]
  GETTABLEKS R14 R9 K16 ["App"]
  GETTABLEKS R13 R14 K20 ["Button"]
  GETTABLEKS R12 R13 K21 ["Enum"]
  GETTABLEKS R11 R12 K22 ["ButtonType"]
  GETTABLEKS R14 R9 K23 ["Core"]
  GETTABLEKS R13 R14 K24 ["Style"]
  GETTABLEKS R12 R13 K25 ["withStyle"]
  GETTABLEKS R15 R9 K16 ["App"]
  GETTABLEKS R14 R15 K26 ["ImageSet"]
  GETTABLEKS R13 R14 K27 ["Images"]
  GETTABLEKS R16 R9 K23 ["Core"]
  GETTABLEKS R15 R16 K26 ["ImageSet"]
  GETTABLEKS R14 R15 K28 ["ImageSetLabel"]
  GETTABLEKS R16 R0 K29 ["RobloxGui"]
  GETTABLEKS R15 R16 K30 ["Modules"]
  GETIMPORT R16 K8 [require]
  GETTABLEKS R17 R15 K31 ["RobloxTranslator"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R18 R15 K32 ["InGameMenuConstants"]
  CALL R17 1 1
  GETTABLEKS R18 R13 K33 ["icons/status/alert"]
  GETTABLEKS R19 R4 K34 ["PureComponent"]
  LOADK R21 K35 ["DisconnectedDialog"]
  NAMECALL R19 R19 K36 ["extend"]
  CALL R19 2 1
  GETTABLEKS R20 R5 K37 ["strictInterface"]
  DUPTABLE R21 K42 [{"visible", "onConfirm", "screenSize", "guiService"}]
  GETTABLEKS R22 R5 K43 ["boolean"]
  SETTABLEKS R22 R21 K38 ["visible"]
  GETTABLEKS R22 R5 K44 ["callback"]
  SETTABLEKS R22 R21 K39 ["onConfirm"]
  GETTABLEKS R22 R5 K45 ["Vector2"]
  SETTABLEKS R22 R21 K40 ["screenSize"]
  GETTABLEKS R22 R5 K46 ["optional"]
  GETTABLEKS R23 R5 K47 ["union"]
  GETTABLEKS R24 R5 K48 ["instanceOf"]
  LOADK R25 K6 ["GuiService"]
  CALL R24 1 1
  GETTABLEKS R25 R5 K49 ["table"]
  CALL R23 2 -1
  CALL R22 -1 1
  SETTABLEKS R22 R21 K41 ["guiService"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K50 ["validateProps"]
  DUPTABLE R20 K51 [{"guiService"}]
  SETTABLEKS R3 R20 K41 ["guiService"]
  SETTABLEKS R20 R19 K52 ["defaultProps"]
  DUPCLOSURE R20 K53 [PROTO_1]
  SETTABLEKS R20 R19 K54 ["init"]
  DUPCLOSURE R20 K55 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R17
  SETTABLEKS R20 R19 K56 ["render"]
  DUPCLOSURE R20 K57 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K58 ["bindActions"]
  DUPCLOSURE R20 K59 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K60 ["unbindActions"]
  DUPCLOSURE R20 K61 [PROTO_8]
  SETTABLEKS R20 R19 K62 ["didMount"]
  DUPCLOSURE R20 K63 [PROTO_9]
  SETTABLEKS R20 R19 K64 ["didUpdate"]
  DUPCLOSURE R20 K65 [PROTO_10]
  SETTABLEKS R20 R19 K66 ["willUnmount"]
  RETURN R19 1
