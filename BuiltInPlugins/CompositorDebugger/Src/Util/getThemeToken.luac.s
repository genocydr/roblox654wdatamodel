PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getThemeName"]
  CALL R1 0 1
  JUMPIFNOTEQKS R1 K1 ["Dark"] [+12]
  GETIMPORT R2 K3 [require]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Src"]
  GETTABLEKS R4 R5 K5 ["Resources"]
  GETTABLEKS R3 R4 K6 ["PluginStylesDarkTheme"]
  CALL R2 1 1
  JUMP [+10]
  GETIMPORT R2 K3 [require]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Src"]
  GETTABLEKS R4 R5 K5 ["Resources"]
  GETTABLEKS R3 R4 K7 ["PluginStylesLightTheme"]
  CALL R2 1 1
  MOVE R5 R0
  NAMECALL R3 R2 K8 ["GetAttribute"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Style"]
  GETTABLEKS R2 R3 K9 ["ThemeSwitcher"]
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R0
  RETURN R3 1
