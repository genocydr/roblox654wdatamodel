MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Components"]
  GETTABLEKS R1 R2 K5 ["AbuseReportMenuNew"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Analytics"]
  GETTABLEKS R2 R3 K7 ["ReportAbuseAnalytics"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  SETTABLEKS R0 R2 K8 ["AbuseReportMenu"]
  SETTABLEKS R1 R2 K7 ["ReportAbuseAnalytics"]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K9 ["jest.config"]
  SETTABLEKS R3 R2 K9 ["jest.config"]
  RETURN R2 1
