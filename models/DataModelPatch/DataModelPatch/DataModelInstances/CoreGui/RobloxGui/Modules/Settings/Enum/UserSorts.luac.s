MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Alphabetical", "StatusAlphabetical", "StatusFrequents"}]
  LOADK R1 K0 ["Alphabetical"]
  SETTABLEKS R1 R0 K0 ["Alphabetical"]
  LOADK R1 K1 ["StatusAlphabetical"]
  SETTABLEKS R1 R0 K1 ["StatusAlphabetical"]
  LOADK R1 K2 ["StatusFrequents"]
  SETTABLEKS R1 R0 K2 ["StatusFrequents"]
  RETURN R0 1
