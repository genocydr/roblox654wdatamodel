MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["makeActionCreator"]
  CALL R1 1 1
  MOVE R2 R1
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Name"]
  LOADK R4 K7 ["id"]
  LOADK R5 K8 ["idempotencyKey"]
  LOADK R6 K9 ["purchaseAuthToken"]
  LOADK R7 K10 ["collectibleItemId"]
  LOADK R8 K11 ["collectibleItemInstanceId"]
  LOADK R9 K12 ["collectibleProductId"]
  LOADK R10 K13 ["expectedPrice"]
  CALL R2 8 -1
  RETURN R2 -1
