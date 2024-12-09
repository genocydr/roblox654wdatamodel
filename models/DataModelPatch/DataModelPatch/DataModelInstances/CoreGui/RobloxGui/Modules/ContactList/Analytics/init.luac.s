MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["SocialLuaAnalytics"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K9 ["Analytics"]
  GETTABLEKS R2 R3 K10 ["AnalyticsFactory"]
  GETTABLEKS R4 R1 K9 ["Analytics"]
  GETTABLEKS R3 R4 K11 ["DefaultAnalyticsService"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K13 [script]
  GETTABLEKS R5 R6 K14 ["EventStreamActionList"]
  CALL R4 1 1
  DUPTABLE R5 K16 [{"Analytics", "useAnalytics"}]
  GETTABLEKS R6 R2 K17 ["setUpAnalyticsFactory"]
  DUPTABLE R7 K20 [{"eventLists", "analyticsImpl"}]
  DUPTABLE R8 K23 [{"EventStream", "Diag"}]
  SETTABLEKS R4 R8 K21 ["EventStream"]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["Diag"]
  SETTABLEKS R8 R7 K18 ["eventLists"]
  DUPTABLE R8 K23 [{"EventStream", "Diag"}]
  GETTABLEKS R9 R3 K21 ["EventStream"]
  SETTABLEKS R9 R8 K21 ["EventStream"]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["Diag"]
  SETTABLEKS R8 R7 K19 ["analyticsImpl"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K9 ["Analytics"]
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K13 [script]
  GETTABLEKS R7 R8 K15 ["useAnalytics"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["useAnalytics"]
  RETURN R5 1
