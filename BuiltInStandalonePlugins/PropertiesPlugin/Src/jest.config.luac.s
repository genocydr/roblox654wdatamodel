MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"testMatch"}]
  NEWTABLE R1 0 1
  LOADK R2 K2 ["**/*.spec"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["testMatch"]
  RETURN R0 1