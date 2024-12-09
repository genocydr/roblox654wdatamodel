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
  SETTABLEKS R2 R1 K1 ["UIListLayout"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K13 ["TextLabel"]
  DUPTABLE R4 K22 [{"LayoutOrder", "Size", "Text", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "TextColor3"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["LayoutOrder"]
  GETIMPORT R5 K25 [UDim2.new]
  LOADN R6 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K26 ["PlayerNameSizeXMobile"]
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K14 ["Size"]
  GETUPVAL R5 2
  LOADK R7 K27 ["InGame.PlayerList.Players"]
  NAMECALL R5 R5 K28 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K15 ["Text"]
  LOADN R5 1
  SETTABLEKS R5 R4 K16 ["BackgroundTransparency"]
  GETIMPORT R5 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R5 R4 K17 ["TextXAlignment"]
  GETIMPORT R5 K31 [Enum.TextYAlignment.Center]
  SETTABLEKS R5 R4 K18 ["TextYAlignment"]
  GETTABLEKS R7 R0 K19 ["Font"]
  GETTABLEKS R6 R7 K32 ["Footer"]
  GETTABLEKS R5 R6 K19 ["Font"]
  SETTABLEKS R5 R4 K19 ["Font"]
  GETTABLEKS R7 R0 K19 ["Font"]
  GETTABLEKS R6 R7 K33 ["BaseSize"]
  GETTABLEKS R9 R0 K19 ["Font"]
  GETTABLEKS R8 R9 K32 ["Footer"]
  GETTABLEKS R7 R8 K34 ["RelativeSize"]
  MUL R5 R6 R7
  SETTABLEKS R5 R4 K20 ["TextSize"]
  GETTABLEKS R7 R0 K35 ["Theme"]
  GETTABLEKS R6 R7 K36 ["TextMuted"]
  GETTABLEKS R5 R6 K37 ["Color"]
  SETTABLEKS R5 R4 K21 ["TextColor3"]
  DUPTABLE R5 K39 [{"Padding"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K40 ["UIPadding"]
  DUPTABLE R8 K42 [{"PaddingLeft"}]
  GETIMPORT R9 K44 [UDim.new]
  LOADN R10 0
  LOADN R11 14
  CALL R9 2 1
  SETTABLEKS R9 R8 K41 ["PaddingLeft"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K38 ["Padding"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K45 ["PlayersHeader"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K46 ["MaxLeaderstats"]
  GETIMPORT R3 K48 [ipairs]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K49 ["props"]
  GETTABLEKS R4 R6 K50 ["gameStats"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  JUMPIFLT R2 R6 [+83]
  GETUPVAL R8 4
  GETUPVAL R10 5
  GETTABLEKS R11 R7 K51 ["name"]
  NAMECALL R8 R8 K52 ["TranslateGameText"]
  CALL R8 3 1
  LOADK R10 K53 ["Stat_"]
  GETTABLEKS R11 R7 K51 ["name"]
  CONCAT R9 R10 R11
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  LOADK R11 K13 ["TextLabel"]
  DUPTABLE R12 K56 [{"LayoutOrder", "Size", "Text", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Font", "TextSize", "TextTransparency", "TextColor3", "TextTruncate"}]
  SETTABLEKS R6 R12 K7 ["LayoutOrder"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K57 ["StatEntrySizeX"]
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K14 ["Size"]
  SETTABLEKS R8 R12 K15 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K16 ["BackgroundTransparency"]
  GETIMPORT R13 K58 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K17 ["TextXAlignment"]
  GETIMPORT R13 K31 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K18 ["TextYAlignment"]
  GETTABLEKS R15 R0 K19 ["Font"]
  GETTABLEKS R14 R15 K32 ["Footer"]
  GETTABLEKS R13 R14 K19 ["Font"]
  SETTABLEKS R13 R12 K19 ["Font"]
  GETTABLEKS R15 R0 K19 ["Font"]
  GETTABLEKS R14 R15 K33 ["BaseSize"]
  GETTABLEKS R17 R0 K19 ["Font"]
  GETTABLEKS R16 R17 K32 ["Footer"]
  GETTABLEKS R15 R16 K34 ["RelativeSize"]
  MUL R13 R14 R15
  SETTABLEKS R13 R12 K20 ["TextSize"]
  LOADN R13 0
  SETTABLEKS R13 R12 K54 ["TextTransparency"]
  GETIMPORT R13 K61 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 255
  LOADN R16 255
  CALL R13 3 1
  SETTABLEKS R13 R12 K21 ["TextColor3"]
  GETIMPORT R13 K63 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R13 R12 K55 ["TextTruncate"]
  CALL R10 2 1
  SETTABLE R10 R1 R9
  FORGLOOP R3 2 [inext] [-83]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K64 ["Frame"]
  DUPTABLE R5 K68 [{"Size", "Position", "LayoutOrder", "Visible", "BackgroundTransparency", "BorderSizePixel"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["props"]
  GETTABLEKS R6 R7 K14 ["Size"]
  SETTABLEKS R6 R5 K14 ["Size"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["props"]
  GETTABLEKS R6 R7 K65 ["Position"]
  SETTABLEKS R6 R5 K65 ["Position"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["props"]
  GETTABLEKS R6 R7 K7 ["LayoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K49 ["props"]
  GETTABLEKS R6 R7 K69 ["contentsVisible"]
  SETTABLEKS R6 R5 K66 ["Visible"]
  LOADN R6 1
  SETTABLEKS R6 R5 K16 ["BackgroundTransparency"]
  LOADN R6 0
  SETTABLEKS R6 R5 K67 ["BorderSizePixel"]
  MOVE R6 R1
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
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

PROTO_2:
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
  GETTABLEKS R14 R2 K25 ["PureComponent"]
  LOADK R16 K26 ["TitleBar"]
  NAMECALL R14 R14 K27 ["extend"]
  CALL R14 2 1
  GETTABLEKS R15 R4 K28 ["strictInterface"]
  DUPTABLE R16 K36 [{"Size", "Position", "LayoutOrder", "entrySize", "contentsVisible", "isSmallTouchDevice", "gameStats"}]
  GETTABLEKS R17 R4 K37 ["UDim2"]
  SETTABLEKS R17 R16 K29 ["Size"]
  GETTABLEKS R17 R4 K38 ["optional"]
  GETTABLEKS R18 R4 K37 ["UDim2"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K30 ["Position"]
  GETTABLEKS R17 R4 K38 ["optional"]
  GETTABLEKS R18 R4 K39 ["integer"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K31 ["LayoutOrder"]
  GETTABLEKS R17 R4 K39 ["integer"]
  SETTABLEKS R17 R16 K32 ["entrySize"]
  GETTABLEKS R17 R4 K40 ["boolean"]
  SETTABLEKS R17 R16 K33 ["contentsVisible"]
  GETTABLEKS R17 R4 K40 ["boolean"]
  SETTABLEKS R17 R16 K34 ["isSmallTouchDevice"]
  GETTABLEKS R17 R4 K41 ["array"]
  GETTABLEKS R18 R4 K28 ["strictInterface"]
  DUPTABLE R19 K47 [{"name", "text", "addId", "isPrimary", "priority"}]
  GETTABLEKS R20 R4 K48 ["string"]
  SETTABLEKS R20 R19 K42 ["name"]
  GETTABLEKS R20 R4 K48 ["string"]
  SETTABLEKS R20 R19 K43 ["text"]
  GETTABLEKS R20 R4 K39 ["integer"]
  SETTABLEKS R20 R19 K44 ["addId"]
  GETTABLEKS R20 R4 K40 ["boolean"]
  SETTABLEKS R20 R19 K45 ["isPrimary"]
  GETTABLEKS R20 R4 K49 ["number"]
  SETTABLEKS R20 R19 K46 ["priority"]
  CALL R18 1 -1
  CALL R17 -1 1
  SETTABLEKS R17 R16 K35 ["gameStats"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K50 ["validateProps"]
  DUPCLOSURE R15 K51 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K52 ["render"]
  DUPCLOSURE R15 K53 [PROTO_3]
  GETTABLEKS R16 R3 K54 ["connect"]
  MOVE R17 R15
  LOADNIL R18
  CALL R16 2 1
  MOVE R17 R14
  CALL R16 1 -1
  RETURN R16 -1
