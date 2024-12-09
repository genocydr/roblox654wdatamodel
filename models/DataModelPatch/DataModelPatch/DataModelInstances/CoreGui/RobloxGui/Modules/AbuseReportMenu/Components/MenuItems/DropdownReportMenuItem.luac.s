PROTO_0:
  DUPTABLE R1 K1 [{"text"}]
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R1 K0 ["Theme"]
  GETUPVAL R3 1
  CALL R3 0 1
  GETTABLEKS R5 R0 K1 ["readonlyValue"]
  JUMPIFEQKNIL R5 [+66]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["createElement"]
  LOADK R5 K3 ["TextLabel"]
  DUPTABLE R6 K14 [{"Text", "Font", "TextColor3", "TextTransparency", "TextSize", "TextWrapped", "TextXAlignment", "AutomaticSize", "Size", "BackgroundTransparency"}]
  GETTABLEKS R7 R0 K1 ["readonlyValue"]
  SETTABLEKS R7 R6 K4 ["Text"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K15 ["default"]
  NAMECALL R7 R7 K16 ["getMedium"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K5 ["Font"]
  GETTABLEKS R8 R2 K17 ["TextEmphasis"]
  GETTABLEKS R7 R8 K18 ["Color"]
  SETTABLEKS R7 R6 K6 ["TextColor3"]
  GETTABLEKS R8 R2 K19 ["TextMuted"]
  GETTABLEKS R7 R8 K20 ["Transparency"]
  SETTABLEKS R7 R6 K7 ["TextTransparency"]
  GETTABLEKS R7 R3 K21 ["DropdownTextSize"]
  SETTABLEKS R7 R6 K8 ["TextSize"]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["TextWrapped"]
  GETTABLEKS R8 R0 K22 ["isSmallPortraitViewport"]
  JUMPIFNOT R8 [+3]
  GETIMPORT R7 K25 [Enum.TextXAlignment.Left]
  JUMP [+2]
  GETIMPORT R7 K27 [Enum.TextXAlignment.Center]
  SETTABLEKS R7 R6 K10 ["TextXAlignment"]
  GETIMPORT R7 K29 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K11 ["AutomaticSize"]
  GETIMPORT R7 K32 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R0 K33 ["minHeight"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K12 ["Size"]
  LOADN R7 1
  SETTABLEKS R7 R6 K13 ["BackgroundTransparency"]
  CALL R4 2 1
  JUMP [+48]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K42 [{"placeholder", "onChange", "height", "screenSize", "errorState", "showDropShadow", "fixedListHeight", "cellDatas"}]
  GETTABLEKS R7 R0 K43 ["placeholderText"]
  SETTABLEKS R7 R6 K34 ["placeholder"]
  GETTABLEKS R7 R0 K44 ["onSelect"]
  SETTABLEKS R7 R6 K35 ["onChange"]
  GETIMPORT R7 K46 [UDim.new]
  LOADN R8 0
  LOADN R9 48
  CALL R7 2 1
  SETTABLEKS R7 R6 K36 ["height"]
  GETIMPORT R7 K48 [Vector2.new]
  LOADN R8 96
  LOADN R9 8
  CALL R7 2 1
  SETTABLEKS R7 R6 K37 ["screenSize"]
  LOADB R7 0
  SETTABLEKS R7 R6 K38 ["errorState"]
  LOADB R7 1
  SETTABLEKS R7 R6 K39 ["showDropShadow"]
  LOADN R7 180
  SETTABLEKS R7 R6 K40 ["fixedListHeight"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K49 ["List"]
  GETTABLEKS R7 R8 K50 ["map"]
  GETTABLEKS R8 R0 K51 ["selections"]
  DUPCLOSURE R9 K52 [PROTO_0]
  CALL R7 2 1
  SETTABLEKS R7 R6 K41 ["cellDatas"]
  CALL R4 2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 6
  DUPTABLE R7 K57 [{"label", "layoutOrder", "rightComponent", "menuContainerWidth", "isSmallPortraitViewport"}]
  GETTABLEKS R8 R0 K53 ["label"]
  SETTABLEKS R8 R7 K53 ["label"]
  GETTABLEKS R8 R0 K54 ["layoutOrder"]
  SETTABLEKS R8 R7 K54 ["layoutOrder"]
  SETTABLEKS R4 R7 K55 ["rightComponent"]
  GETTABLEKS R8 R0 K56 ["menuContainerWidth"]
  SETTABLEKS R8 R7 K56 ["menuContainerWidth"]
  GETTABLEKS R8 R0 K22 ["isSmallPortraitViewport"]
  SETTABLEKS R8 R7 K22 ["isSmallPortraitViewport"]
  CALL R5 2 -1
  RETURN R5 -1

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
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["UIBlox"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K13 ["Workspace"]
  GETTABLEKS R7 R8 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Style"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K15 ["AppFonts"]
  GETTABLEKS R7 R2 K16 ["App"]
  GETTABLEKS R6 R7 K17 ["Menu"]
  GETTABLEKS R5 R6 K18 ["DropdownMenu"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K19 ["Components"]
  GETTABLEKS R8 R9 K20 ["MenuItems"]
  GETTABLEKS R7 R8 K21 ["ReportMenuItem"]
  CALL R6 1 1
  GETTABLEKS R9 R2 K22 ["Core"]
  GETTABLEKS R8 R9 K14 ["Style"]
  GETTABLEKS R7 R8 K23 ["useStyle"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K24 ["Utility"]
  GETTABLEKS R9 R10 K25 ["getMenuItemSizings"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R1 K10 ["Packages"]
  GETTABLEKS R10 R11 K26 ["Cryo"]
  CALL R9 1 1
  DUPCLOSURE R10 K27 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R6
  RETURN R10 1
