MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["LocalizationContext"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["Consumer"]
  RETURN R1 1
