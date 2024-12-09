PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["MenuItemHeight"]
  GETUPVAL R4 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["label"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K2 ["TextSize"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K3 ["default"]
  NAMECALL R8 R8 K4 ["getMedium"]
  CALL R8 1 1
  GETIMPORT R9 K7 [Vector2.new]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K8 ["isSmallPortraitViewport"]
  JUMPIFNOT R11 [+2]
  GETUPVAL R10 6
  JUMP [+3]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K9 ["LeftWidth"]
  LOADK R11 K10 [∞]
  CALL R9 2 -1
  NAMECALL R4 R4 K11 ["GetTextSize"]
  CALL R4 -1 1
  GETTABLEKS R3 R4 K12 ["Y"]
  FASTCALL2 MATH_MAX R2 R3 [+3]
  GETIMPORT R1 K15 [math.max]
  CALL R1 2 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R0 K0 ["label"]
  JUMPIFEQKS R3 K1 [""] [+4]
  GETTABLEKS R3 R0 K2 ["isRightComponentFullWidth"]
  JUMPIFNOT R3 [+2]
  LOADN R2 0
  JUMP [+6]
  GETTABLEKS R4 R1 K3 ["Tokens"]
  GETTABLEKS R3 R4 K4 ["Global"]
  GETTABLEKS R2 R3 K5 ["Size_75"]
  GETTABLEKS R3 R1 K6 ["Theme"]
  GETUPVAL R4 1
  GETTABLEKS R5 R0 K7 ["menuContainerWidth"]
  CALL R4 1 1
  GETTABLEKS R7 R0 K7 ["menuContainerWidth"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["MenuItemDynamicWidthOffset"]
  SUB R6 R7 R8
  GETTABLEKS R8 R4 K9 ["LeftWidth"]
  GETTABLEKS R9 R4 K10 ["RightWidth"]
  ADD R7 R8 R9
  FASTCALL2 MATH_MAX R6 R7 [+3]
  GETIMPORT R5 K13 [math.max]
  CALL R5 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K14 ["useState"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["MenuItemHeight"]
  CALL R6 1 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K16 ["useEffect"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  NEWTABLE R10 0 0
  CALL R8 2 0
  DUPTABLE R8 K19 [{"Layout", "Padding"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K20 ["createElement"]
  LOADK R10 K21 ["UIListLayout"]
  DUPTABLE R11 K26 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETTABLEKS R13 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R13 [+3]
  GETIMPORT R12 K30 [Enum.FillDirection.Vertical]
  JUMP [+2]
  GETIMPORT R12 K32 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K22 ["FillDirection"]
  GETIMPORT R12 K34 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K23 ["VerticalAlignment"]
  GETIMPORT R12 K35 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K24 ["HorizontalAlignment"]
  GETIMPORT R12 K37 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K25 ["SortOrder"]
  GETTABLEKS R13 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R13 [+6]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  MOVE R14 R2
  CALL R12 2 1
  JUMP [+5]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["Padding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["Layout"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K20 ["createElement"]
  LOADK R10 K41 ["UIPadding"]
  DUPTABLE R11 K44 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  MOVE R14 R2
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["PaddingTop"]
  GETIMPORT R12 K40 [UDim.new]
  LOADN R13 0
  MOVE R14 R2
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["PaddingBottom"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["Padding"]
  GETTABLEKS R9 R0 K2 ["isRightComponentFullWidth"]
  JUMPIFNOT R9 [+76]
  GETTABLEKS R11 R0 K7 ["menuContainerWidth"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["MenuItemDynamicWidthOffset"]
  SUB R10 R11 R12
  GETTABLEKS R12 R4 K9 ["LeftWidth"]
  GETTABLEKS R13 R4 K10 ["RightWidth"]
  ADD R11 R12 R13
  FASTCALL2 MATH_MAX R10 R11 [+3]
  GETIMPORT R9 K13 [math.max]
  CALL R9 2 1
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K45 ["Dictionary"]
  GETTABLEKS R10 R11 K46 ["join"]
  MOVE R11 R8
  DUPTABLE R12 K48 [{"RightComponentWrapper"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K20 ["createElement"]
  LOADK R14 K49 ["Frame"]
  DUPTABLE R15 K53 [{"Size", "BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R16 K55 [UDim2.new]
  LOADN R17 0
  MOVE R18 R9
  LOADN R19 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K15 ["MenuItemHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K50 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K51 ["BackgroundTransparency"]
  LOADN R16 3
  SETTABLEKS R16 R15 K36 ["LayoutOrder"]
  GETIMPORT R16 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K52 ["AutomaticSize"]
  DUPTABLE R16 K59 [{"Layout", "RightComponent"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K20 ["createElement"]
  LOADK R18 K21 ["UIListLayout"]
  DUPTABLE R19 K60 [{"FillDirection", "VerticalAlignment"}]
  GETIMPORT R20 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K22 ["FillDirection"]
  GETIMPORT R20 K34 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K23 ["VerticalAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["Layout"]
  GETTABLEKS R17 R0 K61 ["rightComponent"]
  SETTABLEKS R17 R16 K58 ["RightComponent"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K47 ["RightComponentWrapper"]
  CALL R10 2 1
  MOVE R8 R10
  JUMP [+211]
  LOADN R10 0
  GETTABLEKS R14 R0 K7 ["menuContainerWidth"]
  GETTABLEKS R15 R4 K9 ["LeftWidth"]
  SUB R13 R14 R15
  GETTABLEKS R14 R4 K10 ["RightWidth"]
  SUB R12 R13 R14
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["MenuItemDynamicWidthOffset"]
  SUB R11 R12 R13
  FASTCALL2 MATH_MAX R10 R11 [+3]
  GETIMPORT R9 K13 [math.max]
  CALL R9 2 1
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K45 ["Dictionary"]
  GETTABLEKS R10 R11 K46 ["join"]
  MOVE R11 R8
  DUPTABLE R12 K64 [{"Label", "MiddleSpaceHolder", "RightComponentWrapper"}]
  GETTABLEKS R14 R0 K0 ["label"]
  JUMPIFNOTEQKS R14 K1 [""] [+4]
  GETTABLEKS R14 R0 K27 ["isSmallPortraitViewport"]
  JUMPIF R14 [+73]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K20 ["createElement"]
  LOADK R14 K65 ["TextLabel"]
  DUPTABLE R15 K73 [{"Text", "Font", "LayoutOrder", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "TextXAlignment", "Size", "AutomaticSize", "BackgroundTransparency"}]
  GETTABLEKS R16 R0 K0 ["label"]
  SETTABLEKS R16 R15 K66 ["Text"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K74 ["default"]
  NAMECALL R16 R16 K75 ["getMedium"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K67 ["Font"]
  LOADN R16 1
  SETTABLEKS R16 R15 K36 ["LayoutOrder"]
  GETTABLEKS R17 R3 K76 ["TextEmphasis"]
  GETTABLEKS R16 R17 K77 ["Color"]
  SETTABLEKS R16 R15 K68 ["TextColor3"]
  GETTABLEKS R17 R3 K76 ["TextEmphasis"]
  GETTABLEKS R16 R17 K78 ["Transparency"]
  SETTABLEKS R16 R15 K69 ["TextTransparency"]
  GETTABLEKS R16 R4 K70 ["TextSize"]
  SETTABLEKS R16 R15 K70 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K71 ["TextWrapped"]
  GETIMPORT R16 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K72 ["TextXAlignment"]
  GETTABLEKS R17 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R17 [+8]
  GETIMPORT R16 K55 [UDim2.new]
  LOADN R17 0
  MOVE R18 R5
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  JUMP [+8]
  GETIMPORT R16 K55 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R18 R4 K9 ["LeftWidth"]
  LOADN R19 0
  MOVE R20 R6
  CALL R16 4 1
  SETTABLEKS R16 R15 K50 ["Size"]
  GETIMPORT R16 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K52 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K51 ["BackgroundTransparency"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K62 ["Label"]
  GETTABLEKS R14 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+23]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K20 ["createElement"]
  LOADK R14 K49 ["Frame"]
  DUPTABLE R15 K81 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R16 K55 [UDim2.new]
  LOADN R17 0
  MOVE R18 R9
  LOADN R19 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K15 ["MenuItemHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K50 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K51 ["BackgroundTransparency"]
  LOADN R16 2
  SETTABLEKS R16 R15 K36 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K63 ["MiddleSpaceHolder"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K20 ["createElement"]
  LOADK R14 K49 ["Frame"]
  DUPTABLE R15 K82 [{"Size", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETTABLEKS R17 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R17 [+8]
  GETIMPORT R16 K55 [UDim2.new]
  LOADN R17 0
  MOVE R18 R5
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  JUMP [+10]
  GETIMPORT R16 K55 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R18 R4 K10 ["RightWidth"]
  LOADN R19 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K15 ["MenuItemHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K50 ["Size"]
  GETIMPORT R16 K57 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K52 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K51 ["BackgroundTransparency"]
  LOADN R16 3
  SETTABLEKS R16 R15 K36 ["LayoutOrder"]
  DUPTABLE R16 K59 [{"Layout", "RightComponent"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K20 ["createElement"]
  LOADK R18 K21 ["UIListLayout"]
  DUPTABLE R19 K83 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R20 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K22 ["FillDirection"]
  GETIMPORT R20 K34 [Enum.VerticalAlignment.Center]
  SETTABLEKS R20 R19 K23 ["VerticalAlignment"]
  GETTABLEKS R21 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R21 [+3]
  GETIMPORT R20 K84 [Enum.HorizontalAlignment.Left]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K24 ["HorizontalAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["Layout"]
  GETTABLEKS R17 R0 K61 ["rightComponent"]
  SETTABLEKS R17 R16 K58 ["RightComponent"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K47 ["RightComponentWrapper"]
  CALL R10 2 1
  MOVE R8 R10
  MOVE R9 R6
  GETTABLEKS R10 R0 K85 ["heightOverride"]
  JUMPIFNOT R10 [+2]
  GETTABLEKS R9 R0 K85 ["heightOverride"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K20 ["createElement"]
  LOADK R11 K49 ["Frame"]
  DUPTABLE R12 K82 [{"Size", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R13 K55 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  MOVE R17 R9
  CALL R13 4 1
  SETTABLEKS R13 R12 K50 ["Size"]
  GETTABLEKS R14 R0 K2 ["isRightComponentFullWidth"]
  JUMPIF R14 [+3]
  GETTABLEKS R14 R0 K27 ["isSmallPortraitViewport"]
  JUMPIFNOT R14 [+3]
  GETIMPORT R13 K57 [Enum.AutomaticSize.Y]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K52 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K51 ["BackgroundTransparency"]
  GETTABLEKS R13 R0 K86 ["layoutOrder"]
  SETTABLEKS R13 R12 K36 ["LayoutOrder"]
  MOVE R13 R8
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["TextService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CorePackages"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R7 R2 K11 ["Workspace"]
  GETTABLEKS R6 R7 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Style"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K14 ["AppFonts"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K12 ["Packages"]
  GETTABLEKS R5 R6 K15 ["UIBlox"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R2 K12 ["Packages"]
  GETTABLEKS R6 R7 K16 ["Cryo"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R2 K12 ["Packages"]
  GETTABLEKS R7 R8 K17 ["React"]
  CALL R6 1 1
  GETTABLEKS R9 R4 K18 ["Core"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K19 ["useStyle"]
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R0 K20 ["Components"]
  GETTABLEKS R9 R10 K21 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R11 R0 K20 ["Components"]
  GETTABLEKS R10 R11 K22 ["getMenuItemDimensions"]
  CALL R9 1 1
  DUPCLOSURE R10 K23 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R10 1
