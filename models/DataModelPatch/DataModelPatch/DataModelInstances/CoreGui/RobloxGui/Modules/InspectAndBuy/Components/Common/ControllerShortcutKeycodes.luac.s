MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Favorite", "TryOn"}]
  GETIMPORT R1 K6 [Enum.KeyCode.ButtonX]
  SETTABLEKS R1 R0 K0 ["Favorite"]
  GETIMPORT R1 K8 [Enum.KeyCode.ButtonY]
  SETTABLEKS R1 R0 K1 ["TryOn"]
  RETURN R0 1
