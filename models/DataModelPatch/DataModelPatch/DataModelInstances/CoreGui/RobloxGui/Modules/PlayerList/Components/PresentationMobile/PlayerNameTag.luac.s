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
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+58]
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
  NAMECALL R1 R1 K17 ["andThen"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["textFont"]
  GETTABLEKS R1 R2 K2 ["Font"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["textFont"]
  GETTABLEKS R2 R3 K3 ["Size"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  LOADK R4 K5 ["TextLabel"]
  DUPTABLE R5 K17 [{"AnchorPoint", "Position", "Size", "TextXAlignment", "Font", "TextSize", "TextColor3", "TextTransparency", "TextStrokeColor3", "TextStrokeTransparency", "BackgroundTransparency", "Text", "TextTruncate"}]
  GETIMPORT R6 K20 [Vector2.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["AnchorPoint"]
  GETIMPORT R6 K22 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K7 ["Position"]
  GETIMPORT R6 K22 [UDim2.new]
  LOADN R7 1
  GETTABLEKS R12 R0 K23 ["PlayerIconSizeMobile"]
  GETTABLEKS R11 R12 K24 ["X"]
  GETTABLEKS R10 R11 K25 ["Offset"]
  MINUS R9 R10
  GETTABLEKS R11 R0 K27 ["PlayerNamePaddingXMobile"]
  MULK R10 R11 K26 [2]
  SUB R8 R9 R10
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K3 ["Size"]
  GETIMPORT R6 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R6 R5 K8 ["TextXAlignment"]
  SETTABLEKS R1 R5 K2 ["Font"]
  SETTABLEKS R2 R5 K9 ["TextSize"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K31 ["textStyle"]
  GETTABLEKS R6 R7 K32 ["Color"]
  SETTABLEKS R6 R5 K10 ["TextColor3"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K31 ["textStyle"]
  GETTABLEKS R6 R7 K33 ["Transparency"]
  SETTABLEKS R6 R5 K11 ["TextTransparency"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K31 ["textStyle"]
  GETTABLEKS R6 R7 K34 ["StrokeColor"]
  SETTABLEKS R6 R5 K12 ["TextStrokeColor3"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K31 ["textStyle"]
  GETTABLEKS R6 R7 K35 ["StrokeTransparency"]
  SETTABLEKS R6 R5 K13 ["TextStrokeTransparency"]
  LOADN R6 1
  SETTABLEKS R6 R5 K14 ["BackgroundTransparency"]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K36 ["name"]
  JUMP [+16]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K37 ["state"]
  GETTABLEKS R6 R7 K36 ["name"]
  JUMP [+7]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K38 ["player"]
  GETTABLEKS R6 R7 K39 ["DisplayName"]
  SETTABLEKS R6 R5 K15 ["Text"]
  GETIMPORT R6 K41 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R6 R5 K16 ["TextTruncate"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
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
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Cryo"]
  CALL R4 1 1
  LOADK R7 K11 ["RobloxGui"]
  NAMECALL R5 R1 K12 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R5 K13 ["Modules"]
  GETTABLEKS R8 R9 K14 ["Interfaces"]
  GETTABLEKS R7 R8 K15 ["playerInterface"]
  CALL R6 1 1
  GETIMPORT R10 K17 [script]
  GETTABLEKS R9 R10 K18 ["Parent"]
  GETTABLEKS R8 R9 K18 ["Parent"]
  GETTABLEKS R7 R8 K18 ["Parent"]
  GETIMPORT R10 K17 [script]
  GETTABLEKS R9 R10 K18 ["Parent"]
  GETTABLEKS R8 R9 K18 ["Parent"]
  GETTABLEKS R9 R8 K19 ["Connection"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R9 K20 ["LayoutValues"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K21 ["WithLayoutValues"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R7 K22 ["Hooks"]
  GETTABLEKS R13 R14 K23 ["usePlayerCombinedName"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R1 K11 ["RobloxGui"]
  GETTABLEKS R15 R16 K13 ["Modules"]
  GETTABLEKS R14 R15 K24 ["ApolloClient"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K25 ["Workspace"]
  GETTABLEKS R16 R17 K7 ["Packages"]
  GETTABLEKS R15 R16 K26 ["UserProfiles"]
  CALL R14 1 1
  GETTABLEKS R16 R14 K27 ["Selectors"]
  GETTABLEKS R15 R16 K28 ["getInExperienceCombinedNameFromId"]
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R5 K13 ["Modules"]
  GETTABLEKS R18 R19 K29 ["Flags"]
  GETTABLEKS R17 R18 K30 ["getIsUserProfileOnLeaderboardEnabled"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R7 K29 ["Flags"]
  GETTABLEKS R18 R19 K31 ["FFlagRefactorPlayerNameTag"]
  CALL R17 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K25 ["Workspace"]
  GETTABLEKS R21 R22 K7 ["Packages"]
  GETTABLEKS R20 R21 K32 ["SharedFlags"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K33 ["FFlagInExperienceNameQueryEnabled"]
  GETTABLEKS R19 R2 K34 ["PureComponent"]
  LOADK R21 K35 ["PlayerNameTag"]
  NAMECALL R19 R19 K36 ["extend"]
  CALL R19 2 1
  GETTABLEKS R20 R3 K37 ["strictInterface"]
  DUPTABLE R21 K44 [{"player", "isTitleEntry", "isHovered", "name", "textStyle", "textFont"}]
  SETTABLEKS R6 R21 K38 ["player"]
  GETTABLEKS R22 R3 K45 ["boolean"]
  SETTABLEKS R22 R21 K39 ["isTitleEntry"]
  GETTABLEKS R22 R3 K45 ["boolean"]
  SETTABLEKS R22 R21 K40 ["isHovered"]
  JUMPIFNOT R17 [+3]
  GETTABLEKS R22 R3 K46 ["string"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K41 ["name"]
  GETTABLEKS R22 R3 K37 ["strictInterface"]
  DUPTABLE R23 K51 [{"Color", "Transparency", "StrokeColor", "StrokeTransparency"}]
  GETTABLEKS R24 R3 K52 ["Color3"]
  SETTABLEKS R24 R23 K47 ["Color"]
  GETTABLEKS R24 R3 K53 ["number"]
  SETTABLEKS R24 R23 K48 ["Transparency"]
  GETTABLEKS R24 R3 K54 ["optional"]
  GETTABLEKS R25 R3 K52 ["Color3"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K49 ["StrokeColor"]
  GETTABLEKS R24 R3 K54 ["optional"]
  GETTABLEKS R25 R3 K53 ["number"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K50 ["StrokeTransparency"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K42 ["textStyle"]
  GETTABLEKS R22 R3 K37 ["strictInterface"]
  DUPTABLE R23 K58 [{"Size", "MinSize", "Font"}]
  GETTABLEKS R24 R3 K53 ["number"]
  SETTABLEKS R24 R23 K55 ["Size"]
  GETTABLEKS R24 R3 K53 ["number"]
  SETTABLEKS R24 R23 K56 ["MinSize"]
  GETTABLEKS R24 R3 K59 ["enum"]
  GETIMPORT R25 K61 [Enum.Font]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["Font"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K43 ["textFont"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K62 ["validateProps"]
  JUMPIF R17 [+8]
  DUPCLOSURE R20 K63 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K64 ["init"]
  DUPCLOSURE R20 K65 [PROTO_3]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R16
  SETTABLEKS R20 R19 K66 ["render"]
  DUPCLOSURE R20 K67 [PROTO_4]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R4
  JUMPIFNOT R17 [+1]
  RETURN R20 1
  RETURN R19 1
