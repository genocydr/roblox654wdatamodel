MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K8 ["MenuConfigs"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K9 ["Players"]
  GETTABLEKS R4 R5 K10 ["MethodOfAbuseModalMenuConfig"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K9 ["Players"]
  GETTABLEKS R5 R6 K11 ["OptionalAttachScreenshotMenuConfig"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R2 K9 ["Players"]
  GETTABLEKS R6 R7 K12 ["PlayerModalSelectorMenuConfig"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R2 K9 ["Players"]
  GETTABLEKS R7 R8 K13 ["AbuseReasonModalSelectorMenuConfig"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R2 K9 ["Players"]
  GETTABLEKS R8 R9 K14 ["SubmitReportButtonMenuConfig"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R2 K9 ["Players"]
  GETTABLEKS R9 R10 K15 ["FreeFormCommentMenuConfig"]
  CALL R8 1 1
  NEWTABLE R9 0 6
  MOVE R10 R3
  MOVE R11 R5
  MOVE R12 R6
  MOVE R13 R4
  MOVE R14 R8
  MOVE R15 R7
  SETLIST R9 R10 6 [1]
  RETURN R9 1
