PROTO_0:
  GETTABLEKS R3 R0 K0 ["GameOwnerMetadata"]
  GETTABLEKS R2 R3 K1 ["creatorType"]
  GETIMPORT R3 K5 [Enum.CreatorType.Group]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
