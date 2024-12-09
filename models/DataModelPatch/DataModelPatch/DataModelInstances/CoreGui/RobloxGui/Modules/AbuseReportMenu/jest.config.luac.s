MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["JestConfigs"]
  CALL R1 1 1
  DUPTABLE R2 K12 [{"displayName", "testMatch", "setupFilesAfterEnv"}]
  LOADK R3 K13 ["AbuseReportMenu"]
  SETTABLEKS R3 R2 K9 ["displayName"]
  NEWTABLE R3 0 1
  LOADK R4 K14 ["**/*.test"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K10 ["testMatch"]
  NEWTABLE R3 0 3
  GETTABLEKS R5 R1 K15 ["setupFiles"]
  GETTABLEKS R4 R5 K16 ["LogHandler"]
  GETTABLEKS R6 R1 K15 ["setupFiles"]
  GETTABLEKS R5 R6 K17 ["UIBloxInitializer"]
  GETTABLEKS R7 R1 K15 ["setupFiles"]
  GETTABLEKS R6 R7 K18 ["createPromiseRejectionHandler"]
  CALL R6 0 -1
  SETLIST R3 R4 -1 [1]
  SETTABLEKS R3 R2 K11 ["setupFilesAfterEnv"]
  RETURN R2 1
