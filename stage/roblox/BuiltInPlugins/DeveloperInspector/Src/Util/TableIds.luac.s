MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"EVENTS", "COMPONENTS"}]
  LOADK R1 K3 ["profileEvents"]
  SETTABLEKS R1 R0 K0 ["EVENTS"]
  LOADK R1 K4 ["profileComponents"]
  SETTABLEKS R1 R0 K1 ["COMPONENTS"]
  RETURN R0 1