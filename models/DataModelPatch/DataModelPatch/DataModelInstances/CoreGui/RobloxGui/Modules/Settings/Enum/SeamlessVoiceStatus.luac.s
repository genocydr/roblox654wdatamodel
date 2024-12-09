MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Invalid", "Disabled", "EnabledExistingUser", "EnabledNewUser"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["Invalid"]
  LOADN R1 1
  SETTABLEKS R1 R0 K1 ["Disabled"]
  LOADN R1 2
  SETTABLEKS R1 R0 K2 ["EnabledExistingUser"]
  LOADN R1 3
  SETTABLEKS R1 R0 K3 ["EnabledNewUser"]
  RETURN R0 1
