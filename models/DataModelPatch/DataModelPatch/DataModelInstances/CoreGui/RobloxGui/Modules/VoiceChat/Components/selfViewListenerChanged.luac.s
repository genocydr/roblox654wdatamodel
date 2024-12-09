MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R1 K8 ["Modules"]
  GETTABLEKS R4 R5 K9 ["SelfView"]
  GETTABLEKS R3 R4 K10 ["selfViewVisibilityUpdatedSignal"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R6 R1 K8 ["Modules"]
  GETTABLEKS R5 R6 K9 ["SelfView"]
  GETTABLEKS R4 R5 K11 ["publicApi"]
  CALL R3 1 1
  DUPTABLE R4 K13 [{"selfViewVisibilityUpdatedSignal", "getSelfViewVisibility"}]
  SETTABLEKS R2 R4 K10 ["selfViewVisibilityUpdatedSignal"]
  GETTABLEKS R5 R3 K14 ["getSelfViewIsOpenAndVisible"]
  SETTABLEKS R5 R4 K12 ["getSelfViewVisibility"]
  RETURN R4 1
