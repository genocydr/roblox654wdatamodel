PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["GetTextSize"]
  CALL R0 -1 1
  GETIMPORT R2 K3 [Vector2.new]
  LOADN R3 2
  LOADN R4 2
  CALL R2 2 1
  ADD R1 R0 R2
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ToggleCaptureMode"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["showHelpModal"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K4 [{"barWidth", "hintStringsConcat", "requiredSpace", "hintRatios"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["barWidth"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["hintStringsConcat"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["requiredSpace"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["hintRatios"]
  SETTABLEKS R1 R0 K5 ["state"]
  DUPCLOSURE R1 K6 [PROTO_1]
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["onExitFeedbackMode"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["openHelpModal"]
  RETURN R0 0

PROTO_4:
  LOADN R1 84
  LOADK R2 K0 [""]
  NEWTABLE R3 0 0
  LOADN R4 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["List"]
  GETTABLEKS R5 R6 K2 ["join"]
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETIMPORT R6 K4 [ipairs]
  MOVE R7 R5
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R10 K5 ["text"]
  GETUPVAL R13 1
  GETTABLEKS R14 R10 K5 ["text"]
  LOADN R15 17
  LOADN R16 2
  GETIMPORT R17 K8 [Vector2.new]
  LOADN R18 16
  LOADN R19 16
  CALL R17 2 -1
  CALL R13 -1 1
  GETTABLEKS R12 R13 K9 ["X"]
  SETTABLE R12 R3 R11
  GETTABLEKS R12 R10 K5 ["text"]
  GETTABLE R11 R3 R12
  ADD R4 R4 R11
  ADDK R11 R1 K11 [36]
  ADDK R1 R11 K10 [8]
  MOVE R11 R2
  GETTABLEKS R12 R10 K5 ["text"]
  CONCAT R2 R11 R12
  FORGLOOP R6 2 [inext] [-27]
  GETIMPORT R6 K13 [pairs]
  MOVE R7 R3
  CALL R6 1 3
  FORGPREP_NEXT R6
  DIV R11 R10 R4
  SETTABLE R11 R3 R9
  FORGLOOP R6 2 [-3]
  LENGTH R6 R5
  SUBK R9 R6 K15 [2]
  FASTCALL2K MATH_MAX R9 K16 [+4]
  LOADK R10 K16 [0]
  GETIMPORT R8 K19 [math.max]
  CALL R8 2 1
  MULK R7 R8 K14 [40]
  ADD R1 R1 R7
  MOVE R7 R3
  MOVE R8 R1
  MOVE R9 R2
  RETURN R7 3

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["calculateHintRatios"]
  GETTABLEKS R2 R0 K1 ["leftHint"]
  CALL R1 1 3
  DUPTABLE R4 K5 [{"hintRatios", "requiredSpace", "hintStringsConcat"}]
  SETTABLEKS R1 R4 K2 ["hintRatios"]
  SETTABLEKS R2 R4 K3 ["requiredSpace"]
  SETTABLEKS R3 R4 K4 ["hintStringsConcat"]
  RETURN R4 1

PROTO_6:
  GETTABLEKS R5 R0 K0 ["state"]
  GETTABLEKS R4 R5 K1 ["requiredSpace"]
  SUB R3 R1 R4
  GETTABLEKS R6 R2 K2 ["Header2"]
  GETTABLEKS R5 R6 K3 ["RelativeSize"]
  GETTABLEKS R6 R2 K4 ["BaseSize"]
  MUL R4 R5 R6
  GETTABLEKS R7 R2 K2 ["Header2"]
  GETTABLEKS R6 R7 K5 ["RelativeMinSize"]
  GETTABLEKS R7 R2 K4 ["BaseSize"]
  MUL R5 R6 R7
  GETUPVAL R7 0
  GETTABLEKS R9 R0 K0 ["state"]
  GETTABLEKS R8 R9 K6 ["hintStringsConcat"]
  MOVE R9 R5
  GETTABLEKS R11 R2 K2 ["Header2"]
  GETTABLEKS R10 R11 K7 ["Font"]
  GETIMPORT R11 K10 [Vector2.new]
  LOADN R12 16
  LOADN R13 16
  CALL R11 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K11 ["X"]
  JUMPIFNOTLE R6 R3 [+35]
  GETUPVAL R8 0
  GETTABLEKS R10 R0 K0 ["state"]
  GETTABLEKS R9 R10 K6 ["hintStringsConcat"]
  MOVE R10 R4
  GETTABLEKS R12 R2 K2 ["Header2"]
  GETTABLEKS R11 R12 K7 ["Font"]
  GETIMPORT R12 K10 [Vector2.new]
  LOADN R13 16
  LOADN R14 16
  CALL R12 2 -1
  CALL R8 -1 1
  GETTABLEKS R7 R8 K11 ["X"]
  SUB R9 R4 R5
  SUB R10 R7 R6
  DIV R8 R9 R10
  MUL R10 R8 R7
  SUB R9 R4 R10
  LOADNIL R10
  MUL R13 R3 R8
  ADD R12 R13 R9
  FASTCALL3 MATH_CLAMP R12 R5 R4
  MOVE R13 R5
  MOVE R14 R4
  GETIMPORT R11 K14 [math.clamp]
  CALL R11 3 1
  RETURN R10 2
  NEWTABLE R7 0 0
  GETIMPORT R8 K16 [pairs]
  GETTABLEKS R11 R0 K0 ["state"]
  GETTABLEKS R9 R11 K17 ["hintRatios"]
  CALL R8 1 3
  FORGPREP_NEXT R8
  MUL R13 R12 R3
  SETTABLE R13 R7 R11
  FORGLOOP R8 2 [-3]
  RETURN R7 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"barWidth"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K3 ["X"]
  SETTABLEKS R4 R3 K0 ["barWidth"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"barWidth"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K3 ["X"]
  SETTABLEKS R4 R3 K0 ["barWidth"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"buttonHeight", "buttons", "forcedFillDirection"}]
  LOADN R4 50
  SETTABLEKS R4 R3 K1 ["buttonHeight"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K7 [{"buttonType", "props"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["Secondary"]
  SETTABLEKS R6 R5 K5 ["buttonType"]
  DUPTABLE R6 K11 [{"onActivated", "text"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K12 ["openHelpModal"]
  SETTABLEKS R7 R6 K9 ["onActivated"]
  GETTABLEKS R7 R0 K13 ["helpButtonText"]
  SETTABLEKS R7 R6 K10 ["text"]
  SETTABLEKS R6 R5 K6 ["props"]
  DUPTABLE R6 K7 [{"buttonType", "props"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K14 ["PrimarySystem"]
  SETTABLEKS R7 R6 K5 ["buttonType"]
  DUPTABLE R7 K16 [{"isDisabled", "onActivated", "text"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K15 ["isDisabled"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K17 ["onExitFeedbackMode"]
  SETTABLEKS R8 R7 K9 ["onActivated"]
  GETTABLEKS R8 R0 K18 ["exitFeedbackButtonText"]
  SETTABLEKS R8 R7 K10 ["text"]
  SETTABLEKS R7 R6 K6 ["props"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K2 ["buttons"]
  GETIMPORT R4 K22 [Enum.FillDirection.Horizontal]
  SETTABLEKS R4 R3 K3 ["forcedFillDirection"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["Theme"]
  DUPCLOSURE R2 K1 [PROTO_7]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  NEWTABLE R5 8 0
  LOADN R6 0
  SETTABLEKS R6 R5 K4 ["BorderSizePixel"]
  GETTABLEKS R7 R1 K5 ["BackgroundUIContrast"]
  GETTABLEKS R6 R7 K6 ["Transparency"]
  SETTABLEKS R6 R5 K7 ["BackgroundTransparency"]
  GETTABLEKS R7 R1 K5 ["BackgroundUIContrast"]
  GETTABLEKS R6 R7 K8 ["Color"]
  SETTABLEKS R6 R5 K9 ["BackgroundColor3"]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 72
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  GETIMPORT R6 K15 [UDim2.fromScale]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["Position"]
  GETIMPORT R6 K18 [Vector2.new]
  LOADN R7 0
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["AnchorPoint"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K20 ["Change"]
  GETTABLEKS R6 R7 K21 ["AbsoluteSize"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U2
  SETTABLE R7 R5 R6
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K22 ["Event"]
  GETTABLEKS R6 R7 K23 ["AncestryChanged"]
  NEWCLOSURE R7 P2
  CAPTURE UPVAL U2
  SETTABLE R7 R5 R6
  DUPTABLE R6 K27 [{"Padding", "LeftFrame", "RightFrame"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K28 ["UIPadding"]
  DUPTABLE R9 K31 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R10 K33 [UDim.new]
  LOADN R11 0
  LOADN R12 24
  CALL R10 2 1
  SETTABLEKS R10 R9 K29 ["PaddingLeft"]
  GETIMPORT R10 K33 [UDim.new]
  LOADN R11 0
  LOADN R12 24
  CALL R10 2 1
  SETTABLEKS R10 R9 K30 ["PaddingRight"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K24 ["Padding"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K3 ["Frame"]
  DUPTABLE R9 K34 [{"BackgroundTransparency", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["BackgroundTransparency"]
  GETIMPORT R10 K15 [UDim2.fromScale]
  LOADK R11 K35 [0.5]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Size"]
  NEWTABLE R10 0 2
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K36 ["UIListLayout"]
  DUPTABLE R13 K42 [{"key", "SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  LOADK R14 K43 ["Layout"]
  SETTABLEKS R14 R13 K37 ["key"]
  GETIMPORT R14 K46 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K38 ["SortOrder"]
  GETIMPORT R14 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K39 ["FillDirection"]
  GETIMPORT R14 K50 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K40 ["HorizontalAlignment"]
  GETIMPORT R14 K52 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K41 ["VerticalAlignment"]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  LOADN R16 40
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["Padding"]
  CALL R11 2 1
  MOVE R12 R2
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K53 ["props"]
  GETTABLEKS R13 R14 K54 ["leftHint"]
  CALL R12 1 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["LeftFrame"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K3 ["Frame"]
  DUPTABLE R9 K55 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["BackgroundTransparency"]
  GETIMPORT R10 K15 [UDim2.fromScale]
  LOADK R11 K56 [0.35]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Size"]
  GETIMPORT R10 K15 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Position"]
  GETIMPORT R10 K18 [Vector2.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["AnchorPoint"]
  DUPTABLE R10 K58 [{"Layout", "Buttons"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K36 ["UIListLayout"]
  DUPTABLE R13 K59 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K46 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K38 ["SortOrder"]
  GETIMPORT R14 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K39 ["FillDirection"]
  GETIMPORT R14 K61 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R14 R13 K40 ["HorizontalAlignment"]
  GETIMPORT R14 K52 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K41 ["VerticalAlignment"]
  GETIMPORT R14 K33 [UDim.new]
  LOADN R15 0
  LOADN R16 40
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K43 ["Layout"]
  GETUPVAL R11 3
  DUPTABLE R12 K64 [{"helpButtonText", "exitFeedbackButtonText"}]
  LOADK R13 K65 ["CoreScripts.Feedback.FeedbackBar.HelpButton"]
  SETTABLEKS R13 R12 K62 ["helpButtonText"]
  LOADK R13 K66 ["CoreScripts.Feedback.FeedbackBar.ExitFeedbackButton"]
  SETTABLEKS R13 R12 K63 ["exitFeedbackButtonText"]
  CALL R11 1 1
  NEWCLOSURE R12 P3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CALL R11 1 1
  SETTABLEKS R11 R10 K57 ["Buttons"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K26 ["RightFrame"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_12:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K1 [{"showHelpModal"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["showHelpModal"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TextService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ExperienceStateCaptureService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Thunks"]
  GETTABLEKS R5 R6 K12 ["ShowHelpModalThunk"]
  CALL R4 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R0 K13 ["Workspace"]
  GETTABLEKS R8 R9 K14 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Localization"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["withLocalization"]
  GETIMPORT R6 K10 [require]
  GETIMPORT R9 K7 [script]
  GETTABLEKS R8 R9 K8 ["Parent"]
  GETTABLEKS R7 R8 K17 ["FeedbackBarHint"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R0 K14 ["Packages"]
  GETTABLEKS R8 R9 K18 ["Roact"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R0 K14 ["Packages"]
  GETTABLEKS R9 R10 K19 ["RoactRodux"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R11 R0 K14 ["Packages"]
  GETTABLEKS R10 R11 K20 ["UIBlox"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R12 R0 K14 ["Packages"]
  GETTABLEKS R11 R12 K21 ["t"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R13 R0 K14 ["Packages"]
  GETTABLEKS R12 R13 K22 ["Cryo"]
  CALL R11 1 1
  GETTABLEKS R14 R9 K23 ["Core"]
  GETTABLEKS R13 R14 K24 ["Style"]
  GETTABLEKS R12 R13 K25 ["withStyle"]
  GETTABLEKS R15 R9 K26 ["App"]
  GETTABLEKS R14 R15 K27 ["Button"]
  GETTABLEKS R13 R14 K28 ["ButtonStack"]
  GETTABLEKS R17 R9 K26 ["App"]
  GETTABLEKS R16 R17 K27 ["Button"]
  GETTABLEKS R15 R16 K29 ["Enum"]
  GETTABLEKS R14 R15 K30 ["ButtonType"]
  GETTABLEKS R15 R7 K31 ["PureComponent"]
  LOADK R17 K32 ["RefinedFeedbackBar"]
  NAMECALL R15 R15 K33 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K34 [PROTO_0]
  CAPTURE VAL R1
  GETTABLEKS R17 R10 K35 ["strictInterface"]
  DUPTABLE R18 K37 [{"text"}]
  GETTABLEKS R19 R10 K38 ["string"]
  SETTABLEKS R19 R18 K36 ["text"]
  CALL R17 1 1
  GETTABLEKS R18 R10 K35 ["strictInterface"]
  DUPTABLE R19 K40 [{"leftHint"}]
  SETTABLEKS R17 R19 K39 ["leftHint"]
  CALL R18 1 1
  SETTABLEKS R18 R15 K41 ["validateProps"]
  DUPCLOSURE R18 K42 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R18 R15 K43 ["init"]
  DUPCLOSURE R18 K44 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R16
  SETTABLEKS R18 R15 K45 ["calculateHintRatios"]
  DUPCLOSURE R18 K46 [PROTO_5]
  CAPTURE VAL R15
  SETTABLEKS R18 R15 K47 ["getDerivedStateFromProps"]
  DUPCLOSURE R18 K48 [PROTO_6]
  CAPTURE VAL R16
  SETTABLEKS R18 R15 K49 ["calculateHintSize"]
  DUPCLOSURE R18 K50 [PROTO_12]
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R18 R15 K51 ["render"]
  GETTABLEKS R18 R8 K52 ["connect"]
  DUPCLOSURE R19 K53 [PROTO_13]
  DUPCLOSURE R20 K54 [PROTO_15]
  CAPTURE VAL R4
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 -1
  RETURN R18 -1
