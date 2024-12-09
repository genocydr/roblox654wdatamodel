MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["makeActionCreator"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  LOADK R3 K7 ["id"]
  LOADK R4 K8 ["infoType"]
  LOADK R5 K9 ["equipIfPurchased"]
  CALL R1 4 -1
  RETURN R1 -1
