PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  GETUPVAL R4 0
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLE R9 R1 R6
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K3 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQ R8 R9 [+4]
  GETTABLE R8 R1 R6
  SETTABLE R8 R2 R6
  JUMP [+24]
  GETTABLE R8 R1 R6
  JUMPIFNOTEQKNIL R8 [+3]
  SETTABLE R7 R2 R6
  JUMP [+19]
  GETIMPORT R8 K5 [error]
  GETIMPORT R9 K8 [string.format]
  LOADK R10 K9 ["AvatarContextMenuTheme wrong type for key %s: %s. Expected type %s"]
  MOVE R11 R6
  GETTABLE R13 R1 R6
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K3 [typeof]
  CALL R12 1 1
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R14 R7
  GETIMPORT R13 K3 [typeof]
  CALL R13 1 1
  CALL R9 4 1
  LOADN R10 2
  CALL R8 2 0
  FORGLOOP R3 2 [-40]
  SETTABLEKS R2 R0 K10 ["Theme"]
  RETURN R0 0

PROTO_1:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+26]
  GETIMPORT R1 K4 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R7 0
  GETTABLE R6 R7 R4
  JUMPIFNOTEQKNIL R6 [+9]
  GETIMPORT R6 K6 [error]
  GETIMPORT R7 K9 [string.format]
  LOADK R8 K10 ["AvatarContextMenuTheme got invalid key: %s"]
  MOVE R9 R4
  CALL R7 2 -1
  CALL R6 -1 0
  FORGLOOP R1 1 [-13]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K11 ["UpdateTheme"]
  CALL R1 2 0
  RETURN R0 0
  GETIMPORT R1 K6 [error]
  LOADK R2 K12 ["AvatarContextMenuTheme argument must be a table"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETUPVAL R2 1
  LOADK R4 K0 ["AvatarContextMenuTheme"]
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["RegisterSetCore"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["Theme"]
  RETURN R1 1

PROTO_4:
  NEWTABLE R1 1 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K2 ["Theme"]
  NAMECALL R1 R0 K3 ["RegisterCoreMethods"]
  CALL R1 1 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InsertService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StarterGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPTABLE R2 K37 [{"BackgroundImage", "BackgroundImageScaleType", "BackgroundImageSliceCenter", "BackgroundImageTransparency", "BackgroundTransparency", "BackgroundColor", "NameTagColor", "NameUnderlineColor", "ButtonFrameColor", "ButtonFrameTransparency", "ButtonImage", "ButtonImageScaleType", "ButtonImageSliceCenter", "ButtonColor", "ButtonTransparency", "ButtonHoverColor", "ButtonHoverTransparency", "ButtonUnderlineColor", "Font", "TextColor", "TextScale", "LeaveMenuImage", "ScrollRightImage", "ScrollLeftImage", "SelectedCharacterIndicator", "Size", "MinSize", "MaxSize", "AspectRatio", "AnchorPoint", "OnScreenPosition", "OffScreenPosition"}]
  LOADK R3 K38 ["rbxasset://textures/blackBkg_round.png"]
  SETTABLEKS R3 R2 K5 ["BackgroundImage"]
  GETIMPORT R3 K42 [Enum.ScaleType.Slice]
  SETTABLEKS R3 R2 K6 ["BackgroundImageScaleType"]
  GETIMPORT R3 K45 [Rect.new]
  LOADN R4 12
  LOADN R5 12
  LOADN R6 12
  LOADN R7 12
  CALL R3 4 1
  SETTABLEKS R3 R2 K7 ["BackgroundImageSliceCenter"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["BackgroundImageTransparency"]
  LOADN R3 1
  SETTABLEKS R3 R2 K9 ["BackgroundTransparency"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 31
  LOADN R5 31
  LOADN R6 31
  CALL R3 3 1
  SETTABLEKS R3 R2 K10 ["BackgroundColor"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 79
  LOADN R5 79
  LOADN R6 79
  CALL R3 3 1
  SETTABLEKS R3 R2 K11 ["NameTagColor"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 255
  LOADN R5 255
  LOADN R6 255
  CALL R3 3 1
  SETTABLEKS R3 R2 K12 ["NameUnderlineColor"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 79
  LOADN R5 79
  LOADN R6 79
  CALL R3 3 1
  SETTABLEKS R3 R2 K13 ["ButtonFrameColor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K14 ["ButtonFrameTransparency"]
  LOADK R3 K49 [""]
  SETTABLEKS R3 R2 K15 ["ButtonImage"]
  GETIMPORT R3 K42 [Enum.ScaleType.Slice]
  SETTABLEKS R3 R2 K16 ["ButtonImageScaleType"]
  GETIMPORT R3 K45 [Rect.new]
  LOADN R4 8
  LOADN R5 6
  LOADN R6 46
  LOADN R7 44
  CALL R3 4 1
  SETTABLEKS R3 R2 K17 ["ButtonImageSliceCenter"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 79
  LOADN R5 79
  LOADN R6 79
  CALL R3 3 1
  SETTABLEKS R3 R2 K18 ["ButtonColor"]
  LOADN R3 1
  SETTABLEKS R3 R2 K19 ["ButtonTransparency"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 163
  LOADN R5 162
  LOADN R6 165
  CALL R3 3 1
  SETTABLEKS R3 R2 K20 ["ButtonHoverColor"]
  LOADK R3 K50 [0.5]
  SETTABLEKS R3 R2 K21 ["ButtonHoverTransparency"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 137
  LOADN R5 137
  LOADN R6 137
  CALL R3 3 1
  SETTABLEKS R3 R2 K22 ["ButtonUnderlineColor"]
  GETIMPORT R3 K52 [Enum.Font.SourceSansBold]
  SETTABLEKS R3 R2 K23 ["Font"]
  GETIMPORT R3 K48 [Color3.fromRGB]
  LOADN R4 255
  LOADN R5 255
  LOADN R6 255
  CALL R3 3 1
  SETTABLEKS R3 R2 K24 ["TextColor"]
  LOADN R3 1
  SETTABLEKS R3 R2 K25 ["TextScale"]
  LOADK R3 K53 ["rbxasset://textures/loading/cancelButton.png"]
  SETTABLEKS R3 R2 K26 ["LeaveMenuImage"]
  LOADK R3 K54 ["rbxasset://textures/ui/AvatarContextMenu_Arrow.png"]
  SETTABLEKS R3 R2 K27 ["ScrollRightImage"]
  LOADK R3 K49 [""]
  SETTABLEKS R3 R2 K28 ["ScrollLeftImage"]
  LOADK R5 K55 ["rbxasset://models/AvatarContextMenu/AvatarContextArrow.rbxm"]
  NAMECALL R3 R0 K56 ["LoadLocalAsset"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K29 ["SelectedCharacterIndicator"]
  GETIMPORT R3 K58 [UDim2.new]
  LOADK R4 K59 [0.95]
  LOADN R5 0
  LOADK R6 K60 [0.9]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K30 ["Size"]
  GETIMPORT R3 K62 [Vector2.new]
  LOADN R4 200
  LOADN R5 200
  CALL R3 2 1
  SETTABLEKS R3 R2 K31 ["MinSize"]
  GETIMPORT R3 K62 [Vector2.new]
  LOADN R4 44
  LOADN R5 44
  CALL R3 2 1
  SETTABLEKS R3 R2 K32 ["MaxSize"]
  LOADK R3 K63 [1.15]
  SETTABLEKS R3 R2 K33 ["AspectRatio"]
  GETIMPORT R3 K62 [Vector2.new]
  LOADK R4 K50 [0.5]
  LOADN R5 1
  CALL R3 2 1
  SETTABLEKS R3 R2 K34 ["AnchorPoint"]
  GETIMPORT R3 K58 [UDim2.new]
  LOADK R4 K50 [0.5]
  LOADN R5 0
  LOADK R6 K64 [0.98]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K35 ["OnScreenPosition"]
  GETIMPORT R3 K58 [UDim2.new]
  LOADK R4 K50 [0.5]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 44
  CALL R3 4 1
  SETTABLEKS R3 R2 K36 ["OffScreenPosition"]
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K65 ["__index"]
  DUPCLOSURE R4 K66 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K67 ["UpdateTheme"]
  DUPCLOSURE R4 K68 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K69 ["RegisterCoreMethods"]
  DUPCLOSURE R4 K70 [PROTO_3]
  SETTABLEKS R4 R3 K71 ["GetTheme"]
  DUPCLOSURE R4 K72 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K44 ["new"]
  GETTABLEKS R4 R3 K44 ["new"]
  CALL R4 0 -1
  RETURN R4 -1
