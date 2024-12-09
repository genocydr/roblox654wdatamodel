PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["playerId"]
  LOADNIL R2
  JUMPIFNOT R1 [+10]
  JUMPIFEQKS R1 K2 [""] [+9]
  GETUPVAL R3 0
  MOVE R5 R1
  LOADN R6 48
  LOADN R7 48
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  LOADK R4 K5 ["ImageLabel"]
  DUPTABLE R5 K11 [{"Size", "BackgroundColor3", "BorderSizePixel", "Image", "LayoutOrder"}]
  GETIMPORT R6 K14 [UDim2.new]
  LOADN R7 0
  LOADN R8 48
  LOADN R9 0
  LOADN R10 48
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["Size"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["GrayBackground"]
  SETTABLEKS R6 R5 K7 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K8 ["BorderSizePixel"]
  SETTABLEKS R2 R5 K9 ["Image"]
  LOADN R6 1
  SETTABLEKS R6 R5 K10 ["LayoutOrder"]
  DUPTABLE R6 K17 [{"MaskFrame"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K5 ["ImageLabel"]
  DUPTABLE R9 K20 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3"}]
  GETIMPORT R10 K14 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K6 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K18 ["BackgroundTransparency"]
  LOADN R10 0
  SETTABLEKS R10 R9 K8 ["BorderSizePixel"]
  LOADK R10 K21 ["rbxasset://textures/ui/LuaApp/graphic/gr-avatar mask-90x90.png"]
  SETTABLEKS R10 R9 K9 ["Image"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K22 ["Carbon"]
  SETTABLEKS R10 R9 K19 ["ImageColor3"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["MaskFrame"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  DUPTABLE R2 K1 [{"playerId"}]
  GETTABLEKS R3 R0 K0 ["playerId"]
  SETTABLEKS R3 R2 K0 ["playerId"]
  RETURN R2 1

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
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K13 ["Colors"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K14 ["PureComponent"]
  LOADK R8 K15 ["AvatarHeadShot"]
  NAMECALL R6 R6 K16 ["extend"]
  CALL R6 2 1
  LOADK R9 K17 ["RobloxGui"]
  NAMECALL R7 R1 K18 ["WaitForChild"]
  CALL R7 2 1
  LOADK R10 K19 ["Modules"]
  NAMECALL R8 R7 K18 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R8 K20 ["Common"]
  GETTABLEKS R10 R11 K21 ["LegacyThumbnailUrls"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K22 ["Headshot"]
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R11 R6 K24 ["render"]
  GETTABLEKS R11 R4 K25 ["UNSTABLE_connect2"]
  DUPCLOSURE R12 K26 [PROTO_1]
  CALL R11 1 1
  MOVE R12 R6
  CALL R11 1 -1
  RETURN R11 -1
