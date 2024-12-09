PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K1 [{"placeId"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["rootPlaceId"]
  SETTABLEKS R1 R0 K0 ["placeId"]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["LaunchExperience"]
  CALL R1 2 0
  GETUPVAL R1 2
  GETUPVAL R2 3
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["locale"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["Frame"]
  DUPTABLE R2 K6 [{"BackgroundTransparency", "BorderSizePixel", "Size", "AutomaticSize"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["BackgroundTransparency"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["BorderSizePixel"]
  GETIMPORT R3 K9 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K4 ["Size"]
  GETIMPORT R3 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R3 R2 K5 ["AutomaticSize"]
  DUPTABLE R3 K16 [{"UIListLayout", "ExperienceThumbnailFrame", "BodyText"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K13 ["UIListLayout"]
  DUPTABLE R6 K21 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R7 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K17 ["FillDirection"]
  GETIMPORT R7 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K18 ["HorizontalAlignment"]
  GETIMPORT R7 K27 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R7 R6 K19 ["SortOrder"]
  GETIMPORT R7 K29 [UDim.new]
  LOADN R8 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K30 ["Tokens"]
  GETTABLEKS R10 R11 K31 ["Global"]
  GETTABLEKS R9 R10 K32 ["Space_150"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K20 ["Padding"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K13 ["UIListLayout"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K35 [{"BackgroundTransparency", "Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder", "ClipsDescendants"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K2 ["BackgroundTransparency"]
  GETIMPORT R7 K37 [UDim2.fromOffset]
  LOADN R8 150
  LOADN R9 150
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K38 ["BackgroundContrast"]
  GETTABLEKS R7 R8 K39 ["Color"]
  SETTABLEKS R7 R6 K33 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K3 ["BorderSizePixel"]
  LOADN R7 1
  SETTABLEKS R7 R6 K26 ["LayoutOrder"]
  LOADB R7 1
  SETTABLEKS R7 R6 K34 ["ClipsDescendants"]
  DUPTABLE R7 K41 [{"ExperienceThumbnail"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K45 [{"AnchorPoint", "Position", "Image", "Size", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R11 K47 [Vector2.new]
  LOADK R12 K48 [0.5]
  LOADK R13 K48 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K42 ["AnchorPoint"]
  GETIMPORT R11 K50 [UDim2.fromScale]
  LOADK R12 K48 [0.5]
  LOADK R13 K48 [0.5]
  CALL R11 2 1
  SETTABLEKS R11 R10 K43 ["Position"]
  GETIMPORT R11 K53 [string.format]
  LOADK R12 K54 ["rbxthumb://type=GameIcon&id=%s&w=%d&h=%d"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K55 ["universeId"]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K57 [tostring]
  CALL R13 1 1
  LOADN R14 150
  LOADN R15 150
  CALL R11 4 1
  SETTABLEKS R11 R10 K44 ["Image"]
  GETIMPORT R11 K50 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K4 ["Size"]
  LOADN R11 0
  SETTABLEKS R11 R10 K3 ["BorderSizePixel"]
  LOADN R11 1
  SETTABLEKS R11 R10 K2 ["BackgroundTransparency"]
  DUPTABLE R11 K59 [{"RoundCorner"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  LOADK R13 K60 ["UICorner"]
  DUPTABLE R14 K62 [{"CornerRadius"}]
  GETIMPORT R15 K29 [UDim.new]
  LOADN R16 0
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K30 ["Tokens"]
  GETTABLEKS R19 R20 K63 ["Semantic"]
  GETTABLEKS R18 R19 K64 ["Radius"]
  GETTABLEKS R17 R18 K65 ["Medium"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K61 ["CornerRadius"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K58 ["RoundCorner"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K40 ["ExperienceThumbnail"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K14 ["ExperienceThumbnailFrame"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 5
  DUPTABLE R6 K74 [{"text", "fontStyle", "colorStyle", "layoutOrder", "automaticSize", "size", "textXAlignment", "lineHeight"}]
  GETUPVAL R7 6
  LOADK R9 K75 ["InGame.InspectMenu.Attribution.GoToDescription"]
  GETUPVAL R10 7
  DUPTABLE R11 K77 [{"EXPERIENCE_NAME"}]
  GETUPVAL R12 8
  SETTABLEKS R12 R11 K76 ["EXPERIENCE_NAME"]
  NAMECALL R7 R7 K78 ["FormatByKeyForLocale"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K66 ["text"]
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K79 ["Body"]
  SETTABLEKS R7 R6 K67 ["fontStyle"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K80 ["TextDefault"]
  SETTABLEKS R7 R6 K68 ["colorStyle"]
  LOADN R7 2
  SETTABLEKS R7 R6 K69 ["layoutOrder"]
  GETIMPORT R7 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K70 ["automaticSize"]
  GETIMPORT R7 K50 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K71 ["size"]
  GETIMPORT R7 K82 [Enum.TextXAlignment.Center]
  SETTABLEKS R7 R6 K72 ["textXAlignment"]
  LOADN R7 1
  SETTABLEKS R7 R6 K73 ["lineHeight"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["BodyText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K0 ["useCallback"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  NEWTABLE R7 0 2
  MOVE R8 R1
  GETTABLEKS R9 R0 K1 ["rootPlaceId"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R6 6
  DUPCLOSURE R7 K2 [PROTO_2]
  CALL R6 1 1
  GETTABLEKS R7 R3 K3 ["Theme"]
  GETTABLEKS R8 R3 K4 ["Font"]
  GETTABLEKS R10 R0 K6 ["name"]
  ORK R9 R10 K5 [""]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K13 [{"title", "middleContent", "buttonStackInfo", "isMiddleContentFocusable", "screenSize"}]
  GETUPVAL R13 8
  LOADK R15 K14 ["InGame.InspectMenu.Attribution.GoToExperience"]
  MOVE R16 R6
  NAMECALL R13 R13 K15 ["FormatByKeyForLocale"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K8 ["title"]
  NEWCLOSURE R13 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K9 ["middleContent"]
  DUPTABLE R13 K17 [{"buttons"}]
  NEWTABLE R14 0 2
  DUPTABLE R15 K20 [{"props", "isDefaultChild"}]
  DUPTABLE R16 K24 [{"onActivated", "text", "layoutOrder"}]
  SETTABLEKS R4 R16 K21 ["onActivated"]
  GETUPVAL R17 8
  LOADK R19 K25 ["InGame.InspectMenu.Action.Cancel"]
  MOVE R20 R6
  NAMECALL R17 R17 K15 ["FormatByKeyForLocale"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K22 ["text"]
  LOADN R17 0
  SETTABLEKS R17 R16 K23 ["layoutOrder"]
  SETTABLEKS R16 R15 K18 ["props"]
  LOADB R16 1
  SETTABLEKS R16 R15 K19 ["isDefaultChild"]
  DUPTABLE R16 K27 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R18 11
  GETTABLEKS R17 R18 K28 ["PrimaryContextual"]
  SETTABLEKS R17 R16 K26 ["buttonType"]
  DUPTABLE R17 K24 [{"onActivated", "text", "layoutOrder"}]
  SETTABLEKS R5 R17 K21 ["onActivated"]
  GETUPVAL R18 8
  LOADK R20 K29 ["InGame.InspectMenu.Action.Go"]
  MOVE R21 R6
  NAMECALL R18 R18 K15 ["FormatByKeyForLocale"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K22 ["text"]
  LOADN R18 2
  SETTABLEKS R18 R17 K23 ["layoutOrder"]
  SETTABLEKS R17 R16 K18 ["props"]
  LOADB R17 0
  SETTABLEKS R17 R16 K19 ["isDefaultChild"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K16 ["buttons"]
  SETTABLEKS R13 R12 K10 ["buttonStackInfo"]
  LOADB R13 0
  SETTABLEKS R13 R12 K11 ["isMiddleContentFocusable"]
  SETTABLEKS R2 R12 K12 ["screenSize"]
  CALL R10 2 -1
  RETURN R10 -1

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
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R6 R2 K10 ["App"]
  GETTABLEKS R5 R6 K11 ["Text"]
  GETTABLEKS R4 R5 K12 ["StyledTextLabel"]
  GETTABLEKS R8 R2 K10 ["App"]
  GETTABLEKS R7 R8 K13 ["Dialog"]
  GETTABLEKS R6 R7 K14 ["Alert"]
  GETTABLEKS R5 R6 K15 ["InteractiveAlert"]
  GETTABLEKS R9 R2 K10 ["App"]
  GETTABLEKS R8 R9 K16 ["Button"]
  GETTABLEKS R7 R8 K17 ["Enum"]
  GETTABLEKS R6 R7 K18 ["ButtonType"]
  GETTABLEKS R9 R2 K19 ["Core"]
  GETTABLEKS R8 R9 K20 ["ImageSet"]
  GETTABLEKS R7 R8 K21 ["ImageSetLabel"]
  GETTABLEKS R10 R2 K19 ["Core"]
  GETTABLEKS R9 R10 K22 ["Style"]
  GETTABLEKS R8 R9 K23 ["useStyle"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K24 ["Workspace"]
  GETTABLEKS R14 R15 K7 ["Packages"]
  GETTABLEKS R13 R14 K25 ["RoactUtils"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K26 ["Hooks"]
  GETTABLEKS R10 R11 K27 ["RoactRodux"]
  GETTABLEKS R9 R10 K28 ["useSelector"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K24 ["Workspace"]
  GETTABLEKS R15 R16 K7 ["Packages"]
  GETTABLEKS R14 R15 K25 ["RoactUtils"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K26 ["Hooks"]
  GETTABLEKS R11 R12 K27 ["RoactRodux"]
  GETTABLEKS R10 R11 K29 ["useDispatch"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R1 K30 ["RobloxGui"]
  GETTABLEKS R13 R14 K31 ["Modules"]
  GETTABLEKS R12 R13 K32 ["RobloxTranslator"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R17 R1 K30 ["RobloxGui"]
  GETTABLEKS R16 R17 K31 ["Modules"]
  GETTABLEKS R15 R16 K33 ["Common"]
  GETTABLEKS R14 R15 K26 ["Hooks"]
  GETTABLEKS R13 R14 K34 ["useScreenSize"]
  CALL R12 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K24 ["Workspace"]
  GETTABLEKS R16 R17 K7 ["Packages"]
  GETTABLEKS R15 R16 K35 ["ExperienceService"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K35 ["ExperienceService"]
  GETIMPORT R16 K37 [script]
  GETTABLEKS R15 R16 K38 ["Parent"]
  GETTABLEKS R14 R15 K38 ["Parent"]
  GETIMPORT R15 K6 [require]
  GETTABLEKS R17 R14 K39 ["Actions"]
  GETTABLEKS R16 R17 K40 ["CloseOverlay"]
  CALL R15 1 1
  DUPCLOSURE R16 K41 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R16 1
