PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["selectedImage"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["assetId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["assetId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["isCollectibles"]
  GETUPVAL R3 3
  CALL R2 1 1
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+44]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["hasLimitedQuantity"]
  GETUPVAL R7 3
  CALL R6 1 1
  MOVE R3 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["isLimited1Point0_LimitedUnique"]
  GETUPVAL R7 3
  CALL R6 1 1
  JUMPIF R6 [+5]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["isLimited2Point0_Or_LimitedCollectible"]
  GETUPVAL R7 3
  CALL R6 1 1
  MOVE R4 R6
  JUMPIFNOT R4 [+5]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K5 ["LimitedIconFrameSizeXOffset"]
  MULK R6 R7 K4 [2]
  JUMP [+3]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K5 ["LimitedIconFrameSizeXOffset"]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 0
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K9 ["X"]
  ADD R9 R10 R6
  LOADN R10 0
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K10 ["Y"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K11 ["LimitedIconFrameSizeYOffset"]
  ADD R11 R12 R13
  CALL R7 4 1
  MOVE R5 R7
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K12 ["createElement"]
  LOADK R7 K13 ["ImageButton"]
  NEWTABLE R8 8 0
  LOADN R9 0
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K15 ["BorderSizePixel"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K16 ["Gray2"]
  SETTABLEKS R9 R8 K17 ["BackgroundColor3"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["Selectable"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K19 ["selectedImage"]
  SETTABLEKS R9 R8 K20 ["SelectionImageObject"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K21 ["Event"]
  GETTABLEKS R9 R10 K22 ["Activated"]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U3
  SETTABLE R10 R8 R9
  DUPTABLE R9 K28 [{"AssetThumbnail", "AssetNameBackground", "EquippedFrame", "Corner", "LimitedLabel"}]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K13 ["ImageButton"]
  NEWTABLE R12 8 0
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  GETUPVAL R17 11
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Size"]
  LOADN R13 0
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K15 ["BorderSizePixel"]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K30 ["Graphite"]
  SETTABLEKS R13 R12 K17 ["BackgroundColor3"]
  LOADB R13 0
  SETTABLEKS R13 R12 K18 ["Selectable"]
  LOADB R13 0
  SETTABLEKS R13 R12 K31 ["AutoButtonColor"]
  LOADK R14 K32 ["rbxthumb://type=Asset&id="]
  GETUPVAL R17 3
  GETTABLEKS R15 R17 K33 ["assetId"]
  LOADK R16 K34 ["&w=150&h=150"]
  CONCAT R13 R14 R16
  SETTABLEKS R13 R12 K35 ["Image"]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K21 ["Event"]
  GETTABLEKS R13 R14 K22 ["Activated"]
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U3
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["AssetThumbnail"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K36 ["Frame"]
  DUPTABLE R12 K38 [{"Size", "Position", "BorderSizePixel", "BackgroundColor3"}]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  GETUPVAL R18 11
  MINUS R17 R18
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Size"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  GETUPVAL R17 11
  CALL R13 4 1
  SETTABLEKS R13 R12 K37 ["Position"]
  LOADN R13 0
  SETTABLEKS R13 R12 K15 ["BorderSizePixel"]
  GETIMPORT R13 K41 [Color3.fromRGB]
  LOADN R14 44
  LOADN R15 45
  LOADN R16 47
  CALL R13 3 1
  SETTABLEKS R13 R12 K17 ["BackgroundColor3"]
  DUPTABLE R13 K43 [{"AssetName"}]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K12 ["createElement"]
  LOADK R15 K44 ["TextLabel"]
  DUPTABLE R16 K54 [{"BackgroundTransparency", "Size", "TextTruncate", "Position", "TextWrapped", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextScaled", "Font", "TextColor3"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K14 ["BackgroundTransparency"]
  GETIMPORT R17 K8 [UDim2.new]
  LOADN R18 1
  LOADN R19 246
  LOADN R20 1
  LOADN R21 246
  CALL R17 4 1
  SETTABLEKS R17 R16 K29 ["Size"]
  GETIMPORT R17 K57 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K45 ["TextTruncate"]
  GETIMPORT R17 K8 [UDim2.new]
  LOADN R18 0
  LOADN R19 5
  LOADN R20 0
  LOADN R21 5
  CALL R17 4 1
  SETTABLEKS R17 R16 K37 ["Position"]
  LOADB R17 1
  SETTABLEKS R17 R16 K46 ["TextWrapped"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K59 ["name"]
  ORK R17 R18 K58 [""]
  SETTABLEKS R17 R16 K47 ["Text"]
  GETIMPORT R17 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K48 ["TextXAlignment"]
  GETIMPORT R17 K63 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K49 ["TextYAlignment"]
  LOADN R17 12
  SETTABLEKS R17 R16 K50 ["TextSize"]
  LOADB R17 1
  SETTABLEKS R17 R16 K51 ["TextScaled"]
  GETUPVAL R18 12
  GETTABLEKS R17 R18 K64 ["default"]
  NAMECALL R17 R17 K65 ["getDefault"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K52 ["Font"]
  GETIMPORT R17 K66 [Color3.new]
  LOADN R18 1
  LOADN R19 1
  LOADN R20 1
  CALL R17 3 1
  SETTABLEKS R17 R16 K53 ["TextColor3"]
  DUPTABLE R17 K68 [{"UITextSizeConstraint"}]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K12 ["createElement"]
  LOADK R19 K67 ["UITextSizeConstraint"]
  DUPTABLE R20 K70 [{"MaxTextSize"}]
  GETTABLEKS R21 R1 K71 ["AssetTextMaxSize"]
  SETTABLEKS R21 R20 K69 ["MaxTextSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K67 ["UITextSizeConstraint"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K42 ["AssetName"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K24 ["AssetNameBackground"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K72 ["ImageLabel"]
  DUPTABLE R12 K78 [{"Size", "BackgroundTransparency", "ZIndex", "Visible", "Image", "ImageColor3", "ScaleType", "SliceCenter"}]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  LOADN R13 2
  SETTABLEKS R13 R12 K73 ["ZIndex"]
  GETUPVAL R13 13
  SETTABLEKS R13 R12 K74 ["Visible"]
  LOADK R13 K79 ["rbxasset://textures/ui/InspectMenu/gr-item-selector.png"]
  SETTABLEKS R13 R12 K35 ["Image"]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K80 ["Green"]
  SETTABLEKS R13 R12 K75 ["ImageColor3"]
  GETIMPORT R13 K82 [Enum.ScaleType.Slice]
  SETTABLEKS R13 R12 K76 ["ScaleType"]
  GETIMPORT R13 K84 [Rect.new]
  LOADK R14 K85 [2.5]
  LOADK R15 K85 [2.5]
  LOADK R16 K85 [2.5]
  LOADK R17 K85 [2.5]
  CALL R13 4 1
  SETTABLEKS R13 R12 K77 ["SliceCenter"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["EquippedFrame"]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K72 ["ImageLabel"]
  DUPTABLE R12 K86 [{"Position", "Size", "BackgroundTransparency", "ZIndex", "Visible", "Image", "ImageColor3"}]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 1
  LOADN R15 231
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K37 ["Position"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  LOADN R15 25
  LOADN R16 0
  LOADN R17 25
  CALL R13 4 1
  SETTABLEKS R13 R12 K29 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  LOADN R13 2
  SETTABLEKS R13 R12 K73 ["ZIndex"]
  GETUPVAL R13 13
  SETTABLEKS R13 R12 K74 ["Visible"]
  LOADK R13 K87 ["rbxasset://textures/ui/InspectMenu/gr-item-selector-triangle.png"]
  SETTABLEKS R13 R12 K35 ["Image"]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K80 ["Green"]
  SETTABLEKS R13 R12 K75 ["ImageColor3"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["Corner"]
  GETUPVAL R11 4
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R3
  JUMP [+1]
  MOVE R10 R2
  JUMPIFNOT R10 [+97]
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 14
  DUPTABLE R12 K95 [{"frameSize", "framePosition", "imageSize", "imagePosition", "textSize", "textPosition", "text"}]
  GETUPVAL R14 4
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  MOVE R13 R5
  JUMP [+13]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K9 ["X"]
  ADDK R15 R16 K96 [18]
  LOADN R16 0
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K10 ["Y"]
  ADDK R17 R18 K97 [4]
  CALL R13 4 1
  SETTABLEKS R13 R12 K88 ["frameSize"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  LOADN R15 16
  LOADN R16 0
  GETUPVAL R19 11
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K10 ["Y"]
  SUB R18 R19 R20
  SUBK R17 R18 K98 [20]
  CALL R13 4 1
  SETTABLEKS R13 R12 K89 ["framePosition"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K9 ["X"]
  LOADN R16 0
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K10 ["Y"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K90 ["imageSize"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  LOADN R15 5
  LOADN R16 0
  LOADN R17 2
  CALL R13 4 1
  SETTABLEKS R13 R12 K91 ["imagePosition"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K9 ["X"]
  LOADN R16 0
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K10 ["Y"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K92 ["textSize"]
  GETIMPORT R13 K8 [UDim2.new]
  LOADN R14 0
  LOADN R16 5
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K9 ["X"]
  ADD R15 R16 R17
  LOADN R16 0
  LOADN R17 2
  CALL R13 4 1
  SETTABLEKS R13 R12 K93 ["textPosition"]
  GETUPVAL R14 4
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  JUMPIF R4 [+2]
  LOADNIL R13
  JUMP [+1]
  LOADK R13 K99 ["#"]
  SETTABLEKS R13 R12 K94 ["text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["LimitedLabel"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["view"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["equipped"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["assetInfo"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["openDetails"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["assetCardSizeX"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["icons/status/item/limited"]
  JUMPIFNOT R6 [+7]
  GETTABLEKS R8 R6 K7 ["ImageRectSize"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["ImagesResolutionScale"]
  DIV R7 R8 R9
  JUMPIF R7 [+5]
  GETIMPORT R7 K11 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K13 ["Consumer"]
  DUPTABLE R10 K15 [{"render"}]
  NEWCLOSURE R11 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R7
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE UPVAL U8
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  SETTABLEKS R11 R10 K14 ["render"]
  CALL R8 2 -1
  RETURN R8 -1

PROTO_5:
  GETTABLEKS R3 R1 K0 ["assetInfo"]
  GETTABLEKS R2 R3 K1 ["assetId"]
  DUPTABLE R3 K5 [{"view", "equipped", "locale"}]
  GETTABLEKS R4 R0 K2 ["view"]
  SETTABLEKS R4 R3 K2 ["view"]
  GETTABLEKS R6 R0 K6 ["equippedAssets"]
  GETTABLE R5 R6 R2
  JUMPIFEQKB R5 TRUE [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["equipped"]
  GETTABLEKS R4 R0 K4 ["locale"]
  SETTABLEKS R4 R3 K4 ["locale"]
  RETURN R3 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADB R3 1
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"openDetails"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["openDetails"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["UIBlox"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K11 ["App"]
  GETTABLEKS R4 R5 K12 ["ImageSet"]
  GETTABLEKS R3 R4 K13 ["Images"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K15 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R0 K16 ["Workspace"]
  GETTABLEKS R9 R10 K9 ["Packages"]
  GETTABLEKS R8 R9 K17 ["Style"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K18 ["AppFonts"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R8 R1 K19 ["Colors"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R9 R1 K20 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R1 K21 ["Actions"]
  GETTABLEKS R10 R11 K22 ["SetDetailsInformation"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R11 R1 K23 ["getSelectionImageObjectRegular"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R13 R1 K24 ["Components"]
  GETTABLEKS R12 R13 K25 ["InspectAndBuyContext"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R1 K24 ["Components"]
  GETTABLEKS R13 R14 K26 ["LimitedLabel"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R14 R1 K27 ["UtilityFunctions"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R16 R1 K28 ["Flags"]
  GETTABLEKS R15 R16 K29 ["GetFFlagDisplayCollectiblesIcon"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R17 R1 K28 ["Flags"]
  GETTABLEKS R16 R17 K30 ["GetFFlagIBEnableCollectiblesSystemSupport"]
  CALL R15 1 1
  GETTABLEKS R16 R4 K31 ["Component"]
  LOADK R18 K32 ["AssetCard"]
  NAMECALL R16 R16 K33 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K34 [PROTO_0]
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K35 ["init"]
  DUPCLOSURE R17 K36 [PROTO_4]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K37 ["render"]
  GETTABLEKS R17 R5 K38 ["UNSTABLE_connect2"]
  DUPCLOSURE R18 K39 [PROTO_5]
  DUPCLOSURE R19 K40 [PROTO_7]
  CAPTURE VAL R9
  CALL R17 2 1
  MOVE R18 R16
  CALL R17 1 -1
  RETURN R17 -1
