PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsTenFootInterface"]
  CALL R0 1 1
  JUMPIFNOT R0 [+37]
  DUPTABLE R0 K8 [{"ItemPadding", "TopPadding", "TextOffset", "DropdownTextSize", "FontStyle", "TextEntryRelativeSize", "ButtonSize"}]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K9 ["ReportMenuItemPaddingConsole"]
  SETTABLEKS R1 R0 K1 ["ItemPadding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K10 ["ReportMenuTopPaddingConsole"]
  SETTABLEKS R1 R0 K2 ["TopPadding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K11 ["ReportMenuTextOffsetConsole"]
  SETTABLEKS R1 R0 K3 ["TextOffset"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K12 ["ReportMenuDropdownTextSizeConsole"]
  SETTABLEKS R1 R0 K4 ["DropdownTextSize"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K13 ["ReportMenuFontStyleConsole"]
  SETTABLEKS R1 R0 K5 ["FontStyle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K14 ["ReportTextEntryFontRelativeSizeConsole"]
  SETTABLEKS R1 R0 K6 ["TextEntryRelativeSize"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K15 ["ReportMenuButtonSizeConsole"]
  SETTABLEKS R1 R0 K7 ["ButtonSize"]
  RETURN R0 1
  DUPTABLE R0 K8 [{"ItemPadding", "TopPadding", "TextOffset", "DropdownTextSize", "FontStyle", "TextEntryRelativeSize", "ButtonSize"}]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K16 ["ReportMenuItemPadding"]
  SETTABLEKS R1 R0 K1 ["ItemPadding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K17 ["ReportMenuTopPadding"]
  SETTABLEKS R1 R0 K2 ["TopPadding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K18 ["ReportMenuTextOffset"]
  SETTABLEKS R1 R0 K3 ["TextOffset"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K19 ["ReportMenuDropdownTextSize"]
  SETTABLEKS R1 R0 K4 ["DropdownTextSize"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K20 ["ReportMenuFontStyle"]
  SETTABLEKS R1 R0 K5 ["FontStyle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K21 ["ReportTextEntryFontRelativeSize"]
  SETTABLEKS R1 R0 K6 ["TextEntryRelativeSize"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K22 ["ReportMenuButtonSize"]
  SETTABLEKS R1 R0 K7 ["ButtonSize"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["GuiService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Components"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETGLOBAL R3 K13 ["getMenuItemSizings"]
  GETGLOBAL R3 K13 ["getMenuItemSizings"]
  RETURN R3 1
