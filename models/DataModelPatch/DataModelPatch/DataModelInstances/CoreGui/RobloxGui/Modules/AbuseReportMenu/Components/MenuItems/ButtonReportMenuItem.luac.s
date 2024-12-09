PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"label", "layoutOrder", "rightComponent", "menuContainerWidth", "isSmallPortraitViewport"}]
  GETTABLEKS R4 R0 K1 ["label"]
  SETTABLEKS R4 R3 K1 ["label"]
  GETTABLEKS R4 R0 K2 ["layoutOrder"]
  SETTABLEKS R4 R3 K2 ["layoutOrder"]
  GETTABLEKS R4 R0 K7 ["button"]
  SETTABLEKS R4 R3 K3 ["rightComponent"]
  GETTABLEKS R4 R0 K4 ["menuContainerWidth"]
  SETTABLEKS R4 R3 K4 ["menuContainerWidth"]
  GETTABLEKS R4 R0 K5 ["isSmallPortraitViewport"]
  SETTABLEKS R4 R3 K5 ["isSmallPortraitViewport"]
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
  GETTABLEKS R6 R0 K12 ["Components"]
  GETTABLEKS R5 R6 K13 ["MenuItems"]
  GETTABLEKS R4 R5 K14 ["ReportMenuItem"]
  CALL R3 1 1
  DUPCLOSURE R4 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
