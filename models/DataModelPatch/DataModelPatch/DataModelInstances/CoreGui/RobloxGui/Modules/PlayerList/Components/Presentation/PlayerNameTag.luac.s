PROTO_0:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K0 ["data"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["player"]
  GETTABLEKS R3 R4 K3 ["UserId"]
  CALL R1 2 1
  JUMP [+9]
  GETTABLEKS R5 R0 K0 ["data"]
  GETTABLEKS R4 R5 K4 ["userProfiles"]
  GETTABLEN R3 R4 1
  GETTABLEKS R2 R3 K5 ["names"]
  GETTABLEKS R1 R2 K6 ["combinedName"]
  GETUPVAL R2 2
  DUPTABLE R4 K8 [{"name"}]
  SETTABLEKS R1 R4 K7 ["name"]
  NAMECALL R2 R2 K9 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+59]
  DUPTABLE R3 K1 [{"name"}]
  GETTABLEKS R6 R0 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["player"]
  GETTABLEKS R4 R5 K4 ["DisplayName"]
  SETTABLEKS R4 R3 K0 ["name"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 1
  DUPTABLE R3 K8 [{"query", "variables"}]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+6]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["Queries"]
  GETTABLEKS R4 R5 K10 ["userProfilesInExperienceNamesByUserIds"]
  JUMP [+5]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["Queries"]
  GETTABLEKS R4 R5 K11 ["userProfilesCombinedNameByUserIds"]
  SETTABLEKS R4 R3 K6 ["query"]
  DUPTABLE R4 K13 [{"userIds"}]
  NEWTABLE R5 0 1
  GETTABLEKS R9 R0 K2 ["props"]
  GETTABLEKS R8 R9 K3 ["player"]
  GETTABLEKS R7 R8 K14 ["UserId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K16 [tostring]
  CALL R6 1 1
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K12 ["userIds"]
  SETTABLEKS R4 R3 K7 ["variables"]
  NAMECALL R1 R1 K6 ["query"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  DUPCLOSURE R4 K17 [PROTO_1]
  NAMECALL R1 R1 K18 ["andThen"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["IconUnSelectedColor"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["isHovered"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R1 R0 K3 ["IconSelectedColor"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K4 ["textFont"]
  GETTABLEKS R2 R3 K5 ["Font"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K4 ["textFont"]
  GETTABLEKS R3 R4 K6 ["Size"]
  NEWTABLE R4 0 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["props"]
  GETTABLEKS R6 R7 K7 ["player"]
  GETTABLEKS R5 R6 K8 ["PlatformName"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["Utils"]
  GETTABLEKS R6 R7 K10 ["isPlayerVerified"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K7 ["player"]
  CALL R6 1 1
  GETTABLEKS R7 R0 K11 ["IsTenFoot"]
  JUMPIFNOT R7 [+336]
  JUMPIFEQKS R5 K12 [""] [+335]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["createElement"]
  LOADK R8 K14 ["UIListLayout"]
  DUPTABLE R9 K19 [{"SortOrder", "FillDirection", "VerticalAlignment", "Padding"}]
  GETIMPORT R10 K22 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K15 ["SortOrder"]
  GETIMPORT R10 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K16 ["FillDirection"]
  GETIMPORT R10 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K17 ["VerticalAlignment"]
  GETIMPORT R10 K29 [UDim.new]
  LOADN R11 0
  LOADN R12 10
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Padding"]
  CALL R7 2 1
  SETTABLEKS R7 R4 K30 ["VerticalLayout"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["createElement"]
  LOADK R8 K31 ["TextLabel"]
  DUPTABLE R9 K41 [{"Position", "Size", "TextXAlignment", "Font", "TextSize", "TextColor3", "TextTransparency", "TextStrokeColor3", "TextStrokeTransparency", "BackgroundTransparency", "Text", "LayoutOrder"}]
  GETIMPORT R10 K43 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K32 ["Position"]
  GETIMPORT R10 K43 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADK R13 K44 [0.35]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K6 ["Size"]
  GETIMPORT R10 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K33 ["TextXAlignment"]
  GETIMPORT R10 K48 [Enum.Font.SourceSans]
  SETTABLEKS R10 R9 K5 ["Font"]
  SETTABLEKS R3 R9 K34 ["TextSize"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K49 ["textStyle"]
  GETTABLEKS R10 R11 K50 ["Color"]
  SETTABLEKS R10 R9 K35 ["TextColor3"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K49 ["textStyle"]
  GETTABLEKS R10 R11 K51 ["Transparency"]
  SETTABLEKS R10 R9 K36 ["TextTransparency"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K49 ["textStyle"]
  GETTABLEKS R10 R11 K52 ["StrokeColor"]
  SETTABLEKS R10 R9 K37 ["TextStrokeColor3"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K49 ["textStyle"]
  GETTABLEKS R10 R11 K53 ["StrokeTransparency"]
  SETTABLEKS R10 R9 K38 ["TextStrokeTransparency"]
  LOADN R10 1
  SETTABLEKS R10 R9 K39 ["BackgroundTransparency"]
  SETTABLEKS R5 R9 K40 ["Text"]
  LOADN R10 2
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R4 K54 ["PlayerPlatformName"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["createElement"]
  LOADK R8 K55 ["Frame"]
  DUPTABLE R9 K56 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R10 K43 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADK R13 K57 [0.45]
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K6 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K39 ["BackgroundTransparency"]
  LOADN R10 2
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  DUPTABLE R10 K61 [{"Layout", "RobloxIcon", "PlayerNameContainer"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["createElement"]
  LOADK R12 K14 ["UIListLayout"]
  DUPTABLE R13 K19 [{"SortOrder", "FillDirection", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K22 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K15 ["SortOrder"]
  GETIMPORT R14 K63 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K16 ["FillDirection"]
  GETIMPORT R14 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K17 ["VerticalAlignment"]
  GETIMPORT R14 K29 [UDim.new]
  LOADN R15 0
  LOADN R16 6
  CALL R14 2 1
  SETTABLEKS R14 R13 K18 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K58 ["Layout"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["createElement"]
  LOADK R12 K64 ["ImageButton"]
  DUPTABLE R13 K68 [{"Size", "Image", "BackgroundTransparency", "Selectable", "ImageColor3", "LayoutOrder"}]
  GETIMPORT R14 K43 [UDim2.new]
  LOADN R15 0
  LOADN R16 24
  LOADN R17 0
  LOADN R18 24
  CALL R14 4 1
  SETTABLEKS R14 R13 K6 ["Size"]
  GETTABLEKS R14 R0 K69 ["RobloxIconImage"]
  SETTABLEKS R14 R13 K65 ["Image"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  LOADB R14 0
  SETTABLEKS R14 R13 K66 ["Selectable"]
  SETTABLEKS R1 R13 K67 ["ImageColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K21 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K59 ["RobloxIcon"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K70 ["EmojiWrapper"]
  DUPTABLE R13 K77 [{"emoji", "layoutOrder", "mockIsEnrolled", "size", "automaticSize", "verticalAlignment"}]
  JUMPIFNOT R6 [+6]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K71 ["emoji"]
  GETTABLEKS R14 R15 K78 ["verified"]
  JUMP [+1]
  LOADK R14 K12 [""]
  SETTABLEKS R14 R13 K71 ["emoji"]
  LOADN R14 2
  SETTABLEKS R14 R13 K72 ["layoutOrder"]
  LOADB R14 1
  SETTABLEKS R14 R13 K73 ["mockIsEnrolled"]
  GETIMPORT R14 K43 [UDim2.new]
  LOADN R15 1
  LOADN R16 226
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K74 ["size"]
  GETIMPORT R14 K81 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K75 ["automaticSize"]
  GETIMPORT R14 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K76 ["verticalAlignment"]
  DUPTABLE R14 K83 [{"PlayerName"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K13 ["createElement"]
  LOADK R16 K31 ["TextLabel"]
  DUPTABLE R17 K86 [{"AutomaticSize", "ClipsDescendants", "Size", "Font", "Text", "TextSize", "TextColor3", "TextTransparency", "TextStrokeColor3", "TextStrokeTransparency", "TextTruncate", "TextXAlignment", "BackgroundTransparency"}]
  GETIMPORT R18 K88 [Enum.AutomaticSize.X]
  SETTABLEKS R18 R17 K79 ["AutomaticSize"]
  LOADB R18 0
  SETTABLEKS R18 R17 K84 ["ClipsDescendants"]
  GETIMPORT R18 K90 [UDim2.fromScale]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K6 ["Size"]
  SETTABLEKS R2 R17 K5 ["Font"]
  GETUPVAL R19 4
  JUMPIFNOT R19 [+6]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K1 ["props"]
  GETTABLEKS R18 R19 K91 ["name"]
  JUMP [+16]
  GETUPVAL R19 5
  CALL R19 0 1
  JUMPIFNOT R19 [+6]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K92 ["state"]
  GETTABLEKS R18 R19 K91 ["name"]
  JUMP [+7]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K1 ["props"]
  GETTABLEKS R19 R20 K7 ["player"]
  GETTABLEKS R18 R19 K93 ["Name"]
  SETTABLEKS R18 R17 K40 ["Text"]
  SETTABLEKS R3 R17 K34 ["TextSize"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K1 ["props"]
  GETTABLEKS R19 R20 K49 ["textStyle"]
  GETTABLEKS R18 R19 K50 ["Color"]
  SETTABLEKS R18 R17 K35 ["TextColor3"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K1 ["props"]
  GETTABLEKS R19 R20 K49 ["textStyle"]
  GETTABLEKS R18 R19 K51 ["Transparency"]
  SETTABLEKS R18 R17 K36 ["TextTransparency"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K1 ["props"]
  GETTABLEKS R19 R20 K49 ["textStyle"]
  GETTABLEKS R18 R19 K52 ["StrokeColor"]
  SETTABLEKS R18 R17 K37 ["TextStrokeColor3"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K1 ["props"]
  GETTABLEKS R19 R20 K49 ["textStyle"]
  GETTABLEKS R18 R19 K53 ["StrokeTransparency"]
  SETTABLEKS R18 R17 K38 ["TextStrokeTransparency"]
  GETIMPORT R18 K95 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K85 ["TextTruncate"]
  GETIMPORT R18 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K33 ["TextXAlignment"]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["BackgroundTransparency"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K82 ["PlayerName"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K60 ["PlayerNameContainer"]
  CALL R7 3 1
  SETTABLEKS R7 R4 K96 ["RobloxNameFrame"]
  JUMP [+154]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K70 ["EmojiWrapper"]
  DUPTABLE R9 K99 [{"emoji", "anchorPoint", "position", "mockIsEnrolled", "verticalAlignment", "automaticSize", "size"}]
  JUMPIFNOT R6 [+6]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K71 ["emoji"]
  GETTABLEKS R10 R11 K78 ["verified"]
  JUMP [+1]
  LOADK R10 K12 [""]
  SETTABLEKS R10 R9 K71 ["emoji"]
  GETIMPORT R10 K101 [Vector2.new]
  LOADN R11 0
  LOADK R12 K102 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K97 ["anchorPoint"]
  GETIMPORT R10 K90 [UDim2.fromScale]
  LOADN R11 0
  LOADK R12 K102 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K98 ["position"]
  LOADB R10 1
  SETTABLEKS R10 R9 K73 ["mockIsEnrolled"]
  GETIMPORT R10 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K76 ["verticalAlignment"]
  GETIMPORT R10 K88 [Enum.AutomaticSize.X]
  SETTABLEKS R10 R9 K75 ["automaticSize"]
  GETIMPORT R10 K43 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  MOVE R14 R3
  CALL R10 4 1
  SETTABLEKS R10 R9 K74 ["size"]
  DUPTABLE R10 K83 [{"PlayerName"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["createElement"]
  LOADK R12 K31 ["TextLabel"]
  DUPTABLE R13 K104 [{"AutomaticSize", "Size", "Font", "Text", "TextSize", "TextColor3", "TextTransparency", "TextTruncate", "TextScaled", "TextStrokeColor3", "TextStrokeTransparency", "TextXAlignment", "BackgroundTransparency"}]
  GETIMPORT R14 K88 [Enum.AutomaticSize.X]
  SETTABLEKS R14 R13 K79 ["AutomaticSize"]
  GETIMPORT R14 K90 [UDim2.fromScale]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K6 ["Size"]
  SETTABLEKS R2 R13 K5 ["Font"]
  GETUPVAL R15 4
  JUMPIFNOT R15 [+6]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K91 ["name"]
  JUMP [+16]
  GETUPVAL R15 5
  CALL R15 0 1
  JUMPIFNOT R15 [+6]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K92 ["state"]
  GETTABLEKS R14 R15 K91 ["name"]
  JUMP [+7]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K1 ["props"]
  GETTABLEKS R15 R16 K7 ["player"]
  GETTABLEKS R14 R15 K105 ["DisplayName"]
  SETTABLEKS R14 R13 K40 ["Text"]
  SETTABLEKS R3 R13 K34 ["TextSize"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K1 ["props"]
  GETTABLEKS R15 R16 K49 ["textStyle"]
  GETTABLEKS R14 R15 K50 ["Color"]
  SETTABLEKS R14 R13 K35 ["TextColor3"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K1 ["props"]
  GETTABLEKS R15 R16 K49 ["textStyle"]
  GETTABLEKS R14 R15 K51 ["Transparency"]
  SETTABLEKS R14 R13 K36 ["TextTransparency"]
  GETIMPORT R14 K95 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K85 ["TextTruncate"]
  LOADB R14 0
  SETTABLEKS R14 R13 K103 ["TextScaled"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K1 ["props"]
  GETTABLEKS R15 R16 K49 ["textStyle"]
  GETTABLEKS R14 R15 K52 ["StrokeColor"]
  SETTABLEKS R14 R13 K37 ["TextStrokeColor3"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K1 ["props"]
  GETTABLEKS R15 R16 K49 ["textStyle"]
  GETTABLEKS R14 R15 K53 ["StrokeTransparency"]
  SETTABLEKS R14 R13 K38 ["TextStrokeTransparency"]
  GETIMPORT R14 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K33 ["TextXAlignment"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K82 ["PlayerName"]
  CALL R7 3 1
  SETTABLEKS R7 R4 K60 ["PlayerNameContainer"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["createElement"]
  LOADK R8 K55 ["Frame"]
  DUPTABLE R9 K106 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R10 R11 K72 ["layoutOrder"]
  SETTABLEKS R10 R9 K21 ["LayoutOrder"]
  GETTABLEKS R10 R0 K107 ["PlayerNameSize"]
  SETTABLEKS R10 R9 K6 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K39 ["BackgroundTransparency"]
  MOVE R10 R4
  CALL R7 3 -1
  RETURN R7 -1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["player"]
  GETTABLEKS R3 R4 K1 ["UserId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K0 ["player"]
  GETTABLEKS R3 R4 K4 ["DisplayName"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["createElement"]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["Dictionary"]
  GETTABLEKS R4 R5 K7 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K9 [{"name"}]
  SETTABLEKS R1 R6 K8 ["name"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R0 K12 ["Workspace"]
  GETTABLEKS R7 R8 K9 ["Packages"]
  GETTABLEKS R6 R7 K13 ["VerifiedBadges"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R0 K12 ["Workspace"]
  GETTABLEKS R8 R9 K9 ["Packages"]
  GETTABLEKS R7 R8 K14 ["UserLib"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K9 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Cryo"]
  CALL R7 1 1
  GETIMPORT R11 K17 [script]
  GETTABLEKS R10 R11 K18 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Parent"]
  GETTABLEKS R8 R9 K18 ["Parent"]
  GETTABLEKS R10 R8 K19 ["Components"]
  GETTABLEKS R9 R10 K20 ["Connection"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R11 R9 K21 ["LayoutValues"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K22 ["WithLayoutValues"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R8 K23 ["Hooks"]
  GETTABLEKS R13 R14 K24 ["usePlayerCombinedName"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R0 K12 ["Workspace"]
  GETTABLEKS R15 R16 K9 ["Packages"]
  GETTABLEKS R14 R15 K25 ["UserProfiles"]
  CALL R13 1 1
  GETTABLEKS R15 R13 K26 ["Selectors"]
  GETTABLEKS R14 R15 K27 ["getInExperienceCombinedNameFromId"]
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K5 ["RobloxGui"]
  GETTABLEKS R17 R18 K28 ["Modules"]
  GETTABLEKS R16 R17 K29 ["ApolloClient"]
  CALL R15 1 1
  GETIMPORT R16 K8 [require]
  GETTABLEKS R19 R2 K28 ["Modules"]
  GETTABLEKS R18 R19 K30 ["Flags"]
  GETTABLEKS R17 R18 K31 ["getIsUserProfileOnLeaderboardEnabled"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETTABLEKS R19 R8 K30 ["Flags"]
  GETTABLEKS R18 R19 K32 ["FFlagRefactorPlayerNameTag"]
  CALL R17 1 1
  GETIMPORT R19 K8 [require]
  GETTABLEKS R22 R0 K12 ["Workspace"]
  GETTABLEKS R21 R22 K9 ["Packages"]
  GETTABLEKS R20 R21 K33 ["SharedFlags"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K34 ["FFlagInExperienceNameQueryEnabled"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R22 R2 K28 ["Modules"]
  GETTABLEKS R21 R22 K35 ["Interfaces"]
  GETTABLEKS R20 R21 K36 ["playerInterface"]
  CALL R19 1 1
  GETTABLEKS R20 R3 K37 ["PureComponent"]
  LOADK R22 K38 ["PlayerNameTag"]
  NAMECALL R20 R20 K39 ["extend"]
  CALL R20 2 1
  GETTABLEKS R21 R4 K40 ["strictInterface"]
  DUPTABLE R22 K48 [{"player", "isTitleEntry", "isHovered", "layoutOrder", "name", "textStyle", "textFont"}]
  SETTABLEKS R19 R22 K41 ["player"]
  GETTABLEKS R23 R4 K49 ["boolean"]
  SETTABLEKS R23 R22 K42 ["isTitleEntry"]
  GETTABLEKS R23 R4 K49 ["boolean"]
  SETTABLEKS R23 R22 K43 ["isHovered"]
  GETTABLEKS R23 R4 K50 ["integer"]
  SETTABLEKS R23 R22 K44 ["layoutOrder"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R23 R4 K51 ["string"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K45 ["name"]
  GETTABLEKS R23 R4 K40 ["strictInterface"]
  DUPTABLE R24 K56 [{"Color", "Transparency", "StrokeColor", "StrokeTransparency"}]
  GETTABLEKS R25 R4 K57 ["Color3"]
  SETTABLEKS R25 R24 K52 ["Color"]
  GETTABLEKS R25 R4 K58 ["number"]
  SETTABLEKS R25 R24 K53 ["Transparency"]
  GETTABLEKS R25 R4 K59 ["optional"]
  GETTABLEKS R26 R4 K57 ["Color3"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K54 ["StrokeColor"]
  GETTABLEKS R25 R4 K59 ["optional"]
  GETTABLEKS R26 R4 K58 ["number"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K55 ["StrokeTransparency"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K46 ["textStyle"]
  GETTABLEKS R23 R4 K40 ["strictInterface"]
  DUPTABLE R24 K63 [{"Size", "MinSize", "Font"}]
  GETTABLEKS R25 R4 K58 ["number"]
  SETTABLEKS R25 R24 K60 ["Size"]
  GETTABLEKS R25 R4 K58 ["number"]
  SETTABLEKS R25 R24 K61 ["MinSize"]
  GETTABLEKS R25 R4 K64 ["enum"]
  GETIMPORT R26 K66 [Enum.Font]
  CALL R25 1 1
  SETTABLEKS R25 R24 K62 ["Font"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K47 ["textFont"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K67 ["validateProps"]
  JUMPIF R17 [+8]
  DUPCLOSURE R21 K68 [PROTO_2]
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R21 R20 K69 ["init"]
  DUPCLOSURE R21 K70 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K71 ["render"]
  DUPCLOSURE R21 K72 [PROTO_5]
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R7
  JUMPIFNOT R17 [+1]
  RETURN R21 1
  RETURN R20 1
