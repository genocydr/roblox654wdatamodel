PROTO_0:
  DUPTABLE R3 K3 [{"lastVoiceRecordingIndicatorTextUpdated", "voiceRecordingIndicatorTextMotor", "textOpacity"}]
  GETIMPORT R4 K5 [tick]
  CALL R4 0 1
  SETTABLEKS R4 R3 K0 ["lastVoiceRecordingIndicatorTextUpdated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createSingleMotor"]
  LOADN R5 1
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["voiceRecordingIndicatorTextMotor"]
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["textOpacity"]
  NAMECALL R1 R0 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"textOpacity"}]
  SETTABLEKS R0 R3 K0 ["textOpacity"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [tick]
  CALL R1 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["lastVoiceRecordingIndicatorTextUpdated"]
  SUB R0 R1 R2
  LOADN R1 5
  JUMPIFNOTLE R1 R0 [+37]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["micOn"]
  JUMPIF R1 [+30]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K6 ["textOpacity"]
  LOADN R2 1
  JUMPIFNOTLE R2 R1 [+23]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K7 ["voiceRecordingIndicatorTextMotor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["spring"]
  LOADN R4 0
  GETUPVAL R5 2
  CALL R3 2 -1
  NAMECALL R1 R1 K9 ["setGoal"]
  CALL R1 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["state"]
  GETTABLEKS R1 R2 K7 ["voiceRecordingIndicatorTextMotor"]
  NAMECALL R1 R1 K10 ["start"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["voiceRecordingIndicatorTextMotor"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K2 ["onStep"]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K3 ["RoactVoiceRecordingIndicator"]
  GETIMPORT R4 K7 [Enum.RenderPriority.Last]
  GETTABLEKS R3 R4 K8 ["Value"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R0 R0 K9 ["BindToRenderStep"]
  CALL R0 4 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K2 [task.spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["voiceRecordingIndicatorTextMotor"]
  NAMECALL R1 R1 K2 ["destroy"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADK R3 K3 ["RoactVoiceRecordingIndicator"]
  NAMECALL R1 R1 K4 ["UnbindFromRenderStep"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["micOn"]
  GETTABLEKS R4 R1 K1 ["micOn"]
  JUMPIFEQ R3 R4 [+33]
  DUPTABLE R5 K3 [{"lastVoiceRecordingIndicatorTextUpdated"}]
  GETIMPORT R6 K5 [tick]
  CALL R6 0 1
  SETTABLEKS R6 R5 K2 ["lastVoiceRecordingIndicatorTextUpdated"]
  NAMECALL R3 R0 K6 ["setState"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K1 ["micOn"]
  JUMPIFNOT R3 [+20]
  GETTABLEKS R4 R0 K7 ["state"]
  GETTABLEKS R3 R4 K8 ["voiceRecordingIndicatorTextMotor"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["spring"]
  LOADN R6 1
  GETUPVAL R7 1
  CALL R5 2 -1
  NAMECALL R3 R3 K10 ["setGoal"]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K7 ["state"]
  GETTABLEKS R3 R4 K8 ["voiceRecordingIndicatorTextMotor"]
  NAMECALL R3 R3 K11 ["start"]
  CALL R3 1 0
  LOADB R3 1
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["micOn"]
  GETTABLEKS R5 R1 K1 ["micOn"]
  JUMPIFNOTEQ R4 R5 [+11]
  GETTABLEKS R5 R0 K7 ["state"]
  GETTABLEKS R4 R5 K12 ["textOpacity"]
  GETTABLEKS R5 R2 K12 ["textOpacity"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["TextLabel"]
  DUPTABLE R3 K14 [{"Text", "AutomaticSize", "Visible", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "TextColor3", "TextTransparency", "BackgroundTransparency", "LayoutOrder", "TextWrapped"}]
  GETTABLEKS R6 R0 K15 ["props"]
  GETTABLEKS R5 R6 K16 ["micOn"]
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 1
  JUMP [+1]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["Text"]
  GETIMPORT R4 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  GETTABLEKS R5 R0 K15 ["props"]
  GETTABLEKS R4 R5 K20 ["hasMicPermissions"]
  SETTABLEKS R4 R3 K4 ["Visible"]
  GETTABLEKS R6 R0 K15 ["props"]
  GETTABLEKS R5 R6 K21 ["isSmallTouchScreen"]
  JUMPIFNOT R5 [+2]
  LOADN R4 10
  JUMP [+1]
  LOADN R4 12
  SETTABLEKS R4 R3 K5 ["TextSize"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K22 ["default"]
  NAMECALL R4 R4 K23 ["getMedium"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["Font"]
  GETIMPORT R4 K25 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K7 ["TextXAlignment"]
  GETIMPORT R4 K27 [Enum.TextYAlignment.Center]
  SETTABLEKS R4 R3 K8 ["TextYAlignment"]
  GETIMPORT R4 K30 [Color3.fromRGB]
  LOADN R5 255
  LOADN R6 255
  LOADN R7 255
  CALL R4 3 1
  SETTABLEKS R4 R3 K9 ["TextColor3"]
  GETTABLEKS R6 R0 K32 ["state"]
  GETTABLEKS R5 R6 K33 ["textOpacity"]
  SUBRK R4 R31 K5 ["TextSize"]
  SETTABLEKS R4 R3 K10 ["TextTransparency"]
  LOADN R4 1
  SETTABLEKS R4 R3 K11 ["BackgroundTransparency"]
  LOADN R4 6
  SETTABLEKS R4 R3 K12 ["LayoutOrder"]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["TextWrapped"]
  CALL R1 2 -1
  RETURN R1 -1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["RunService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Otter"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K10 ["Packages"]
  GETTABLEKS R7 R8 K13 ["t"]
  CALL R6 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K14 ["Workspace"]
  GETTABLEKS R10 R11 K10 ["Packages"]
  GETTABLEKS R9 R10 K15 ["Style"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K16 ["AppFonts"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R2 K17 ["Modules"]
  GETTABLEKS R9 R10 K18 ["RobloxTranslator"]
  CALL R8 1 1
  DUPTABLE R9 K21 [{"frequency", "dampingRatio"}]
  LOADN R10 4
  SETTABLEKS R10 R9 K19 ["frequency"]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["dampingRatio"]
  LOADK R12 K22 ["InGame.CommonUI.Label.MicOnRecording"]
  NAMECALL R10 R8 K23 ["FormatByKey"]
  CALL R10 2 1
  LOADK R13 K24 ["InGame.CommonUI.Label.MicOff"]
  NAMECALL R11 R8 K23 ["FormatByKey"]
  CALL R11 2 1
  GETTABLEKS R12 R4 K25 ["PureComponent"]
  LOADK R14 K26 ["PermissionsButtons"]
  NAMECALL R12 R12 K27 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R6 K28 ["strictInterface"]
  DUPTABLE R14 K31 [{"micOn", "isSmallTouchScreen"}]
  GETTABLEKS R15 R6 K32 ["boolean"]
  SETTABLEKS R15 R14 K29 ["micOn"]
  GETTABLEKS R15 R6 K33 ["optional"]
  GETTABLEKS R16 R6 K32 ["boolean"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["isSmallTouchScreen"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K34 ["validateProps"]
  DUPCLOSURE R13 K35 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K36 ["init"]
  DUPCLOSURE R13 K37 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K38 ["didMount"]
  DUPCLOSURE R13 K39 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K40 ["willUnmount"]
  DUPCLOSURE R13 K41 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K42 ["shouldUpdate"]
  DUPCLOSURE R13 K43 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K44 ["render"]
  RETURN R12 1
