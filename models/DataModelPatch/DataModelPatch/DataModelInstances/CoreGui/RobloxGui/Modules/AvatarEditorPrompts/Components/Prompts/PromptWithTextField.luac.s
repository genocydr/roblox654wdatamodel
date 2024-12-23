PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["onFieldTextUpdated"]
  GETTABLEKS R2 R0 K2 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K2 [UDim2.fromScale]
  LOADK R1 K3 [0.5]
  LOADK R2 K3 [0.5]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["OnScreenKeyboardVisible"]
  JUMPIFNOT R1 [+32]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["props"]
  GETTABLEKS R3 R4 K6 ["screenSize"]
  GETTABLEKS R2 R3 K7 ["Y"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["OnScreenKeyboardSize"]
  GETTABLEKS R3 R4 K7 ["Y"]
  SUB R1 R2 R3
  DIVK R2 R1 K9 [2]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["lastAlertHeight"]
  DIVK R4 R5 K9 [2]
  SUB R3 R2 R4
  LOADN R4 20
  JUMPIFNOTLT R3 R4 [+3]
  SUBRK R4 R11 K3 [0.5]
  ADD R2 R2 R4
  GETIMPORT R4 K13 [UDim2.new]
  LOADK R5 K3 [0.5]
  LOADN R6 0
  LOADN R7 0
  MOVE R8 R2
  CALL R4 4 1
  MOVE R0 R4
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K14 ["state"]
  GETTABLEKS R1 R2 K15 ["alertPosition"]
  JUMPIFEQ R1 R0 [+8]
  GETUPVAL R1 1
  DUPTABLE R3 K16 [{"alertPosition"}]
  SETTABLEKS R0 R3 K15 ["alertPosition"]
  NAMECALL R1 R1 K17 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["Y"]
  SETTABLEKS R2 R1 K2 ["lastAlertHeight"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["calculateAlertPosition"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["textBoxRef"]
  NAMECALL R0 R0 K1 ["getValue"]
  CALL R0 1 1
  JUMPIFNOT R0 [+3]
  NAMECALL R1 R0 K2 ["CaptureFocus"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R3 K1 [{"alertPosition"}]
  GETIMPORT R4 K4 [UDim2.fromScale]
  LOADK R5 K5 [0.5]
  LOADK R6 K5 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["alertPosition"]
  NAMECALL R1 R0 K6 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K8 ["textBoxRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["textUpdated"]
  LOADN R1 100
  SETTABLEKS R1 R0 K10 ["lastAlertHeight"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["calculateAlertPosition"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["alertSizeChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["alertMounted"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["Font"]
  GETTABLEKS R2 R0 K1 ["Theme"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K8 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K4 ["BackgroundTransparency"]
  GETIMPORT R6 K11 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 35
  CALL R6 4 1
  SETTABLEKS R6 R5 K5 ["Size"]
  GETIMPORT R6 K13 [UDim2.fromScale]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Position"]
  GETIMPORT R6 K15 [Vector2.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["AnchorPoint"]
  DUPTABLE R6 K17 [{"TextboxBorder"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K24 [{"BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "LayoutOrder", "ScaleType", "Size", "Position", "AnchorPoint", "SliceCenter"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K4 ["BackgroundTransparency"]
  GETUPVAL R10 2
  SETTABLEKS R10 R9 K18 ["Image"]
  GETTABLEKS R11 R2 K25 ["UIDefault"]
  GETTABLEKS R10 R11 K26 ["Color"]
  SETTABLEKS R10 R9 K19 ["ImageColor3"]
  GETTABLEKS R11 R2 K25 ["UIDefault"]
  GETTABLEKS R10 R11 K27 ["Transparency"]
  SETTABLEKS R10 R9 K20 ["ImageTransparency"]
  LOADN R10 3
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  GETIMPORT R10 K30 [Enum.ScaleType.Slice]
  SETTABLEKS R10 R9 K22 ["ScaleType"]
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 251
  CALL R10 4 1
  SETTABLEKS R10 R9 K5 ["Size"]
  GETIMPORT R10 K13 [UDim2.fromScale]
  LOADN R11 0
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K6 ["Position"]
  GETIMPORT R10 K15 [Vector2.new]
  LOADN R11 0
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K7 ["AnchorPoint"]
  GETUPVAL R10 3
  SETTABLEKS R10 R9 K23 ["SliceCenter"]
  DUPTABLE R10 K32 [{"Textbox"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K33 ["Focusable"]
  GETTABLEKS R12 R13 K34 ["TextBox"]
  NEWTABLE R13 16 0
  LOADN R14 1
  SETTABLEKS R14 R13 K4 ["BackgroundTransparency"]
  LOADB R14 0
  SETTABLEKS R14 R13 K35 ["ClearTextOnFocus"]
  GETTABLEKS R15 R1 K36 ["Header2"]
  GETTABLEKS R14 R15 K0 ["Font"]
  SETTABLEKS R14 R13 K0 ["Font"]
  GETTABLEKS R15 R1 K37 ["BaseSize"]
  GETTABLEKS R17 R1 K38 ["CaptionBody"]
  GETTABLEKS R16 R17 K39 ["RelativeSize"]
  MUL R14 R15 R16
  SETTABLEKS R14 R13 K40 ["TextSize"]
  GETTABLEKS R15 R2 K41 ["TextDefault"]
  GETTABLEKS R14 R15 K26 ["Color"]
  SETTABLEKS R14 R13 K42 ["PlaceholderColor3"]
  GETUPVAL R14 5
  LOADK R16 K43 ["CoreScripts.AvatarEditorPrompts.OutfitNamePlaceholder"]
  NAMECALL R14 R14 K44 ["FormatByKey"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K45 ["PlaceholderText"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 0
  LOADN R16 6
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K6 ["Position"]
  GETIMPORT R14 K11 [UDim2.new]
  LOADN R15 1
  LOADN R16 244
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Size"]
  GETTABLEKS R15 R2 K46 ["TextEmphasis"]
  GETTABLEKS R14 R15 K26 ["Color"]
  SETTABLEKS R14 R13 K47 ["TextColor3"]
  GETIMPORT R14 K50 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K48 ["TextTruncate"]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K51 ["props"]
  GETTABLEKS R14 R15 K52 ["fieldText"]
  SETTABLEKS R14 R13 K53 ["Text"]
  LOADB R14 1
  SETTABLEKS R14 R13 K54 ["TextWrapped"]
  GETIMPORT R14 K57 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K55 ["TextXAlignment"]
  LOADB R14 1
  SETTABLEKS R14 R13 K58 ["OverlayNativeInput"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K59 ["Change"]
  GETTABLEKS R14 R15 K53 ["Text"]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K60 ["textUpdated"]
  SETTABLE R15 R13 R14
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K61 ["Ref"]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K62 ["textBoxRef"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Textbox"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["TextboxBorder"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["renderAlertMiddleContent"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K4 [{"InteractiveAlert", "OnScreenKeyboardVisibleConnection", "OnScreenKeyboardSizeConnection"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K15 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize", "middleContent", "isMiddleContentFocusable", "onAbsoluteSizeChanged", "onMounted"}]
  GETTABLEKS R7 R0 K16 ["props"]
  GETTABLEKS R6 R7 K6 ["title"]
  SETTABLEKS R6 R5 K6 ["title"]
  GETTABLEKS R7 R0 K16 ["props"]
  GETTABLEKS R6 R7 K7 ["bodyText"]
  SETTABLEKS R6 R5 K7 ["bodyText"]
  GETTABLEKS R7 R0 K16 ["props"]
  GETTABLEKS R6 R7 K8 ["buttonStackInfo"]
  SETTABLEKS R6 R5 K8 ["buttonStackInfo"]
  GETTABLEKS R7 R0 K17 ["state"]
  GETTABLEKS R6 R7 K18 ["alertPosition"]
  SETTABLEKS R6 R5 K9 ["position"]
  GETTABLEKS R7 R0 K16 ["props"]
  GETTABLEKS R6 R7 K10 ["screenSize"]
  SETTABLEKS R6 R5 K10 ["screenSize"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K11 ["middleContent"]
  LOADB R6 1
  SETTABLEKS R6 R5 K12 ["isMiddleContentFocusable"]
  GETTABLEKS R6 R0 K19 ["alertSizeChanged"]
  SETTABLEKS R6 R5 K13 ["onAbsoluteSizeChanged"]
  GETTABLEKS R6 R0 K20 ["alertMounted"]
  SETTABLEKS R6 R5 K14 ["onMounted"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["InteractiveAlert"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K23 [{"event", "callback"}]
  GETUPVAL R6 3
  LOADK R8 K24 ["OnScreenKeyboardVisible"]
  NAMECALL R6 R6 K25 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["event"]
  GETTABLEKS R6 R0 K26 ["calculateAlertPosition"]
  SETTABLEKS R6 R5 K22 ["callback"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["OnScreenKeyboardVisibleConnection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K23 [{"event", "callback"}]
  GETUPVAL R6 3
  LOADK R8 K27 ["OnScreenKeyboardSize"]
  NAMECALL R6 R6 K25 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["event"]
  GETTABLEKS R6 R0 K26 ["calculateAlertPosition"]
  SETTABLEKS R6 R5 K22 ["callback"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["OnScreenKeyboardSizeConnection"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["calculateAlertPosition"]
  CALL R1 0 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETTABLEKS R2 R0 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["UserInputService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["RoactGamepad"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R0 K8 ["Packages"]
  GETTABLEKS R7 R8 K12 ["t"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R0 K8 ["Packages"]
  GETTABLEKS R8 R9 K13 ["UIBlox"]
  CALL R7 1 1
  GETTABLEKS R11 R7 K14 ["App"]
  GETTABLEKS R10 R11 K15 ["Dialog"]
  GETTABLEKS R9 R10 K16 ["Alert"]
  GETTABLEKS R8 R9 K17 ["InteractiveAlert"]
  GETTABLEKS R12 R7 K14 ["App"]
  GETTABLEKS R11 R12 K18 ["Button"]
  GETTABLEKS R10 R11 K19 ["Enum"]
  GETTABLEKS R9 R10 K20 ["ButtonType"]
  GETTABLEKS R12 R7 K21 ["Core"]
  GETTABLEKS R11 R12 K22 ["ImageSet"]
  GETTABLEKS R10 R11 K23 ["ImageSetLabel"]
  GETTABLEKS R12 R7 K24 ["Style"]
  GETTABLEKS R11 R12 K25 ["withStyle"]
  GETTABLEKS R14 R7 K14 ["App"]
  GETTABLEKS R13 R14 K22 ["ImageSet"]
  GETTABLEKS R12 R13 K26 ["Images"]
  LOADK R15 K27 ["RobloxGui"]
  NAMECALL R13 R1 K28 ["WaitForChild"]
  CALL R13 2 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R16 R13 K29 ["Modules"]
  GETTABLEKS R15 R16 K30 ["RobloxTranslator"]
  CALL R14 1 1
  GETIMPORT R16 K7 [require]
  GETTABLEKS R19 R0 K31 ["Workspace"]
  GETTABLEKS R18 R19 K8 ["Packages"]
  GETTABLEKS R17 R18 K32 ["RoactUtils"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K33 ["ExternalEventConnection"]
  GETTABLEKS R16 R12 K34 ["component_assets/circle_17_stroke_1"]
  GETIMPORT R17 K37 [Rect.new]
  LOADN R18 8
  LOADN R19 8
  LOADN R20 8
  LOADN R21 8
  CALL R17 4 1
  GETTABLEKS R18 R3 K38 ["PureComponent"]
  LOADK R20 K39 ["PromptWithTextField"]
  NAMECALL R18 R18 K40 ["extend"]
  CALL R18 2 1
  GETTABLEKS R19 R6 K41 ["strictInterface"]
  DUPTABLE R20 K48 [{"fieldText", "onFieldTextUpdated", "title", "bodyText", "buttonStackInfo", "screenSize"}]
  GETTABLEKS R21 R6 K49 ["string"]
  SETTABLEKS R21 R20 K42 ["fieldText"]
  GETTABLEKS R21 R6 K50 ["callback"]
  SETTABLEKS R21 R20 K43 ["onFieldTextUpdated"]
  GETTABLEKS R21 R6 K49 ["string"]
  SETTABLEKS R21 R20 K44 ["title"]
  GETTABLEKS R21 R6 K51 ["optional"]
  GETTABLEKS R22 R6 K49 ["string"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K45 ["bodyText"]
  GETTABLEKS R21 R6 K52 ["table"]
  SETTABLEKS R21 R20 K46 ["buttonStackInfo"]
  GETTABLEKS R21 R6 K53 ["Vector2"]
  SETTABLEKS R21 R20 K47 ["screenSize"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K54 ["validateProps"]
  DUPCLOSURE R19 K55 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K56 ["init"]
  DUPCLOSURE R19 K57 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R14
  SETTABLEKS R19 R18 K58 ["renderAlertMiddleContent"]
  DUPCLOSURE R19 K59 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R2
  SETTABLEKS R19 R18 K60 ["render"]
  DUPCLOSURE R19 K61 [PROTO_9]
  SETTABLEKS R19 R18 K62 ["didMount"]
  DUPCLOSURE R19 K63 [PROTO_10]
  GETTABLEKS R20 R4 K64 ["connect"]
  MOVE R21 R19
  LOADNIL R22
  CALL R20 2 1
  MOVE R21 R18
  CALL R20 1 -1
  RETURN R20 -1
