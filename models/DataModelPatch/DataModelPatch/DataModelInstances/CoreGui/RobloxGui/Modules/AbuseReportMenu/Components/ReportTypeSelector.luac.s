PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R4 R1 K0 ["Tokens"]
  GETTABLEKS R3 R4 K1 ["Global"]
  GETTABLEKS R2 R3 K2 ["Size_100"]
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K3 ["menuWidth"]
  CALL R3 1 1
  GETUPVAL R4 2
  CALL R4 0 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["MenuItemHeightTight"]
  GETTABLEKS R8 R0 K3 ["menuWidth"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["MenuItemDynamicWidthOffset"]
  SUB R7 R8 R9
  GETTABLEKS R9 R3 K6 ["LeftWidth"]
  GETTABLEKS R10 R3 K7 ["RightWidth"]
  ADD R8 R9 R10
  FASTCALL2 MATH_MAX R7 R8 [+3]
  GETIMPORT R6 K10 [math.max]
  CALL R6 2 1
  GETTABLEKS R7 R0 K11 ["isSmallPortraitViewport"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["createElement"]
  LOADK R9 K13 ["Frame"]
  DUPTABLE R10 K17 [{"Size", "BackgroundTransparency", "AutomaticSize"}]
  GETIMPORT R11 K20 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K14 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K15 ["BackgroundTransparency"]
  GETIMPORT R11 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K16 ["AutomaticSize"]
  DUPTABLE R11 K28 [{"Layout", "Label", "MiddleWidthHolder", "Container"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K29 ["UIListLayout"]
  DUPTABLE R14 K34 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
  JUMPIFNOT R7 [+3]
  GETIMPORT R15 K36 [Enum.FillDirection.Vertical]
  JUMP [+2]
  GETIMPORT R15 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K30 ["FillDirection"]
  GETIMPORT R15 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K31 ["SortOrder"]
  GETIMPORT R15 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K32 ["HorizontalAlignment"]
  JUMPIFNOT R7 [+6]
  GETIMPORT R15 K44 [UDim.new]
  LOADN R16 0
  MOVE R17 R2
  CALL R15 2 1
  JUMP [+5]
  GETIMPORT R15 K44 [UDim.new]
  LOADN R16 0
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["Padding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["Layout"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K45 ["TextLabel"]
  DUPTABLE R14 K53 [{"Text", "Font", "LayoutOrder", "TextColor3", "TextTransparency", "TextSize", "AutomaticSize", "TextWrapped", "TextXAlignment", "Size", "BackgroundTransparency"}]
  GETTABLEKS R15 R0 K54 ["label"]
  SETTABLEKS R15 R14 K46 ["Text"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K55 ["default"]
  NAMECALL R15 R15 K56 ["getMedium"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K47 ["Font"]
  LOADN R15 1
  SETTABLEKS R15 R14 K39 ["LayoutOrder"]
  GETIMPORT R15 K58 [Color3.new]
  LOADN R16 1
  LOADN R17 1
  LOADN R18 1
  CALL R15 3 1
  SETTABLEKS R15 R14 K48 ["TextColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K49 ["TextTransparency"]
  GETTABLEKS R15 R3 K50 ["TextSize"]
  SETTABLEKS R15 R14 K50 ["TextSize"]
  GETIMPORT R15 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K16 ["AutomaticSize"]
  LOADB R15 1
  SETTABLEKS R15 R14 K51 ["TextWrapped"]
  GETIMPORT R15 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K52 ["TextXAlignment"]
  JUMPIFNOT R7 [+6]
  GETIMPORT R15 K62 [UDim2.fromOffset]
  MOVE R16 R6
  LOADN R17 0
  CALL R15 2 1
  JUMP [+10]
  GETIMPORT R15 K20 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R3 K6 ["LeftWidth"]
  LOADN R18 0
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K63 ["MenuItemHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K15 ["BackgroundTransparency"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Label"]
  JUMPIFNOT R7 [+2]
  LOADNIL R12
  JUMP [+37]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K13 ["Frame"]
  DUPTABLE R14 K64 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R15 K20 [UDim2.new]
  LOADN R16 0
  LOADN R18 0
  GETTABLEKS R22 R0 K3 ["menuWidth"]
  GETTABLEKS R23 R3 K6 ["LeftWidth"]
  SUB R21 R22 R23
  GETTABLEKS R22 R3 K7 ["RightWidth"]
  SUB R20 R21 R22
  SUBK R19 R20 K65 [100]
  FASTCALL2 MATH_MAX R18 R19 [+3]
  GETIMPORT R17 K10 [math.max]
  CALL R17 2 1
  LOADN R18 0
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K63 ["MenuItemHeight"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K15 ["BackgroundTransparency"]
  LOADN R15 2
  SETTABLEKS R15 R14 K39 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["MiddleWidthHolder"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["createElement"]
  LOADK R13 K13 ["Frame"]
  DUPTABLE R14 K64 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  JUMPIFNOT R7 [+6]
  GETIMPORT R15 K62 [UDim2.fromOffset]
  MOVE R16 R6
  MOVE R17 R5
  CALL R15 2 1
  JUMP [+8]
  GETIMPORT R15 K20 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R3 K7 ["RightWidth"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K15 ["BackgroundTransparency"]
  LOADN R15 3
  SETTABLEKS R15 R14 K39 ["LayoutOrder"]
  DUPTABLE R15 K69 [{"Layout", "LeftChevron", "ButtonContainer", "RightChevron"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K29 ["UIListLayout"]
  DUPTABLE R18 K71 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R19 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K30 ["FillDirection"]
  GETIMPORT R19 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K31 ["SortOrder"]
  JUMPIFNOT R7 [+3]
  GETIMPORT R19 K72 [Enum.HorizontalAlignment.Left]
  JUMP [+2]
  GETIMPORT R19 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R19 R18 K32 ["HorizontalAlignment"]
  GETIMPORT R19 K73 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K70 ["VerticalAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["Layout"]
  GETTABLEKS R17 R0 K74 ["isSelectionDisabled"]
  JUMPIFNOT R17 [+2]
  LOADNIL R16
  JUMP [+30]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K12 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K80 [{"size", "iconSize", "icon", "onActivated", "layoutOrder"}]
  GETIMPORT R19 K62 [UDim2.fromOffset]
  LOADN R20 32
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K75 ["size"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K81 ["Medium"]
  SETTABLEKS R19 R18 K76 ["iconSize"]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K82 ["icons/actions/cycleLeft"]
  SETTABLEKS R19 R18 K77 ["icon"]
  GETTABLEKS R19 R0 K83 ["onClickLeft"]
  SETTABLEKS R19 R18 K78 ["onActivated"]
  LOADN R19 1
  SETTABLEKS R19 R18 K79 ["layoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K66 ["LeftChevron"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K12 ["createElement"]
  LOADK R17 K13 ["Frame"]
  DUPTABLE R18 K84 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R19 K86 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K16 ["AutomaticSize"]
  GETIMPORT R19 K20 [UDim2.new]
  LOADN R20 0
  GETTABLEKS R22 R3 K7 ["RightWidth"]
  SUBK R21 R22 K87 [64]
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K14 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K15 ["BackgroundTransparency"]
  LOADN R19 2
  SETTABLEKS R19 R18 K39 ["LayoutOrder"]
  DUPTABLE R19 K89 [{"ToggleButton"}]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K12 ["createElement"]
  GETUPVAL R21 9
  DUPTABLE R22 K93 [{"size", "text", "onActivated", "layoutOrder", "isDisabled", "fontStyle"}]
  GETIMPORT R23 K20 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K75 ["size"]
  GETTABLEKS R23 R0 K94 ["abuseType"]
  SETTABLEKS R23 R22 K90 ["text"]
  GETTABLEKS R23 R0 K95 ["onClickRight"]
  SETTABLEKS R23 R22 K78 ["onActivated"]
  LOADN R23 2
  SETTABLEKS R23 R22 K79 ["layoutOrder"]
  GETTABLEKS R23 R0 K74 ["isSelectionDisabled"]
  SETTABLEKS R23 R22 K91 ["isDisabled"]
  GETTABLEKS R23 R4 K96 ["FontStyle"]
  SETTABLEKS R23 R22 K92 ["fontStyle"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K88 ["ToggleButton"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K67 ["ButtonContainer"]
  GETTABLEKS R17 R0 K74 ["isSelectionDisabled"]
  JUMPIFNOT R17 [+2]
  LOADNIL R16
  JUMP [+30]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K12 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K80 [{"size", "iconSize", "icon", "onActivated", "layoutOrder"}]
  GETIMPORT R19 K62 [UDim2.fromOffset]
  LOADN R20 32
  LOADN R21 32
  CALL R19 2 1
  SETTABLEKS R19 R18 K75 ["size"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K81 ["Medium"]
  SETTABLEKS R19 R18 K76 ["iconSize"]
  GETUPVAL R20 8
  GETTABLEKS R19 R20 K97 ["icons/actions/cycleRight"]
  SETTABLEKS R19 R18 K77 ["icon"]
  GETTABLEKS R19 R0 K95 ["onClickRight"]
  SETTABLEKS R19 R18 K78 ["onActivated"]
  LOADN R19 3
  SETTABLEKS R19 R18 K79 ["layoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K68 ["RightChevron"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["Container"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Workspace"]
  GETTABLEKS R5 R6 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Style"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K13 ["AppFonts"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K14 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K11 ["Packages"]
  GETTABLEKS R5 R6 K15 ["React"]
  CALL R4 1 1
  GETTABLEKS R7 R3 K16 ["App"]
  GETTABLEKS R6 R7 K17 ["ImageSet"]
  GETTABLEKS R5 R6 K18 ["Images"]
  GETTABLEKS R8 R3 K19 ["Core"]
  GETTABLEKS R7 R8 K12 ["Style"]
  GETTABLEKS R6 R7 K20 ["useStyle"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K21 ["Components"]
  GETTABLEKS R8 R9 K22 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K21 ["Components"]
  GETTABLEKS R9 R10 K23 ["getMenuItemDimensions"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K24 ["Utility"]
  GETTABLEKS R10 R11 K25 ["getMenuItemSizings"]
  CALL R9 1 1
  GETTABLEKS R12 R3 K16 ["App"]
  GETTABLEKS R11 R12 K26 ["Button"]
  GETTABLEKS R10 R11 K27 ["TextButton"]
  GETTABLEKS R13 R3 K16 ["App"]
  GETTABLEKS R12 R13 K26 ["Button"]
  GETTABLEKS R11 R12 K28 ["IconButton"]
  GETTABLEKS R15 R3 K16 ["App"]
  GETTABLEKS R14 R15 K17 ["ImageSet"]
  GETTABLEKS R13 R14 K29 ["Enum"]
  GETTABLEKS R12 R13 K30 ["IconSize"]
  DUPCLOSURE R13 K31 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R10
  RETURN R13 1
