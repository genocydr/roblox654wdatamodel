MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["DebugVersionedFlagTest_RealConsumerCpp"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K5 [print]
  LOADK R1 K6 ["DebugVersionedFlagTest_RealConsumerCpp is flipped, version ONE (Lua)"]
  CALL R0 1 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["DebugVersionedFastFlagTest_RealConsumerLua"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["DebugVersionedFastFlagTest_RealConsumerLua"]
  NAMECALL R0 R0 K8 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+4]
  GETIMPORT R0 K5 [print]
  LOADK R1 K9 ["DebugVersionedFastFlagTest_RealConsumerLua is flipped, version ONE (Lua)"]
  CALL R0 1 0
  RETURN R0 0
