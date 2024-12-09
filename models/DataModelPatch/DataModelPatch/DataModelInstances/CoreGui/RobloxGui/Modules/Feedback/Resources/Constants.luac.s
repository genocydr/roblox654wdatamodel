MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"State"}]
  DUPTABLE R1 K5 [{"CurrentlyLeavingFeedback", "Default", "Disabled"}]
  LOADK R2 K2 ["CurrentlyLeavingFeedback"]
  SETTABLEKS R2 R1 K2 ["CurrentlyLeavingFeedback"]
  LOADK R2 K3 ["Default"]
  SETTABLEKS R2 R1 K3 ["Default"]
  LOADK R2 K4 ["Disabled"]
  SETTABLEKS R2 R1 K4 ["Disabled"]
  SETTABLEKS R1 R0 K0 ["State"]
  RETURN R0 1
