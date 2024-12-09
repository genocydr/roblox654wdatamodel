MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Finished", "Declined", "Missed"}]
  LOADK R1 K4 ["CallFinished"]
  SETTABLEKS R1 R0 K0 ["Finished"]
  LOADK R1 K5 ["CallDeclined"]
  SETTABLEKS R1 R0 K1 ["Declined"]
  LOADK R1 K6 ["CallMissed"]
  SETTABLEKS R1 R0 K2 ["Missed"]
  RETURN R0 1
