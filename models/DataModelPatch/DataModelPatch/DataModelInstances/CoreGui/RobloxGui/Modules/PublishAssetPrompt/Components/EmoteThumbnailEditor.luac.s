PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["closePromptCallback"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["thumbnailParameters"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["updateThumbnailCallback"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["props"]
  GETTABLEKS R1 R2 K4 ["closePromptCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["thumbnailParameters"]
  CALL R1 1 1
  SETTABLEKS R0 R1 K5 ["thumbnailCharacterRotation"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K6 ["updateThumbnailParameters"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["thumbnailParameters"]
  CALL R1 1 1
  SETTABLEKS R0 R1 K5 ["thumbnailTime"]
  SETTABLEKS R0 R1 K6 ["thumbnailKeyframe"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K7 ["updateThumbnailParameters"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["initialThumbnailParameters"]
  JUMPIF R1 [+3]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["defaultParameters"]
  DUPTABLE R4 K4 [{"thumbnailParameters"}]
  SETTABLEKS R1 R4 K3 ["thumbnailParameters"]
  NAMECALL R2 R0 K5 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onCancelPressed"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onUpdatePressed"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onRotateChanged"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onKeyframeOrTimeChanged"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K11 ["rotationSliderRef"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K12 ["timeSliderRef"]
  NAMECALL R2 R0 K13 ["updateSliderValuesForAnimationClip"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADNIL R2
  LOADNIL R3
  LOADNIL R4
  GETTABLEKS R5 R1 K1 ["animationClip"]
  LOADK R7 K2 ["KeyframeSequence"]
  NAMECALL R5 R5 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+9]
  GETTABLEKS R5 R1 K1 ["animationClip"]
  NAMECALL R5 R5 K4 ["GetKeyframes"]
  CALL R5 1 1
  LOADN R2 1
  LENGTH R3 R5
  LOADN R4 1
  JUMP [+38]
  GETTABLEKS R5 R1 K1 ["animationClip"]
  LOADK R7 K5 ["CurveAnimation"]
  NAMECALL R5 R5 K3 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+23]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["GetCurveAnimationTimeLength"]
  GETTABLEKS R6 R1 K1 ["animationClip"]
  CALL R5 1 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["CurveAnimationTimeIncrements"]
  DIV R7 R5 R8
  FASTCALL1 MATH_FLOOR R7 [+2]
  GETIMPORT R6 K10 [math.floor]
  CALL R6 1 1
  LOADN R2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["CurveAnimationTimeIncrements"]
  MUL R3 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R4 R7 K7 ["CurveAnimationTimeIncrements"]
  JUMP [+8]
  GETIMPORT R5 K12 [error]
  LOADK R6 K13 ["Unsupported animation type:"]
  GETTABLEKS R8 R1 K1 ["animationClip"]
  GETTABLEKS R7 R8 K14 ["ClassName"]
  CALL R5 2 0
  DUPTABLE R7 K18 [{"timeSliderMin", "timeSliderMax", "timeSliderStepInterval"}]
  SETTABLEKS R2 R7 K15 ["timeSliderMin"]
  SETTABLEKS R3 R7 K16 ["timeSliderMax"]
  SETTABLEKS R4 R7 K17 ["timeSliderStepInterval"]
  NAMECALL R5 R0 K19 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R4 K1 [{"thumbnailParameters"}]
  SETTABLEKS R1 R4 K0 ["thumbnailParameters"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["Range"]
  GETTABLEKS R3 R4 K1 ["Max"]
  GETTABLEKS R5 R0 K0 ["Range"]
  GETTABLEKS R4 R5 K2 ["Min"]
  SUB R2 R3 R4
  GETTABLEKS R4 R0 K4 ["Increments"]
  SUBK R3 R4 K3 [1]
  DIV R1 R2 R3
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["Font"]
  GETTABLEKS R2 R0 K1 ["Theme"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["screenSize"]
  GETTABLEKS R5 R3 K4 ["Y"]
  LOADN R6 225
  JUMPIFLT R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  NEWTABLE R5 8 0
  JUMPIFNOT R4 [+44]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 6
  CALL R6 4 1
  SETTABLEKS R6 R5 K8 ["contentSize"]
  GETIMPORT R6 K7 [UDim2.new]
  LOADK R7 K9 [0.5]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["thumbnailPosition"]
  GETIMPORT R6 K12 [Vector2.new]
  LOADK R7 K9 [0.5]
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["thumbnailAnchorPoint"]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 160
  CALL R6 4 1
  SETTABLEKS R6 R5 K14 ["leversPosition"]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 102
  CALL R6 4 1
  SETTABLEKS R6 R5 K15 ["leversSize"]
  JUMP [+43]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 150
  CALL R6 4 1
  SETTABLEKS R6 R5 K8 ["contentSize"]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K10 ["thumbnailPosition"]
  GETIMPORT R6 K12 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["thumbnailAnchorPoint"]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 0
  LOADN R8 160
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K14 ["leversPosition"]
  GETIMPORT R6 K7 [UDim2.new]
  LOADN R7 1
  LOADN R8 96
  LOADN R9 0
  LOADN R10 102
  CALL R6 4 1
  SETTABLEKS R6 R5 K15 ["leversSize"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["state"]
  GETTABLEKS R6 R7 K17 ["thumbnailParameters"]
  GETTABLEKS R7 R6 K18 ["thumbnailKeyframe"]
  GETTABLEKS R8 R6 K19 ["thumbnailCharacterRotation"]
  DUPCLOSURE R9 K20 [PROTO_7]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K21 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K22 ["Focusable"]
  GETTABLEKS R11 R12 K23 ["Frame"]
  NEWTABLE R12 4 0
  GETTABLEKS R13 R5 K8 ["contentSize"]
  SETTABLEKS R13 R12 K24 ["Size"]
  GETIMPORT R13 K26 [Color3.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["BackgroundColor3"]
  LOADN R13 1
  SETTABLEKS R13 R12 K28 ["BackgroundTransparency"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K29 ["Ref"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K30 ["middleContentRef"]
  SETTABLE R14 R12 R13
  DUPTABLE R13 K32 [{"TopSection"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K21 ["createElement"]
  LOADK R15 K23 ["Frame"]
  DUPTABLE R16 K33 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R17 K7 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K24 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K28 ["BackgroundTransparency"]
  DUPTABLE R17 K36 [{"ThumbnailViewParent", "Levers"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K21 ["createElement"]
  LOADK R19 K23 ["Frame"]
  DUPTABLE R20 K40 [{"LayoutOrder", "Position", "AnchorPoint", "Size", "BackgroundColor3", "BackgroundTransparency"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K37 ["LayoutOrder"]
  GETTABLEKS R21 R5 K10 ["thumbnailPosition"]
  SETTABLEKS R21 R20 K38 ["Position"]
  GETTABLEKS R21 R5 K13 ["thumbnailAnchorPoint"]
  SETTABLEKS R21 R20 K39 ["AnchorPoint"]
  GETIMPORT R21 K7 [UDim2.new]
  LOADN R22 0
  LOADN R23 150
  LOADN R24 0
  LOADN R25 150
  CALL R21 4 1
  SETTABLEKS R21 R20 K24 ["Size"]
  GETIMPORT R21 K26 [Color3.new]
  LOADN R22 1
  LOADN R23 1
  LOADN R24 0
  CALL R21 3 1
  SETTABLEKS R21 R20 K27 ["BackgroundColor3"]
  LOADN R21 1
  SETTABLEKS R21 R20 K28 ["BackgroundTransparency"]
  DUPTABLE R21 K42 [{"EmoteThumbnailView"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 3
  DUPTABLE R24 K46 [{"position", "anchorPoint", "animationClip", "thumbnailParameters"}]
  GETIMPORT R25 K7 [UDim2.new]
  LOADK R26 K9 [0.5]
  LOADN R27 0
  LOADK R28 K9 [0.5]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K43 ["position"]
  GETIMPORT R25 K12 [Vector2.new]
  LOADK R26 K9 [0.5]
  LOADK R27 K9 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K44 ["anchorPoint"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K2 ["props"]
  GETTABLEKS R25 R26 K45 ["animationClip"]
  SETTABLEKS R25 R24 K45 ["animationClip"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K16 ["state"]
  GETTABLEKS R25 R26 K17 ["thumbnailParameters"]
  SETTABLEKS R25 R24 K17 ["thumbnailParameters"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K41 ["EmoteThumbnailView"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["ThumbnailViewParent"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K21 ["createElement"]
  LOADK R19 K23 ["Frame"]
  DUPTABLE R20 K47 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundColor3", "BackgroundTransparency"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K37 ["LayoutOrder"]
  GETTABLEKS R21 R5 K15 ["leversSize"]
  SETTABLEKS R21 R20 K24 ["Size"]
  GETIMPORT R21 K12 [Vector2.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["AnchorPoint"]
  GETTABLEKS R21 R5 K14 ["leversPosition"]
  SETTABLEKS R21 R20 K38 ["Position"]
  GETIMPORT R21 K26 [Color3.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  CALL R21 3 1
  SETTABLEKS R21 R20 K27 ["BackgroundColor3"]
  LOADN R21 1
  SETTABLEKS R21 R20 K28 ["BackgroundTransparency"]
  DUPTABLE R21 K53 [{"ListLayout", "FrameDescriptionLabel", "TimeSlider", "RotationDescriptionLabel", "RotationSlider"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K54 ["UIListLayout"]
  DUPTABLE R24 K58 [{"FillDirection", "SortOrder", "HorizontalAlignment"}]
  GETIMPORT R25 K61 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K55 ["FillDirection"]
  GETIMPORT R25 K62 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K56 ["SortOrder"]
  GETIMPORT R25 K64 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R25 R24 K57 ["HorizontalAlignment"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K48 ["ListLayout"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K65 ["TextLabel"]
  DUPTABLE R24 K70 [{"LayoutOrder", "Size", "Font", "TextSize", "Text", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
  LOADN R25 0
  SETTABLEKS R25 R24 K37 ["LayoutOrder"]
  GETIMPORT R25 K7 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 15
  CALL R25 4 1
  SETTABLEKS R25 R24 K24 ["Size"]
  GETTABLEKS R26 R1 K71 ["Body"]
  GETTABLEKS R25 R26 K0 ["Font"]
  SETTABLEKS R25 R24 K0 ["Font"]
  LOADN R25 12
  SETTABLEKS R25 R24 K66 ["TextSize"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K72 ["timeLabelText"]
  SETTABLEKS R25 R24 K67 ["Text"]
  GETTABLEKS R26 R2 K73 ["TextDefault"]
  GETTABLEKS R25 R26 K74 ["Color"]
  SETTABLEKS R25 R24 K68 ["TextColor3"]
  LOADN R25 1
  SETTABLEKS R25 R24 K28 ["BackgroundTransparency"]
  GETIMPORT R25 K76 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K69 ["TextXAlignment"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K49 ["FrameDescriptionLabel"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 5
  NEWTABLE R24 16 0
  LOADN R25 1
  SETTABLEKS R25 R24 K77 ["layoutOrder"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K16 ["state"]
  GETTABLEKS R25 R26 K78 ["timeSliderMin"]
  SETTABLEKS R25 R24 K79 ["min"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K16 ["state"]
  GETTABLEKS R25 R26 K80 ["timeSliderMax"]
  SETTABLEKS R25 R24 K81 ["max"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K16 ["state"]
  GETTABLEKS R25 R26 K82 ["timeSliderStepInterval"]
  SETTABLEKS R25 R24 K83 ["stepInterval"]
  SETTABLEKS R7 R24 K84 ["value"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K85 ["onKeyframeOrTimeChanged"]
  SETTABLEKS R25 R24 K86 ["onValueChanged"]
  GETIMPORT R25 K88 [UDim.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K89 ["width"]
  GETIMPORT R25 K7 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADK R28 K9 [0.5]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K43 ["position"]
  GETIMPORT R25 K12 [Vector2.new]
  LOADN R26 0
  LOADK R27 K9 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K44 ["anchorPoint"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K90 ["rotationSliderRef"]
  SETTABLEKS R25 R24 K91 ["NextSelectionDown"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K29 ["Ref"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K92 ["timeSliderRef"]
  SETTABLE R26 R24 R25
  CALL R22 2 1
  SETTABLEKS R22 R21 K50 ["TimeSlider"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K65 ["TextLabel"]
  DUPTABLE R24 K70 [{"LayoutOrder", "Size", "Font", "TextSize", "Text", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K37 ["LayoutOrder"]
  GETIMPORT R25 K7 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 15
  CALL R25 4 1
  SETTABLEKS R25 R24 K24 ["Size"]
  GETTABLEKS R26 R1 K71 ["Body"]
  GETTABLEKS R25 R26 K0 ["Font"]
  SETTABLEKS R25 R24 K0 ["Font"]
  LOADN R25 12
  SETTABLEKS R25 R24 K66 ["TextSize"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K93 ["rotationLabelText"]
  SETTABLEKS R25 R24 K67 ["Text"]
  GETTABLEKS R26 R2 K73 ["TextDefault"]
  GETTABLEKS R25 R26 K74 ["Color"]
  SETTABLEKS R25 R24 K68 ["TextColor3"]
  LOADN R25 1
  SETTABLEKS R25 R24 K28 ["BackgroundTransparency"]
  GETIMPORT R25 K76 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K69 ["TextXAlignment"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K51 ["RotationDescriptionLabel"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 5
  NEWTABLE R24 16 0
  LOADN R25 3
  SETTABLEKS R25 R24 K77 ["layoutOrder"]
  GETUPVAL R28 6
  GETTABLEKS R27 R28 K94 ["Rotation"]
  GETTABLEKS R26 R27 K95 ["Range"]
  GETTABLEKS R25 R26 K96 ["Min"]
  SETTABLEKS R25 R24 K79 ["min"]
  GETUPVAL R28 6
  GETTABLEKS R27 R28 K94 ["Rotation"]
  GETTABLEKS R26 R27 K95 ["Range"]
  GETTABLEKS R25 R26 K97 ["Max"]
  SETTABLEKS R25 R24 K81 ["max"]
  GETUPVAL R27 6
  GETTABLEKS R26 R27 K94 ["Rotation"]
  GETTABLEKS R29 R26 K95 ["Range"]
  GETTABLEKS R28 R29 K97 ["Max"]
  GETTABLEKS R30 R26 K95 ["Range"]
  GETTABLEKS R29 R30 K96 ["Min"]
  SUB R27 R28 R29
  GETTABLEKS R29 R26 K99 ["Increments"]
  SUBK R28 R29 K98 [1]
  DIV R25 R27 R28
  SETTABLEKS R25 R24 K83 ["stepInterval"]
  SETTABLEKS R8 R24 K84 ["value"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K100 ["onRotateChanged"]
  SETTABLEKS R25 R24 K86 ["onValueChanged"]
  GETIMPORT R25 K88 [UDim.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 1
  SETTABLEKS R25 R24 K89 ["width"]
  GETIMPORT R25 K7 [UDim2.new]
  LOADN R26 0
  LOADN R27 0
  LOADK R28 K9 [0.5]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K43 ["position"]
  GETIMPORT R25 K12 [Vector2.new]
  LOADN R26 0
  LOADK R27 K9 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K44 ["anchorPoint"]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K92 ["timeSliderRef"]
  SETTABLEKS R25 R24 K101 ["NextSelectionUp"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K29 ["Ref"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K90 ["rotationSliderRef"]
  SETTABLE R26 R24 R25
  CALL R22 2 1
  SETTABLEKS R22 R21 K52 ["RotationSlider"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K35 ["Levers"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K31 ["TopSection"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_9:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R2 1 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["renderMiddle"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"title", "buttonStackInfo", "middleContent", "screenSize", "defaultChildRef", "isMiddleContentFocusable"}]
  GETTABLEKS R6 R1 K9 ["titleText"]
  ORK R5 R6 K8 [""]
  SETTABLEKS R5 R4 K1 ["title"]
  DUPTABLE R5 K11 [{"buttons"}]
  NEWTABLE R6 0 2
  DUPTABLE R7 K14 [{"props", "isDefaultChild"}]
  DUPTABLE R8 K17 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K18 ["onCancelPressed"]
  SETTABLEKS R9 R8 K15 ["onActivated"]
  GETTABLEKS R9 R1 K19 ["cancelButtonText"]
  SETTABLEKS R9 R8 K16 ["text"]
  SETTABLEKS R8 R7 K12 ["props"]
  LOADB R8 1
  SETTABLEKS R8 R7 K13 ["isDefaultChild"]
  DUPTABLE R8 K21 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K22 ["PrimarySystem"]
  SETTABLEKS R9 R8 K20 ["buttonType"]
  DUPTABLE R9 K17 [{"onActivated", "text"}]
  GETTABLEKS R10 R0 K23 ["onUpdatePressed"]
  SETTABLEKS R10 R9 K15 ["onActivated"]
  GETTABLEKS R10 R1 K24 ["updateButtonText"]
  SETTABLEKS R10 R9 K16 ["text"]
  SETTABLEKS R9 R8 K12 ["props"]
  LOADB R9 0
  SETTABLEKS R9 R8 K13 ["isDefaultChild"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K10 ["buttons"]
  SETTABLEKS R5 R4 K2 ["buttonStackInfo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K3 ["middleContent"]
  GETTABLEKS R6 R0 K12 ["props"]
  GETTABLEKS R5 R6 K4 ["screenSize"]
  SETTABLEKS R5 R4 K4 ["screenSize"]
  GETTABLEKS R6 R0 K12 ["props"]
  GETTABLEKS R5 R6 K5 ["defaultChildRef"]
  SETTABLEKS R5 R4 K5 ["defaultChildRef"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["isMiddleContentFocusable"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  DUPTABLE R0 K5 [{"cancelButtonText", "updateButtonText", "titleText", "rotationLabelText", "timeLabelText"}]
  GETUPVAL R1 0
  LOADK R3 K6 ["CoreScripts.EmoteThumbnailEditor.Action.Cancel"]
  NAMECALL R1 R1 K7 ["FormatByKey"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["cancelButtonText"]
  GETUPVAL R1 0
  LOADK R3 K8 ["CoreScripts.EmoteThumbnailEditor.Action.Update"]
  NAMECALL R1 R1 K7 ["FormatByKey"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["updateButtonText"]
  GETUPVAL R1 0
  LOADK R3 K9 ["CoreScripts.EmoteThumbnailEditor.Heading.EditThumbnail"]
  NAMECALL R1 R1 K7 ["FormatByKey"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["titleText"]
  GETUPVAL R1 0
  LOADK R3 K10 ["CoreScripts.EmoteThumbnailEditor.Label.Rotation"]
  NAMECALL R1 R1 K7 ["FormatByKey"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["rotationLabelText"]
  GETUPVAL R1 0
  LOADK R3 K11 ["CoreScripts.EmoteThumbnailEditor.Label.Time"]
  NAMECALL R1 R1 K7 ["FormatByKey"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["timeLabelText"]
  RETURN R0 1

PROTO_13:
  GETUPVAL R1 0
  CALL R1 0 1
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["renderAlertLocalized"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactGamepad"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K10 ["CoreGui"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  LOADK R7 K11 ["RobloxGui"]
  NAMECALL R5 R4 K12 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R5 K13 ["Modules"]
  GETTABLEKS R7 R8 K14 ["RobloxTranslator"]
  CALL R6 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K15 ["Thumbnailing"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K16 ["EmoteUtility"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K6 ["Packages"]
  GETTABLEKS R9 R10 K17 ["UIBlox"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K18 ["Style"]
  GETTABLEKS R9 R10 K19 ["withStyle"]
  GETTABLEKS R13 R8 K20 ["App"]
  GETTABLEKS R12 R13 K21 ["Dialog"]
  GETTABLEKS R11 R12 K22 ["Alert"]
  GETTABLEKS R10 R11 K23 ["InteractiveAlert"]
  GETTABLEKS R14 R8 K20 ["App"]
  GETTABLEKS R13 R14 K24 ["Button"]
  GETTABLEKS R12 R13 K25 ["Enum"]
  GETTABLEKS R11 R12 K26 ["ButtonType"]
  GETTABLEKS R14 R8 K20 ["App"]
  GETTABLEKS R13 R14 K27 ["Slider"]
  GETTABLEKS R12 R13 K28 ["SystemSlider"]
  GETIMPORT R13 K5 [require]
  GETIMPORT R16 K30 [script]
  GETTABLEKS R15 R16 K31 ["Parent"]
  GETTABLEKS R14 R15 K32 ["EmoteThumbnailParameters"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R17 K30 [script]
  GETTABLEKS R16 R17 K31 ["Parent"]
  GETTABLEKS R15 R16 K33 ["EmoteThumbnailView"]
  CALL R14 1 1
  DUPTABLE R15 K35 [{"CurveAnimationTimeIncrements"}]
  LOADK R16 K36 [0.01]
  SETTABLEKS R16 R15 K34 ["CurveAnimationTimeIncrements"]
  DUPTABLE R16 K38 [{"Rotation"}]
  DUPTABLE R17 K43 [{"Precision", "Range", "Default", "Increments"}]
  LOADN R18 0
  SETTABLEKS R18 R17 K39 ["Precision"]
  GETIMPORT R18 K46 [NumberRange.new]
  LOADN R19 0
  LOADN R20 104
  CALL R18 2 1
  SETTABLEKS R18 R17 K40 ["Range"]
  LOADN R18 0
  SETTABLEKS R18 R17 K41 ["Default"]
  LOADN R18 105
  SETTABLEKS R18 R17 K42 ["Increments"]
  SETTABLEKS R17 R16 K37 ["Rotation"]
  GETTABLEKS R17 R1 K47 ["PureComponent"]
  LOADK R19 K48 ["EmoteThumbnailEditor"]
  NAMECALL R17 R17 K49 ["extend"]
  CALL R17 2 1
  GETTABLEKS R18 R3 K50 ["strictInterface"]
  DUPTABLE R19 K56 [{"screenSize", "animationClip", "initialThumbnailParameters", "closePromptCallback", "updateThumbnailCallback"}]
  GETTABLEKS R20 R3 K57 ["Vector2"]
  SETTABLEKS R20 R19 K51 ["screenSize"]
  GETTABLEKS R20 R3 K58 ["instanceIsA"]
  LOADK R21 K59 ["AnimationClip"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K52 ["animationClip"]
  GETTABLEKS R20 R3 K60 ["optional"]
  GETTABLEKS R21 R13 K61 ["validate"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K53 ["initialThumbnailParameters"]
  GETTABLEKS R20 R3 K62 ["callback"]
  SETTABLEKS R20 R19 K54 ["closePromptCallback"]
  GETTABLEKS R20 R3 K62 ["callback"]
  SETTABLEKS R20 R19 K55 ["updateThumbnailCallback"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K63 ["validateProps"]
  DUPCLOSURE R18 K64 [PROTO_4]
  CAPTURE VAL R13
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K65 ["init"]
  DUPCLOSURE R18 K66 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R15
  SETTABLEKS R18 R17 K67 ["updateSliderValuesForAnimationClip"]
  DUPCLOSURE R18 K68 [PROTO_6]
  SETTABLEKS R18 R17 K69 ["updateThumbnailParameters"]
  DUPCLOSURE R18 K70 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K71 ["renderMiddle"]
  DUPCLOSURE R18 K72 [PROTO_11]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R18 R17 K73 ["renderAlertLocalized"]
  DUPCLOSURE R18 K74 [PROTO_12]
  CAPTURE VAL R6
  DUPCLOSURE R19 K75 [PROTO_13]
  CAPTURE VAL R18
  SETTABLEKS R19 R17 K76 ["render"]
  RETURN R17 1
