PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"label", "isRightComponentFullWidth", "layoutOrder", "rightComponent", "heightOverride", "menuContainerWidth", "isSmallPortraitViewport"}]
  LOADK R4 K9 ["Abuse Description"]
  SETTABLEKS R4 R3 K1 ["label"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["isRightComponentFullWidth"]
  GETTABLEKS R4 R0 K3 ["layoutOrder"]
  SETTABLEKS R4 R3 K3 ["layoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K13 [{"layoutOrder", "text", "placeholderText", "onUpdate"}]
  GETTABLEKS R7 R0 K3 ["layoutOrder"]
  SETTABLEKS R7 R6 K3 ["layoutOrder"]
  GETTABLEKS R7 R0 K14 ["comment"]
  SETTABLEKS R7 R6 K10 ["text"]
  GETTABLEKS R7 R0 K11 ["placeholderText"]
  SETTABLEKS R7 R6 K11 ["placeholderText"]
  GETTABLEKS R7 R0 K12 ["onUpdate"]
  SETTABLEKS R7 R6 K12 ["onUpdate"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["rightComponent"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K15 ["FreeCommentsMenuItemHeight"]
  SETTABLEKS R4 R3 K5 ["heightOverride"]
  GETTABLEKS R4 R0 K6 ["menuContainerWidth"]
  SETTABLEKS R4 R3 K6 ["menuContainerWidth"]
  GETTABLEKS R4 R0 K7 ["isSmallPortraitViewport"]
  SETTABLEKS R4 R3 K7 ["isSmallPortraitViewport"]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K12 ["Components"]
  GETTABLEKS R4 R5 K13 ["ReportTextEntry"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K12 ["Components"]
  GETTABLEKS R6 R7 K14 ["MenuItems"]
  GETTABLEKS R5 R6 K15 ["ReportMenuItem"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K12 ["Components"]
  GETTABLEKS R6 R7 K16 ["Constants"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
