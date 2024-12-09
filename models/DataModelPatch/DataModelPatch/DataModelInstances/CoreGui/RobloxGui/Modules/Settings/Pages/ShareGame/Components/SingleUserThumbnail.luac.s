PROTO_0:
  GETTABLEKS R1 R0 K0 ["user"]
  LOADNIL R2
  JUMPIFNOT R1 [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["RbxThumbnailSizeToNumberSize"]
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  GETUPVAL R4 2
  GETTABLEKS R5 R1 K2 ["id"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["InviteAvatarRbxthumbType"]
  MOVE R7 R3
  CALL R4 3 1
  MOVE R2 R4
  JUMPIF R2 [+1]
  LOADK R2 K4 ["rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K5 ["createElement"]
  LOADK R4 K6 ["ImageLabel"]
  DUPTABLE R5 K14 [{"Size", "Position", "AnchorPoint", "Image", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R6 R0 K15 ["size"]
  SETTABLEKS R6 R5 K7 ["Size"]
  GETTABLEKS R6 R0 K16 ["position"]
  SETTABLEKS R6 R5 K8 ["Position"]
  GETTABLEKS R6 R0 K17 ["anchorPoint"]
  SETTABLEKS R6 R5 K9 ["AnchorPoint"]
  SETTABLEKS R2 R5 K10 ["Image"]
  LOADN R6 0
  SETTABLEKS R6 R5 K11 ["BorderSizePixel"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K18 ["FLINT"]
  SETTABLEKS R6 R5 K12 ["BackgroundColor3"]
  GETTABLEKS R6 R0 K19 ["backgroundTransparency"]
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  DUPTABLE R6 K21 [{"Corner"}]
  GETTABLEKS R8 R0 K22 ["square"]
  JUMPIFNOT R8 [+2]
  LOADNIL R7
  JUMP [+13]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["createElement"]
  LOADK R8 K23 ["UICorner"]
  DUPTABLE R9 K25 [{"CornerRadius"}]
  GETIMPORT R10 K28 [UDim.new]
  LOADK R11 K29 [0.5]
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["CornerRadius"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K20 ["Corner"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["CoreGui"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K9 ["RobloxGui"]
  GETTABLEKS R2 R3 K10 ["Modules"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K11 ["Common"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K13 ["COLORS"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R2 K14 ["Settings"]
  GETTABLEKS R7 R8 K15 ["Pages"]
  GETTABLEKS R6 R7 K16 ["ShareGame"]
  GETTABLEKS R5 R6 K12 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K17 ["Workspace"]
  GETTABLEKS R7 R8 K6 ["Packages"]
  GETTABLEKS R6 R7 K18 ["UserLib"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K19 ["Utils"]
  GETTABLEKS R6 R7 K12 ["Constants"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K17 ["Workspace"]
  GETTABLEKS R11 R12 K6 ["Packages"]
  GETTABLEKS R10 R11 K18 ["UserLib"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K19 ["Utils"]
  GETTABLEKS R7 R8 K20 ["getRbxthumbWithTypeSizeAndOptions"]
  GETTABLEKS R8 R4 K21 ["InviteAvatarThumbnailSize"]
  DUPCLOSURE R9 K22 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R9 1
