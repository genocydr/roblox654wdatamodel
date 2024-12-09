PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["player"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Utils"]
  GETTABLEKS R2 R3 K3 ["isPlayerVerified"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["createElement"]
  LOADK R4 K5 ["TextButton"]
  DUPTABLE R5 K11 [{"BackgroundTransparency", "Text", "Size", "LayoutOrder", "Selectable"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K6 ["BackgroundTransparency"]
  LOADK R6 K12 [""]
  SETTABLEKS R6 R5 K7 ["Text"]
  GETIMPORT R6 K15 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["DropDownHeaderSizeY"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K8 ["Size"]
  LOADN R6 0
  SETTABLEKS R6 R5 K9 ["LayoutOrder"]
  LOADB R6 0
  SETTABLEKS R6 R5 K10 ["Selectable"]
  DUPTABLE R6 K20 [{"Background", "AvatarImage", "Divider"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K21 ["ImageLabel"]
  DUPTABLE R9 K26 [{"BackgroundTransparency", "Image", "ImageTransparency", "Size", "Position", "AnchorPoint"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K6 ["BackgroundTransparency"]
  LOADK R10 K27 ["rbxasset://textures/ui/PlayerList/NewAvatarBackground.png"]
  SETTABLEKS R10 R9 K22 ["Image"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K28 ["transparency"]
  SETTABLEKS R10 R9 K23 ["ImageTransparency"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K29 ["DropDownHeaderBackgroundSize"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K24 ["Position"]
  GETIMPORT R10 K31 [Vector2.new]
  LOADN R11 0
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["AnchorPoint"]
  DUPTABLE R10 K33 [{"TextContainerFrame"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K4 ["createElement"]
  LOADK R12 K34 ["Frame"]
  DUPTABLE R13 K36 [{"Visible", "BackgroundTransparency", "Size", "Position"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["props"]
  GETTABLEKS R14 R15 K37 ["contentVisible"]
  SETTABLEKS R14 R13 K35 ["Visible"]
  LOADN R14 1
  SETTABLEKS R14 R13 K6 ["BackgroundTransparency"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 1
  LOADN R16 132
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 0
  LOADN R16 107
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K24 ["Position"]
  DUPTABLE R14 K41 [{"Layout", "DisplayName", "PlayerName"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K4 ["createElement"]
  LOADK R16 K42 ["UIListLayout"]
  DUPTABLE R17 K47 [{"SortOrder", "FillDirection", "Padding", "VerticalAlignment"}]
  GETIMPORT R18 K49 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K43 ["SortOrder"]
  GETIMPORT R18 K51 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K44 ["FillDirection"]
  GETIMPORT R18 K53 [UDim.new]
  LOADN R19 0
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K45 ["Padding"]
  GETIMPORT R18 K55 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K46 ["VerticalAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["Layout"]
  JUMPIFNOT R2 [+58]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K64 [{"fontStyle", "colorStyle", "fluidSizing", "emoji", "maxSize", "LayoutOrder", "Text", "TextXAlignment", "TextTruncate", "BackgroundTransparency", "TextScaled"}]
  GETTABLEKS R19 R0 K65 ["Font"]
  GETTABLEKS R18 R19 K66 ["Header2"]
  SETTABLEKS R18 R17 K56 ["fontStyle"]
  GETTABLEKS R19 R0 K67 ["Theme"]
  GETTABLEKS R18 R19 K68 ["TextEmphasis"]
  SETTABLEKS R18 R17 K57 ["colorStyle"]
  LOADB R18 0
  SETTABLEKS R18 R17 K58 ["fluidSizing"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K69 ["Verified"]
  SETTABLEKS R18 R17 K59 ["emoji"]
  GETIMPORT R18 K31 [Vector2.new]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K71 ["PlayerDropDownSizeXMobile"]
  SUBK R19 R20 K70 [124]
  LOADN R20 22
  CALL R18 2 1
  SETTABLEKS R18 R17 K60 ["maxSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K9 ["LayoutOrder"]
  GETTABLEKS R18 R1 K39 ["DisplayName"]
  SETTABLEKS R18 R17 K7 ["Text"]
  GETIMPORT R18 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K61 ["TextXAlignment"]
  GETIMPORT R18 K75 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K62 ["TextTruncate"]
  LOADN R18 1
  SETTABLEKS R18 R17 K6 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K63 ["TextScaled"]
  CALL R15 2 1
  JUMPIF R15 [+108]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K4 ["createElement"]
  LOADK R16 K76 ["TextLabel"]
  DUPTABLE R17 K80 [{"LayoutOrder", "Size", "Text", "Font", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextTruncate", "BackgroundTransparency", "TextScaled"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K9 ["LayoutOrder"]
  GETIMPORT R18 K15 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  GETTABLEKS R18 R1 K39 ["DisplayName"]
  SETTABLEKS R18 R17 K7 ["Text"]
  GETTABLEKS R20 R0 K65 ["Font"]
  GETTABLEKS R19 R20 K66 ["Header2"]
  GETTABLEKS R18 R19 K65 ["Font"]
  SETTABLEKS R18 R17 K65 ["Font"]
  GETTABLEKS R20 R0 K65 ["Font"]
  GETTABLEKS R19 R20 K81 ["BaseSize"]
  GETTABLEKS R22 R0 K65 ["Font"]
  GETTABLEKS R21 R22 K66 ["Header2"]
  GETTABLEKS R20 R21 K82 ["RelativeSize"]
  MUL R18 R19 R20
  SETTABLEKS R18 R17 K77 ["TextSize"]
  GETTABLEKS R20 R0 K67 ["Theme"]
  GETTABLEKS R19 R20 K68 ["TextEmphasis"]
  GETTABLEKS R18 R19 K83 ["Color"]
  SETTABLEKS R18 R17 K78 ["TextColor3"]
  GETTABLEKS R20 R0 K67 ["Theme"]
  GETTABLEKS R19 R20 K68 ["TextEmphasis"]
  GETTABLEKS R18 R19 K84 ["Transparency"]
  SETTABLEKS R18 R17 K79 ["TextTransparency"]
  GETIMPORT R18 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K61 ["TextXAlignment"]
  GETIMPORT R18 K75 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K62 ["TextTruncate"]
  LOADN R18 1
  SETTABLEKS R18 R17 K6 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K63 ["TextScaled"]
  DUPTABLE R18 K86 [{"SizeConstraint"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K4 ["createElement"]
  LOADK R20 K87 ["UITextSizeConstraint"]
  DUPTABLE R21 K90 [{"MaxTextSize", "MinTextSize"}]
  GETTABLEKS R24 R0 K65 ["Font"]
  GETTABLEKS R23 R24 K81 ["BaseSize"]
  GETTABLEKS R26 R0 K65 ["Font"]
  GETTABLEKS R25 R26 K66 ["Header2"]
  GETTABLEKS R24 R25 K82 ["RelativeSize"]
  MUL R22 R23 R24
  SETTABLEKS R22 R21 K88 ["MaxTextSize"]
  GETTABLEKS R24 R0 K65 ["Font"]
  GETTABLEKS R23 R24 K81 ["BaseSize"]
  GETTABLEKS R26 R0 K65 ["Font"]
  GETTABLEKS R25 R26 K91 ["Footer"]
  GETTABLEKS R24 R25 K82 ["RelativeSize"]
  MUL R22 R23 R24
  SETTABLEKS R22 R21 K89 ["MinTextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K85 ["SizeConstraint"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K39 ["DisplayName"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K4 ["createElement"]
  LOADK R16 K76 ["TextLabel"]
  DUPTABLE R17 K80 [{"LayoutOrder", "Size", "Text", "Font", "TextSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextTruncate", "BackgroundTransparency", "TextScaled"}]
  LOADN R18 2
  SETTABLEKS R18 R17 K9 ["LayoutOrder"]
  GETIMPORT R18 K15 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 22
  CALL R18 4 1
  SETTABLEKS R18 R17 K8 ["Size"]
  LOADK R19 K92 ["@"]
  GETTABLEKS R20 R1 K93 ["Name"]
  CONCAT R18 R19 R20
  SETTABLEKS R18 R17 K7 ["Text"]
  GETTABLEKS R20 R0 K65 ["Font"]
  GETTABLEKS R19 R20 K94 ["CaptionHeader"]
  GETTABLEKS R18 R19 K65 ["Font"]
  SETTABLEKS R18 R17 K65 ["Font"]
  GETTABLEKS R20 R0 K65 ["Font"]
  GETTABLEKS R19 R20 K81 ["BaseSize"]
  GETTABLEKS R22 R0 K65 ["Font"]
  GETTABLEKS R21 R22 K94 ["CaptionHeader"]
  GETTABLEKS R20 R21 K82 ["RelativeSize"]
  MUL R18 R19 R20
  SETTABLEKS R18 R17 K77 ["TextSize"]
  GETTABLEKS R20 R0 K67 ["Theme"]
  GETTABLEKS R19 R20 K95 ["TextMuted"]
  GETTABLEKS R18 R19 K83 ["Color"]
  SETTABLEKS R18 R17 K78 ["TextColor3"]
  GETTABLEKS R20 R0 K67 ["Theme"]
  GETTABLEKS R19 R20 K95 ["TextMuted"]
  GETTABLEKS R18 R19 K84 ["Transparency"]
  SETTABLEKS R18 R17 K79 ["TextTransparency"]
  GETIMPORT R18 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K61 ["TextXAlignment"]
  GETIMPORT R18 K75 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R18 R17 K62 ["TextTruncate"]
  LOADN R18 1
  SETTABLEKS R18 R17 K6 ["BackgroundTransparency"]
  LOADB R18 1
  SETTABLEKS R18 R17 K63 ["TextScaled"]
  DUPTABLE R18 K86 [{"SizeConstraint"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K4 ["createElement"]
  LOADK R20 K87 ["UITextSizeConstraint"]
  DUPTABLE R21 K90 [{"MaxTextSize", "MinTextSize"}]
  GETTABLEKS R24 R0 K65 ["Font"]
  GETTABLEKS R23 R24 K81 ["BaseSize"]
  GETTABLEKS R26 R0 K65 ["Font"]
  GETTABLEKS R25 R26 K94 ["CaptionHeader"]
  GETTABLEKS R24 R25 K82 ["RelativeSize"]
  MUL R22 R23 R24
  SETTABLEKS R22 R21 K88 ["MaxTextSize"]
  GETTABLEKS R24 R0 K65 ["Font"]
  GETTABLEKS R23 R24 K81 ["BaseSize"]
  GETTABLEKS R26 R0 K65 ["Font"]
  GETTABLEKS R25 R26 K91 ["Footer"]
  GETTABLEKS R24 R25 K82 ["RelativeSize"]
  MUL R22 R23 R24
  SETTABLEKS R22 R21 K89 ["MinTextSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K85 ["SizeConstraint"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K40 ["PlayerName"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K32 ["TextContainerFrame"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["Background"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K21 ["ImageLabel"]
  DUPTABLE R9 K97 [{"Position", "Size", "AnchorPoint", "BackgroundTransparency", "ImageTransparency", "Image", "ZIndex"}]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 56
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K24 ["Position"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K16 ["DropDownHeaderSizeY"]
  LOADN R13 0
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K16 ["DropDownHeaderSizeY"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  GETIMPORT R10 K31 [Vector2.new]
  LOADK R11 K98 [0.5]
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["AnchorPoint"]
  LOADN R10 1
  SETTABLEKS R10 R9 K6 ["BackgroundTransparency"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K28 ["transparency"]
  SETTABLEKS R10 R9 K23 ["ImageTransparency"]
  LOADK R10 K99 ["rbxthumb://type=AvatarHeadShot&id=%d&w=150&h=150"]
  GETTABLEKS R12 R1 K100 ["UserId"]
  NAMECALL R10 R10 K101 ["format"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["Image"]
  LOADN R10 2
  SETTABLEKS R10 R9 K96 ["ZIndex"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["AvatarImage"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K102 ["lastButton"]
  NOT R7 R8
  JUMPIFNOT R7 [+60]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  LOADK R8 K34 ["Frame"]
  DUPTABLE R9 K105 [{"Size", "Position", "AnchorPoint", "Visible", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 1
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K24 ["Position"]
  GETIMPORT R10 K31 [Vector2.new]
  LOADN R11 0
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["AnchorPoint"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["props"]
  GETTABLEKS R10 R11 K37 ["contentVisible"]
  SETTABLEKS R10 R9 K35 ["Visible"]
  GETTABLEKS R12 R0 K67 ["Theme"]
  GETTABLEKS R11 R12 K19 ["Divider"]
  GETTABLEKS R10 R11 K84 ["Transparency"]
  SETTABLEKS R10 R9 K6 ["BackgroundTransparency"]
  GETTABLEKS R12 R0 K67 ["Theme"]
  GETTABLEKS R11 R12 K19 ["Divider"]
  GETTABLEKS R10 R11 K83 ["Color"]
  SETTABLEKS R10 R9 K103 ["BackgroundColor3"]
  LOADN R10 0
  SETTABLEKS R10 R9 K104 ["BorderSizePixel"]
  LOADN R10 3
  SETTABLEKS R10 R9 K96 ["ZIndex"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["Divider"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Workspace"]
  GETTABLEKS R6 R7 K6 ["Packages"]
  GETTABLEKS R5 R6 K11 ["UserLib"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETIMPORT R8 K15 [script]
  GETTABLEKS R7 R8 K16 ["Parent"]
  GETTABLEKS R6 R7 K16 ["Parent"]
  GETTABLEKS R7 R6 K17 ["Connection"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K18 ["LayoutValues"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K19 ["WithLayoutValues"]
  GETTABLEKS R12 R3 K20 ["Core"]
  GETTABLEKS R11 R12 K21 ["Text"]
  GETTABLEKS R10 R11 K22 ["EmojiTextLabel"]
  GETTABLEKS R14 R3 K23 ["App"]
  GETTABLEKS R13 R14 K24 ["Emoji"]
  GETTABLEKS R12 R13 K25 ["Enum"]
  GETTABLEKS R11 R12 K24 ["Emoji"]
  GETTABLEKS R12 R1 K26 ["PureComponent"]
  LOADK R14 K27 ["DropDownPlayerHeader"]
  NAMECALL R12 R12 K28 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R2 K29 ["strictInterface"]
  DUPTABLE R14 K33 [{"player", "transparency", "contentVisible"}]
  GETTABLEKS R15 R2 K34 ["instanceIsA"]
  LOADK R16 K35 ["Player"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["player"]
  GETTABLEKS R15 R2 K36 ["any"]
  SETTABLEKS R15 R14 K31 ["transparency"]
  GETTABLEKS R15 R2 K37 ["boolean"]
  SETTABLEKS R15 R14 K32 ["contentVisible"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K38 ["validateProps"]
  DUPCLOSURE R13 K39 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K40 ["render"]
  RETURN R12 1
