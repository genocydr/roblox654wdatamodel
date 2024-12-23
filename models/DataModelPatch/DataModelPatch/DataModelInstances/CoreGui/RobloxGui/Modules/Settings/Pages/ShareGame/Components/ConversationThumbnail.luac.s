PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["size"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["layoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["zIndex"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["users"]
  LENGTH R5 R4
  NEWTABLE R6 0 0
  GETIMPORT R7 K6 [ipairs]
  MOVE R8 R4
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETUPVAL R14 0
  GETTABLE R13 R14 R5
  GETTABLE R12 R13 R10
  LOADNIL R13
  JUMPIFNOT R11 [+14]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K7 ["RbxThumbnailSizeToNumberSize"]
  GETUPVAL R16 2
  GETTABLE R14 R15 R16
  GETUPVAL R15 3
  GETTABLEKS R16 R11 K8 ["id"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K9 ["InviteAvatarRbxthumbType"]
  MOVE R18 R14
  CALL R15 3 1
  MOVE R13 R15
  JUMPIF R13 [+1]
  LOADK R13 K10 ["rbxasset://textures/ui/LuaApp/graphic/ph-avatar-portrait.png"]
  LOADK R15 K11 ["AvatarHolder-"]
  MOVE R16 R10
  CONCAT R14 R15 R16
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K12 ["createElement"]
  LOADK R16 K13 ["Frame"]
  DUPTABLE R17 K19 [{"BackgroundTransparency", "ClipsDescendants", "Size", "Position", "ZIndex"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K14 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K15 ["ClipsDescendants"]
  GETTABLEKS R18 R12 K20 ["FrameSize"]
  SETTABLEKS R18 R17 K16 ["Size"]
  GETTABLEKS R18 R12 K21 ["FramePosition"]
  SETTABLEKS R18 R17 K17 ["Position"]
  SETTABLEKS R3 R17 K18 ["ZIndex"]
  DUPTABLE R18 K23 [{"Avatar"}]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K12 ["createElement"]
  LOADK R20 K24 ["ImageLabel"]
  DUPTABLE R21 K26 [{"BackgroundTransparency", "Size", "Position", "Image", "ZIndex"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K14 ["BackgroundTransparency"]
  GETTABLEKS R22 R12 K16 ["Size"]
  SETTABLEKS R22 R21 K16 ["Size"]
  GETTABLEKS R22 R12 K17 ["Position"]
  SETTABLEKS R22 R21 K17 ["Position"]
  SETTABLEKS R13 R21 K25 ["Image"]
  SETTABLEKS R3 R21 K18 ["ZIndex"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K22 ["Avatar"]
  CALL R15 3 1
  SETTABLE R15 R6 R14
  GETTABLEKS R14 R12 K27 ["Border"]
  JUMPIFNOT R14 [+30]
  LOADK R15 K28 ["Border-"]
  MOVE R16 R10
  CONCAT R14 R15 R16
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K12 ["createElement"]
  LOADK R16 K13 ["Frame"]
  DUPTABLE R17 K31 [{"Size", "Position", "BorderSizePixel", "BackgroundColor3", "ZIndex"}]
  GETTABLEKS R19 R12 K27 ["Border"]
  GETTABLEKS R18 R19 K32 ["BorderSize"]
  SETTABLEKS R18 R17 K16 ["Size"]
  GETTABLEKS R19 R12 K27 ["Border"]
  GETTABLEKS R18 R19 K33 ["BorderPosition"]
  SETTABLEKS R18 R17 K17 ["Position"]
  LOADN R18 0
  SETTABLEKS R18 R17 K29 ["BorderSizePixel"]
  GETUPVAL R18 6
  SETTABLEKS R18 R17 K30 ["BackgroundColor3"]
  SETTABLEKS R3 R17 K18 ["ZIndex"]
  CALL R15 2 1
  SETTABLE R15 R6 R14
  FORGLOOP R7 2 [inext] [-105]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K12 ["createElement"]
  LOADK R8 K13 ["Frame"]
  DUPTABLE R9 K35 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K14 ["BackgroundTransparency"]
  SETTABLEKS R1 R9 K16 ["Size"]
  SETTABLEKS R2 R9 K34 ["LayoutOrder"]
  SETTABLEKS R3 R9 K18 ["ZIndex"]
  DUPTABLE R10 K37 [{"ContentsContainer"}]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K12 ["createElement"]
  LOADK R12 K13 ["Frame"]
  DUPTABLE R13 K40 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "ZIndex"}]
  LOADN R14 0
  SETTABLEKS R14 R13 K14 ["BackgroundTransparency"]
  GETIMPORT R14 K43 [UDim2.new]
  LOADN R15 1
  LOADN R16 255
  LOADN R17 1
  LOADN R18 255
  CALL R14 4 1
  SETTABLEKS R14 R13 K16 ["Size"]
  GETIMPORT R14 K45 [Vector2.new]
  LOADK R15 K46 [0.5]
  LOADK R16 K46 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["AnchorPoint"]
  GETIMPORT R14 K43 [UDim2.new]
  LOADK R15 K46 [0.5]
  LOADN R16 0
  LOADK R17 K46 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Position"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K47 ["Color"]
  GETTABLEKS R14 R15 K48 ["WHITE"]
  SETTABLEKS R14 R13 K30 ["BackgroundColor3"]
  GETUPVAL R14 6
  SETTABLEKS R14 R13 K39 ["BorderColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K29 ["BorderSizePixel"]
  SETTABLEKS R3 R13 K18 ["ZIndex"]
  MOVE R14 R6
  CALL R11 3 1
  SETTABLEKS R11 R10 K36 ["ContentsContainer"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K4 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K5 ["RobloxGui"]
  GETTABLEKS R1 R2 K6 ["Modules"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R7 R1 K11 ["Settings"]
  GETTABLEKS R6 R7 K12 ["Pages"]
  GETTABLEKS R5 R6 K13 ["ShareGame"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R0 K15 ["Workspace"]
  GETTABLEKS R8 R9 K9 ["Packages"]
  GETTABLEKS R7 R8 K16 ["UserLib"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K17 ["Utils"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R0 K15 ["Workspace"]
  GETTABLEKS R9 R10 K9 ["Packages"]
  GETTABLEKS R8 R9 K16 ["UserLib"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K17 ["Utils"]
  GETTABLEKS R5 R6 K18 ["getRbxthumbWithTypeSizeAndOptions"]
  GETTABLEKS R7 R3 K19 ["Color"]
  GETTABLEKS R6 R7 K20 ["GRAY3"]
  GETTABLEKS R7 R3 K21 ["InviteAvatarThumbnailSize"]
  NEWTABLE R8 0 4
  NEWTABLE R9 0 1
  DUPTABLE R10 K26 [{"Size", "Position", "FrameSize", "FramePosition"}]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Size"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Position"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["FrameSize"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K25 ["FramePosition"]
  SETLIST R9 R10 1 [1]
  SETTABLEN R9 R8 1
  NEWTABLE R9 0 2
  DUPTABLE R10 K31 [{"Size", "Position", "FrameSize", "FramePosition", "Border"}]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 2
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Size"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADK R12 K32 [-0.5]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Position"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADK R12 K33 [0.5]
  LOADN R13 255
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["FrameSize"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K25 ["FramePosition"]
  DUPTABLE R11 K36 [{"BorderPosition", "BorderSize"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 255
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K34 ["BorderPosition"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 1
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K35 ["BorderSize"]
  SETTABLEKS R11 R10 K30 ["Border"]
  DUPTABLE R11 K26 [{"Size", "Position", "FrameSize", "FramePosition"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 2
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K32 [-0.5]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K23 ["Position"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 255
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["FrameSize"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["FramePosition"]
  SETLIST R9 R10 2 [1]
  SETTABLEN R9 R8 2
  NEWTABLE R9 0 3
  DUPTABLE R10 K31 [{"Size", "Position", "FrameSize", "FramePosition", "Border"}]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 2
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Size"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADK R12 K32 [-0.5]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Position"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADK R12 K33 [0.5]
  LOADN R13 255
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["FrameSize"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K25 ["FramePosition"]
  DUPTABLE R11 K36 [{"BorderPosition", "BorderSize"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 255
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K34 ["BorderPosition"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 1
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K35 ["BorderSize"]
  SETTABLEKS R11 R10 K30 ["Border"]
  DUPTABLE R11 K31 [{"Size", "Position", "FrameSize", "FramePosition", "Border"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K23 ["Position"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 255
  LOADK R15 K33 [0.5]
  LOADN R16 255
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["FrameSize"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["FramePosition"]
  DUPTABLE R12 K36 [{"BorderPosition", "BorderSize"}]
  GETIMPORT R13 K29 [UDim2.new]
  LOADK R14 K33 [0.5]
  LOADN R15 0
  LOADK R16 K33 [0.5]
  LOADN R17 255
  CALL R13 4 1
  SETTABLEKS R13 R12 K34 ["BorderPosition"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADK R14 K33 [0.5]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K35 ["BorderSize"]
  SETTABLEKS R12 R11 K30 ["Border"]
  DUPTABLE R12 K26 [{"Size", "Position", "FrameSize", "FramePosition"}]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K22 ["Size"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K23 ["Position"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADK R14 K33 [0.5]
  LOADN R15 255
  LOADK R16 K33 [0.5]
  LOADN R17 255
  CALL R13 4 1
  SETTABLEKS R13 R12 K24 ["FrameSize"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADK R14 K33 [0.5]
  LOADN R15 1
  LOADK R16 K33 [0.5]
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K25 ["FramePosition"]
  SETLIST R9 R10 3 [1]
  SETTABLEN R9 R8 3
  NEWTABLE R9 0 4
  DUPTABLE R10 K31 [{"Size", "Position", "FrameSize", "FramePosition", "Border"}]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K22 ["Size"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K23 ["Position"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADK R12 K33 [0.5]
  LOADN R13 255
  LOADK R14 K33 [0.5]
  LOADN R15 255
  CALL R11 4 1
  SETTABLEKS R11 R10 K24 ["FrameSize"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K25 ["FramePosition"]
  DUPTABLE R11 K36 [{"BorderPosition", "BorderSize"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADK R15 K33 [0.5]
  LOADN R16 255
  CALL R12 4 1
  SETTABLEKS R12 R11 K34 ["BorderPosition"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K35 ["BorderSize"]
  SETTABLEKS R11 R10 K30 ["Border"]
  DUPTABLE R11 K26 [{"Size", "Position", "FrameSize", "FramePosition"}]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K23 ["Position"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 255
  LOADK R15 K33 [0.5]
  LOADN R16 255
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["FrameSize"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADK R13 K33 [0.5]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K25 ["FramePosition"]
  DUPTABLE R12 K31 [{"Size", "Position", "FrameSize", "FramePosition", "Border"}]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K22 ["Size"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K23 ["Position"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADK R14 K33 [0.5]
  LOADN R15 255
  LOADK R16 K33 [0.5]
  LOADN R17 255
  CALL R13 4 1
  SETTABLEKS R13 R12 K24 ["FrameSize"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADK R16 K33 [0.5]
  LOADN R17 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K25 ["FramePosition"]
  DUPTABLE R13 K36 [{"BorderPosition", "BorderSize"}]
  GETIMPORT R14 K29 [UDim2.new]
  LOADK R15 K33 [0.5]
  LOADN R16 255
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K34 ["BorderPosition"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K35 ["BorderSize"]
  SETTABLEKS R13 R12 K30 ["Border"]
  DUPTABLE R13 K26 [{"Size", "Position", "FrameSize", "FramePosition"}]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K22 ["Size"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K23 ["Position"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADK R15 K33 [0.5]
  LOADN R16 255
  LOADK R17 K33 [0.5]
  LOADN R18 255
  CALL R14 4 1
  SETTABLEKS R14 R13 K24 ["FrameSize"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADK R15 K33 [0.5]
  LOADN R16 1
  LOADK R17 K33 [0.5]
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K25 ["FramePosition"]
  SETLIST R9 R10 4 [1]
  SETTABLEN R9 R8 4
  GETTABLEKS R9 R2 K37 ["PureComponent"]
  LOADK R11 K38 ["ConversationThumbnail"]
  NAMECALL R9 R9 K39 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K40 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K41 ["render"]
  RETURN R9 1
