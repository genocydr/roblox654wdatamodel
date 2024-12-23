PROTO_0:
  GETTABLEKS R1 R0 K0 ["min"]
  GETTABLEKS R2 R0 K1 ["max"]
  JUMPIFNOTLT R2 R1 [+4]
  LOADB R1 0
  LOADK R2 K2 ["min must be less than or equal to max"]
  RETURN R1 2
  GETTABLEKS R1 R0 K3 ["value"]
  GETTABLEKS R2 R0 K1 ["max"]
  JUMPIFLT R2 R1 [+7]
  GETTABLEKS R1 R0 K3 ["value"]
  GETTABLEKS R2 R0 K0 ["min"]
  JUMPIFNOTLT R1 R2 [+4]
  LOADB R1 0
  LOADK R2 K4 ["value must be within min and max"]
  RETURN R1 2
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textBoxRef"]
  DUPTABLE R1 K3 [{"textEntryMode"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["textEntryMode"]
  SETTABLEKS R1 R0 K4 ["state"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K3 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R2 [+23]
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"textEntryMode"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["textEntryMode"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["textBoxRef"]
  GETTABLEKS R2 R3 K8 ["current"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K9 ["Text"]
  NAMECALL R3 R2 K10 ["ReleaseFocus"]
  CALL R3 1 0
  GETIMPORT R3 K13 [Enum.ContextActionResult.Sink]
  RETURN R3 1
  GETIMPORT R2 K15 [Enum.ContextActionResult.Pass]
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["CoreGuiNavigationEnabled"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R0 R1 K2 ["value"]
  GETUPVAL R1 2
  LOADK R3 K3 ["LeaveTextEntryMode"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  LOADB R5 0
  GETIMPORT R6 K7 [Enum.KeyCode.ButtonB]
  NAMECALL R1 R1 K8 ["BindCoreAction"]
  CALL R1 5 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["CoreGuiNavigationEnabled"]
  GETUPVAL R0 1
  LOADK R2 K1 ["LeaveTextEntryMode"]
  NAMECALL R0 R0 K2 ["UnbindCoreAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"isFocused", "didFocus", "didBlur"}]
  GETTABLEKS R7 R0 K6 ["props"]
  GETTABLEKS R6 R7 K7 ["canCaptureFocus"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R0 K8 ["state"]
  GETTABLEKS R5 R6 K9 ["textEntryMode"]
  JUMPIF R5 [+1]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["isFocused"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R5 R4 K3 ["didFocus"]
  DUPCLOSURE R5 K10 [PROTO_4]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R5 R4 K4 ["didBlur"]
  CALL R2 2 1
  ORK R1 R2 K0 []
  RETURN R1 1

PROTO_6:
  LOADB R3 0
  NAMECALL R1 R0 K0 ["ReleaseFocus"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"textEntryMode"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["textEntryMode"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"textEntryMode"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["textEntryMode"]
  NAMECALL R2 R2 K2 ["setState"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K3 ["Text"]
  FASTCALL1 TONUMBER R3 [+2]
  GETIMPORT R2 K5 [tonumber]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["value"]
  JUMPIFEQ R2 R3 [+57]
  JUMPIFNOTEQKNIL R2 [+11]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["value"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K8 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R0 K3 ["Text"]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["stepInterval"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["keyboardInputStepInterval"]
  JUMPIFNOT R4 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["keyboardInputStepInterval"]
  DIV R8 R2 R3
  ADDK R7 R8 K11 [0.5]
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K14 [math.floor]
  CALL R6 1 1
  MUL R5 R6 R3
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["min"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["max"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K18 [math.clamp]
  CALL R4 3 1
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  SETTABLEKS R5 R0 K3 ["Text"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["value"]
  JUMPIFEQ R4 R5 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K19 ["valueChanged"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["disabled"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K1 ["Theme"]
  GETTABLEKS R1 R2 K2 ["TextMuted"]
  JUMPIF R1 [+4]
  GETTABLEKS R2 R0 K1 ["Theme"]
  GETTABLEKS R1 R2 K3 ["TextDefault"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["Label"]
  DUPTABLE R4 K13 [{"BackgroundTransparency", "imageKey", "ImageTransparency", "ImageColor3", "Size", "Position", "AnchorPoint"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K6 ["BackgroundTransparency"]
  LOADK R5 K14 ["RoundedRect"]
  SETTABLEKS R5 R4 K7 ["imageKey"]
  GETTABLEKS R7 R0 K1 ["Theme"]
  GETTABLEKS R6 R7 K15 ["BackgroundUIContrast"]
  GETTABLEKS R5 R6 K16 ["Transparency"]
  SETTABLEKS R5 R4 K8 ["ImageTransparency"]
  GETTABLEKS R7 R0 K1 ["Theme"]
  GETTABLEKS R6 R7 K15 ["BackgroundUIContrast"]
  GETTABLEKS R5 R6 K17 ["Color"]
  SETTABLEKS R5 R4 K9 ["ImageColor3"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 0
  LOADN R7 64
  LOADN R8 0
  LOADN R9 36
  CALL R5 4 1
  SETTABLEKS R5 R4 K10 ["Size"]
  GETIMPORT R5 K20 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADK R8 K21 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["Position"]
  GETIMPORT R5 K23 [Vector2.new]
  LOADN R6 1
  LOADK R7 K21 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["AnchorPoint"]
  DUPTABLE R5 K26 [{"FocusHandler", "Box"}]
  GETUPVAL R6 3
  NAMECALL R6 R6 K27 ["renderFocusHandler"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K24 ["FocusHandler"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K28 ["TextBox"]
  NEWTABLE R8 32 0
  LOADN R9 1
  SETTABLEKS R9 R8 K6 ["BackgroundTransparency"]
  GETIMPORT R9 K20 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K10 ["Size"]
  GETIMPORT R9 K23 [Vector2.new]
  LOADK R10 K21 [0.5]
  LOADK R11 K21 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["AnchorPoint"]
  GETIMPORT R9 K20 [UDim2.new]
  LOADK R10 K21 [0.5]
  LOADN R11 0
  LOADK R12 K21 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Position"]
  GETTABLEKS R11 R0 K29 ["Font"]
  GETTABLEKS R10 R11 K30 ["Body"]
  GETTABLEKS R9 R10 K29 ["Font"]
  SETTABLEKS R9 R8 K29 ["Font"]
  LOADB R9 1
  SETTABLEKS R9 R8 K31 ["TextScaled"]
  LOADB R9 0
  SETTABLEKS R9 R8 K32 ["ClearTextOnFocus"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["disabled"]
  NOT R9 R10
  SETTABLEKS R9 R8 K33 ["TextEditable"]
  GETTABLEKS R9 R1 K17 ["Color"]
  SETTABLEKS R9 R8 K34 ["TextColor3"]
  GETTABLEKS R9 R1 K16 ["Transparency"]
  SETTABLEKS R9 R8 K35 ["TextTransparency"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K36 ["value"]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K38 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K39 ["Text"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K40 ["props"]
  GETTABLEKS R9 R10 K41 ["sliderDotRef"]
  SETTABLEKS R9 R8 K42 ["NextSelectionLeft"]
  GETUPVAL R9 4
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K43 ["InputFields"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K44 ["SelectionImageObject"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K45 ["Event"]
  GETTABLEKS R9 R10 K46 ["SelectionLost"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K40 ["props"]
  GETTABLEKS R10 R11 K47 ["onSelectionLost"]
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K45 ["Event"]
  GETTABLEKS R9 R10 K48 ["SelectionGained"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K40 ["props"]
  GETTABLEKS R10 R11 K49 ["onSelectionGained"]
  SETTABLE R10 R8 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K50 ["Ref"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K51 ["textBoxRef"]
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K45 ["Event"]
  GETTABLEKS R9 R10 K52 ["Focused"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["disabled"]
  JUMPIFNOT R11 [+2]
  DUPCLOSURE R10 K53 [PROTO_6]
  JUMPIF R10 [+2]
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U3
  SETTABLE R10 R8 R9
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K45 ["Event"]
  GETTABLEKS R9 R10 K54 ["FocusLost"]
  NEWCLOSURE R10 P2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  SETTABLE R10 R8 R9
  DUPTABLE R9 K56 [{"TextSizeConstraint"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  LOADK R11 K57 ["UITextSizeConstraint"]
  DUPTABLE R12 K60 [{"MinTextSize", "MaxTextSize"}]
  GETTABLEKS R16 R0 K29 ["Font"]
  GETTABLEKS R15 R16 K30 ["Body"]
  GETTABLEKS R14 R15 K61 ["RelativeMinSize"]
  GETTABLEKS R16 R0 K29 ["Font"]
  GETTABLEKS R15 R16 K62 ["BaseSize"]
  MUL R13 R14 R15
  SETTABLEKS R13 R12 K58 ["MinTextSize"]
  GETTABLEKS R16 R0 K29 ["Font"]
  GETTABLEKS R15 R16 K30 ["Body"]
  GETTABLEKS R14 R15 K63 ["RelativeSize"]
  GETTABLEKS R16 R0 K29 ["Font"]
  GETTABLEKS R15 R16 K62 ["BaseSize"]
  MUL R13 R14 R15
  SETTABLEKS R13 R12 K59 ["MaxTextSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K55 ["TextSizeConstraint"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K25 ["Box"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Keyboard]
  JUMPIFEQ R2 R3 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K4 ["GetFocusedTextBox"]
  CALL R2 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["textBoxRef"]
  GETTABLEKS R3 R4 K6 ["current"]
  JUMPIFEQ R2 R3 [+2]
  RETURN R0 0
  LOADN R2 0
  GETTABLEKS R3 R0 K7 ["KeyCode"]
  GETIMPORT R4 K9 [Enum.KeyCode.Up]
  JUMPIFNOTEQ R3 R4 [+3]
  LOADN R2 1
  JUMP [+7]
  GETTABLEKS R3 R0 K7 ["KeyCode"]
  GETIMPORT R4 K11 [Enum.KeyCode.Down]
  JUMPIFNOTEQ R3 R4 [+2]
  LOADN R2 255
  GETUPVAL R3 0
  GETIMPORT R5 K13 [Enum.KeyCode.LeftShift]
  NAMECALL R3 R3 K14 ["IsKeyDown"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  GETUPVAL R3 0
  GETIMPORT R5 K16 [Enum.KeyCode.RightShift]
  NAMECALL R3 R3 K14 ["IsKeyDown"]
  CALL R3 2 1
  JUMPIFNOT R3 [+1]
  MULK R2 R2 K17 [10]
  JUMPIFEQKN R2 K18 [0] [+42]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K20 ["value"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K21 ["stepInterval"]
  MUL R10 R11 R2
  ADD R8 R9 R10
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K21 ["stepInterval"]
  DIV R7 R8 R9
  ADDK R6 R7 K19 [0.5]
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K24 [math.floor]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K21 ["stepInterval"]
  MUL R4 R5 R6
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K25 ["min"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K26 ["max"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K28 [math.clamp]
  CALL R3 3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K20 ["value"]
  JUMPIFEQ R3 R4 [+6]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K29 ["valueChanged"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R2
  DUPTABLE R5 K9 [{"width", "LayoutOrder", "Position", "AnchorPoint", "keyboardInputStepInterval", "NextSelectionRight"}]
  GETIMPORT R6 K12 [UDim.new]
  LOADN R7 1
  LOADN R8 176
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["width"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["None"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["None"]
  SETTABLEKS R6 R5 K5 ["Position"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["None"]
  SETTABLEKS R6 R5 K6 ["AnchorPoint"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["None"]
  SETTABLEKS R6 R5 K7 ["keyboardInputStepInterval"]
  GETTABLEKS R6 R0 K14 ["textBoxRef"]
  SETTABLEKS R6 R5 K8 ["NextSelectionRight"]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["createElement"]
  LOADK R5 K16 ["Frame"]
  DUPTABLE R6 K19 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K17 ["BackgroundTransparency"]
  GETIMPORT R7 K21 [UDim2.new]
  GETTABLEKS R9 R2 K3 ["width"]
  GETTABLEKS R8 R9 K22 ["Scale"]
  GETTABLEKS R10 R2 K3 ["width"]
  GETTABLEKS R9 R10 K23 ["Offset"]
  LOADN R10 0
  LOADN R11 36
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["Size"]
  GETTABLEKS R7 R2 K5 ["Position"]
  SETTABLEKS R7 R6 K5 ["Position"]
  GETTABLEKS R7 R2 K4 ["LayoutOrder"]
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  DUPTABLE R7 K27 [{"Slider", "TextContainer", "UserInputConnection"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createElement"]
  GETUPVAL R9 2
  MOVE R10 R3
  CALL R8 2 1
  SETTABLEKS R8 R7 K24 ["Slider"]
  GETUPVAL R8 3
  NEWCLOSURE R9 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CALL R8 1 1
  SETTABLEKS R8 R7 K25 ["TextContainer"]
  GETTABLEKS R9 R2 K28 ["disabled"]
  NOT R8 R9
  JUMPIFNOT R8 [+17]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K31 [{"event", "callback"}]
  GETUPVAL R12 7
  GETTABLEKS R11 R12 K32 ["InputBegan"]
  SETTABLEKS R11 R10 K29 ["event"]
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K30 ["callback"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K26 ["UserInputConnection"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_12:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderWithSelectionCursor"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UserInputService"]
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
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["InGameMenuDependencies"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["Roact"]
  GETTABLEKS R6 R4 K12 ["UIBlox"]
  GETTABLEKS R7 R4 K13 ["Cryo"]
  GETTABLEKS R8 R4 K14 ["t"]
  GETTABLEKS R11 R6 K15 ["Core"]
  GETTABLEKS R10 R11 K16 ["Style"]
  GETTABLEKS R9 R10 K17 ["withStyle"]
  GETTABLEKS R12 R6 K18 ["App"]
  GETTABLEKS R11 R12 K19 ["SelectionImage"]
  GETTABLEKS R10 R11 K20 ["withSelectionCursorProvider"]
  GETTABLEKS R13 R6 K18 ["App"]
  GETTABLEKS R12 R13 K19 ["SelectionImage"]
  GETTABLEKS R11 R12 K21 ["CursorKind"]
  GETIMPORT R14 K23 [script]
  GETTABLEKS R13 R14 K24 ["Parent"]
  GETTABLEKS R12 R13 K24 ["Parent"]
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R12 K25 ["Utility"]
  GETTABLEKS R14 R15 K26 ["ExternalEventConnection"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETIMPORT R18 K23 [script]
  GETTABLEKS R17 R18 K24 ["Parent"]
  GETTABLEKS R16 R17 K27 ["Connection"]
  GETTABLEKS R15 R16 K28 ["FocusHandler"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETIMPORT R18 K23 [script]
  GETTABLEKS R17 R18 K24 ["Parent"]
  GETTABLEKS R16 R17 K29 ["Slider"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETIMPORT R19 K23 [script]
  GETTABLEKS R18 R19 K24 ["Parent"]
  GETTABLEKS R17 R18 K30 ["AssetImage"]
  CALL R16 1 1
  GETTABLEKS R17 R5 K31 ["PureComponent"]
  LOADK R19 K32 ["SliderWithInput"]
  NAMECALL R17 R17 K33 ["extend"]
  CALL R17 2 1
  DUPTABLE R18 K35 [{"width"}]
  GETIMPORT R19 K38 [UDim.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["width"]
  SETTABLEKS R18 R17 K39 ["defaultProps"]
  GETTABLEKS R18 R8 K40 ["intersection"]
  GETTABLEKS R19 R8 K41 ["strictInterface"]
  DUPTABLE R20 K57 [{"min", "max", "stepInterval", "keyboardInputStepInterval", "value", "valueChanged", "disabled", "width", "AnchorPoint", "LayoutOrder", "Position", "canCaptureFocus", "isMenuOpen", "sliderDotRef", "onSelectionLost", "onSelectionGained"}]
  GETTABLEKS R21 R8 K58 ["number"]
  SETTABLEKS R21 R20 K42 ["min"]
  GETTABLEKS R21 R8 K58 ["number"]
  SETTABLEKS R21 R20 K43 ["max"]
  GETTABLEKS R21 R8 K59 ["numberPositive"]
  SETTABLEKS R21 R20 K44 ["stepInterval"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K59 ["numberPositive"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K45 ["keyboardInputStepInterval"]
  GETTABLEKS R21 R8 K58 ["number"]
  SETTABLEKS R21 R20 K46 ["value"]
  GETTABLEKS R21 R8 K61 ["callback"]
  SETTABLEKS R21 R20 K47 ["valueChanged"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K62 ["boolean"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K48 ["disabled"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K36 ["UDim"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K34 ["width"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K63 ["Vector2"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K49 ["AnchorPoint"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K64 ["integer"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K50 ["LayoutOrder"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K65 ["UDim2"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K51 ["Position"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K62 ["boolean"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K52 ["canCaptureFocus"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K62 ["boolean"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K53 ["isMenuOpen"]
  GETTABLEKS R21 R8 K60 ["optional"]
  GETTABLEKS R22 R8 K66 ["table"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K54 ["sliderDotRef"]
  GETTABLEKS R21 R8 K61 ["callback"]
  SETTABLEKS R21 R20 K55 ["onSelectionLost"]
  GETTABLEKS R21 R8 K61 ["callback"]
  SETTABLEKS R21 R20 K56 ["onSelectionGained"]
  CALL R19 1 1
  DUPCLOSURE R20 K67 [PROTO_0]
  CALL R18 2 1
  SETTABLEKS R18 R17 K68 ["validateProps"]
  DUPCLOSURE R18 K69 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R18 R17 K70 ["init"]
  DUPCLOSURE R18 K71 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K72 ["renderFocusHandler"]
  DUPCLOSURE R18 K73 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K74 ["renderWithSelectionCursor"]
  DUPCLOSURE R18 K75 [PROTO_13]
  CAPTURE VAL R10
  SETTABLEKS R18 R17 K76 ["render"]
  RETURN R17 1
