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
  GETTABLEKS R5 R2 K9 ["Experience"]
  GETTABLEKS R4 R5 K10 ["OptionalAttachScreenshotMenuConfig"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K9 ["Experience"]
  GETTABLEKS R5 R6 K11 ["AbuseReasonMenuConfig"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R2 K9 ["Experience"]
  GETTABLEKS R6 R7 K12 ["SubmitReportButtonMenuConfig"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R2 K9 ["Experience"]
  GETTABLEKS R7 R8 K13 ["FreeFormCommentMenuConfig"]
  CALL R6 1 1
  NEWTABLE R7 0 4
  MOVE R8 R4
  MOVE R9 R3
  MOVE R10 R6
  MOVE R11 R5
  SETLIST R7 R8 4 [1]
  RETURN R7 1
