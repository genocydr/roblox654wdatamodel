PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyRightClick"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  CALL R2 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputBegan"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  MOVE R7 R1
  CALL R2 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnKeyInputEnded"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R9 R8 K1 ["Path"]
  JUMPIF R9 [+6]
  NEWTABLE R9 0 1
  GETTABLEKS R10 R3 K2 ["Name"]
  SETLIST R9 R10 1 [1]
  LOADNIL R10
  GETTABLEKS R11 R8 K3 ["IsChannelAnimation"]
  JUMPIFNOT R11 [+18]
  JUMPIFNOT R6 [+14]
  GETTABLEKS R12 R6 K4 ["InterpolationMode"]
  JUMPIFNOT R12 [+11]
  GETTABLEKS R12 R6 K4 ["InterpolationMode"]
  GETIMPORT R13 K8 [Enum.KeyInterpolationMode.Linear]
  JUMPIFEQ R12 R13 [+6]
  GETTABLEKS R12 R6 K4 ["InterpolationMode"]
  GETTABLEKS R11 R12 K2 ["Name"]
  JUMPIF R11 [+1]
  LOADNIL R11
  MOVE R10 R11
  JUMP [+23]
  JUMPIFNOT R6 [+20]
  GETTABLEKS R12 R6 K9 ["EasingStyle"]
  JUMPIFNOT R12 [+17]
  GETTABLEKS R12 R6 K9 ["EasingStyle"]
  GETIMPORT R13 K11 [Enum.PoseEasingStyle.Linear]
  JUMPIFEQ R12 R13 [+12]
  GETTABLEKS R15 R6 K9 ["EasingStyle"]
  GETTABLEKS R12 R15 K2 ["Name"]
  LOADK R13 K12 [", "]
  GETTABLEKS R15 R6 K13 ["EasingDirection"]
  GETTABLEKS R14 R15 K2 ["Name"]
  CONCAT R11 R12 R14
  JUMPIF R11 [+1]
  LOADNIL R11
  MOVE R10 R11
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K14 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K26 [{"Selected", "Position", "ZIndex", "Width", "BorderSizePixel", "KeyframeStyle", "Filled", "OnActivated", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
  SETTABLEKS R1 R13 K15 ["Selected"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 0
  MOVE R16 R2
  LOADK R17 K30 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K16 ["Position"]
  GETTABLEKS R14 R8 K17 ["ZIndex"]
  SETTABLEKS R14 R13 K17 ["ZIndex"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K31 ["KEYFRAME_WIDTH"]
  SETTABLEKS R14 R13 K18 ["Width"]
  JUMPIFNOT R1 [+2]
  LOADN R14 2
  JUMP [+1]
  LOADN R14 1
  SETTABLEKS R14 R13 K19 ["BorderSizePixel"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K33 ["KEYFRAME_STYLE"]
  GETTABLE R15 R16 R5
  ORK R14 R15 K32 []
  SETTABLEKS R14 R13 K20 ["KeyframeStyle"]
  SETTABLEKS R7 R13 K21 ["Filled"]
  GETTABLEKS R14 R8 K34 ["OnKeyActivated"]
  SETTABLEKS R14 R13 K22 ["OnActivated"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K23 ["OnRightClick"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K24 ["OnInputBegan"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K25 ["OnInputEnded"]
  DUPTABLE R14 K36 [{"Tooltip"}]
  JUMPIFNOT R10 [+12]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K14 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K39 [{"Text", "ShowDelay"}]
  SETTABLEKS R10 R17 K37 ["Text"]
  LOADN R18 0
  SETTABLEKS R18 R17 K38 ["ShowDelay"]
  CALL R15 2 1
  JUMPIF R15 [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K35 ["Tooltip"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_4:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K4 [{"Position", "Size", "ZIndex"}]
  GETIMPORT R8 K7 [UDim2.new]
  LOADN R9 0
  MOVE R10 R1
  LOADK R11 K8 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K1 ["Position"]
  GETIMPORT R8 K7 [UDim2.new]
  LOADN R9 0
  SUB R10 R2 R1
  LOADN R11 0
  MOVE R12 R3
  CALL R8 4 1
  SETTABLEKS R8 R7 K2 ["Size"]
  SETTABLEKS R4 R7 K3 ["ZIndex"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Width"]
  GETTABLEKS R4 R2 K2 ["Track"]
  GETTABLEKS R5 R2 K3 ["StartTick"]
  GETTABLEKS R6 R2 K4 ["EndTick"]
  GETTABLEKS R7 R2 K5 ["SelectedKeyframes"]
  GETTABLEKS R8 R2 K6 ["ShowCluster"]
  GETTABLEKS R9 R2 K7 ["IsChannelAnimation"]
  GETTABLEKS R10 R2 K8 ["Path"]
  JUMPIF R10 [+6]
  NEWTABLE R10 0 1
  GETTABLEKS R11 R4 K9 ["Name"]
  SETLIST R10 R11 1 [1]
  GETTABLEKS R11 R4 K10 ["Keyframes"]
  GETTABLEKS R12 R4 K11 ["Data"]
  GETTABLEKS R13 R4 K12 ["Instance"]
  JUMPIFNOT R8 [+37]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K13 ["getKeyframesExtents"]
  MOVE R15 R11
  MOVE R16 R5
  MOVE R17 R6
  CALL R14 3 2
  JUMPIFEQKNIL R14 [+113]
  JUMPIFEQKNIL R15 [+111]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K14 ["getScaledKeyframePosition"]
  GETTABLE R17 R11 R14
  MOVE R18 R5
  MOVE R19 R6
  MOVE R20 R3
  CALL R16 4 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K14 ["getScaledKeyframePosition"]
  GETTABLE R18 R11 R15
  MOVE R19 R5
  MOVE R20 R6
  MOVE R21 R3
  CALL R17 4 1
  MOVE R20 R16
  MOVE R21 R17
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K15 ["MIN_SPACE_BETWEEN_KEYS"]
  NAMECALL R18 R0 K16 ["renderKeyframeCluster"]
  CALL R18 4 1
  SETTABLE R18 R1 R15
  RETURN R0 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K17 ["getComponentsInfo"]
  MOVE R15 R4
  MOVE R16 R5
  MOVE R17 R6
  CALL R14 3 1
  GETTABLE R15 R7 R13
  GETIMPORT R16 K19 [ipairs]
  MOVE R17 R10
  CALL R16 1 3
  FORGPREP_INEXT R16
  JUMPIFNOT R15 [+11]
  GETTABLEKS R22 R15 K20 ["Components"]
  JUMPIFNOT R22 [+4]
  GETTABLEKS R22 R15 K20 ["Components"]
  GETTABLE R21 R22 R20
  JUMPIF R21 [+1]
  GETTABLE R21 R15 R20
  MOVE R15 R21
  FORGLOOP R16 2 [inext] [-11]
  GETIMPORT R16 K22 [pairs]
  MOVE R17 R14
  CALL R16 1 3
  FORGPREP_NEXT R16
  LOADNIL R21
  MOVE R22 R12
  JUMPIFNOT R22 [+1]
  GETTABLE R22 R12 R19
  NOT R23 R9
  JUMPIF R23 [+2]
  GETTABLEKS R23 R20 K23 ["Complete"]
  GETTABLE R25 R14 R19
  GETTABLEKS R24 R25 K23 ["Complete"]
  JUMPIFNOT R24 [+9]
  JUMPIFNOT R9 [+4]
  GETTABLE R25 R14 R19
  GETTABLEKS R24 R25 K24 ["InterpolationMode"]
  JUMPIF R24 [+3]
  GETTABLE R25 R14 R19
  GETTABLEKS R24 R25 K25 ["EasingStyle"]
  MOVE R21 R24
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K14 ["getScaledKeyframePosition"]
  MOVE R25 R19
  MOVE R26 R5
  MOVE R27 R6
  MOVE R28 R3
  CALL R24 4 1
  MOVE R25 R15
  JUMPIFNOT R25 [+6]
  GETTABLEKS R25 R15 K26 ["Selection"]
  JUMPIFNOT R25 [+3]
  GETTABLEKS R26 R15 K26 ["Selection"]
  GETTABLE R25 R26 R19
  MOVE R27 R1
  MOVE R30 R25
  MOVE R31 R24
  MOVE R32 R4
  MOVE R33 R19
  MOVE R34 R21
  MOVE R35 R22
  MOVE R36 R23
  NAMECALL R28 R0 K27 ["renderKeyframe"]
  CALL R28 8 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R26 K30 [table.insert]
  CALL R26 -1 0
  FORGLOOP R16 2 [-53]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWTABLE R2 0 0
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["renderKeyframes"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["BaseTrack"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K13 ["TrackUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K14 ["Timeline"]
  GETTABLEKS R6 R7 K15 ["Keyframe"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K16 ["KeyframeCluster"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K9 ["Components"]
  GETTABLEKS R8 R9 K17 ["Tooltip"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K18 ["PureComponent"]
  LOADK R10 K19 ["DopeSheetTrack"]
  NAMECALL R8 R8 K20 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K21 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K22 ["renderKeyframe"]
  DUPCLOSURE R9 K23 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K24 ["renderKeyframeCluster"]
  DUPCLOSURE R9 K25 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K26 ["renderKeyframes"]
  DUPCLOSURE R9 K27 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K28 ["render"]
  RETURN R8 1
