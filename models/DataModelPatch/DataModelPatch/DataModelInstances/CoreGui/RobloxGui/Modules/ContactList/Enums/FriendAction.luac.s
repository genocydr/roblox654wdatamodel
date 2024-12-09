MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"NoAction", "Block", "Unfriend"}]
  LOADK R1 K4 [""]
  SETTABLEKS R1 R0 K0 ["NoAction"]
  LOADK R1 K1 ["Block"]
  SETTABLEKS R1 R0 K1 ["Block"]
  LOADK R1 K2 ["Unfriend"]
  SETTABLEKS R1 R0 K2 ["Unfriend"]
  RETURN R0 1
