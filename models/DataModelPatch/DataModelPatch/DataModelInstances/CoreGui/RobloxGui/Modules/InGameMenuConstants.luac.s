MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["InGameMenu"]
  GETTABLEKS R3 R4 K6 ["Resources"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 -1
  RETURN R1 -1
