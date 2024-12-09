PROTO_0:
  NEWTABLE R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["UIListLayout"]
  DUPTABLE R4 K5 [{"SortOrder", "FillDirection", "VerticalAlignment"}]
  GETIMPORT R5 K8 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R5 R4 K2 ["SortOrder"]
  GETIMPORT R5 K10 [Enum.FillDirection.Horizontal]
  SETTABLEKS R5 R4 K3 ["FillDirection"]
  GETIMPORT R5 K12 [Enum.VerticalAlignment.Center]
  SETTABLEKS R5 R4 K4 ["VerticalAlignment"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K13 ["layout"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K14 ["props"]
  GETTABLEKS R2 R3 K15 ["entrySize"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K16 ["TextLabel"]
  DUPTABLE R5 K26 [{"LayoutOrder", "Size", "Text", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "TextTransparency", "TextColor3"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETIMPORT R6 K29 [UDim2.new]
  LOADN R7 0
  MOVE R8 R2
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K17 ["Size"]
  GETUPVAL R6 2
  LOADK R8 K30 ["InGame.PlayerList.Players"]
  NAMECALL R6 R6 K31 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["Text"]
  LOADN R6 1
  SETTABLEKS R6 R5 K19 ["BackgroundTransparency"]
  GETIMPORT R6 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R6 R5 K20 ["TextXAlignment"]
  GETIMPORT R6 K34 [Enum.TextYAlignment.Center]
  SETTABLEKS R6 R5 K21 ["TextYAlignment"]
  GETTABLEKS R8 R0 K22 ["Font"]
  GETTABLEKS R7 R8 K35 ["Footer"]
  GETTABLEKS R6 R7 K22 ["Font"]
  SETTABLEKS R6 R5 K22 ["Font"]
  GETTABLEKS R8 R0 K22 ["Font"]
  GETTABLEKS R7 R8 K36 ["BaseSize"]
  GETTABLEKS R10 R0 K22 ["Font"]
  GETTABLEKS R9 R10 K35 ["Footer"]
  GETTABLEKS R8 R9 K37 ["RelativeSize"]
  MUL R6 R7 R8
  SETTABLEKS R6 R5 K23 ["TextSize"]
  GETTABLEKS R8 R0 K38 ["Theme"]
  GETTABLEKS R7 R8 K39 ["TextMuted"]
  GETTABLEKS R6 R7 K40 ["Transparency"]
  SETTABLEKS R6 R5 K24 ["TextTransparency"]
  GETTABLEKS R8 R0 K38 ["Theme"]
  GETTABLEKS R7 R8 K39 ["TextMuted"]
  GETTABLEKS R6 R7 K41 ["Color"]
  SETTABLEKS R6 R5 K25 ["TextColor3"]
  DUPTABLE R6 K43 [{"Padding"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K44 ["UIPadding"]
  DUPTABLE R9 K46 [{"PaddingLeft"}]
  GETIMPORT R10 K48 [UDim.new]
  LOADN R11 0
  LOADN R12 15
  CALL R10 2 1
  SETTABLEKS R10 R9 K45 ["PaddingLeft"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K42 ["Padding"]
  CALL R3 3 1
  SETTABLEKS R3 R1 K49 ["playersHeader"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K50 ["MaxLeaderstats"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K14 ["props"]
  GETTABLEKS R4 R5 K51 ["isSmallTouchDevice"]
  JUMPIFNOT R4 [+3]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K52 ["MaxLeaderstatsSmallScreen"]
  GETIMPORT R4 K54 [ipairs]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["props"]
  GETTABLEKS R5 R7 K55 ["gameStats"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  JUMPIFLT R3 R7 [+89]
  GETUPVAL R9 4
  GETUPVAL R11 5
  GETTABLEKS R12 R8 K56 ["name"]
  NAMECALL R9 R9 K57 ["TranslateGameText"]
  CALL R9 3 1
  LOADK R11 K58 ["stat_"]
  GETTABLEKS R12 R8 K56 ["name"]
  CONCAT R10 R11 R12
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K16 ["TextLabel"]
  DUPTABLE R13 K60 [{"LayoutOrder", "Size", "Text", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "TextTransparency", "TextColor3", "TextTruncate"}]
  ADDK R14 R7 K61 [1]
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K62 ["StatEntrySizeX"]
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Size"]
  SETTABLEKS R9 R13 K18 ["Text"]
  LOADN R14 1
  SETTABLEKS R14 R13 K19 ["BackgroundTransparency"]
  GETIMPORT R14 K63 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K20 ["TextXAlignment"]
  GETIMPORT R14 K34 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K21 ["TextYAlignment"]
  GETTABLEKS R16 R0 K22 ["Font"]
  GETTABLEKS R15 R16 K35 ["Footer"]
  GETTABLEKS R14 R15 K22 ["Font"]
  SETTABLEKS R14 R13 K22 ["Font"]
  GETTABLEKS R16 R0 K22 ["Font"]
  GETTABLEKS R15 R16 K36 ["BaseSize"]
  GETTABLEKS R18 R0 K22 ["Font"]
  GETTABLEKS R17 R18 K35 ["Footer"]
  GETTABLEKS R16 R17 K37 ["RelativeSize"]
  MUL R14 R15 R16
  SETTABLEKS R14 R13 K23 ["TextSize"]
  GETTABLEKS R16 R0 K38 ["Theme"]
  GETTABLEKS R15 R16 K39 ["TextMuted"]
  GETTABLEKS R14 R15 K40 ["Transparency"]
  SETTABLEKS R14 R13 K24 ["TextTransparency"]
  GETTABLEKS R16 R0 K38 ["Theme"]
  GETTABLEKS R15 R16 K39 ["TextMuted"]
  GETTABLEKS R14 R15 K41 ["Color"]
  SETTABLEKS R14 R13 K25 ["TextColor3"]
  GETIMPORT R14 K65 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K59 ["TextTruncate"]
  CALL R11 2 1
  SETTABLE R11 R1 R10
  FORGLOOP R4 2 [inext] [-89]
  GETUPVAL R5 6
  CALL R5 0 1
  JUMPIFNOT R5 [+7]
  GETTABLEKS R6 R0 K38 ["Theme"]
  GETTABLEKS R5 R6 K66 ["BackgroundUIContrast"]
  GETTABLEKS R4 R5 K41 ["Color"]
  JUMP [+6]
  GETTABLEKS R6 R0 K38 ["Theme"]
  GETTABLEKS R5 R6 K67 ["BackgroundContrast"]
  GETTABLEKS R4 R5 K41 ["Color"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K68 ["Frame"]
  DUPTABLE R7 K71 [{"Size", "LayoutOrder", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K14 ["props"]
  GETTABLEKS R8 R9 K17 ["Size"]
  SETTABLEKS R8 R7 K17 ["Size"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K14 ["props"]
  GETTABLEKS R8 R9 K7 ["LayoutOrder"]
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K14 ["props"]
  GETTABLEKS R8 R9 K72 ["backgroundTransparency"]
  SETTABLEKS R8 R7 K19 ["BackgroundTransparency"]
  SETTABLEKS R4 R7 K69 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K70 ["BorderSizePixel"]
  DUPTABLE R8 K75 [{"Divider", "ChildrenFrame"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K68 ["Frame"]
  DUPTABLE R11 K79 [{"Visible", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K14 ["props"]
  GETTABLEKS R12 R13 K80 ["contentsVisible"]
  SETTABLEKS R12 R11 K76 ["Visible"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 1
  CALL R12 4 1
  SETTABLEKS R12 R11 K17 ["Size"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K77 ["Position"]
  GETIMPORT R12 K82 [Vector2.new]
  LOADN R13 0
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K78 ["AnchorPoint"]
  GETTABLEKS R14 R0 K38 ["Theme"]
  GETTABLEKS R13 R14 K73 ["Divider"]
  GETTABLEKS R12 R13 K40 ["Transparency"]
  SETTABLEKS R12 R11 K19 ["BackgroundTransparency"]
  GETTABLEKS R14 R0 K38 ["Theme"]
  GETTABLEKS R13 R14 K73 ["Divider"]
  GETTABLEKS R12 R13 K41 ["Color"]
  SETTABLEKS R12 R11 K69 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K70 ["BorderSizePixel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K73 ["Divider"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K68 ["Frame"]
  DUPTABLE R11 K83 [{"Visible", "BackgroundTransparency", "Position", "Size"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K14 ["props"]
  GETTABLEKS R12 R13 K80 ["contentsVisible"]
  SETTABLEKS R12 R11 K76 ["Visible"]
  LOADN R12 1
  SETTABLEKS R12 R11 K19 ["BackgroundTransparency"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 254
  CALL R12 4 1
  SETTABLEKS R12 R11 K77 ["Position"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K17 ["Size"]
  MOVE R12 R1
  CALL R9 3 1
  SETTABLEKS R9 R8 K74 ["ChildrenFrame"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  DUPTABLE R1 K1 [{"isSmallTouchDevice"}]
  GETTABLEKS R3 R0 K2 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["isSmallTouchDevice"]
  SETTABLEKS R2 R1 K0 ["isSmallTouchDevice"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K7 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["withStyle"]
  GETIMPORT R9 K15 [script]
  GETTABLEKS R8 R9 K16 ["Parent"]
  GETTABLEKS R7 R8 K16 ["Parent"]
  GETTABLEKS R8 R7 K17 ["Connection"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R8 K18 ["LayoutValues"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K19 ["WithLayoutValues"]
  LOADK R13 K20 ["RobloxGui"]
  NAMECALL R11 R1 K21 ["WaitForChild"]
  CALL R11 2 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R11 K22 ["Modules"]
  GETTABLEKS R13 R14 K23 ["GameTranslator"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R11 K22 ["Modules"]
  GETTABLEKS R14 R15 K24 ["RobloxTranslator"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R11 K22 ["Modules"]
  GETTABLEKS R16 R17 K25 ["Chrome"]
  GETTABLEKS R15 R16 K26 ["Enabled"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K27 ["PureComponent"]
  LOADK R17 K28 ["TitleBar"]
  NAMECALL R15 R15 K29 ["extend"]
  CALL R15 2 1
  GETTABLEKS R16 R4 K30 ["strictInterface"]
  DUPTABLE R17 K38 [{"Size", "LayoutOrder", "entrySize", "contentsVisible", "backgroundTransparency", "isSmallTouchDevice", "gameStats"}]
  GETTABLEKS R18 R4 K39 ["UDim2"]
  SETTABLEKS R18 R17 K31 ["Size"]
  GETTABLEKS R18 R4 K40 ["integer"]
  SETTABLEKS R18 R17 K32 ["LayoutOrder"]
  GETTABLEKS R18 R4 K40 ["integer"]
  SETTABLEKS R18 R17 K33 ["entrySize"]
  GETTABLEKS R18 R4 K41 ["boolean"]
  SETTABLEKS R18 R17 K34 ["contentsVisible"]
  GETTABLEKS R18 R4 K42 ["union"]
  GETTABLEKS R19 R4 K43 ["number"]
  GETTABLEKS R20 R4 K44 ["table"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K35 ["backgroundTransparency"]
  GETTABLEKS R18 R4 K41 ["boolean"]
  SETTABLEKS R18 R17 K36 ["isSmallTouchDevice"]
  GETTABLEKS R18 R4 K45 ["array"]
  GETTABLEKS R19 R4 K30 ["strictInterface"]
  DUPTABLE R20 K51 [{"name", "text", "addId", "isPrimary", "priority"}]
  GETTABLEKS R21 R4 K52 ["string"]
  SETTABLEKS R21 R20 K46 ["name"]
  GETTABLEKS R21 R4 K52 ["string"]
  SETTABLEKS R21 R20 K47 ["text"]
  GETTABLEKS R21 R4 K40 ["integer"]
  SETTABLEKS R21 R20 K48 ["addId"]
  GETTABLEKS R21 R4 K41 ["boolean"]
  SETTABLEKS R21 R20 K49 ["isPrimary"]
  GETTABLEKS R21 R4 K43 ["number"]
  SETTABLEKS R21 R20 K50 ["priority"]
  CALL R19 1 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K37 ["gameStats"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K53 ["validateProps"]
  DUPCLOSURE R16 K54 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K55 ["render"]
  DUPCLOSURE R16 K56 [PROTO_3]
  GETTABLEKS R17 R3 K57 ["UNSTABLE_connect2"]
  MOVE R18 R16
  LOADNIL R19
  CALL R17 2 1
  MOVE R18 R15
  CALL R17 1 -1
  RETURN R17 -1
