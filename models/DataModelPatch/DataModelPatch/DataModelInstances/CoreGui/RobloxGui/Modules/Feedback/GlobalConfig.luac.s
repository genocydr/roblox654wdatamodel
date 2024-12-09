MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"propValidation", "elementTracing", "logStore"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["propValidation"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["elementTracing"]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["logStore"]
  RETURN R0 1
