MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Analytics"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["AnalyticsReporters"]
  GETTABLEKS R1 R2 K10 ["EventStream"]
  RETURN R1 1
