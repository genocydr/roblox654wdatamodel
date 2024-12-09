MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"PageAnimationDuration", "OpenMoreMenuAnimationDuration", "CloseMoreMenuAnimationDuration"}]
  LOADK R1 K4 [0.5]
  SETTABLEKS R1 R0 K0 ["PageAnimationDuration"]
  LOADK R1 K4 [0.5]
  SETTABLEKS R1 R0 K1 ["OpenMoreMenuAnimationDuration"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["CloseMoreMenuAnimationDuration"]
  RETURN R0 1
