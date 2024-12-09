MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETTABLEKS R4 R1 K7 ["Styling"]
  GETTABLEKS R3 R4 K9 ["createStyleSheet"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAddTestModeDropDown"]
  CALL R4 1 1
  CALL R4 0 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["SharedFlags"]
  GETTABLEKS R6 R7 K13 ["getFFlagRibbonDynamicBackground"]
  CALL R5 1 1
  CALL R5 0 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["SharedFlags"]
  GETTABLEKS R7 R8 K14 ["getFFlagRibbonSpinboxStyleUpdate"]
  CALL R6 1 1
  CALL R6 0 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["SharedFlags"]
  GETTABLEKS R8 R9 K15 ["getFFlagRibbonEnableSliderLua"]
  CALL R7 1 1
  CALL R7 0 1
  NEWTABLE R8 0 62
  MOVE R9 R2
  LOADK R10 K16 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R11 K18 [{"Font"}]
  GETIMPORT R12 K21 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K17 ["Font"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K22 [".Role-Surface"]
  DUPTABLE R12 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R13 K26 ["$BackgroundTransparent"]
  SETTABLEKS R13 R12 K23 ["BackgroundTransparency"]
  LOADK R13 K27 ["$BorderNone"]
  SETTABLEKS R13 R12 K24 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K28 [".Role-Surface100"]
  DUPTABLE R13 K30 [{"BackgroundColor3", "BorderSizePixel"}]
  JUMPIFNOT R5 [+2]
  LOADK R14 K31 ["$SemanticColorSurface100"]
  JUMP [+1]
  LOADK R14 K32 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R14 R13 K29 ["BackgroundColor3"]
  LOADK R14 K27 ["$BorderNone"]
  SETTABLEKS R14 R13 K24 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K33 [".Text-Label"]
  DUPTABLE R14 K36 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R15 K37 ["$FontWeight400"]
  SETTABLEKS R15 R14 K17 ["Font"]
  LOADK R15 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R15 R14 K34 ["TextColor3"]
  LOADK R15 K39 ["$FontSize100"]
  SETTABLEKS R15 R14 K35 ["TextSize"]
  LOADK R15 K27 ["$BorderNone"]
  SETTABLEKS R15 R14 K24 ["BorderSizePixel"]
  LOADK R15 K26 ["$BackgroundTransparent"]
  SETTABLEKS R15 R14 K23 ["BackgroundTransparency"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K40 [".Text-Title"]
  DUPTABLE R15 K36 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  LOADK R16 K41 ["$FontWeight700"]
  SETTABLEKS R16 R15 K17 ["Font"]
  LOADK R16 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R16 R15 K34 ["TextColor3"]
  LOADK R16 K39 ["$FontSize100"]
  SETTABLEKS R16 R15 K35 ["TextSize"]
  LOADK R16 K27 ["$BorderNone"]
  SETTABLEKS R16 R15 K24 ["BorderSizePixel"]
  LOADK R16 K26 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K42 [".TooltipBackground"]
  DUPTABLE R16 K30 [{"BackgroundColor3", "BorderSizePixel"}]
  LOADK R17 K43 ["$SemanticColorSurface300Inverse"]
  SETTABLEKS R17 R16 K29 ["BackgroundColor3"]
  LOADK R17 K27 ["$BorderNone"]
  SETTABLEKS R17 R16 K24 ["BorderSizePixel"]
  NEWTABLE R17 0 1
  MOVE R18 R2
  LOADK R19 K44 [">> TextLabel"]
  DUPTABLE R20 K45 [{"TextColor3"}]
  LOADK R21 K46 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R21 R20 K34 ["TextColor3"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K47 [".TooltipTextBounds"]
  DUPTABLE R17 K50 [{"TextWrapped", "TextXAlignment"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K48 ["TextWrapped"]
  GETIMPORT R18 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K49 ["TextXAlignment"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K53 ["::UISizeConstraint"]
  DUPTABLE R21 K55 [{"MaxSize"}]
  GETIMPORT R22 K58 [Vector2.new]
  LOADN R23 200
  LOADK R24 K59 [∞]
  CALL R22 2 1
  SETTABLEKS R22 R21 K54 ["MaxSize"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K60 [".Role-DividerH"]
  DUPTABLE R18 K62 [{"Size"}]
  GETIMPORT R19 K64 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  CALL R19 4 1
  SETTABLEKS R19 R18 K61 ["Size"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K65 ["> Frame"]
  DUPTABLE R22 K66 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  LOADK R23 K67 ["$SemanticColorDivider"]
  SETTABLEKS R23 R22 K29 ["BackgroundColor3"]
  LOADK R23 K68 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R23 R22 K23 ["BackgroundTransparency"]
  LOADK R23 K27 ["$BorderNone"]
  SETTABLEKS R23 R22 K24 ["BorderSizePixel"]
  GETIMPORT R23 K64 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 0
  LOADN R27 1
  CALL R23 4 1
  SETTABLEKS R23 R22 K61 ["Size"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K69 [".Role-DividerV"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 5
  MOVE R21 R2
  LOADK R22 K65 ["> Frame"]
  DUPTABLE R23 K70 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADK R24 K67 ["$SemanticColorDivider"]
  SETTABLEKS R24 R23 K29 ["BackgroundColor3"]
  LOADK R24 K68 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R24 R23 K23 ["BackgroundTransparency"]
  LOADK R24 K27 ["$BorderNone"]
  SETTABLEKS R24 R23 K24 ["BorderSizePixel"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K71 [".Small"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K65 ["> Frame"]
  DUPTABLE R28 K62 [{"Size"}]
  GETIMPORT R29 K64 [UDim2.new]
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  LOADN R33 28
  CALL R29 4 1
  SETTABLEKS R29 R28 K61 ["Size"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K72 [".Medium"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K65 ["> Frame"]
  DUPTABLE R29 K62 [{"Size"}]
  GETIMPORT R30 K64 [UDim2.new]
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  LOADN R34 48
  CALL R30 4 1
  SETTABLEKS R30 R29 K61 ["Size"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K73 [".Large"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K65 ["> Frame"]
  DUPTABLE R30 K62 [{"Size"}]
  GETIMPORT R31 K64 [UDim2.new]
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  LOADN R35 64
  CALL R31 4 1
  SETTABLEKS R31 R30 K61 ["Size"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K74 [".RibbonButton-Divider"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 1
  MOVE R29 R2
  LOADK R30 K75 ["::UIPadding"]
  DUPTABLE R31 K78 [{"PaddingLeft", "PaddingRight"}]
  LOADK R32 K79 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K76 ["PaddingLeft"]
  LOADK R32 K79 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K77 ["PaddingRight"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K80 [".X-RowSpaceBetween"]
  DUPTABLE R20 K62 [{"Size"}]
  GETIMPORT R21 K82 [UDim2.fromScale]
  LOADN R22 1
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K61 ["Size"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K83 ["::UIListLayout"]
  DUPTABLE R24 K89 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  GETIMPORT R25 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R25 R24 K84 ["FillDirection"]
  LOADK R25 K92 ["$GlobalSpace200"]
  SETTABLEKS R25 R24 K85 ["Padding"]
  GETIMPORT R25 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K86 ["SortOrder"]
  GETIMPORT R25 K97 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R25 R24 K87 ["HorizontalFlex"]
  GETIMPORT R25 K99 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R25 R24 K88 ["ItemLineAlignment"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K100 [".X-RowSpace50"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K83 ["::UIListLayout"]
  DUPTABLE R25 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R26 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K84 ["FillDirection"]
  LOADK R26 K102 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K85 ["Padding"]
  GETIMPORT R26 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K86 ["SortOrder"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K103 [".X-RowSpace100"]
  NEWTABLE R22 0 0
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K83 ["::UIListLayout"]
  DUPTABLE R26 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R27 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K84 ["FillDirection"]
  LOADK R27 K104 ["$GlobalSpace100"]
  SETTABLEKS R27 R26 K85 ["Padding"]
  GETIMPORT R27 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K86 ["SortOrder"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K105 [".X-RowSpace150"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K83 ["::UIListLayout"]
  DUPTABLE R27 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R28 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K84 ["FillDirection"]
  LOADK R28 K79 ["$GlobalSpace150"]
  SETTABLEKS R28 R27 K85 ["Padding"]
  GETIMPORT R28 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K86 ["SortOrder"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K106 [".X-RowSpace200"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K83 ["::UIListLayout"]
  DUPTABLE R28 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R29 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K84 ["FillDirection"]
  LOADK R29 K92 ["$GlobalSpace200"]
  SETTABLEKS R29 R28 K85 ["Padding"]
  GETIMPORT R29 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K86 ["SortOrder"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K107 [".X-ColumnSpace25"]
  NEWTABLE R25 0 0
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K83 ["::UIListLayout"]
  DUPTABLE R29 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R30 K109 [Enum.FillDirection.Vertical]
  SETTABLEKS R30 R29 K84 ["FillDirection"]
  LOADK R30 K110 ["$GlobalSpace25"]
  SETTABLEKS R30 R29 K85 ["Padding"]
  GETIMPORT R30 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K86 ["SortOrder"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K111 [".X-ColumnSpace50"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K83 ["::UIListLayout"]
  DUPTABLE R30 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R31 K109 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K84 ["FillDirection"]
  LOADK R31 K102 ["$GlobalSpace50"]
  SETTABLEKS R31 R30 K85 ["Padding"]
  GETIMPORT R31 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K86 ["SortOrder"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K112 [".X-ColumnSpace100"]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 1
  MOVE R13 R2
  LOADK R14 K83 ["::UIListLayout"]
  DUPTABLE R15 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R16 K109 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K84 ["FillDirection"]
  LOADK R16 K104 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K85 ["Padding"]
  GETIMPORT R16 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K86 ["SortOrder"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K113 [".X-PadSpace150 ::UIPadding"]
  DUPTABLE R12 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K76 ["PaddingLeft"]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K77 ["PaddingRight"]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K114 ["PaddingTop"]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K115 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K117 [".X-MezzPaddingLeft ::UIPadding"]
  DUPTABLE R13 K118 [{"PaddingLeft"}]
  LOADK R14 K104 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K76 ["PaddingLeft"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K119 [".X-MezzPaddingRight ::UIPadding"]
  DUPTABLE R14 K120 [{"PaddingRight"}]
  LOADK R15 K104 ["$GlobalSpace100"]
  SETTABLEKS R15 R14 K77 ["PaddingRight"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K121 [".X-RowXS"]
  NEWTABLE R15 0 0
  NEWTABLE R16 0 1
  MOVE R17 R2
  LOADK R18 K83 ["::UIListLayout"]
  DUPTABLE R19 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R20 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K84 ["FillDirection"]
  LOADK R20 K110 ["$GlobalSpace25"]
  SETTABLEKS R20 R19 K85 ["Padding"]
  GETIMPORT R20 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K86 ["SortOrder"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K122 [".Component-RibbonTab"]
  DUPTABLE R16 K123 [{"BackgroundTransparency", "Font", "Size", "TextColor3", "TextSize"}]
  LOADK R17 K26 ["$BackgroundTransparent"]
  SETTABLEKS R17 R16 K23 ["BackgroundTransparency"]
  LOADK R17 K37 ["$FontWeight400"]
  SETTABLEKS R17 R16 K17 ["Font"]
  GETIMPORT R17 K64 [UDim2.new]
  LOADN R18 0
  LOADN R19 80
  LOADN R20 0
  LOADN R21 28
  CALL R17 4 1
  SETTABLEKS R17 R16 K61 ["Size"]
  LOADK R17 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R17 R16 K34 ["TextColor3"]
  LOADK R17 K124 ["$FontSize150"]
  SETTABLEKS R17 R16 K35 ["TextSize"]
  NEWTABLE R17 0 3
  MOVE R18 R2
  LOADK R19 K125 [".State-Selected"]
  DUPTABLE R20 K126 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R21 K127 ["$SemanticColorStatesSelected"]
  SETTABLEKS R21 R20 K29 ["BackgroundColor3"]
  LOADK R21 K128 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R21 R20 K23 ["BackgroundTransparency"]
  LOADK R21 K41 ["$FontWeight700"]
  SETTABLEKS R21 R20 K17 ["Font"]
  LOADK R21 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R21 R20 K34 ["TextColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K130 [".State-Disabled"]
  DUPTABLE R21 K45 [{"TextColor3"}]
  LOADK R22 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R22 R21 K34 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K132 [".State-Default :hover, .State-Disabled :hover"]
  DUPTABLE R22 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K134 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R23 R22 K29 ["BackgroundColor3"]
  LOADK R23 K135 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R23 R22 K23 ["BackgroundTransparency"]
  CALL R20 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K136 [".Component-RibbonTabs"]
  DUPTABLE R17 K144 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  GETIMPORT R18 K58 [Vector2.new]
  LOADK R19 K145 [0.5]
  LOADK R20 K145 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K137 ["AnchorPoint"]
  GETIMPORT R18 K147 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K138 ["AutomaticCanvasSize"]
  GETIMPORT R18 K147 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K139 ["AutomaticSize"]
  GETIMPORT R18 K82 [UDim2.fromScale]
  LOADK R19 K145 [0.5]
  LOADK R20 K145 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K140 ["Position"]
  GETIMPORT R18 K149 [Enum.ScrollingDirection.X]
  SETTABLEKS R18 R17 K141 ["ScrollingDirection"]
  LOADN R18 0
  SETTABLEKS R18 R17 K142 ["ScrollBarThickness"]
  GETIMPORT R18 K152 [Enum.ScrollBarInset.None]
  SETTABLEKS R18 R17 K143 ["HorizontalScrollBarInset"]
  NEWTABLE R18 0 2
  MOVE R19 R2
  LOADK R20 K72 [".Medium"]
  DUPTABLE R21 K153 [{"AnchorPoint", "Position"}]
  GETIMPORT R22 K58 [Vector2.new]
  LOADN R23 1
  LOADK R24 K145 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K137 ["AnchorPoint"]
  GETIMPORT R22 K64 [UDim2.new]
  LOADN R23 1
  LOADN R24 122
  LOADK R25 K145 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K140 ["Position"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K71 [".Small"]
  DUPTABLE R22 K154 [{"AnchorPoint", "AutomaticSize", "Position", "Size"}]
  GETIMPORT R23 K58 [Vector2.new]
  LOADN R24 0
  LOADK R25 K145 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K137 ["AnchorPoint"]
  GETIMPORT R23 K155 [Enum.AutomaticSize.None]
  SETTABLEKS R23 R22 K139 ["AutomaticSize"]
  GETIMPORT R23 K64 [UDim2.new]
  LOADN R24 0
  LOADN R25 160
  LOADK R26 K145 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K140 ["Position"]
  GETIMPORT R23 K64 [UDim2.new]
  LOADN R24 1
  LOADN R25 218
  LOADN R26 0
  LOADN R27 28
  CALL R23 4 1
  SETTABLEKS R23 R22 K61 ["Size"]
  CALL R20 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K156 [".X-CornerXS ::UICorner"]
  DUPTABLE R18 K158 [{"CornerRadius"}]
  LOADK R19 K159 ["$GlobalRadiusXSmall"]
  SETTABLEKS R19 R18 K157 ["CornerRadius"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K160 [".X-CornerS ::UICorner"]
  DUPTABLE R19 K158 [{"CornerRadius"}]
  LOADK R20 K161 ["$GlobalRadiusSmall"]
  SETTABLEKS R20 R19 K157 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K162 [".X-CornerM ::UICorner"]
  DUPTABLE R20 K158 [{"CornerRadius"}]
  LOADK R21 K163 ["$GlobalRadiusMedium"]
  SETTABLEKS R21 R20 K157 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K164 [".X-PadMezz :: UIPadding"]
  DUPTABLE R21 K118 [{"PaddingLeft"}]
  GETIMPORT R22 K166 [UDim.new]
  LOADN R23 0
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K76 ["PaddingLeft"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K167 [".X-PadRibbonTool ::UIPadding"]
  DUPTABLE R22 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R23 K166 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K76 ["PaddingLeft"]
  GETIMPORT R23 K166 [UDim.new]
  LOADN R24 0
  LOADN R25 10
  CALL R23 2 1
  SETTABLEKS R23 R22 K77 ["PaddingRight"]
  LOADK R23 K104 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K114 ["PaddingTop"]
  LOADK R23 K104 ["$GlobalSpace100"]
  SETTABLEKS R23 R22 K115 ["PaddingBottom"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K168 [".X-PadSplitButtonTool ::UIPadding"]
  DUPTABLE R23 K118 [{"PaddingLeft"}]
  LOADK R24 K104 ["$GlobalSpace100"]
  SETTABLEKS R24 R23 K76 ["PaddingLeft"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K169 [".X-PadSplitButtonDropdown :: UIPadding"]
  DUPTABLE R24 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R25 K110 ["$GlobalSpace25"]
  SETTABLEKS R25 R24 K76 ["PaddingLeft"]
  LOADK R25 K170 ["$GlobalSpace75"]
  SETTABLEKS R25 R24 K77 ["PaddingRight"]
  LOADK R25 K171 ["$GlobalSpace350"]
  SETTABLEKS R25 R24 K114 ["PaddingTop"]
  LOADK R25 K170 ["$GlobalSpace75"]
  SETTABLEKS R25 R24 K115 ["PaddingBottom"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K172 [".X-PadSplitButtonDropdownSmall :: UIPadding"]
  DUPTABLE R25 K173 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R26 K110 ["$GlobalSpace25"]
  SETTABLEKS R26 R25 K77 ["PaddingRight"]
  LOADK R26 K174 ["$GlobalSpace250"]
  SETTABLEKS R26 R25 K114 ["PaddingTop"]
  LOADK R26 K102 ["$GlobalSpace50"]
  SETTABLEKS R26 R25 K115 ["PaddingBottom"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K175 [".X-PadSplitButtonToolSmall ::UIPadding"]
  DUPTABLE R26 K118 [{"PaddingLeft"}]
  LOADK R27 K170 ["$GlobalSpace75"]
  SETTABLEKS R27 R26 K76 ["PaddingLeft"]
  CALL R24 2 1
  SETLIST R8 R9 16 [17]
  MOVE R9 R2
  LOADK R10 K176 [".X-PadButtonLabel ::UIPadding"]
  DUPTABLE R11 K177 [{"PaddingTop", "PaddingBottom"}]
  LOADK R12 K102 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K114 ["PaddingTop"]
  LOADK R12 K102 ["$GlobalSpace50"]
  SETTABLEKS R12 R11 K115 ["PaddingBottom"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K178 [".X-PadRibbon ::UIPadding"]
  DUPTABLE R12 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K76 ["PaddingLeft"]
  LOADK R13 K104 ["$GlobalSpace100"]
  SETTABLEKS R13 R12 K77 ["PaddingRight"]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K114 ["PaddingTop"]
  LOADK R13 K79 ["$GlobalSpace150"]
  SETTABLEKS R13 R12 K115 ["PaddingBottom"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K179 [".X-PadTabMenu ::UIPadding"]
  DUPTABLE R13 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R14 K104 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K76 ["PaddingLeft"]
  LOADK R14 K104 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K77 ["PaddingRight"]
  LOADK R14 K104 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K114 ["PaddingTop"]
  LOADK R14 K104 ["$GlobalSpace100"]
  SETTABLEKS R14 R13 K115 ["PaddingBottom"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K180 [".X-PadMezzanine ::UIPadding"]
  DUPTABLE R14 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R15 K170 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K76 ["PaddingLeft"]
  LOADK R15 K170 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K77 ["PaddingRight"]
  LOADK R15 K170 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K114 ["PaddingTop"]
  LOADK R15 K170 ["$GlobalSpace75"]
  SETTABLEKS R15 R14 K115 ["PaddingBottom"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K181 [".X-PadMenuOption ::UIPadding"]
  DUPTABLE R15 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R16 K104 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K76 ["PaddingLeft"]
  LOADK R16 K104 ["$GlobalSpace100"]
  SETTABLEKS R16 R15 K77 ["PaddingRight"]
  LOADK R16 K102 ["$GlobalSpace50"]
  SETTABLEKS R16 R15 K114 ["PaddingTop"]
  LOADK R16 K102 ["$GlobalSpace50"]
  SETTABLEKS R16 R15 K115 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K182 [".X-PadTooltip ::UIPadding"]
  DUPTABLE R16 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R17 K170 ["$GlobalSpace75"]
  SETTABLEKS R17 R16 K76 ["PaddingLeft"]
  LOADK R17 K170 ["$GlobalSpace75"]
  SETTABLEKS R17 R16 K77 ["PaddingRight"]
  LOADK R17 K102 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K114 ["PaddingTop"]
  LOADK R17 K102 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K115 ["PaddingBottom"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K183 [".X-RowSplitButton"]
  NEWTABLE R17 0 0
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K83 ["::UIListLayout"]
  DUPTABLE R21 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R22 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K84 ["FillDirection"]
  LOADK R22 K110 ["$GlobalSpace25"]
  SETTABLEKS R22 R21 K85 ["Padding"]
  GETIMPORT R22 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K86 ["SortOrder"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K184 [".X-RowSplitButtonSmall"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K83 ["::UIListLayout"]
  DUPTABLE R22 K185 [{"FillDirection", "SortOrder"}]
  GETIMPORT R23 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K84 ["FillDirection"]
  GETIMPORT R23 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K86 ["SortOrder"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K186 [".X-RowSpinbox"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K83 ["::UIListLayout"]
  DUPTABLE R23 K101 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R24 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R24 R23 K84 ["FillDirection"]
  LOADK R24 K102 ["$GlobalSpace50"]
  SETTABLEKS R24 R23 K85 ["Padding"]
  GETIMPORT R24 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K86 ["SortOrder"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K187 [".X-PadSpinBox ::UIPadding"]
  DUPTABLE R20 K118 [{"PaddingLeft"}]
  LOADK R21 K104 ["$GlobalSpace100"]
  SETTABLEKS R21 R20 K76 ["PaddingLeft"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K188 [".Component-RibbonButton"]
  DUPTABLE R21 K191 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K189 ["AutoButtonColor"]
  LOADK R22 K26 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K23 ["BackgroundTransparency"]
  LOADK R22 K27 ["$BorderNone"]
  SETTABLEKS R22 R21 K24 ["BorderSizePixel"]
  LOADK R22 K192 [""]
  SETTABLEKS R22 R21 K190 ["Text"]
  NEWTABLE R22 0 7
  MOVE R23 R2
  LOADK R24 K193 ["> TextLabel"]
  DUPTABLE R25 K194 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextColor3", "TextSize"}]
  LOADK R26 K26 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K23 ["BackgroundTransparency"]
  LOADK R26 K37 ["$FontWeight400"]
  SETTABLEKS R26 R25 K17 ["Font"]
  LOADN R26 2
  SETTABLEKS R26 R25 K93 ["LayoutOrder"]
  LOADK R26 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R26 R25 K34 ["TextColor3"]
  LOADK R26 K39 ["$FontSize100"]
  SETTABLEKS R26 R25 K35 ["TextSize"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K195 [">> #RibbonToolButtonIcon, >> #ButtonIcon"]
  DUPTABLE R26 K196 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADK R27 K26 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K23 ["BackgroundTransparency"]
  LOADK R27 K27 ["$BorderNone"]
  SETTABLEKS R27 R26 K24 ["BorderSizePixel"]
  LOADN R27 0
  SETTABLEKS R27 R26 K93 ["LayoutOrder"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K197 [".Icon-Large"]
  DUPTABLE R30 K62 [{"Size"}]
  LOADK R31 K198 ["$IconLarge"]
  SETTABLEKS R31 R30 K61 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K199 [".Icon-Small"]
  DUPTABLE R31 K62 [{"Size"}]
  LOADK R32 K200 ["$IconSmall"]
  SETTABLEKS R32 R31 K61 ["Size"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K130 [".State-Disabled"]
  NEWTABLE R27 0 0
  NEWTABLE R28 0 2
  MOVE R29 R2
  LOADK R30 K201 [">> #RibbonTool"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K202 ["> #RibbonToolButtonIcon"]
  DUPTABLE R35 K204 [{"ImageTransparency"}]
  LOADK R36 K205 ["$IconDisabled"]
  SETTABLEKS R36 R35 K203 ["ImageTransparency"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K193 ["> TextLabel"]
  DUPTABLE R32 K45 [{"TextColor3"}]
  LOADK R33 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R33 R32 K34 ["TextColor3"]
  CALL R30 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K206 [".State-Default"]
  NEWTABLE R28 0 0
  NEWTABLE R29 0 1
  MOVE R30 R2
  LOADK R31 K207 [">> #RibbonTool, >> #StateLayer"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K208 [":hover"]
  DUPTABLE R36 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R37 K135 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R37 R36 K23 ["BackgroundTransparency"]
  LOADK R37 K134 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R37 R36 K29 ["BackgroundColor3"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K210 [":pressed"]
  DUPTABLE R37 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R38 K211 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R38 R37 K23 ["BackgroundTransparency"]
  LOADK R38 K212 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R38 R37 K29 ["BackgroundColor3"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K125 [".State-Selected"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K201 [">> #RibbonTool"]
  DUPTABLE R33 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R34 K128 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R34 R33 K23 ["BackgroundTransparency"]
  LOADK R34 K127 ["$SemanticColorStatesSelected"]
  SETTABLEKS R34 R33 K29 ["BackgroundColor3"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K213 [">> Frame .Component-SplitButtonDropdown"]
  DUPTABLE R30 K214 [{"LayoutOrder", "Size"}]
  LOADN R31 1
  SETTABLEKS R31 R30 K93 ["LayoutOrder"]
  GETIMPORT R31 K64 [UDim2.new]
  LOADN R32 0
  LOADN R33 12
  LOADN R34 0
  LOADN R35 40
  CALL R31 4 1
  SETTABLEKS R31 R30 K61 ["Size"]
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K71 [".Small"]
  DUPTABLE R34 K62 [{"Size"}]
  GETIMPORT R35 K64 [UDim2.new]
  LOADN R36 0
  LOADN R37 6
  LOADN R38 0
  LOADN R39 28
  CALL R35 4 1
  SETTABLEKS R35 R34 K61 ["Size"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K215 ["> TextButton"]
  DUPTABLE R35 K216 [{"AnchorPoint", "AutoButtonColor", "Position", "Text", "TextSize"}]
  GETIMPORT R36 K166 [UDim.new]
  LOADN R37 1
  LOADN R38 1
  CALL R36 2 1
  SETTABLEKS R36 R35 K137 ["AnchorPoint"]
  LOADB R36 0
  SETTABLEKS R36 R35 K189 ["AutoButtonColor"]
  GETIMPORT R36 K64 [UDim2.new]
  LOADN R37 1
  LOADN R38 0
  LOADN R39 1
  LOADN R40 0
  CALL R36 4 1
  SETTABLEKS R36 R35 K140 ["Position"]
  LOADK R36 K192 [""]
  SETTABLEKS R36 R35 K190 ["Text"]
  LOADN R36 1
  SETTABLEKS R36 R35 K35 ["TextSize"]
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K217 ["> ImageLabel"]
  DUPTABLE R39 K219 [{"Image", "Size"}]
  LOADK R40 K220 ["$ArrowDownAngleSmall"]
  SETTABLEKS R40 R39 K218 ["Image"]
  GETIMPORT R40 K222 [UDim2.fromOffset]
  LOADN R41 6
  LOADN R42 6
  CALL R40 2 1
  SETTABLEKS R40 R39 K61 ["Size"]
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K71 [".Small"]
  DUPTABLE R43 K62 [{"Size"}]
  GETIMPORT R44 K222 [UDim2.fromOffset]
  LOADN R45 4
  LOADN R46 4
  CALL R44 2 1
  SETTABLEKS R44 R43 K61 ["Size"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K223 ["> Frame #StateLayer"]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K224 [".State-Gradient-Hover"]
  DUPTABLE R35 K225 [{"BackgroundTransparency"}]
  LOADK R36 K226 ["$BackgroundNonTransparent"]
  SETTABLEKS R36 R35 K23 ["BackgroundTransparency"]
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K227 ["::UIGradient"]
  DUPTABLE R39 K231 [{"Color", "Rotation", "Transparency"}]
  LOADK R40 K232 ["$SemanticColorStateLayerHoverGradient"]
  SETTABLEKS R40 R39 K228 ["Color"]
  LOADK R40 K233 ["$SemanticColorStateLayerHoverGradientRotation"]
  SETTABLEKS R40 R39 K229 ["Rotation"]
  LOADK R40 K234 ["$SemanticColorStateLayerHoverGradientTransparency"]
  SETTABLEKS R40 R39 K230 ["Transparency"]
  CALL R37 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K235 [".State-Gradient-Pressed"]
  DUPTABLE R36 K225 [{"BackgroundTransparency"}]
  LOADK R37 K226 ["$BackgroundNonTransparent"]
  SETTABLEKS R37 R36 K23 ["BackgroundTransparency"]
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K227 ["::UIGradient"]
  DUPTABLE R40 K231 [{"Color", "Rotation", "Transparency"}]
  LOADK R41 K236 ["$SemanticColorStateLayerPressGradient"]
  SETTABLEKS R41 R40 K228 ["Color"]
  LOADK R41 K237 ["$SemanticColorStateLayerPressGradientRotation"]
  SETTABLEKS R41 R40 K229 ["Rotation"]
  LOADK R41 K238 ["$SemanticColorStateLayerPressGradientTransparency"]
  SETTABLEKS R41 R40 K230 ["Transparency"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K239 [".Ribbon-More"]
  DUPTABLE R22 K241 [{"AnchorPoint", "Position", "ZIndex"}]
  GETIMPORT R23 K58 [Vector2.new]
  LOADN R24 1
  LOADK R25 K145 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K137 ["AnchorPoint"]
  GETIMPORT R23 K64 [UDim2.new]
  LOADN R24 1
  LOADN R25 248
  LOADK R26 K145 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K140 ["Position"]
  LOADN R23 3
  SETTABLEKS R23 R22 K240 ["ZIndex"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K242 [".Component-Button"]
  DUPTABLE R23 K243 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R24 0
  SETTABLEKS R24 R23 K189 ["AutoButtonColor"]
  LOADK R24 K192 [""]
  SETTABLEKS R24 R23 K190 ["Text"]
  GETIMPORT R24 K64 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  LOADN R28 28
  CALL R24 4 1
  SETTABLEKS R24 R23 K61 ["Size"]
  NEWTABLE R24 0 5
  MOVE R25 R2
  LOADK R26 K244 ["> #StateLayer"]
  DUPTABLE R27 K62 [{"Size"}]
  GETIMPORT R28 K64 [UDim2.new]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  LOADN R32 28
  CALL R28 4 1
  SETTABLEKS R28 R27 K61 ["Size"]
  NEWTABLE R28 0 6
  MOVE R29 R2
  LOADK R30 K83 ["::UIListLayout"]
  DUPTABLE R31 K245 [{"Padding"}]
  LOADK R32 K102 ["$GlobalSpace50"]
  SETTABLEKS R32 R31 K85 ["Padding"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K246 [".X-PadButtonSmall ::UIPadding"]
  DUPTABLE R32 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R33 K79 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K76 ["PaddingLeft"]
  LOADK R33 K79 ["$GlobalSpace150"]
  SETTABLEKS R33 R32 K77 ["PaddingRight"]
  LOADK R33 K102 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K114 ["PaddingTop"]
  LOADK R33 K102 ["$GlobalSpace50"]
  SETTABLEKS R33 R32 K115 ["PaddingBottom"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K247 [".X-PadButtonLarge ::UIPadding"]
  DUPTABLE R33 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R34 K174 ["$GlobalSpace250"]
  SETTABLEKS R34 R33 K76 ["PaddingLeft"]
  LOADK R34 K174 ["$GlobalSpace250"]
  SETTABLEKS R34 R33 K77 ["PaddingRight"]
  LOADK R34 K79 ["$GlobalSpace150"]
  SETTABLEKS R34 R33 K114 ["PaddingTop"]
  LOADK R34 K79 ["$GlobalSpace150"]
  SETTABLEKS R34 R33 K115 ["PaddingBottom"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K248 [".X-PadButtonMedium ::UIPadding"]
  DUPTABLE R34 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R35 K92 ["$GlobalSpace200"]
  SETTABLEKS R35 R34 K76 ["PaddingLeft"]
  LOADK R35 K92 ["$GlobalSpace200"]
  SETTABLEKS R35 R34 K77 ["PaddingRight"]
  LOADK R35 K104 ["$GlobalSpace100"]
  SETTABLEKS R35 R34 K114 ["PaddingTop"]
  LOADK R35 K104 ["$GlobalSpace100"]
  SETTABLEKS R35 R34 K115 ["PaddingBottom"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K249 ["> #ButtonIcon"]
  DUPTABLE R35 K250 [{"LayoutOrder"}]
  LOADN R36 0
  SETTABLEKS R36 R35 K93 ["LayoutOrder"]
  NEWTABLE R36 0 3
  MOVE R37 R2
  LOADK R38 K197 [".Icon-Large"]
  DUPTABLE R39 K62 [{"Size"}]
  LOADK R40 K198 ["$IconLarge"]
  SETTABLEKS R40 R39 K61 ["Size"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K199 [".Icon-Small"]
  DUPTABLE R40 K62 [{"Size"}]
  LOADK R41 K200 ["$IconSmall"]
  SETTABLEKS R41 R40 K61 ["Size"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K251 [".Right"]
  DUPTABLE R41 K250 [{"LayoutOrder"}]
  LOADN R42 3
  SETTABLEKS R42 R41 K93 ["LayoutOrder"]
  CALL R39 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K252 ["> #ButtonText"]
  DUPTABLE R36 K253 [{"Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R37 K41 ["$FontWeight700"]
  SETTABLEKS R37 R36 K17 ["Font"]
  LOADK R37 K254 ["$FontSize200"]
  SETTABLEKS R37 R36 K35 ["TextSize"]
  LOADN R37 2
  SETTABLEKS R37 R36 K93 ["LayoutOrder"]
  LOADK R37 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R37 R36 K34 ["TextColor3"]
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K71 [".Small"]
  DUPTABLE R40 K255 [{"TextSize"}]
  LOADK R41 K124 ["$FontSize150"]
  SETTABLEKS R41 R40 K35 ["TextSize"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K73 [".Large"]
  DUPTABLE R41 K255 [{"TextSize"}]
  LOADK R42 K0 ["script"]
  SETTABLEKS R42 R41 K35 ["TextSize"]
  CALL R39 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  MOVE R26 R2
  LOADK R27 K1 [script]
  DUPTABLE R28 K62 [{"Size"}]
  GETIMPORT R29 K64 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 0
  LOADN R33 26
  CALL R29 4 1
  SETTABLEKS R29 R28 K61 ["Size"]
  NEWTABLE R29 0 2
  MOVE R30 R2
  LOADK R31 K2 ["Parent"]
  DUPTABLE R32 K261 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R33 K263 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R33 R32 K259 ["ApplyStrokeMode"]
  LOADK R33 K67 ["$SemanticColorDivider"]
  SETTABLEKS R33 R32 K228 ["Color"]
  LOADK R33 K8 ["createStyleRule"]
  SETTABLEKS R33 R32 K260 ["Thickness"]
  LOADK R33 K68 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R33 R32 K230 ["Transparency"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K244 ["> #StateLayer"]
  DUPTABLE R33 K62 [{"Size"}]
  GETIMPORT R34 K64 [UDim2.new]
  LOADN R35 0
  LOADN R36 0
  LOADN R37 0
  LOADN R38 26
  CALL R34 4 1
  SETTABLEKS R34 R33 K61 ["Size"]
  CALL R31 2 -1
  SETLIST R29 R30 -1 [1]
  CALL R26 3 1
  MOVE R27 R2
  LOADK R28 K130 [".State-Disabled"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 2
  MOVE R31 R2
  LOADK R32 K9 ["createStyleSheet"]
  DUPTABLE R33 K204 [{"ImageTransparency"}]
  LOADK R34 K205 ["$IconDisabled"]
  SETTABLEKS R34 R33 K203 ["ImageTransparency"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K10 ["Src"]
  DUPTABLE R34 K45 [{"TextColor3"}]
  LOADK R35 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R35 R34 K34 ["TextColor3"]
  CALL R32 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 1
  MOVE R28 R2
  LOADK R29 K206 [".State-Default"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 2
  MOVE R32 R2
  LOADK R33 K11 ["SharedFlags"]
  DUPTABLE R34 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R35 K135 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R35 R34 K23 ["BackgroundTransparency"]
  LOADK R35 K134 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R35 R34 K29 ["BackgroundColor3"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R35 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R36 K211 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R36 R35 K23 ["BackgroundTransparency"]
  LOADK R36 K212 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R36 R35 K29 ["BackgroundColor3"]
  CALL R33 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K13 ["getFFlagRibbonDynamicBackground"]
  DUPTABLE R31 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K14 ["getFFlagRibbonSpinboxStyleUpdate"]
  SETTABLEKS R32 R31 K29 ["BackgroundColor3"]
  LOADK R32 K226 ["$BackgroundNonTransparent"]
  SETTABLEKS R32 R31 K23 ["BackgroundTransparency"]
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K206 [".State-Default"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K11 ["SharedFlags"]
  DUPTABLE R39 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R40 K15 ["getFFlagRibbonEnableSliderLua"]
  SETTABLEKS R40 R39 K23 ["BackgroundTransparency"]
  LOADK R40 K16 ["TextLabel, TextButton, TextBox"]
  SETTABLEKS R40 R39 K29 ["BackgroundColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K12 ["getFFlagAddTestModeDropDown"]
  DUPTABLE R40 K209 [{"BackgroundTransparency", "BackgroundColor3"}]
  LOADK R41 K17 ["Font"]
  SETTABLEKS R41 R40 K23 ["BackgroundTransparency"]
  LOADK R41 K18 [{"Font"}]
  SETTABLEKS R41 R40 K29 ["BackgroundColor3"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K10 ["Src"]
  DUPTABLE R36 K45 [{"TextColor3"}]
  LOADK R37 K46 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R37 R36 K34 ["TextColor3"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K19 ["Enum"]
  DUPTABLE R24 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R25 K26 ["$BackgroundTransparent"]
  SETTABLEKS R25 R24 K23 ["BackgroundTransparency"]
  LOADK R25 K27 ["$BorderNone"]
  SETTABLEKS R25 R24 K24 ["BorderSizePixel"]
  NEWTABLE R25 0 9
  MOVE R26 R2
  LOADK R27 K20 ["SourceSans"]
  DUPTABLE R28 K277 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R29 0
  SETTABLEKS R29 R28 K189 ["AutoButtonColor"]
  LOADK R29 K26 ["$BackgroundTransparent"]
  SETTABLEKS R29 R28 K23 ["BackgroundTransparency"]
  LOADK R29 K27 ["$BorderNone"]
  SETTABLEKS R29 R28 K24 ["BorderSizePixel"]
  LOADN R29 1
  SETTABLEKS R29 R28 K93 ["LayoutOrder"]
  LOADK R29 K192 [""]
  SETTABLEKS R29 R28 K190 ["Text"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K22 [".Role-Surface"]
  DUPTABLE R29 K279 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R30 K26 ["$BackgroundTransparent"]
  SETTABLEKS R30 R29 K23 ["BackgroundTransparency"]
  LOADK R30 K27 ["$BorderNone"]
  SETTABLEKS R30 R29 K24 ["BorderSizePixel"]
  LOADK R30 K37 ["$FontWeight400"]
  SETTABLEKS R30 R29 K17 ["Font"]
  LOADN R30 2
  SETTABLEKS R30 R29 K93 ["LayoutOrder"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K24 ["BorderSizePixel"]
  DUPTABLE R30 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R31 K26 ["$BackgroundTransparent"]
  SETTABLEKS R31 R30 K23 ["BackgroundTransparency"]
  LOADK R31 K27 ["$BorderNone"]
  SETTABLEKS R31 R30 K24 ["BorderSizePixel"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  NEWTABLE R31 0 0
  NEWTABLE R32 0 2
  MOVE R33 R2
  LOADK R34 K20 ["SourceSans"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 1
  MOVE R37 R2
  LOADK R38 K83 ["::UIListLayout"]
  DUPTABLE R39 K283 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R40 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R40 R39 K84 ["FillDirection"]
  LOADK R40 K104 ["$GlobalSpace100"]
  SETTABLEKS R40 R39 K85 ["Padding"]
  GETIMPORT R40 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R40 R39 K86 ["SortOrder"]
  GETIMPORT R40 K284 [Enum.VerticalAlignment.Center]
  SETTABLEKS R40 R39 K282 ["VerticalAlignment"]
  CALL R37 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K24 ["BorderSizePixel"]
  DUPTABLE R36 K62 [{"Size"}]
  LOADK R37 K200 ["$IconSmall"]
  SETTABLEKS R37 R36 K61 ["Size"]
  CALL R34 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K71 [".Small"]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K22 [".Role-Surface"]
  DUPTABLE R36 K255 [{"TextSize"}]
  LOADK R37 K124 ["$FontSize150"]
  SETTABLEKS R37 R36 K35 ["TextSize"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K72 [".Medium"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K22 [".Role-Surface"]
  DUPTABLE R37 K255 [{"TextSize"}]
  LOADK R38 K254 ["$FontSize200"]
  SETTABLEKS R38 R37 K35 ["TextSize"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K73 [".Large"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 3
  MOVE R36 R2
  LOADK R37 K20 ["SourceSans"]
  NEWTABLE R38 0 0
  NEWTABLE R39 0 1
  MOVE R40 R2
  LOADK R41 K83 ["::UIListLayout"]
  DUPTABLE R42 K283 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R43 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R43 R42 K84 ["FillDirection"]
  LOADK R43 K79 ["$GlobalSpace150"]
  SETTABLEKS R43 R42 K85 ["Padding"]
  GETIMPORT R43 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R43 R42 K86 ["SortOrder"]
  GETIMPORT R43 K284 [Enum.VerticalAlignment.Center]
  SETTABLEKS R43 R42 K282 ["VerticalAlignment"]
  CALL R40 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 1
  MOVE R37 R2
  LOADK R38 K24 ["BorderSizePixel"]
  DUPTABLE R39 K62 [{"Size"}]
  LOADK R40 K198 ["$IconLarge"]
  SETTABLEKS R40 R39 K61 ["Size"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K22 [".Role-Surface"]
  DUPTABLE R40 K255 [{"TextSize"}]
  LOADK R41 K0 ["script"]
  SETTABLEKS R41 R40 K35 ["TextSize"]
  CALL R38 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K206 [".State-Default"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 5
  MOVE R37 R2
  LOADK R38 K24 ["BorderSizePixel"]
  DUPTABLE R39 K285 [{"Image"}]
  LOADK R40 K30 [{"BackgroundColor3", "BorderSizePixel"}]
  SETTABLEKS R40 R39 K218 ["Image"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K31 ["$SemanticColorSurface100"]
  DUPTABLE R40 K285 [{"Image"}]
  LOADK R41 K32 ["$DEPRECATED_MainBackground"]
  SETTABLEKS R41 R40 K218 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K33 [".Text-Label"]
  DUPTABLE R41 K285 [{"Image"}]
  LOADK R42 K34 ["TextColor3"]
  SETTABLEKS R42 R41 K218 ["Image"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K35 ["TextSize"]
  DUPTABLE R42 K285 [{"Image"}]
  LOADK R43 K36 [{"Font", "TextColor3", "TextSize", "BorderSizePixel", "BackgroundTransparency"}]
  SETTABLEKS R43 R42 K218 ["Image"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K22 [".Role-Surface"]
  DUPTABLE R43 K45 [{"TextColor3"}]
  LOADK R44 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R44 R43 K34 ["TextColor3"]
  CALL R41 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K130 [".State-Disabled"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 4
  MOVE R38 R2
  LOADK R39 K24 ["BorderSizePixel"]
  DUPTABLE R40 K285 [{"Image"}]
  LOADK R41 K37 ["$FontWeight400"]
  SETTABLEKS R41 R40 K218 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K33 [".Text-Label"]
  DUPTABLE R41 K285 [{"Image"}]
  LOADK R42 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R42 R41 K218 ["Image"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K35 ["TextSize"]
  DUPTABLE R42 K285 [{"Image"}]
  LOADK R43 K39 ["$FontSize100"]
  SETTABLEKS R43 R42 K218 ["Image"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K22 [".Role-Surface"]
  DUPTABLE R43 K45 [{"TextColor3"}]
  LOADK R44 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R44 R43 K34 ["TextColor3"]
  CALL R41 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K40 [".Text-Title"]
  DUPTABLE R25 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R26 K26 ["$BackgroundTransparent"]
  SETTABLEKS R26 R25 K23 ["BackgroundTransparency"]
  LOADK R26 K27 ["$BorderNone"]
  SETTABLEKS R26 R25 K24 ["BorderSizePixel"]
  NEWTABLE R26 0 9
  MOVE R27 R2
  LOADK R28 K41 ["$FontWeight700"]
  DUPTABLE R29 K277 [{"AutoButtonColor", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Text"}]
  LOADB R30 0
  SETTABLEKS R30 R29 K189 ["AutoButtonColor"]
  LOADK R30 K26 ["$BackgroundTransparent"]
  SETTABLEKS R30 R29 K23 ["BackgroundTransparency"]
  LOADK R30 K27 ["$BorderNone"]
  SETTABLEKS R30 R29 K24 ["BorderSizePixel"]
  LOADN R30 1
  SETTABLEKS R30 R29 K93 ["LayoutOrder"]
  LOADK R30 K192 [""]
  SETTABLEKS R30 R29 K190 ["Text"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K42 [".TooltipBackground"]
  DUPTABLE R30 K279 [{"BackgroundTransparency", "BorderSizePixel", "Font", "LayoutOrder"}]
  LOADK R31 K26 ["$BackgroundTransparent"]
  SETTABLEKS R31 R30 K23 ["BackgroundTransparency"]
  LOADK R31 K27 ["$BorderNone"]
  SETTABLEKS R31 R30 K24 ["BorderSizePixel"]
  LOADK R31 K37 ["$FontWeight400"]
  SETTABLEKS R31 R30 K17 ["Font"]
  LOADN R31 2
  SETTABLEKS R31 R30 K93 ["LayoutOrder"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K43 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R31 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R32 K26 ["$BackgroundTransparent"]
  SETTABLEKS R32 R31 K23 ["BackgroundTransparency"]
  LOADK R32 K27 ["$BorderNone"]
  SETTABLEKS R32 R31 K24 ["BorderSizePixel"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  NEWTABLE R32 0 0
  NEWTABLE R33 0 2
  MOVE R34 R2
  LOADK R35 K41 ["$FontWeight700"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 1
  MOVE R38 R2
  LOADK R39 K83 ["::UIListLayout"]
  DUPTABLE R40 K283 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R41 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R41 R40 K84 ["FillDirection"]
  LOADK R41 K104 ["$GlobalSpace100"]
  SETTABLEKS R41 R40 K85 ["Padding"]
  GETIMPORT R41 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R41 R40 K86 ["SortOrder"]
  GETIMPORT R41 K284 [Enum.VerticalAlignment.Center]
  SETTABLEKS R41 R40 K282 ["VerticalAlignment"]
  CALL R38 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K43 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R37 K62 [{"Size"}]
  LOADK R38 K200 ["$IconSmall"]
  SETTABLEKS R38 R37 K61 ["Size"]
  CALL R35 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K71 [".Small"]
  NEWTABLE R33 0 0
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K42 [".TooltipBackground"]
  DUPTABLE R37 K255 [{"TextSize"}]
  LOADK R38 K124 ["$FontSize150"]
  SETTABLEKS R38 R37 K35 ["TextSize"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K72 [".Medium"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 1
  MOVE R36 R2
  LOADK R37 K42 [".TooltipBackground"]
  DUPTABLE R38 K255 [{"TextSize"}]
  LOADK R39 K254 ["$FontSize200"]
  SETTABLEKS R39 R38 K35 ["TextSize"]
  CALL R36 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K73 [".Large"]
  NEWTABLE R35 0 0
  NEWTABLE R36 0 3
  MOVE R37 R2
  LOADK R38 K41 ["$FontWeight700"]
  NEWTABLE R39 0 0
  NEWTABLE R40 0 1
  MOVE R41 R2
  LOADK R42 K83 ["::UIListLayout"]
  DUPTABLE R43 K283 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R44 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R44 R43 K84 ["FillDirection"]
  LOADK R44 K79 ["$GlobalSpace150"]
  SETTABLEKS R44 R43 K85 ["Padding"]
  GETIMPORT R44 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R44 R43 K86 ["SortOrder"]
  GETIMPORT R44 K284 [Enum.VerticalAlignment.Center]
  SETTABLEKS R44 R43 K282 ["VerticalAlignment"]
  CALL R41 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 1
  MOVE R38 R2
  LOADK R39 K43 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R40 K62 [{"Size"}]
  LOADK R41 K198 ["$IconLarge"]
  SETTABLEKS R41 R40 K61 ["Size"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K42 [".TooltipBackground"]
  DUPTABLE R41 K255 [{"TextSize"}]
  LOADK R42 K0 ["script"]
  SETTABLEKS R42 R41 K35 ["TextSize"]
  CALL R39 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K206 [".State-Default"]
  NEWTABLE R36 0 0
  NEWTABLE R37 0 4
  MOVE R38 R2
  LOADK R39 K43 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R40 K285 [{"Image"}]
  LOADK R41 K44 [">> TextLabel"]
  SETTABLEKS R41 R40 K218 ["Image"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K45 [{"TextColor3"}]
  DUPTABLE R41 K285 [{"Image"}]
  LOADK R42 K46 ["$SemanticColorContentStandardInverse"]
  SETTABLEKS R42 R41 K218 ["Image"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K47 [".TooltipTextBounds"]
  DUPTABLE R42 K285 [{"Image"}]
  LOADK R43 K48 ["TextWrapped"]
  SETTABLEKS R43 R42 K218 ["Image"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K42 [".TooltipBackground"]
  DUPTABLE R43 K45 [{"TextColor3"}]
  LOADK R44 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R44 R43 K34 ["TextColor3"]
  CALL R41 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K130 [".State-Disabled"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 3
  MOVE R39 R2
  LOADK R40 K43 ["$SemanticColorSurface300Inverse"]
  DUPTABLE R41 K285 [{"Image"}]
  LOADK R42 K49 ["TextXAlignment"]
  SETTABLEKS R42 R41 K218 ["Image"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K47 [".TooltipTextBounds"]
  DUPTABLE R42 K285 [{"Image"}]
  LOADK R43 K50 [{"TextWrapped", "TextXAlignment"}]
  SETTABLEKS R43 R42 K218 ["Image"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K42 [".TooltipBackground"]
  DUPTABLE R43 K45 [{"TextColor3"}]
  LOADK R44 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R44 R43 K34 ["TextColor3"]
  CALL R41 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 1
  MOVE R24 R2
  LOADK R25 K51 ["Left"]
  DUPTABLE R26 K308 [{"AutoButtonColor", "BorderSizePixel", "BackgroundTransparency", "Text"}]
  LOADB R27 0
  SETTABLEKS R27 R26 K189 ["AutoButtonColor"]
  LOADK R27 K27 ["$BorderNone"]
  SETTABLEKS R27 R26 K24 ["BorderSizePixel"]
  LOADK R27 K26 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K23 ["BackgroundTransparency"]
  LOADK R27 K192 [""]
  SETTABLEKS R27 R26 K190 ["Text"]
  NEWTABLE R27 0 8
  MOVE R28 R2
  LOADK R29 K53 ["::UISizeConstraint"]
  DUPTABLE R30 K310 [{"BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADK R31 K27 ["$BorderNone"]
  SETTABLEKS R31 R30 K24 ["BorderSizePixel"]
  LOADK R31 K26 ["$BackgroundTransparent"]
  SETTABLEKS R31 R30 K23 ["BackgroundTransparency"]
  LOADN R31 1
  SETTABLEKS R31 R30 K93 ["LayoutOrder"]
  LOADK R31 K198 ["$IconLarge"]
  SETTABLEKS R31 R30 K61 ["Size"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K55 [{"MaxSize"}]
  DUPTABLE R31 K312 [{"AnchorPoint", "Position", "BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  GETIMPORT R32 K58 [Vector2.new]
  LOADN R33 1
  LOADK R34 K145 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K137 ["AnchorPoint"]
  GETIMPORT R32 K82 [UDim2.fromScale]
  LOADN R33 1
  LOADK R34 K145 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K140 ["Position"]
  LOADK R32 K27 ["$BorderNone"]
  SETTABLEKS R32 R31 K24 ["BorderSizePixel"]
  LOADN R32 1
  SETTABLEKS R32 R31 K23 ["BackgroundTransparency"]
  LOADK R32 K57 ["new"]
  SETTABLEKS R32 R31 K218 ["Image"]
  LOADN R32 3
  SETTABLEKS R32 R31 K93 ["LayoutOrder"]
  LOADK R32 K200 ["$IconSmall"]
  SETTABLEKS R32 R31 K61 ["Size"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K58 [Vector2.new]
  DUPTABLE R32 K214 [{"LayoutOrder", "Size"}]
  LOADN R33 3
  SETTABLEKS R33 R32 K93 ["LayoutOrder"]
  LOADK R33 K200 ["$IconSmall"]
  SETTABLEKS R33 R32 K61 ["Size"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K44 [">> TextLabel"]
  DUPTABLE R33 K315 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADN R34 1
  SETTABLEKS R34 R33 K23 ["BackgroundTransparency"]
  LOADK R34 K37 ["$FontWeight400"]
  SETTABLEKS R34 R33 K17 ["Font"]
  LOADK R34 K124 ["$FontSize150"]
  SETTABLEKS R34 R33 K35 ["TextSize"]
  LOADN R34 2
  SETTABLEKS R34 R33 K93 ["LayoutOrder"]
  LOADK R34 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R34 R33 K34 ["TextColor3"]
  CALL R31 2 1
  MOVE R32 R2
  LOADK R33 K71 [".Small"]
  NEWTABLE R34 0 0
  NEWTABLE R35 0 2
  MOVE R36 R2
  LOADK R37 K53 ["::UISizeConstraint"]
  DUPTABLE R38 K62 [{"Size"}]
  LOADK R39 K200 ["$IconSmall"]
  SETTABLEKS R39 R38 K61 ["Size"]
  CALL R36 2 1
  MOVE R37 R2
  LOADK R38 K44 [">> TextLabel"]
  DUPTABLE R39 K255 [{"TextSize"}]
  LOADK R40 K39 ["$FontSize100"]
  SETTABLEKS R40 R39 K35 ["TextSize"]
  CALL R37 2 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  MOVE R33 R2
  LOADK R34 K60 [".Role-DividerH"]
  DUPTABLE R35 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K61 ["Size"]
  SETTABLEKS R36 R35 K29 ["BackgroundColor3"]
  LOADK R36 K62 [{"Size"}]
  SETTABLEKS R36 R35 K23 ["BackgroundTransparency"]
  CALL R33 2 1
  MOVE R34 R2
  LOADK R35 K125 [".State-Selected"]
  DUPTABLE R36 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R37 K127 ["$SemanticColorStatesSelected"]
  SETTABLEKS R37 R36 K29 ["BackgroundColor3"]
  LOADK R37 K128 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R37 R36 K23 ["BackgroundTransparency"]
  CALL R34 2 1
  MOVE R35 R2
  LOADK R36 K130 [".State-Disabled"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 2
  MOVE R39 R2
  LOADK R40 K53 ["::UISizeConstraint"]
  DUPTABLE R41 K204 [{"ImageTransparency"}]
  LOADK R42 K205 ["$IconDisabled"]
  SETTABLEKS R42 R41 K203 ["ImageTransparency"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K44 [">> TextLabel"]
  DUPTABLE R42 K45 [{"TextColor3"}]
  LOADK R43 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R43 R42 K34 ["TextColor3"]
  CALL R40 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETLIST R8 R9 16 [33]
  MOVE R9 R2
  LOADK R10 K63 ["UDim2"]
  JUMPIFNOT R6 [+2]
  LOADNIL R11
  JUMP [+10]
  DUPTABLE R11 K62 [{"Size"}]
  GETIMPORT R12 K64 [UDim2.new]
  LOADN R13 0
  LOADN R14 90
  LOADN R15 0
  LOADN R16 20
  CALL R12 4 1
  SETTABLEKS R12 R11 K61 ["Size"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K64 [UDim2.new]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K75 ["::UIPadding"]
  DUPTABLE R16 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R17 K102 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K76 ["PaddingLeft"]
  LOADK R17 K102 ["$GlobalSpace50"]
  SETTABLEKS R17 R16 K77 ["PaddingRight"]
  LOADK R17 K110 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K114 ["PaddingTop"]
  LOADK R17 K110 ["$GlobalSpace25"]
  SETTABLEKS R17 R16 K115 ["PaddingBottom"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K65 ["> Frame"]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 6
  MOVE R15 R2
  LOADK R16 K2 ["Parent"]
  DUPTABLE R17 K322 [{"Thickness"}]
  LOADK R18 K27 ["$BorderNone"]
  SETTABLEKS R18 R17 K260 ["Thickness"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K67 ["$SemanticColorDivider"]
  DUPTABLE R18 K324 [{"TextSize", "TextXAlignment"}]
  LOADK R19 K124 ["$FontSize150"]
  SETTABLEKS R19 R18 K35 ["TextSize"]
  JUMPIFNOT R6 [+3]
  GETIMPORT R19 K52 [Enum.TextXAlignment.Left]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K49 ["TextXAlignment"]
  JUMPIFNOT R6 [+15]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K75 ["::UIPadding"]
  DUPTABLE R22 K78 [{"PaddingLeft", "PaddingRight"}]
  LOADK R23 K102 ["$GlobalSpace50"]
  SETTABLEKS R23 R22 K76 ["PaddingLeft"]
  LOADK R23 K110 ["$GlobalSpace25"]
  SETTABLEKS R23 R22 K77 ["PaddingRight"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  JUMP [+1]
  LOADNIL R19
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K206 [".State-Default"]
  DUPTABLE R19 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R20 K69 [".Role-DividerV"]
  SETTABLEKS R20 R19 K29 ["BackgroundColor3"]
  LOADK R20 K70 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K67 ["$SemanticColorDivider"]
  DUPTABLE R23 K45 [{"TextColor3"}]
  LOADK R24 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R24 R23 K34 ["TextColor3"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K71 [".Small"]
  NEWTABLE R20 0 0
  NEWTABLE R21 0 2
  MOVE R22 R2
  LOADK R23 K2 ["Parent"]
  DUPTABLE R24 K328 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R25 K263 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R25 R24 K259 ["ApplyStrokeMode"]
  LOADK R25 K73 [".Large"]
  SETTABLEKS R25 R24 K228 ["Color"]
  LOADK R25 K8 ["createStyleRule"]
  SETTABLEKS R25 R24 K260 ["Thickness"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K67 ["$SemanticColorDivider"]
  DUPTABLE R25 K45 [{"TextColor3"}]
  LOADK R26 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K34 ["TextColor3"]
  CALL R23 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K74 [".RibbonButton-Divider"]
  DUPTABLE R21 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R22 K75 ["::UIPadding"]
  SETTABLEKS R22 R21 K29 ["BackgroundColor3"]
  LOADK R22 K76 ["PaddingLeft"]
  SETTABLEKS R22 R21 K23 ["BackgroundTransparency"]
  NEWTABLE R22 0 2
  MOVE R23 R2
  LOADK R24 K67 ["$SemanticColorDivider"]
  DUPTABLE R25 K45 [{"TextColor3"}]
  LOADK R26 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R26 R25 K34 ["TextColor3"]
  CALL R23 2 1
  JUMPIFNOT R6 [+2]
  LOADNIL R24
  JUMP [+26]
  MOVE R24 R2
  LOADK R25 K77 ["PaddingRight"]
  NEWTABLE R26 0 0
  NEWTABLE R27 0 1
  MOVE R28 R2
  LOADK R29 K2 ["Parent"]
  DUPTABLE R30 K334 [{"ApplyStrokeMode", "Color", "Transparency", "Thickness"}]
  GETIMPORT R31 K263 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R31 R30 K259 ["ApplyStrokeMode"]
  LOADK R31 K134 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R31 R30 K228 ["Color"]
  LOADK R31 K135 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R31 R30 K230 ["Transparency"]
  LOADK R31 K8 ["createStyleRule"]
  SETTABLEKS R31 R30 K260 ["Thickness"]
  CALL R28 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  SETLIST R22 R23 2 [1]
  CALL R19 3 1
  MOVE R20 R2
  LOADK R21 K130 [".State-Disabled"]
  DUPTABLE R22 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R23 K69 [".Role-DividerV"]
  SETTABLEKS R23 R22 K29 ["BackgroundColor3"]
  LOADK R23 K70 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R23 R22 K23 ["BackgroundTransparency"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K67 ["$SemanticColorDivider"]
  DUPTABLE R26 K45 [{"TextColor3"}]
  LOADK R27 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R27 R26 K34 ["TextColor3"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 -1
  SETLIST R14 R15 -1 [1]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K79 ["$GlobalSpace150"]
  NEWTABLE R14 0 0
  NEWTABLE R15 0 2
  MOVE R16 R2
  LOADK R17 K215 ["> TextButton"]
  DUPTABLE R18 K62 [{"Size"}]
  GETIMPORT R19 K64 [UDim2.new]
  LOADN R20 0
  LOADN R21 16
  LOADN R22 0
  LOADN R23 8
  CALL R19 4 1
  SETTABLEKS R19 R18 K61 ["Size"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K80 [".X-RowSpaceBetween"]
  DUPTABLE R22 K62 [{"Size"}]
  GETIMPORT R23 K64 [UDim2.new]
  LOADN R24 0
  LOADN R25 16
  LOADN R26 0
  LOADN R27 8
  CALL R23 4 1
  SETTABLEKS R23 R22 K61 ["Size"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K206 [".State-Default"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 2
  MOVE R21 R2
  LOADK R22 K81 ["fromScale"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K82 [UDim2.fromScale]
  DUPTABLE R27 K285 [{"Image"}]
  LOADK R28 K83 ["::UIListLayout"]
  SETTABLEKS R28 R27 K218 ["Image"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K84 ["FillDirection"]
  DUPTABLE R28 K285 [{"Image"}]
  LOADK R29 K85 ["Padding"]
  SETTABLEKS R29 R28 K218 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K86 ["SortOrder"]
  DUPTABLE R29 K285 [{"Image"}]
  LOADK R30 K87 ["HorizontalFlex"]
  SETTABLEKS R30 R29 K218 ["Image"]
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K88 ["ItemLineAlignment"]
  NEWTABLE R24 0 0
  NEWTABLE R25 0 3
  MOVE R26 R2
  LOADK R27 K82 [UDim2.fromScale]
  DUPTABLE R28 K285 [{"Image"}]
  LOADK R29 K89 [{"FillDirection", "Padding", "SortOrder", "HorizontalFlex", "ItemLineAlignment"}]
  SETTABLEKS R29 R28 K218 ["Image"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K84 ["FillDirection"]
  DUPTABLE R29 K285 [{"Image"}]
  LOADK R30 K90 ["Horizontal"]
  SETTABLEKS R30 R29 K218 ["Image"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K86 ["SortOrder"]
  DUPTABLE R30 K285 [{"Image"}]
  LOADK R31 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K218 ["Image"]
  CALL R28 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K92 ["$GlobalSpace200"]
  DUPTABLE R15 K225 [{"BackgroundTransparency"}]
  LOADK R16 K26 ["$BackgroundTransparent"]
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  NEWTABLE R16 0 3
  MOVE R17 R2
  LOADK R18 K93 ["LayoutOrder"]
  DUPTABLE R19 K158 [{"CornerRadius"}]
  LOADK R20 K163 ["$GlobalRadiusMedium"]
  SETTABLEKS R20 R19 K157 ["CornerRadius"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K94 [Enum.SortOrder.LayoutOrder]
  DUPTABLE R20 K261 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
  GETIMPORT R21 K263 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R21 R20 K259 ["ApplyStrokeMode"]
  LOADK R21 K67 ["$SemanticColorDivider"]
  SETTABLEKS R21 R20 K228 ["Color"]
  LOADK R21 K8 ["createStyleRule"]
  SETTABLEKS R21 R20 K260 ["Thickness"]
  LOADK R21 K68 ["$SemanticColorDividerTransparency"]
  SETTABLEKS R21 R20 K230 ["Transparency"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K95 ["UIFlexAlignment"]
  DUPTABLE R21 K225 [{"BackgroundTransparency"}]
  LOADK R22 K26 ["$BackgroundTransparent"]
  SETTABLEKS R22 R21 K23 ["BackgroundTransparency"]
  NEWTABLE R22 0 3
  MOVE R23 R2
  LOADK R24 K93 ["LayoutOrder"]
  DUPTABLE R25 K158 [{"CornerRadius"}]
  LOADK R26 K163 ["$GlobalRadiusMedium"]
  SETTABLEKS R26 R25 K157 ["CornerRadius"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K96 ["SpaceBetween"]
  DUPTABLE R26 K25 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADK R27 K26 ["$BackgroundTransparent"]
  SETTABLEKS R27 R26 K23 ["BackgroundTransparency"]
  LOADK R27 K27 ["$BorderNone"]
  SETTABLEKS R27 R26 K24 ["BorderSizePixel"]
  NEWTABLE R27 0 2
  MOVE R28 R2
  LOADK R29 K208 [":hover"]
  DUPTABLE R30 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R31 K134 ["$SemanticColorStateLayerHover"]
  SETTABLEKS R31 R30 K29 ["BackgroundColor3"]
  LOADK R31 K135 ["$SemanticColorStateLayerHoverTransparency"]
  SETTABLEKS R31 R30 K23 ["BackgroundTransparency"]
  CALL R28 2 1
  MOVE R29 R2
  LOADK R30 K97 [Enum.UIFlexAlignment.SpaceBetween]
  DUPTABLE R31 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R32 K212 ["$SemanticColorStateLayerPress"]
  SETTABLEKS R32 R31 K29 ["BackgroundColor3"]
  LOADK R32 K211 ["$SemanticColorStateLayerPressTransparency"]
  SETTABLEKS R32 R31 K23 ["BackgroundTransparency"]
  CALL R29 2 -1
  SETLIST R27 R28 -1 [1]
  CALL R24 3 1
  MOVE R25 R2
  LOADK R26 K98 ["Center"]
  DUPTABLE R27 K355 [{"TextSize", "AutoButtonColor", "BorderSizePixel"}]
  LOADK R28 K124 ["$FontSize150"]
  SETTABLEKS R28 R27 K35 ["TextSize"]
  LOADB R28 0
  SETTABLEKS R28 R27 K189 ["AutoButtonColor"]
  LOADK R28 K27 ["$BorderNone"]
  SETTABLEKS R28 R27 K24 ["BorderSizePixel"]
  NEWTABLE R28 0 3
  MOVE R29 R2
  LOADK R30 K75 ["::UIPadding"]
  DUPTABLE R31 K78 [{"PaddingLeft", "PaddingRight"}]
  LOADK R32 K79 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K76 ["PaddingLeft"]
  LOADK R32 K79 ["$GlobalSpace150"]
  SETTABLEKS R32 R31 K77 ["PaddingRight"]
  CALL R29 2 1
  MOVE R30 R2
  LOADK R31 K206 [".State-Default"]
  DUPTABLE R32 K356 [{"BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R33 K26 ["$BackgroundTransparent"]
  SETTABLEKS R33 R32 K23 ["BackgroundTransparency"]
  LOADK R33 K41 ["$FontWeight700"]
  SETTABLEKS R33 R32 K17 ["Font"]
  LOADK R33 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R33 R32 K34 ["TextColor3"]
  CALL R30 2 1
  MOVE R31 R2
  LOADK R32 K125 [".State-Selected"]
  DUPTABLE R33 K126 [{"BackgroundColor3", "BackgroundTransparency", "Font", "TextColor3"}]
  LOADK R34 K127 ["$SemanticColorStatesSelected"]
  SETTABLEKS R34 R33 K29 ["BackgroundColor3"]
  LOADK R34 K128 ["$SemanticColorStatesSelectedTransparency"]
  SETTABLEKS R34 R33 K23 ["BackgroundTransparency"]
  LOADK R34 K41 ["$FontWeight700"]
  SETTABLEKS R34 R33 K17 ["Font"]
  LOADK R34 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R34 R33 K34 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  MOVE R14 R2
  LOADK R15 K101 [{"FillDirection", "Padding", "SortOrder"}]
  DUPTABLE R16 K358 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
  GETIMPORT R17 K361 [Color3.fromHex]
  LOADK R18 K106 [".X-RowSpace200"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K29 ["BackgroundColor3"]
  LOADK R17 K226 ["$BackgroundNonTransparent"]
  SETTABLEKS R17 R16 K23 ["BackgroundTransparency"]
  GETIMPORT R17 K64 [UDim2.new]
  LOADN R18 0
  LOADN R19 40
  LOADN R20 0
  LOADN R21 24
  CALL R17 4 1
  SETTABLEKS R17 R16 K61 ["Size"]
  NEWTABLE R17 0 6
  MOVE R18 R2
  LOADK R19 K107 [".X-ColumnSpace25"]
  DUPTABLE R20 K158 [{"CornerRadius"}]
  LOADK R21 K108 ["Vertical"]
  SETTABLEKS R21 R20 K157 ["CornerRadius"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K75 ["::UIPadding"]
  DUPTABLE R21 K365 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
  LOADK R22 K110 ["$GlobalSpace25"]
  SETTABLEKS R22 R21 K115 ["PaddingBottom"]
  LOADK R22 K110 ["$GlobalSpace25"]
  SETTABLEKS R22 R21 K76 ["PaddingLeft"]
  LOADK R22 K110 ["$GlobalSpace25"]
  SETTABLEKS R22 R21 K77 ["PaddingRight"]
  LOADK R22 K110 ["$GlobalSpace25"]
  SETTABLEKS R22 R21 K114 ["PaddingTop"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K83 ["::UIListLayout"]
  DUPTABLE R22 K367 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R23 K109 [Enum.FillDirection.Vertical]
  SETTABLEKS R23 R22 K84 ["FillDirection"]
  GETIMPORT R23 K368 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K366 ["HorizontalAlignment"]
  GETIMPORT R23 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R23 R22 K86 ["SortOrder"]
  GETIMPORT R23 K284 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K282 ["VerticalAlignment"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K65 ["> Frame"]
  DUPTABLE R23 K369 [{"BackgroundColor3", "Size"}]
  LOADK R24 K114 ["PaddingTop"]
  SETTABLEKS R24 R23 K29 ["BackgroundColor3"]
  GETIMPORT R24 K64 [UDim2.new]
  LOADN R25 0
  LOADN R26 20
  LOADN R27 0
  LOADN R28 20
  CALL R24 4 1
  SETTABLEKS R24 R23 K61 ["Size"]
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K107 [".X-ColumnSpace25"]
  DUPTABLE R27 K158 [{"CornerRadius"}]
  LOADK R28 K108 ["Vertical"]
  SETTABLEKS R28 R27 K157 ["CornerRadius"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K125 [".State-Selected"]
  DUPTABLE R24 K371 [{"BackgroundColor3"}]
  GETIMPORT R25 K361 [Color3.fromHex]
  LOADK R26 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  CALL R25 1 1
  SETTABLEKS R25 R24 K29 ["BackgroundColor3"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K83 ["::UIListLayout"]
  DUPTABLE R28 K373 [{"HorizontalAlignment"}]
  GETIMPORT R29 K375 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R29 R28 K366 ["HorizontalAlignment"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K130 [".State-Disabled"]
  DUPTABLE R25 K225 [{"BackgroundTransparency"}]
  LOADK R26 K120 [{"PaddingRight"}]
  SETTABLEKS R26 R25 K23 ["BackgroundTransparency"]
  NEWTABLE R26 0 1
  MOVE R27 R2
  LOADK R28 K65 ["> Frame"]
  DUPTABLE R29 K225 [{"BackgroundTransparency"}]
  LOADK R30 K120 [{"PaddingRight"}]
  SETTABLEKS R30 R29 K23 ["BackgroundTransparency"]
  CALL R27 2 -1
  SETLIST R26 R27 -1 [1]
  CALL R23 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  MOVE R15 R2
  LOADK R16 K121 [".X-RowXS"]
  DUPTABLE R17 K379 [{"Active", "AutoButtonColor", "AnchorPoint", "Position", "Text", "ZIndex"}]
  LOADB R18 1
  SETTABLEKS R18 R17 K378 ["Active"]
  LOADB R18 0
  SETTABLEKS R18 R17 K189 ["AutoButtonColor"]
  GETIMPORT R18 K58 [Vector2.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K137 ["AnchorPoint"]
  GETIMPORT R18 K82 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K140 ["Position"]
  LOADK R18 K192 [""]
  SETTABLEKS R18 R17 K190 ["Text"]
  LOADN R18 2
  SETTABLEKS R18 R17 K240 ["ZIndex"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K124 ["$FontSize150"]
  DUPTABLE R18 K381 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R19 K58 [Vector2.new]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K137 ["AnchorPoint"]
  GETIMPORT R19 K64 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 1
  CALL R19 4 1
  SETTABLEKS R19 R18 K140 ["Position"]
  GETIMPORT R19 K64 [UDim2.new]
  LOADN R20 0
  LOADN R21 22
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K61 ["Size"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K227 ["::UIGradient"]
  DUPTABLE R22 K231 [{"Color", "Rotation", "Transparency"}]
  GETIMPORT R23 K383 [ColorSequence.new]
  GETIMPORT R24 K361 [Color3.fromHex]
  LOADK R25 K128 ["$SemanticColorStatesSelectedTransparency"]
  CALL R24 1 -1
  CALL R23 -1 1
  SETTABLEKS R23 R22 K228 ["Color"]
  LOADN R23 180
  SETTABLEKS R23 R22 K229 ["Rotation"]
  GETIMPORT R23 K386 [NumberSequence.new]
  NEWTABLE R24 0 3
  GETIMPORT R25 K388 [NumberSequenceKeypoint.new]
  LOADN R26 0
  LOADN R27 0
  CALL R25 2 1
  GETIMPORT R26 K388 [NumberSequenceKeypoint.new]
  LOADK R27 K145 [0.5]
  LOADN R28 0
  CALL R26 2 1
  GETIMPORT R27 K388 [NumberSequenceKeypoint.new]
  LOADN R28 1
  LOADN R29 1
  CALL R27 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R23 1 1
  SETTABLEKS R23 R22 K230 ["Transparency"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  DUPTABLE R19 K62 [{"Size"}]
  GETIMPORT R20 K64 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 84
  CALL R20 4 1
  SETTABLEKS R20 R19 K61 ["Size"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K134 ["$SemanticColorStateLayerHover"]
  DUPTABLE R20 K62 [{"Size"}]
  GETIMPORT R21 K64 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 70
  CALL R21 4 1
  SETTABLEKS R21 R20 K61 ["Size"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K135 ["$SemanticColorStateLayerHoverTransparency"]
  DUPTABLE R21 K62 [{"Size"}]
  GETIMPORT R22 K64 [UDim2.new]
  LOADN R23 1
  LOADN R24 224
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K61 ["Size"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K136 [".Component-RibbonTabs"]
  DUPTABLE R22 K153 [{"AnchorPoint", "Position"}]
  GETIMPORT R23 K58 [Vector2.new]
  LOADN R24 0
  LOADK R25 K145 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K137 ["AnchorPoint"]
  GETIMPORT R23 K64 [UDim2.new]
  LOADN R24 0
  LOADN R25 165
  LOADK R26 K145 [0.5]
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K140 ["Position"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K137 ["AnchorPoint"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 3
  MOVE R25 R2
  LOADK R26 K83 ["::UIListLayout"]
  DUPTABLE R27 K394 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
  GETIMPORT R28 K91 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K84 ["FillDirection"]
  GETIMPORT R28 K368 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R28 R27 K366 ["HorizontalAlignment"]
  GETIMPORT R28 K94 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K86 ["SortOrder"]
  GETIMPORT R28 K284 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K282 ["VerticalAlignment"]
  LOADK R28 K104 ["$GlobalSpace100"]
  SETTABLEKS R28 R27 K85 ["Padding"]
  CALL R25 2 1
  MOVE R26 R2
  LOADK R27 K193 ["> TextLabel"]
  DUPTABLE R28 K315 [{"BackgroundTransparency", "Font", "TextSize", "LayoutOrder", "TextColor3"}]
  LOADK R29 K26 ["$BackgroundTransparent"]
  SETTABLEKS R29 R28 K23 ["BackgroundTransparency"]
  LOADK R29 K37 ["$FontWeight400"]
  SETTABLEKS R29 R28 K17 ["Font"]
  LOADK R29 K124 ["$FontSize150"]
  SETTABLEKS R29 R28 K35 ["TextSize"]
  LOADN R29 0
  SETTABLEKS R29 R28 K93 ["LayoutOrder"]
  LOADK R29 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R29 R28 K34 ["TextColor3"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K130 [".State-Disabled"]
  NEWTABLE R29 0 0
  NEWTABLE R30 0 1
  MOVE R31 R2
  LOADK R32 K193 ["> TextLabel"]
  DUPTABLE R33 K45 [{"TextColor3"}]
  LOADK R34 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R34 R33 K34 ["TextColor3"]
  CALL R31 2 -1
  SETLIST R30 R31 -1 [1]
  CALL R27 3 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  MOVE R22 R2
  LOADK R23 K139 ["AutomaticSize"]
  DUPTABLE R24 K243 [{"AutoButtonColor", "Text", "Size"}]
  LOADB R25 0
  SETTABLEKS R25 R24 K189 ["AutoButtonColor"]
  LOADK R25 K192 [""]
  SETTABLEKS R25 R24 K190 ["Text"]
  GETIMPORT R25 K64 [UDim2.new]
  LOADN R26 0
  LOADN R27 85
  LOADN R28 0
  LOADN R29 28
  CALL R25 4 1
  SETTABLEKS R25 R24 K61 ["Size"]
  NEWTABLE R25 0 11
  MOVE R26 R2
  LOADK R27 K83 ["::UIListLayout"]
  DUPTABLE R28 K396 [{"HorizontalFlex"}]
  GETIMPORT R29 K398 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R29 R28 K87 ["HorizontalFlex"]
  CALL R26 2 1
  MOVE R27 R2
  LOADK R28 K75 ["::UIPadding"]
  DUPTABLE R29 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  LOADK R30 K104 ["$GlobalSpace100"]
  SETTABLEKS R30 R29 K76 ["PaddingLeft"]
  LOADK R30 K102 ["$GlobalSpace50"]
  SETTABLEKS R30 R29 K77 ["PaddingRight"]
  LOADK R30 K102 ["$GlobalSpace50"]
  SETTABLEKS R30 R29 K114 ["PaddingTop"]
  LOADK R30 K102 ["$GlobalSpace50"]
  SETTABLEKS R30 R29 K115 ["PaddingBottom"]
  CALL R27 2 1
  MOVE R28 R2
  LOADK R29 K143 ["HorizontalScrollBarInset"]
  NEWTABLE R30 0 0
  NEWTABLE R31 0 1
  MOVE R32 R2
  LOADK R33 K83 ["::UIListLayout"]
  DUPTABLE R34 K396 [{"HorizontalFlex"}]
  GETIMPORT R35 K398 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R35 R34 K87 ["HorizontalFlex"]
  CALL R32 2 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 1
  MOVE R29 R2
  LOADK R30 K144 [{"AnchorPoint", "AutomaticCanvasSize", "AutomaticSize", "Position", "ScrollingDirection", "ScrollBarThickness", "HorizontalScrollBarInset"}]
  DUPTABLE R31 K62 [{"Size"}]
  LOADK R32 K200 ["$IconSmall"]
  SETTABLEKS R32 R31 K61 ["Size"]
  NEWTABLE R32 0 1
  MOVE R33 R2
  LOADK R34 K145 [0.5]
  DUPTABLE R35 K404 [{"FlexMode", "ShrinkRation"}]
  GETIMPORT R36 K407 [Enum.UIFlexMode.Custom]
  SETTABLEKS R36 R35 K402 ["FlexMode"]
  LOADN R36 0
  SETTABLEKS R36 R35 K403 ["ShrinkRation"]
  CALL R33 2 -1
  SETLIST R32 R33 -1 [1]
  CALL R29 3 1
  MOVE R30 R2
  LOADK R31 K152 [Enum.ScrollBarInset.None]
  DUPTABLE R32 K250 [{"LayoutOrder"}]
  LOADN R33 0
  SETTABLEKS R33 R32 K93 ["LayoutOrder"]
  NEWTABLE R33 0 1
  MOVE R34 R2
  LOADK R35 K251 [".Right"]
  DUPTABLE R36 K250 [{"LayoutOrder"}]
  LOADN R37 3
  SETTABLEKS R37 R36 K93 ["LayoutOrder"]
  CALL R34 2 -1
  SETLIST R33 R34 -1 [1]
  CALL R30 3 1
  MOVE R31 R2
  LOADK R32 K153 [{"AnchorPoint", "Position"}]
  DUPTABLE R33 K410 [{"BorderSizePixel", "BackgroundTransparency", "Image", "LayoutOrder"}]
  LOADK R34 K27 ["$BorderNone"]
  SETTABLEKS R34 R33 K24 ["BorderSizePixel"]
  LOADN R34 1
  SETTABLEKS R34 R33 K23 ["BackgroundTransparency"]
  JUMPIFNOT R4 [+2]
  LOADK R34 K155 [Enum.AutomaticSize.None]
  JUMP [+1]
  LOADK R34 K156 [".X-CornerXS ::UICorner"]
  SETTABLEKS R34 R33 K218 ["Image"]
  LOADN R34 4
  SETTABLEKS R34 R33 K93 ["LayoutOrder"]
  NEWTABLE R34 0 1
  MOVE R35 R2
  LOADK R36 K157 ["CornerRadius"]
  DUPTABLE R37 K285 [{"Image"}]
  JUMPIFNOT R4 [+2]
  LOADK R38 K158 [{"CornerRadius"}]
  JUMP [+1]
  LOADK R38 K159 ["$GlobalRadiusXSmall"]
  SETTABLEKS R38 R37 K218 ["Image"]
  CALL R35 2 -1
  SETLIST R34 R35 -1 [1]
  CALL R31 3 1
  MOVE R32 R2
  LOADK R33 K160 [".X-CornerS ::UICorner"]
  DUPTABLE R34 K418 [{"Font", "TextSize", "TextTruncate", "TextXAlignment", "LayoutOrder"}]
  LOADK R35 K37 ["$FontWeight400"]
  SETTABLEKS R35 R34 K17 ["Font"]
  LOADK R35 K124 ["$FontSize150"]
  SETTABLEKS R35 R34 K35 ["TextSize"]
  GETIMPORT R35 K420 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R35 R34 K417 ["TextTruncate"]
  GETIMPORT R35 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K49 ["TextXAlignment"]
  LOADN R35 2
  SETTABLEKS R35 R34 K93 ["LayoutOrder"]
  CALL R32 2 1
  MOVE R33 R2
  LOADK R34 K206 [".State-Default"]
  DUPTABLE R35 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R36 K69 [".Role-DividerV"]
  SETTABLEKS R36 R35 K29 ["BackgroundColor3"]
  LOADK R36 K70 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R36 R35 K23 ["BackgroundTransparency"]
  NEWTABLE R36 0 2
  MOVE R37 R2
  LOADK R38 K160 [".X-CornerS ::UICorner"]
  DUPTABLE R39 K45 [{"TextColor3"}]
  LOADK R40 K38 ["$SemanticColorContentMuted"]
  SETTABLEKS R40 R39 K34 ["TextColor3"]
  CALL R37 2 1
  MOVE R38 R2
  LOADK R39 K152 [Enum.ScrollBarInset.None]
  DUPTABLE R40 K204 [{"ImageTransparency"}]
  LOADK R41 K165 ["UDim"]
  SETTABLEKS R41 R40 K203 ["ImageTransparency"]
  CALL R38 2 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  MOVE R34 R2
  LOADK R35 K166 [UDim.new]
  DUPTABLE R36 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R37 K75 ["::UIPadding"]
  SETTABLEKS R37 R36 K29 ["BackgroundColor3"]
  LOADK R37 K76 ["PaddingLeft"]
  SETTABLEKS R37 R36 K23 ["BackgroundTransparency"]
  NEWTABLE R37 0 2
  MOVE R38 R2
  LOADK R39 K160 [".X-CornerS ::UICorner"]
  DUPTABLE R40 K45 [{"TextColor3"}]
  LOADK R41 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R41 R40 K34 ["TextColor3"]
  CALL R38 2 1
  MOVE R39 R2
  LOADK R40 K152 [Enum.ScrollBarInset.None]
  DUPTABLE R41 K204 [{"ImageTransparency"}]
  LOADN R42 0
  SETTABLEKS R42 R41 K203 ["ImageTransparency"]
  CALL R39 2 -1
  SETLIST R37 R38 -1 [1]
  CALL R34 3 1
  MOVE R35 R2
  LOADK R36 K71 [".Small"]
  NEWTABLE R37 0 0
  NEWTABLE R38 0 3
  MOVE R39 R2
  LOADK R40 K2 ["Parent"]
  DUPTABLE R41 K328 [{"ApplyStrokeMode", "Color", "Thickness"}]
  GETIMPORT R42 K263 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R42 R41 K259 ["ApplyStrokeMode"]
  LOADK R42 K73 [".Large"]
  SETTABLEKS R42 R41 K228 ["Color"]
  LOADK R42 K8 ["createStyleRule"]
  SETTABLEKS R42 R41 K260 ["Thickness"]
  CALL R39 2 1
  MOVE R40 R2
  LOADK R41 K160 [".X-CornerS ::UICorner"]
  DUPTABLE R42 K45 [{"TextColor3"}]
  LOADK R43 K129 ["$SemanticColorContentStandard"]
  SETTABLEKS R43 R42 K34 ["TextColor3"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K152 [Enum.ScrollBarInset.None]
  DUPTABLE R43 K204 [{"ImageTransparency"}]
  LOADN R44 0
  SETTABLEKS R44 R43 K203 ["ImageTransparency"]
  CALL R41 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 1
  MOVE R36 R2
  LOADK R37 K130 [".State-Disabled"]
  DUPTABLE R38 K133 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R39 K69 [".Role-DividerV"]
  SETTABLEKS R39 R38 K29 ["BackgroundColor3"]
  LOADK R39 K70 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  SETTABLEKS R39 R38 K23 ["BackgroundTransparency"]
  NEWTABLE R39 0 2
  MOVE R40 R2
  LOADK R41 K160 [".X-CornerS ::UICorner"]
  DUPTABLE R42 K45 [{"TextColor3"}]
  LOADK R43 K131 ["$SemanticColorContentDisabled"]
  SETTABLEKS R43 R42 K34 ["TextColor3"]
  CALL R40 2 1
  MOVE R41 R2
  LOADK R42 K152 [Enum.ScrollBarInset.None]
  DUPTABLE R43 K204 [{"ImageTransparency"}]
  LOADK R44 K205 ["$IconDisabled"]
  SETTABLEKS R44 R43 K203 ["ImageTransparency"]
  CALL R41 2 -1
  SETLIST R39 R40 -1 [1]
  CALL R36 3 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 -1
  SETLIST R8 R9 -1 [49]
  MOVE R9 R3
  LOADK R10 K167 [".X-PadRibbonTool ::UIPadding"]
  MOVE R11 R8
  DUPTABLE R12 K428 [{"SpinboxSize", "SpinboxShortSize", "Size", "SizeDense", "SliderSize"}]
  GETIMPORT R13 K64 [UDim2.new]
  LOADN R14 0
  LOADN R15 90
  LOADN R16 0
  LOADN R17 28
  CALL R13 4 1
  SETTABLEKS R13 R12 K424 ["SpinboxSize"]
  GETIMPORT R13 K64 [UDim2.new]
  LOADN R14 0
  LOADN R15 61
  LOADN R16 0
  LOADN R17 28
  CALL R13 4 1
  SETTABLEKS R13 R12 K425 ["SpinboxShortSize"]
  GETIMPORT R13 K64 [UDim2.new]
  LOADN R14 0
  LOADN R15 90
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  SETTABLEKS R13 R12 K61 ["Size"]
  GETIMPORT R13 K64 [UDim2.new]
  LOADN R14 0
  LOADN R15 90
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K426 ["SizeDense"]
  JUMPIFNOT R7 [+8]
  GETIMPORT R13 K64 [UDim2.new]
  LOADN R14 0
  LOADN R15 180
  LOADN R16 0
  LOADN R17 24
  CALL R13 4 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K427 ["SliderSize"]
  CALL R9 3 -1
  RETURN R9 -1
