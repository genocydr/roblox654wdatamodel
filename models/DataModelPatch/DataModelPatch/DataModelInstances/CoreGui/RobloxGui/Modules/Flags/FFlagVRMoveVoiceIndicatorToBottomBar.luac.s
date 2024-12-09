MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VRMoveVoiceIndicatorToBottomBar"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["EnableMaquettesSupport"]
  NAMECALL R0 R0 K5 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIF R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VRMoveVoiceIndicatorToBottomBar"]
  NAMECALL R0 R0 K6 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1
