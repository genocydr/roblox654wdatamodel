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
  GETTABLEKS R5 R1 K10 ["Workspace"]
  GETTABLEKS R4 R5 K11 ["Packages"]
  GETTABLEKS R3 R4 K12 ["TnSAvatarIdentification"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Workspace"]
  GETTABLEKS R5 R6 K11 ["Packages"]
  GETTABLEKS R4 R5 K13 ["TnSAdIdentification"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K14 ["ReportAnything"]
  GETTABLEKS R6 R7 K15 ["Utility"]
  GETTABLEKS R5 R6 K16 ["ReportAnythingAnalytics"]
  CALL R4 1 1
  NEWTABLE R5 0 0
  RETURN R5 1
