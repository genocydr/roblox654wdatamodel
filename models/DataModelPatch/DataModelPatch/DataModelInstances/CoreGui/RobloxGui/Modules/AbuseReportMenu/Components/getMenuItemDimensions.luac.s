PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SmallLayoutThreshold"]
  JUMPIFNOTLT R0 R1 [+18]
  DUPTABLE R1 K4 [{"LeftWidth", "RightWidth", "TextSize"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["LeftContainerWidthSmall"]
  SETTABLEKS R2 R1 K1 ["LeftWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["RightContainerWidthSmall"]
  SETTABLEKS R2 R1 K2 ["RightWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["FieldLabelSizeSmall"]
  SETTABLEKS R2 R1 K3 ["TextSize"]
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K8 ["IsTenFootInterface"]
  CALL R1 1 1
  JUMPIFNOT R1 [+17]
  DUPTABLE R1 K4 [{"LeftWidth", "RightWidth", "TextSize"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["LeftContainerWidthConsole"]
  SETTABLEKS R2 R1 K1 ["LeftWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["RightContainerWidthConsole"]
  SETTABLEKS R2 R1 K2 ["RightWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["FieldLabelSizeConsole"]
  SETTABLEKS R2 R1 K3 ["TextSize"]
  RETURN R1 1
  DUPTABLE R1 K4 [{"LeftWidth", "RightWidth", "TextSize"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["LeftContainerWidth"]
  SETTABLEKS R2 R1 K1 ["LeftWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K13 ["RightContainerWidth"]
  SETTABLEKS R2 R1 K2 ["RightWidth"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K14 ["FieldLabelSize"]
  SETTABLEKS R2 R1 K3 ["TextSize"]
  RETURN R1 1

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
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETGLOBAL R3 K13 ["getMenuItemDimensions"]
  GETGLOBAL R3 K13 ["getMenuItemDimensions"]
  RETURN R3 1
