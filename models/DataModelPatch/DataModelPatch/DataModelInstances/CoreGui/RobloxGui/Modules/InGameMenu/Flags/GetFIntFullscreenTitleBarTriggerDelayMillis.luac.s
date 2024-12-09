PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FullscreenTitleBarTriggerDelayMillis"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 1
  LOADN R1 0
  JUMPIFNOTLT R0 R1 [+2]
  LOADN R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FullscreenTitleBarTriggerDelayMillis"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  DUPCLOSURE R0 K4 [PROTO_0]
  RETURN R0 1
