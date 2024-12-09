MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R4 R1 K8 ["Styling"]
  GETTABLEKS R3 R4 K10 ["createStyleSheet"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["StyleConstants"]
  CALL R4 1 1
  NEWTABLE R5 0 14
  MOVE R6 R2
  LOADK R7 K14 ["TextLabel, TextButton, TextBox"]
  DUPTABLE R8 K17 [{"Font", "TextSize"}]
  GETTABLEKS R9 R4 K18 ["defaultFont"]
  SETTABLEKS R9 R8 K15 ["Font"]
  GETTABLEKS R9 R4 K19 ["normalFontSize"]
  SETTABLEKS R9 R8 K16 ["TextSize"]
  CALL R6 2 1
  MOVE R7 R2
  LOADK R8 K20 ["ScrollingFrame"]
  DUPTABLE R9 K23 [{"ScrollBarThickness", "ScrollBarImageColor3"}]
  LOADN R10 8
  SETTABLEKS R10 R9 K21 ["ScrollBarThickness"]
  LOADK R10 K24 ["$SecondaryButtonBackgroundColor"]
  SETTABLEKS R10 R9 K22 ["ScrollBarImageColor3"]
  CALL R7 2 1
  MOVE R8 R2
  LOADK R9 K25 ["Frame"]
  DUPTABLE R10 K27 [{"BorderSizePixel"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K26 ["BorderSizePixel"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K28 [".HeaderButton"]
  DUPTABLE R11 K34 [{"Size", "TextSize", "AutomaticSize", "BackgroundTransparency", "Wraps", "AutoButtonColor"}]
  GETIMPORT R12 K37 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R17 R4 K39 ["headerFontSize"]
  ADDK R16 R17 K38 [8]
  CALL R12 4 1
  SETTABLEKS R12 R11 K29 ["Size"]
  GETTABLEKS R12 R4 K39 ["headerFontSize"]
  SETTABLEKS R12 R11 K16 ["TextSize"]
  GETIMPORT R12 K42 [Enum.AutomaticSize.X]
  SETTABLEKS R12 R11 K30 ["AutomaticSize"]
  LOADN R12 0
  SETTABLEKS R12 R11 K31 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["Wraps"]
  LOADB R12 0
  SETTABLEKS R12 R11 K33 ["AutoButtonColor"]
  NEWTABLE R12 0 5
  MOVE R13 R2
  LOADK R14 K43 ["::UIPadding"]
  DUPTABLE R15 K48 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R16 K50 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R4 K51 ["buttonPaddingHorizontal"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K44 ["PaddingLeft"]
  GETIMPORT R16 K50 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R4 K51 ["buttonPaddingHorizontal"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K45 ["PaddingRight"]
  GETIMPORT R16 K50 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R4 K52 ["buttonPaddingVertical"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["PaddingTop"]
  GETIMPORT R16 K50 [UDim.new]
  LOADN R17 0
  GETTABLEKS R18 R4 K52 ["buttonPaddingVertical"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["PaddingBottom"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K53 ["::UICorner"]
  DUPTABLE R16 K55 [{"CornerRadius"}]
  GETIMPORT R17 K50 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R4 K56 ["buttonCornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["CornerRadius"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K57 [".Primary"]
  DUPTABLE R17 K60 [{"TextColor3", "BackgroundColor3"}]
  LOADK R18 K61 ["$ButtonTextColor"]
  SETTABLEKS R18 R17 K58 ["TextColor3"]
  LOADK R18 K62 ["$PrimaryButtonBackgroundColor"]
  SETTABLEKS R18 R17 K59 ["BackgroundColor3"]
  NEWTABLE R18 0 1
  MOVE R19 R2
  LOADK R20 K63 [":hover"]
  DUPTABLE R21 K64 [{"BackgroundColor3"}]
  LOADK R22 K65 ["$PrimaryButtonHoverBackgroundColor"]
  SETTABLEKS R22 R21 K59 ["BackgroundColor3"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  MOVE R16 R2
  LOADK R17 K66 [".Secondary"]
  DUPTABLE R18 K60 [{"TextColor3", "BackgroundColor3"}]
  LOADK R19 K61 ["$ButtonTextColor"]
  SETTABLEKS R19 R18 K58 ["TextColor3"]
  LOADK R19 K24 ["$SecondaryButtonBackgroundColor"]
  SETTABLEKS R19 R18 K59 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K63 [":hover"]
  DUPTABLE R22 K64 [{"BackgroundColor3"}]
  LOADK R23 K67 ["$SecondaryButtonHoverBackgroundColor"]
  SETTABLEKS R23 R22 K59 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K68 [".Inactive"]
  DUPTABLE R19 K70 [{"TextColor3", "BackgroundTransparency", "TextTransparency", "BackgroundColor3"}]
  LOADK R20 K61 ["$ButtonTextColor"]
  SETTABLEKS R20 R19 K58 ["TextColor3"]
  LOADK R20 K71 [0.4]
  SETTABLEKS R20 R19 K31 ["BackgroundTransparency"]
  LOADK R20 K71 [0.4]
  SETTABLEKS R20 R19 K69 ["TextTransparency"]
  LOADK R20 K62 ["$PrimaryButtonBackgroundColor"]
  SETTABLEKS R20 R19 K59 ["BackgroundColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K63 [":hover"]
  DUPTABLE R23 K64 [{"BackgroundColor3"}]
  LOADK R24 K62 ["$PrimaryButtonBackgroundColor"]
  SETTABLEKS R24 R23 K59 ["BackgroundColor3"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  MOVE R10 R2
  LOADK R11 K72 [".CX-Invisible"]
  DUPTABLE R12 K73 [{"BackgroundTransparency", "BorderSizePixel"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K31 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K26 ["BorderSizePixel"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K74 [".CX-Divider"]
  DUPTABLE R13 K75 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R14 K37 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K29 ["Size"]
  LOADK R14 K76 ["$DividerColor"]
  SETTABLEKS R14 R13 K59 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K26 ["BorderSizePixel"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K77 [".Width-Scaling"]
  DUPTABLE R14 K79 [{"BorderSizePixel", "Size", "SizeConstraint"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K26 ["BorderSizePixel"]
  GETIMPORT R15 K37 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K29 ["Size"]
  GETIMPORT R15 K81 [Enum.SizeConstraint.RelativeXX]
  SETTABLEKS R15 R14 K78 ["SizeConstraint"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K82 [">> .Widget-Button"]
  DUPTABLE R15 K83 [{"BackgroundTransparency"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K31 ["BackgroundTransparency"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K84 [".Active"]
  DUPTABLE R16 K85 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R17 K86 ["$ControlActiveColor"]
  SETTABLEKS R17 R16 K59 ["BackgroundColor3"]
  LOADK R17 K87 [0.3]
  SETTABLEKS R17 R16 K31 ["BackgroundTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K88 [".Hovered"]
  DUPTABLE R17 K85 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R18 K86 ["$ControlActiveColor"]
  SETTABLEKS R18 R17 K59 ["BackgroundColor3"]
  LOADK R18 K89 [0.6]
  SETTABLEKS R18 R17 K31 ["BackgroundTransparency"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K90 [".Hovered.Active"]
  DUPTABLE R18 K85 [{"BackgroundColor3", "BackgroundTransparency"}]
  LOADK R19 K86 ["$ControlActiveColor"]
  SETTABLEKS R19 R18 K59 ["BackgroundColor3"]
  LOADK R19 K87 [0.3]
  SETTABLEKS R19 R18 K31 ["BackgroundTransparency"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K91 ["#ScrollableBlueprintContainer"]
  DUPTABLE R19 K95 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "BorderSizePixel", "ScrollBarImageColor3"}]
  GETIMPORT R20 K37 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  GETTABLEKS R25 R4 K96 ["deviceHeaderHeight"]
  MINUS R24 R25
  CALL R20 4 1
  SETTABLEKS R20 R19 K29 ["Size"]
  LOADK R20 K97 ["$BlueprintBackgroundColor"]
  SETTABLEKS R20 R19 K59 ["BackgroundColor3"]
  LOADN R20 8
  SETTABLEKS R20 R19 K21 ["ScrollBarThickness"]
  GETIMPORT R20 K99 [Enum.ScrollingDirection.XY]
  SETTABLEKS R20 R19 K92 ["ScrollingDirection"]
  GETIMPORT R20 K100 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K93 ["AutomaticCanvasSize"]
  GETIMPORT R20 K37 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K94 ["CanvasSize"]
  LOADN R20 0
  SETTABLEKS R20 R19 K26 ["BorderSizePixel"]
  LOADK R20 K24 ["$SecondaryButtonBackgroundColor"]
  SETTABLEKS R20 R19 K22 ["ScrollBarImageColor3"]
  NEWTABLE R20 0 1
  MOVE R21 R2
  LOADK R22 K101 [">> #GamepadAndVRLayoutContainer"]
  NEWTABLE R23 0 0
  NEWTABLE R24 0 1
  MOVE R25 R2
  LOADK R26 K102 ["::UIListLayout"]
  DUPTABLE R27 K106 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
  GETIMPORT R28 K108 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K103 ["SortOrder"]
  GETIMPORT R28 K110 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R28 R27 K104 ["HorizontalAlignment"]
  GETIMPORT R28 K112 [Enum.FillDirection.Vertical]
  SETTABLEKS R28 R27 K105 ["FillDirection"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  MOVE R18 R2
  LOADK R19 K113 [">> .Mapping-Widget"]
  DUPTABLE R20 K114 [{"BackgroundTransparency", "Size"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K31 ["BackgroundTransparency"]
  GETIMPORT R21 K37 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K29 ["Size"]
  NEWTABLE R21 0 3
  MOVE R22 R2
  LOADK R23 K115 [">> .Mapping-Label"]
  DUPTABLE R24 K116 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R25 K37 [UDim2.new]
  LOADK R26 K117 [0.04]
  LOADN R27 0
  LOADK R28 K117 [0.04]
  LOADN R29 0
  CALL R25 4 1
  SETTABLEKS R25 R24 K29 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K31 ["BackgroundTransparency"]
  NEWTABLE R25 0 1
  MOVE R26 R2
  LOADK R27 K118 [">> TextLabel"]
  DUPTABLE R28 K120 [{"Font", "BackgroundTransparency", "TextColor3", "TextSize", "TextScaled", "HorizontalAlignment"}]
  GETTABLEKS R29 R4 K121 ["defaultFontBold"]
  SETTABLEKS R29 R28 K15 ["Font"]
  LOADN R29 1
  SETTABLEKS R29 R28 K31 ["BackgroundTransparency"]
  LOADK R29 K122 ["$BlueprintLabelsColor"]
  SETTABLEKS R29 R28 K58 ["TextColor3"]
  GETTABLEKS R29 R4 K123 ["blueprintLabelFontSize"]
  SETTABLEKS R29 R28 K16 ["TextSize"]
  LOADB R29 1
  SETTABLEKS R29 R28 K119 ["TextScaled"]
  GETIMPORT R29 K110 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R29 R28 K104 ["HorizontalAlignment"]
  CALL R26 2 -1
  SETLIST R25 R26 -1 [1]
  CALL R22 3 1
  MOVE R23 R2
  LOADK R24 K124 [">> .Component-Arrow"]
  DUPTABLE R25 K126 [{"Color3"}]
  LOADK R26 K127 ["$BlueprintArrowColor"]
  SETTABLEKS R26 R25 K125 ["Color3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K128 [">> .Component-Arrow-Circle"]
  DUPTABLE R26 K130 [{"Size", "Color3", "AnchorPoint"}]
  GETIMPORT R27 K37 [UDim2.new]
  LOADK R28 K131 [0.02]
  LOADN R29 0
  LOADK R30 K131 [0.02]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K29 ["Size"]
  LOADK R27 K127 ["$BlueprintArrowColor"]
  SETTABLEKS R27 R26 K125 ["Color3"]
  GETIMPORT R27 K133 [Vector2.new]
  LOADK R28 K134 [0.5]
  LOADK R29 K134 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K129 ["AnchorPoint"]
  CALL R24 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K135 [">> .X-Circle"]
  NEWTABLE R21 0 0
  NEWTABLE R22 0 1
  MOVE R23 R2
  LOADK R24 K53 ["::UICorner"]
  DUPTABLE R25 K55 [{"CornerRadius"}]
  GETIMPORT R26 K50 [UDim.new]
  LOADN R27 1
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K54 ["CornerRadius"]
  CALL R23 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R19 3 -1
  SETLIST R5 R6 -1 [1]
  DUPTABLE R6 K138 [{"BlueprintWithMappingsPadding", "TooltipPadding"}]
  GETIMPORT R7 K50 [UDim.new]
  LOADK R8 K139 [0.2]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K136 ["BlueprintWithMappingsPadding"]
  GETIMPORT R7 K50 [UDim.new]
  LOADN R8 0
  LOADN R9 10
  CALL R7 2 1
  SETTABLEKS R7 R6 K137 ["TooltipPadding"]
  MOVE R7 R3
  LOADK R8 K2 ["ControlsEmulator"]
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 -1
  RETURN R7 -1
