PROTO_0:
  NAMECALL R2 R1 K0 ["GetPlatform"]
  CALL R2 1 1
  GETIMPORT R3 K4 [Enum.Platform.Android]
  JUMPIFNOTEQ R2 R3 [+6]
  JUMPIFNOT R0 [+2]
  GETUPVAL R3 0
  RETURN R3 1
  GETUPVAL R3 1
  RETURN R3 1
  GETIMPORT R3 K6 [Enum.Platform.Windows]
  JUMPIFNOTEQ R2 R3 [+6]
  JUMPIFNOT R0 [+2]
  GETUPVAL R3 2
  RETURN R3 1
  GETUPVAL R3 3
  RETURN R3 1
  LOADNIL R3
  RETURN R3 1

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
  GETTABLEKS R4 R1 K8 ["Modules"]
  GETTABLEKS R3 R4 K9 ["RobloxTranslator"]
  CALL R2 1 1
  LOADK R5 K10 ["Feature.SettingsHub.Prompt.AndroidWithDeeplink"]
  NAMECALL R3 R2 K11 ["FormatByKey"]
  CALL R3 2 1
  LOADK R6 K12 ["Feature.SettingsHub.Prompt.WindowsWithDeeplink"]
  NAMECALL R4 R2 K11 ["FormatByKey"]
  CALL R4 2 1
  LOADK R7 K13 ["Feature.SettingsHub.Prompt.AndroidWithoutDeeplink"]
  NAMECALL R5 R2 K11 ["FormatByKey"]
  CALL R5 2 1
  LOADK R8 K14 ["Feature.SettingsHub.Prompt.WindowsWithoutDeeplink"]
  NAMECALL R6 R2 K11 ["FormatByKey"]
  CALL R6 2 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R7 1
