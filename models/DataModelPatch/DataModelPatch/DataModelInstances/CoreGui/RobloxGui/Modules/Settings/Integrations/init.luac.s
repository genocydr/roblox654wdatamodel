MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Settings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Integrations"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K2 ["Settings"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K7 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K8 ["Utils"]
  CALL R4 1 1
  DUPTABLE R5 K9 [{"Settings", "Constants", "Utils"}]
  SETTABLEKS R2 R5 K2 ["Settings"]
  SETTABLEKS R3 R5 K7 ["Constants"]
  SETTABLEKS R4 R5 K8 ["Utils"]
  RETURN R5 1
