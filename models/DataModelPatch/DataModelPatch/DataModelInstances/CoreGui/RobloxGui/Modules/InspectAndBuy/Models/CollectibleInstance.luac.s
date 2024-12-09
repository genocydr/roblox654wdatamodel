PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  NEWTABLE R1 8 0
  GETTABLEKS R2 R0 K0 ["collectibleInstanceId"]
  SETTABLEKS R2 R1 K0 ["collectibleInstanceId"]
  GETTABLEKS R2 R0 K1 ["collectibleItemId"]
  SETTABLEKS R2 R1 K1 ["collectibleItemId"]
  GETTABLEKS R2 R0 K2 ["collectibleProductId"]
  SETTABLEKS R2 R1 K2 ["collectibleProductId"]
  GETTABLEKS R2 R0 K3 ["serialNumber"]
  SETTABLEKS R2 R1 K3 ["serialNumber"]
  GETTABLEKS R2 R0 K4 ["instanceState"]
  SETTABLEKS R2 R1 K4 ["instanceState"]
  GETTABLEKS R2 R0 K5 ["saleState"]
  SETTABLEKS R2 R1 K5 ["saleState"]
  GETTABLEKS R2 R0 K6 ["price"]
  SETTABLEKS R2 R1 K6 ["price"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["new"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["fromGetCollectibleItemInstances"]
  RETURN R0 1
