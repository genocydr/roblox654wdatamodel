PROTO_0:
  NAMECALL R1 R0 K0 ["GetPlatform"]
  CALL R1 1 1
  GETIMPORT R3 K4 [Enum.Platform.Android]
  JUMPIFNOTEQ R1 R3 [+6]
  LOADK R3 K5 ["<b>"]
  GETUPVAL R4 0
  LOADK R5 K6 ["</b>"]
  CONCAT R2 R3 R5
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

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
  LOADK R5 K10 ["Feature.SettingsHub.Prompt.RestartOnMicAccessChange"]
  NAMECALL R3 R2 K11 ["FormatByKey"]
  CALL R3 2 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1
