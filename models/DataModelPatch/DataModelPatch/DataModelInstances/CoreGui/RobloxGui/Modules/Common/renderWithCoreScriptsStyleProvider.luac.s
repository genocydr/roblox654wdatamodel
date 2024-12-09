PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"withUiModeSupport", "withDarkTheme"}]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R5 R1 K1 ["withUiModeSupport"]
  JUMP [+1]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["withUiModeSupport"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R5 R1 K2 ["withDarkTheme"]
  JUMP [+1]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["withDarkTheme"]
  MOVE R5 R0
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Workspace"]
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Style"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["StyleProviderWithDefaultTheme"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
