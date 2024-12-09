MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createContext"]
  DUPTABLE R4 K11 [{"fireAnalyticsEvent"}]
  GETTABLEKS R5 R1 K12 ["noop"]
  SETTABLEKS R5 R4 K10 ["fireAnalyticsEvent"]
  CALL R3 1 -1
  RETURN R3 -1
