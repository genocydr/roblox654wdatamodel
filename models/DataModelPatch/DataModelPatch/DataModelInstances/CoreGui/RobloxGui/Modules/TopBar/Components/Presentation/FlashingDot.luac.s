PROTO_0:
  SUB R5 R1 R0
  MUL R4 R5 R2
  ADD R3 R0 R4
  RETURN R3 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["hasMicPermissions"]
  JUMPIFNOT R0 [+10]
  LOADB R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["localMuted"]
  JUMPIFEQKNIL R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["localMuted"]
  NOT R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["hasCameraPermissions"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["VideoAnimationEnabled"]
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K5 ["Active"]
  OR R2 R0 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K6 ["Visible"]
  JUMPIFNOTEQ R4 R2 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R4 4
  JUMPIFNOT R4 [+9]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["state"]
  GETTABLEKS R5 R6 K7 ["isUsingMic"]
  JUMPIFNOTEQ R5 R0 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIF R3 [+1]
  JUMPIFNOT R4 [+9]
  GETUPVAL R5 0
  DUPTABLE R7 K8 [{"Visible", "isUsingMic"}]
  SETTABLEKS R2 R7 K6 ["Visible"]
  SETTABLEKS R0 R7 K7 ["isUsingMic"]
  NAMECALL R5 R5 K9 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["prevTime"]
  ADD R1 R2 R0
  MULK R3 R1 K1 [3]
  FASTCALL1 MATH_SIN R3 [+2]
  GETIMPORT R2 K4 [math.sin]
  CALL R2 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["prevSinTime"]
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K7 [math.abs]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["updateTransparencyBinding"]
  LOADK R6 K9 [0.5]
  LOADK R8 K10 [-0.5]
  MUL R7 R8 R3
  ADD R5 R6 R7
  CALL R4 1 0
  GETUPVAL R4 0
  SETTABLEKS R1 R4 K0 ["prevTime"]
  GETUPVAL R4 0
  SETTABLEKS R2 R4 K5 ["prevSinTime"]
  RETURN R0 0

PROTO_3:
  DUPTABLE R3 K4 [{"Visible", "isUsingMic", "hasMicPermissions", "hasCameraPermissions"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["Visible"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["isUsingMic"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["hasMicPermissions"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["hasCameraPermissions"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  LOADK R1 K6 [1.5707963267949]
  SETTABLEKS R1 R0 K7 ["prevTime"]
  LOADN R1 1
  SETTABLEKS R1 R0 K8 ["prevSinTime"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["createBinding"]
  LOADN R2 0
  CALL R1 1 2
  SETTABLEKS R1 R0 K10 ["transparencyBinding"]
  SETTABLEKS R2 R0 K11 ["updateTransparencyBinding"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K12 ["checkNewVisibility"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["animationConnection"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isMounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"hasCameraPermissions", "hasMicPermissions"}]
  GETTABLEKS R4 R0 K1 ["hasCameraPermissions"]
  SETTABLEKS R4 R3 K1 ["hasCameraPermissions"]
  GETTABLEKS R4 R0 K2 ["hasMicPermissions"]
  SETTABLEKS R4 R3 K2 ["hasMicPermissions"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isMounted"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETUPVAL R2 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  LOADK R6 K1 ["FlashingDot.didMount"]
  CALL R2 4 0
  GETTABLEKS R2 R0 K2 ["checkNewVisibility"]
  CALL R2 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["hasMicPermissions"]
  GETTABLEKS R4 R1 K1 ["hasMicPermissions"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K2 ["hasCameraPermissions"]
  GETTABLEKS R4 R1 K2 ["hasCameraPermissions"]
  JUMPIFEQ R3 R4 [+4]
  GETTABLEKS R3 R0 K3 ["checkNewVisibility"]
  CALL R3 0 0
  RETURN R0 0

PROTO_7:
  LOADNIL R1
  GETIMPORT R2 K2 [UDim2.fromOffset]
  LOADN R3 4
  LOADN R4 4
  CALL R2 2 1
  GETUPVAL R3 0
  JUMPIFNOT R3 [+27]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["hasCameraPermissions"]
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["VideoAnimationEnabled"]
  JUMPIFNOT R3 [+3]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["Active"]
  GETTABLEKS R5 R0 K3 ["state"]
  GETTABLEKS R4 R5 K7 ["isUsingMic"]
  JUMPIFNOT R4 [+2]
  LOADK R1 K8 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"]
  JUMP [+8]
  JUMPIFNOT R3 [+7]
  LOADK R1 K9 ["rbxasset://textures/SelfView/SelfView_icon_indicator_off.png"]
  GETIMPORT R4 K2 [UDim2.fromOffset]
  LOADN R5 12
  LOADN R6 12
  CALL R4 2 1
  MOVE R2 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K10 ["createElement"]
  LOADK R4 K11 ["Frame"]
  DUPTABLE R5 K19 [{"AnchorPoint", "Position", "Size", "ZIndex", "BorderSizePixel", "BackgroundTransparency", "Visible"}]
  GETIMPORT R6 K22 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["AnchorPoint"]
  GETIMPORT R6 K23 [UDim2.new]
  LOADN R7 1
  LOADN R8 252
  LOADN R9 0
  LOADN R10 3
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Position"]
  GETIMPORT R6 K2 [UDim2.fromOffset]
  LOADN R7 4
  LOADN R8 4
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["Size"]
  LOADN R6 2
  SETTABLEKS R6 R5 K15 ["ZIndex"]
  LOADN R6 0
  SETTABLEKS R6 R5 K16 ["BorderSizePixel"]
  LOADN R6 1
  SETTABLEKS R6 R5 K17 ["BackgroundTransparency"]
  GETTABLEKS R7 R0 K3 ["state"]
  GETTABLEKS R6 R7 K18 ["Visible"]
  SETTABLEKS R6 R5 K18 ["Visible"]
  DUPTABLE R6 K28 [{"FlashingDot", "MuteChangedEvent", "CameraChangedEvent", "AnimationConnection"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["createElement"]
  LOADK R8 K29 ["ImageLabel"]
  DUPTABLE R9 K33 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "Image", "ImageTransparency", "LayoutOrder"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K17 ["BackgroundTransparency"]
  GETUPVAL R11 0
  JUMPIFNOT R11 [+6]
  GETIMPORT R10 K22 [Vector2.new]
  LOADK R11 K34 [0.5]
  LOADK R12 K34 [0.5]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K12 ["AnchorPoint"]
  GETUPVAL R11 0
  JUMPIFNOT R11 [+6]
  GETIMPORT R10 K36 [UDim2.fromScale]
  LOADK R11 K34 [0.5]
  LOADK R12 K34 [0.5]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K13 ["Position"]
  SETTABLEKS R2 R9 K14 ["Size"]
  GETUPVAL R11 0
  JUMPIFNOT R11 [+2]
  MOVE R10 R1
  JUMP [+1]
  LOADK R10 K8 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/FlashingDot.png"]
  SETTABLEKS R10 R9 K30 ["Image"]
  GETTABLEKS R10 R0 K37 ["transparencyBinding"]
  SETTABLEKS R10 R9 K31 ["ImageTransparency"]
  LOADN R10 2
  SETTABLEKS R10 R9 K32 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K24 ["FlashingDot"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K40 [{"event", "callback"}]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K41 ["muteChanged"]
  GETTABLEKS R10 R11 K42 ["Event"]
  SETTABLEKS R10 R9 K38 ["event"]
  GETTABLEKS R10 R0 K43 ["checkNewVisibility"]
  SETTABLEKS R10 R9 K39 ["callback"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K25 ["MuteChangedEvent"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K40 [{"event", "callback"}]
  GETUPVAL R10 1
  LOADK R12 K5 ["VideoAnimationEnabled"]
  NAMECALL R10 R10 K44 ["GetPropertyChangedSignal"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["event"]
  GETTABLEKS R10 R0 K43 ["checkNewVisibility"]
  SETTABLEKS R10 R9 K39 ["callback"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["CameraChangedEvent"]
  GETTABLEKS R9 R0 K3 ["state"]
  GETTABLEKS R8 R9 K18 ["Visible"]
  JUMPIFNOT R8 [+16]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K40 [{"event", "callback"}]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K45 ["RenderStepped"]
  SETTABLEKS R10 R9 K38 ["event"]
  GETTABLEKS R10 R0 K46 ["animationConnection"]
  SETTABLEKS R10 R9 K39 ["callback"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K27 ["AnimationConnection"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_8:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isMounted"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["VideoCaptureService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["FaceAnimatorService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K10 ["Packages"]
  GETTABLEKS R7 R8 K12 ["UIBlox"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R1 K10 ["Packages"]
  GETTABLEKS R8 R9 K13 ["t"]
  CALL R7 1 1
  GETTABLEKS R9 R6 K14 ["Utility"]
  GETTABLEKS R8 R9 K15 ["ExternalEventConnection"]
  GETTABLEKS R10 R2 K16 ["RobloxGui"]
  GETTABLEKS R9 R10 K17 ["Modules"]
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R9 K18 ["VoiceChat"]
  GETTABLEKS R12 R13 K19 ["VoiceChatServiceManager"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K20 ["default"]
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R9 K21 ["Settings"]
  GETTABLEKS R12 R13 K22 ["getCamMicPermissions"]
  CALL R11 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R1 K23 ["Workspace"]
  GETTABLEKS R15 R16 K10 ["Packages"]
  GETTABLEKS R14 R15 K24 ["SharedFlags"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K25 ["GetFFlagAvatarChatCoreScriptSupport"]
  CALL R12 0 1
  GETTABLEKS R13 R5 K26 ["PureComponent"]
  LOADK R15 K27 ["FlashingDot"]
  NAMECALL R13 R13 K28 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K29 [PROTO_0]
  GETTABLEKS R15 R7 K30 ["strictInterface"]
  NEWTABLE R16 0 0
  CALL R15 1 1
  SETTABLEKS R15 R13 K31 ["validateProps"]
  DUPCLOSURE R15 K32 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R15 R13 K33 ["init"]
  DUPCLOSURE R15 K34 [PROTO_5]
  CAPTURE VAL R11
  SETTABLEKS R15 R13 K35 ["didMount"]
  DUPCLOSURE R15 K36 [PROTO_6]
  SETTABLEKS R15 R13 K37 ["didUpdate"]
  DUPCLOSURE R15 K38 [PROTO_7]
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R15 R13 K39 ["render"]
  DUPCLOSURE R15 K40 [PROTO_8]
  SETTABLEKS R15 R13 K41 ["willUnmount"]
  RETURN R13 1
