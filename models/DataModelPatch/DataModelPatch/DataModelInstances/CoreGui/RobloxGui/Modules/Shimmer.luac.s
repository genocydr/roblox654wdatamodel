PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["ImageLabel"]
  CALL R1 1 1
  NEWTABLE R2 16 2
  LOADK R5 K1 ["ShimmerFrame"]
  SETTABLEKS R5 R2 K2 ["Name"]
  GETIMPORT R5 K5 [Color3.fromRGB]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R2 K6 ["BackgroundColor3"]
  LOADK R5 K7 [0.7]
  SETTABLEKS R5 R2 K8 ["BackgroundTransparency"]
  LOADB R5 1
  SETTABLEKS R5 R2 K9 ["ClipsDescendants"]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R2 K13 ["Size"]
  LOADN R5 0
  SETTABLEKS R5 R2 K14 ["BorderSizePixel"]
  LOADB R5 0
  SETTABLEKS R5 R2 K15 ["Visible"]
  SETTABLEKS R0 R2 K16 ["Parent"]
  LOADN R5 8
  SETTABLEKS R5 R2 K17 ["ZIndex"]
  GETUPVAL R3 0
  LOADK R4 K0 ["ImageLabel"]
  CALL R3 1 1
  DUPTABLE R4 K20 [{"Name", "BackgroundTransparency", "Size", "Position", "Image", "BorderSizePixel", "ZIndex"}]
  LOADK R5 K21 ["Shimmer"]
  SETTABLEKS R5 R4 K2 ["Name"]
  LOADN R5 1
  SETTABLEKS R5 R4 K8 ["BackgroundTransparency"]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 2
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K13 ["Size"]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 255
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K18 ["Position"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["SHIMMER_TEXTURE"]
  SETTABLEKS R5 R4 K19 ["Image"]
  LOADN R5 0
  SETTABLEKS R5 R4 K14 ["BorderSizePixel"]
  LOADN R5 8
  SETTABLEKS R5 R4 K17 ["ZIndex"]
  CALL R3 1 1
  GETUPVAL R4 0
  LOADK R5 K0 ["ImageLabel"]
  CALL R4 1 1
  DUPTABLE R5 K26 [{"Name", "ScaleType", "SliceCenter", "ImageColor3", "BackgroundTransparency", "BorderSizePixel", "Image", "Size", "ZIndex"}]
  LOADK R6 K27 ["ShimmerOverlay"]
  SETTABLEKS R6 R5 K2 ["Name"]
  GETIMPORT R6 K30 [Enum.ScaleType.Slice]
  SETTABLEKS R6 R5 K23 ["ScaleType"]
  GETIMPORT R6 K32 [Rect.new]
  LOADN R7 8
  LOADN R8 8
  LOADN R9 9
  LOADN R10 9
  CALL R6 4 1
  SETTABLEKS R6 R5 K24 ["SliceCenter"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K33 ["COLORS"]
  GETTABLEKS R6 R7 K34 ["FLINT"]
  SETTABLEKS R6 R5 K25 ["ImageColor3"]
  LOADN R6 1
  SETTABLEKS R6 R5 K8 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K14 ["BorderSizePixel"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K35 ["OVERLAY_TEXTURE"]
  SETTABLEKS R6 R5 K19 ["Image"]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K13 ["Size"]
  LOADN R6 9
  SETTABLEKS R6 R5 K17 ["ZIndex"]
  CALL R4 1 -1
  SETLIST R2 R3 -1 [1]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  JUMPIFNOT R1 [+3]
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIF R2 [+1]
  RETURN R0 0
  NEWTABLE R3 2 0
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["_shimmer"]
  GETUPVAL R3 2
  GETTABLEKS R6 R2 K2 ["_shimmer"]
  GETTABLEKS R5 R6 K3 ["Shimmer"]
  GETUPVAL R6 3
  DUPTABLE R7 K5 [{"Position"}]
  GETIMPORT R8 K8 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K4 ["Position"]
  NAMECALL R3 R3 K9 ["Create"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["_shimmerAnimation"]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_shimmer"]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["Visible"]
  GETTABLEKS R1 R0 K2 ["_shimmerAnimation"]
  NAMECALL R1 R1 K3 ["Play"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_shimmerAnimation"]
  NAMECALL R1 R1 K1 ["Cancel"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_shimmer"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["Visible"]
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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["AppCommonLib"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Create"]
  GETIMPORT R4 K1 [game]
  LOADK R6 K13 ["TweenService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R2 K14 ["Modules"]
  GETTABLEKS R7 R8 K15 ["Common"]
  GETTABLEKS R6 R7 K16 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K19 [TweenInfo.new]
  LOADN R7 1
  GETIMPORT R8 K23 [Enum.EasingStyle.Linear]
  GETIMPORT R9 K26 [Enum.EasingDirection.InOut]
  LOADN R10 255
  LOADB R11 0
  LOADN R12 0
  CALL R6 6 1
  NEWTABLE R7 4 0
  SETTABLEKS R7 R7 K27 ["__index"]
  NEWTABLE R8 1 0
  DUPCLOSURE R9 K28 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K29 ["PrimaryButton"]
  DUPCLOSURE R9 K30 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R9 R7 K18 ["new"]
  DUPCLOSURE R9 K31 [PROTO_2]
  SETTABLEKS R9 R7 K32 ["play"]
  DUPCLOSURE R9 K33 [PROTO_3]
  SETTABLEKS R9 R7 K34 ["stop"]
  RETURN R7 1
