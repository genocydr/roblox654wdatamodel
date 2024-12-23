PROTO_0:
  LOADK R3 K0 ["rbxthumb://type=AvatarHeadShot&id="]
  GETTABLEKS R4 R1 K1 ["UserId"]
  LOADK R5 K2 ["&w=150&h=150"]
  CONCAT R2 R3 R5
  RETURN R2 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["HeadShotUrlCache"]
  GETTABLE R3 R4 R1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  JUMPIFNOT R1 [+20]
  GETTABLEKS R2 R1 K0 ["Parent"]
  JUMPIFNOT R2 [+17]
  MOVE R2 R1
  JUMPIFNOT R2 [+8]
  LOADK R5 K1 ["Model"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+3]
  GETTABLEKS R2 R2 K0 ["Parent"]
  JUMPBACK [-9]
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["GetPlayerFromCharacter"]
  CALL R3 2 -1
  RETURN R3 -1
  LOADNIL R2
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["Character"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R1 K0 ["Character"]
  LOADK R4 K1 ["HumanoidRootPart"]
  NAMECALL R2 R2 K2 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K3 ["Position"]
  RETURN R3 1
  LOADNIL R2
  RETURN R2 1

PROTO_4:
  GETIMPORT R2 K3 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R2 [+4]
  GETIMPORT R2 K6 [Enum.ContextActionResult.Pass]
  RETURN R2 1
  GETIMPORT R2 K8 [Enum.ContextActionResult.Sink]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETUPVAL R1 0
  DUPCLOSURE R1 K0 [PROTO_4]
  GETUPVAL R2 1
  LOADK R4 K1 ["AvatarContextMenuStopInput"]
  MOVE R5 R1
  LOADB R6 0
  GETIMPORT R8 K5 [Enum.ContextActionPriority.Low]
  GETTABLEKS R7 R8 K6 ["Value"]
  GETIMPORT R8 K9 [Enum.PlayerActions.CharacterForward]
  GETIMPORT R9 K11 [Enum.PlayerActions.CharacterBackward]
  GETIMPORT R10 K13 [Enum.PlayerActions.CharacterLeft]
  GETIMPORT R11 K15 [Enum.PlayerActions.CharacterRight]
  GETIMPORT R12 K17 [Enum.PlayerActions.CharacterJump]
  GETIMPORT R13 K20 [Enum.UserInputType.Gamepad1]
  GETIMPORT R14 K22 [Enum.UserInputType.Gamepad2]
  GETIMPORT R15 K24 [Enum.UserInputType.Gamepad3]
  GETIMPORT R16 K26 [Enum.UserInputType.Gamepad4]
  NAMECALL R2 R2 K27 ["BindCoreActionAtPriority"]
  CALL R2 14 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADK R3 K0 ["AvatarContextMenuStopInput"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetFriendStatus"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+1]
  RETURN R3 1
  GETIMPORT R4 K5 [Enum.FriendStatus.NotFriend]
  RETURN R4 1

PROTO_9:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K0 [1] [+12]
  GETTABLEN R1 R0 1
  GETIMPORT R2 K2 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  SETTABLE R6 R7 R5
  FORGLOOP R2 2 [-3]
  RETURN R0 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K3 [2] [+5]
  GETTABLEN R1 R0 1
  GETTABLEN R2 R0 2
  GETUPVAL R3 0
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R2 K0 ["CanChatWith"]
  LOADK R3 K1 [∞]
  NAMECALL R0 R0 K2 ["WaitForChild"]
  CALL R0 3 1
  GETTABLEKS R1 R0 K3 ["OnClientEvent"]
  DUPCLOSURE R3 K4 [PROTO_9]
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K5 ["Connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R4 R1 K0 ["UserId"]
  NAMECALL R2 R2 K1 ["IsPlayerBlockedByUserId"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K0 ["UserId"]
  GETTABLE R2 R3 R4
  JUMPIFEQKNIL R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K0 ["UserId"]
  GETTABLE R2 R3 R4
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetLastInputType"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_13:
  LOADB R1 1
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.Touch]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["ButtonHoverColor"]
  SETTABLEKS R1 R0 K1 ["BackgroundColor3"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["ButtonHoverTransparency"]
  SETTABLEKS R1 R0 K3 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["ButtonColor"]
  SETTABLEKS R1 R0 K1 ["BackgroundColor3"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["ButtonTransparency"]
  SETTABLEKS R1 R0 K3 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["UserInputState"]
  GETIMPORT R1 K3 [Enum.UserInputState.End]
  JUMPIFNOTEQ R0 R1 [+13]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["ButtonColor"]
  SETTABLEKS R1 R0 K5 ["BackgroundColor3"]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["ButtonTransparency"]
  SETTABLEKS R1 R0 K7 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Selectable"]
  JUMPIFNOT R1 [+39]
  LOADB R1 1
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K4 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K1 ["UserInputType"]
  GETIMPORT R3 K6 [Enum.UserInputType.Touch]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+23]
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["ButtonHoverColor"]
  SETTABLEKS R2 R1 K8 ["BackgroundColor3"]
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["ButtonHoverTransparency"]
  SETTABLEKS R2 R1 K10 ["BackgroundTransparency"]
  LOADK R3 K11 ["UserInputState"]
  NAMECALL R1 R0 K12 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K13 ["connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Selectable"]
  JUMPIFNOT R1 [+34]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["SelectedCoreObject"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+29]
  LOADB R1 1
  GETTABLEKS R2 R0 K2 ["UserInputType"]
  GETIMPORT R3 K5 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R0 K2 ["UserInputType"]
  GETIMPORT R3 K7 [Enum.UserInputType.Touch]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K8 ["ButtonColor"]
  SETTABLEKS R2 R1 K9 ["BackgroundColor3"]
  GETUPVAL R1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["ButtonTransparency"]
  SETTABLEKS R2 R1 K11 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["ButtonHoverColor"]
  SETTABLEKS R1 R0 K1 ["BackgroundColor3"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["ButtonHoverTransparency"]
  SETTABLEKS R1 R0 K3 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["ButtonColor"]
  SETTABLEKS R1 R0 K1 ["BackgroundColor3"]
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["ButtonTransparency"]
  SETTABLEKS R1 R0 K3 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_21:
  JUMPIFEQKS R0 K0 ["SelectedCoreObject"] [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SelectedCoreObject"]
  JUMPIFEQKNIL R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SelectedCoreObject"]
  GETUPVAL R2 1
  JUMPIFEQ R1 R2 [+14]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["ButtonColor"]
  SETTABLEKS R2 R1 K2 ["BackgroundColor3"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["ButtonTransparency"]
  SETTABLEKS R2 R1 K4 ["BackgroundTransparency"]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["Selectable"]
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["ButtonHoverColor"]
  SETTABLEKS R2 R1 K2 ["BackgroundColor3"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["ButtonHoverTransparency"]
  SETTABLEKS R2 R1 K4 ["BackgroundTransparency"]
  RETURN R0 0

PROTO_22:
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K3 ["ImageButton"]
  CALL R4 1 1
  SETTABLEKS R0 R4 K4 ["Name"]
  GETTABLEKS R5 R3 K5 ["ButtonImage"]
  SETTABLEKS R5 R4 K6 ["Image"]
  GETTABLEKS R5 R3 K7 ["ButtonImageScaleType"]
  SETTABLEKS R5 R4 K8 ["ScaleType"]
  GETTABLEKS R5 R3 K9 ["ButtonImageSliceCenter"]
  SETTABLEKS R5 R4 K10 ["SliceCenter"]
  GETTABLEKS R5 R3 K11 ["ButtonColor"]
  SETTABLEKS R5 R4 K12 ["BackgroundColor3"]
  GETTABLEKS R5 R3 K13 ["ButtonTransparency"]
  SETTABLEKS R5 R4 K14 ["BackgroundTransparency"]
  LOADB R5 0
  SETTABLEKS R5 R4 K15 ["AutoButtonColor"]
  SETTABLEKS R1 R4 K16 ["Size"]
  LOADN R5 2
  SETTABLEKS R5 R4 K17 ["ZIndex"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K18 ["SelectionImageObject"]
  LOADN R5 0
  SETTABLEKS R5 R4 K19 ["BorderSizePixel"]
  GETIMPORT R5 K2 [Instance.new]
  LOADK R6 K20 ["Frame"]
  CALL R5 1 1
  LOADK R6 K21 ["Underline"]
  SETTABLEKS R6 R5 K4 ["Name"]
  GETTABLEKS R6 R3 K22 ["ButtonUnderlineColor"]
  SETTABLEKS R6 R5 K12 ["BackgroundColor3"]
  GETIMPORT R6 K24 [Vector2.new]
  LOADK R7 K25 [0.5]
  LOADN R8 1
  CALL R6 2 1
  SETTABLEKS R6 R5 K26 ["AnchorPoint"]
  LOADN R6 0
  SETTABLEKS R6 R5 K19 ["BorderSizePixel"]
  GETIMPORT R6 K28 [UDim2.new]
  LOADK R7 K25 [0.5]
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K29 ["Position"]
  GETIMPORT R6 K28 [UDim2.new]
  LOADK R7 K30 [0.95]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 1
  CALL R6 4 1
  SETTABLEKS R6 R5 K16 ["Size"]
  SETTABLEKS R4 R5 K31 ["Parent"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R6 R4 K32 ["MouseButton1Click"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NAMECALL R6 R6 K33 ["Connect"]
  CALL R6 2 0
  DUPCLOSURE R6 K34 [PROTO_13]
  NEWCLOSURE R7 P2
  CAPTURE VAL R4
  CAPTURE VAL R3
  NEWCLOSURE R8 P3
  CAPTURE VAL R4
  CAPTURE VAL R3
  GETTABLEKS R9 R4 K35 ["InputBegan"]
  NEWCLOSURE R11 P4
  CAPTURE VAL R4
  CAPTURE VAL R3
  NAMECALL R9 R9 K33 ["Connect"]
  CALL R9 2 0
  GETTABLEKS R9 R4 K36 ["InputEnded"]
  NEWCLOSURE R11 P5
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  NAMECALL R9 R9 K33 ["Connect"]
  CALL R9 2 0
  GETTABLEKS R9 R4 K37 ["SelectionGained"]
  NEWCLOSURE R11 P6
  CAPTURE VAL R4
  CAPTURE VAL R3
  NAMECALL R9 R9 K33 ["Connect"]
  CALL R9 2 0
  GETTABLEKS R9 R4 K38 ["SelectionLost"]
  NEWCLOSURE R11 P7
  CAPTURE VAL R4
  CAPTURE VAL R3
  NAMECALL R9 R9 K33 ["Connect"]
  CALL R9 2 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K39 ["Changed"]
  NEWCLOSURE R11 P8
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  CAPTURE VAL R3
  NAMECALL R9 R9 K33 ["Connect"]
  CALL R9 2 1
  RETURN R4 1

PROTO_23:
  GETIMPORT R1 K1 [workspace]
  GETTABLEKS R0 R1 K2 ["CurrentCamera"]
  JUMPIF R0 [+8]
  GETIMPORT R1 K1 [workspace]
  GETTABLEKS R0 R1 K3 ["Changed"]
  NAMECALL R0 R0 K4 ["Wait"]
  CALL R0 1 0
  JUMPBACK [-13]
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  FASTCALL2K ASSERT R1 K5 [+4]
  LOADK R2 K5 [""]
  GETIMPORT R0 K7 [assert]
  CALL R0 2 0
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  GETTABLEKS R0 R1 K8 ["ViewportSize"]
  GETIMPORT R1 K11 [Vector2.new]
  LOADN R2 0
  LOADN R3 0
  CALL R1 2 1
  JUMPIFEQ R0 R1 [+14]
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  GETTABLEKS R0 R1 K8 ["ViewportSize"]
  GETIMPORT R1 K11 [Vector2.new]
  LOADN R2 1
  LOADN R3 1
  CALL R1 2 1
  JUMPIFNOTEQ R0 R1 [+11]
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  GETTABLEKS R0 R1 K3 ["Changed"]
  NAMECALL R0 R0 K4 ["Wait"]
  CALL R0 1 0
  JUMPBACK [-36]
  GETIMPORT R2 K1 [workspace]
  GETTABLEKS R1 R2 K2 ["CurrentCamera"]
  GETTABLEKS R0 R1 K8 ["ViewportSize"]
  RETURN R0 1

PROTO_24:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["TouchEnabled"]
  JUMPIFNOT R1 [+13]
  LOADB R1 1
  GETTABLEKS R2 R0 K1 ["Y"]
  LOADN R3 244
  JUMPIFLT R2 R3 [+8]
  GETTABLEKS R2 R0 K2 ["X"]
  LOADN R3 188
  JUMPIFLT R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_25:
  GETUPVAL R6 0
  MOVE R7 R1
  MOVE R8 R3
  MOVE R9 R4
  MOVE R10 R5
  CALL R6 4 1
  GETIMPORT R7 K2 [Instance.new]
  LOADK R8 K3 ["TextLabel"]
  CALL R7 1 1
  MOVE R9 R1
  LOADK R10 K3 ["TextLabel"]
  CONCAT R8 R9 R10
  SETTABLEKS R8 R7 K4 ["Name"]
  LOADN R8 1
  SETTABLEKS R8 R7 K5 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K6 ["BorderSizePixel"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 248
  CALL R8 4 1
  SETTABLEKS R8 R7 K9 ["Size"]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K10 ["Position"]
  GETIMPORT R8 K13 [Color3.fromRGB]
  LOADN R9 255
  LOADN R10 255
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["TextColor3"]
  GETIMPORT R8 K18 [Enum.TextYAlignment.Center]
  SETTABLEKS R8 R7 K16 ["TextYAlignment"]
  GETTABLEKS R8 R5 K19 ["Font"]
  SETTABLEKS R8 R7 K19 ["Font"]
  LOADN R9 24
  GETTABLEKS R10 R5 K20 ["TextScale"]
  MUL R8 R9 R10
  SETTABLEKS R8 R7 K21 ["TextSize"]
  GETUPVAL R9 1
  CALL R9 0 1
  GETUPVAL R10 2
  GETTABLEKS R8 R10 K22 ["TouchEnabled"]
  JUMPIFNOT R8 [+13]
  LOADB R8 1
  GETTABLEKS R10 R9 K23 ["Y"]
  LOADN R11 244
  JUMPIFLT R10 R11 [+8]
  GETTABLEKS R10 R9 K24 ["X"]
  LOADN R11 188
  JUMPIFLT R10 R11 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+7]
  LOADN R9 18
  GETTABLEKS R10 R5 K20 ["TextScale"]
  MUL R8 R9 R10
  SETTABLEKS R8 R7 K21 ["TextSize"]
  JUMP [+11]
  GETUPVAL R8 3
  NAMECALL R8 R8 K25 ["IsTenFootInterface"]
  CALL R8 1 1
  JUMPIFNOT R8 [+6]
  LOADN R9 36
  GETTABLEKS R10 R5 K20 ["TextScale"]
  MUL R8 R9 R10
  SETTABLEKS R8 R7 K21 ["TextSize"]
  SETTABLEKS R2 R7 K26 ["Text"]
  LOADB R8 1
  SETTABLEKS R8 R7 K27 ["TextScaled"]
  LOADB R8 1
  SETTABLEKS R8 R7 K28 ["TextWrapped"]
  LOADN R8 2
  SETTABLEKS R8 R7 K29 ["ZIndex"]
  SETTABLEKS R6 R7 K30 ["Parent"]
  GETIMPORT R8 K2 [Instance.new]
  LOADK R9 K31 ["UITextSizeConstraint"]
  MOVE R10 R7
  CALL R8 2 1
  GETTABLEKS R9 R7 K21 ["TextSize"]
  SETTABLEKS R9 R8 K32 ["MaxTextSize"]
  RETURN R6 2

PROTO_26:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
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
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["UserInputService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["RobloxReplicatedStorage"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  LOADK R8 K9 ["RobloxGui"]
  NAMECALL R6 R0 K10 ["WaitForChild"]
  CALL R6 2 1
  LOADK R9 K11 ["Modules"]
  NAMECALL R7 R6 K10 ["WaitForChild"]
  CALL R7 2 1
  LOADK R10 K12 ["AvatarContextMenu"]
  NAMECALL R8 R7 K10 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K14 [require]
  GETTABLEKS R10 R8 K15 ["ThemeHandler"]
  CALL R9 1 1
  GETIMPORT R10 K14 [require]
  GETTABLEKS R11 R7 K16 ["BlockingUtility"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K17 ["LocalPlayer"]
  JUMPIF R11 [+8]
  GETTABLEKS R12 R1 K18 ["PlayerAdded"]
  NAMECALL R12 R12 K19 ["Wait"]
  CALL R12 1 0
  GETTABLEKS R11 R1 K17 ["LocalPlayer"]
  JUMPBACK [-9]
  NEWTABLE R12 16 0
  SETTABLEKS R12 R12 K20 ["__index"]
  DUPCLOSURE R13 K21 [PROTO_0]
  SETTABLEKS R13 R12 K22 ["GetHeadshotForPlayer"]
  DUPCLOSURE R13 K23 [PROTO_1]
  SETTABLEKS R13 R12 K24 ["HasOrGettingHeadShot"]
  DUPCLOSURE R13 K25 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K26 ["FindPlayerFromPart"]
  DUPCLOSURE R13 K27 [PROTO_3]
  SETTABLEKS R13 R12 K28 ["GetPlayerPosition"]
  LOADB R13 1
  NEWCLOSURE R14 P4
  CAPTURE REF R13
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K29 ["DisablePlayerMovement"]
  NEWCLOSURE R14 P5
  CAPTURE REF R13
  CAPTURE VAL R2
  SETTABLEKS R14 R12 K30 ["EnablePlayerMovement"]
  NEWCLOSURE R14 P6
  CAPTURE REF R11
  SETTABLEKS R14 R12 K31 ["GetFriendStatus"]
  NEWTABLE R14 0 0
  GETIMPORT R15 K34 [coroutine.wrap]
  DUPCLOSURE R16 K35 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R14
  CALL R15 1 1
  CALL R15 0 0
  DUPCLOSURE R15 K36 [PROTO_11]
  CAPTURE VAL R10
  CAPTURE VAL R14
  SETTABLEKS R15 R12 K37 ["GetCanChatWith"]
  GETIMPORT R15 K40 [Instance.new]
  LOADK R16 K41 ["ImageLabel"]
  CALL R15 1 1
  LOADK R16 K42 [""]
  SETTABLEKS R16 R15 K43 ["Image"]
  LOADN R16 1
  SETTABLEKS R16 R15 K44 ["BackgroundTransparency"]
  DUPCLOSURE R16 K45 [PROTO_22]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R3
  DUPCLOSURE R17 K46 [PROTO_23]
  DUPCLOSURE R18 K47 [PROTO_24]
  CAPTURE VAL R17
  CAPTURE VAL R4
  DUPCLOSURE R19 K48 [PROTO_25]
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R19 R12 K49 ["MakeStyledButton"]
  DUPCLOSURE R19 K50 [PROTO_26]
  CAPTURE VAL R12
  SETTABLEKS R19 R12 K39 ["new"]
  GETTABLEKS R19 R12 K39 ["new"]
  CALL R19 0 -1
  CLOSEUPVALS R11
  RETURN R19 -1
