PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+1]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["[PurchasePrompt]"]
  MOVE R4 R0
  CALL R4 0 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["PPDebugLogging"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
