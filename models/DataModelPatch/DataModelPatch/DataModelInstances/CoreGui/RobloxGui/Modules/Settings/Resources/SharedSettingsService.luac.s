MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["SettingsService"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["SettingsService"]
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  RETURN R2 1
