PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DisablePurchasePromptFunctionForMaquettes"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+7]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["MaquettesPurchaseFeature"]
  NAMECALL R1 R1 K5 ["GetEngineFeature"]
  CALL R1 2 1
  NOT R0 R1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DisablePurchasePromptFunctionForMaquettes"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPCLOSURE R0 K4 [PROTO_0]
  RETURN R0 1
