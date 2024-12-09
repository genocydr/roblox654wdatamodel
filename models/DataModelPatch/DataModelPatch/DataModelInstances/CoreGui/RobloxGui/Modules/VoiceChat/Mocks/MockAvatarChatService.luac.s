PROTO_0:
  DUPTABLE R5 K4 [{"IsEnabled", "EnableVoice", "GetPropertyChangedSignal", "GetClientFeaturesAsync"}]
  SETTABLEKS R0 R5 K0 ["IsEnabled"]
  SETTABLEKS R1 R5 K1 ["EnableVoice"]
  SETTABLEKS R2 R5 K2 ["GetPropertyChangedSignal"]
  SETTABLEKS R3 R5 K3 ["GetClientFeaturesAsync"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R5 R6 [+3]
  GETIMPORT R4 K6 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  RETURN R0 1
