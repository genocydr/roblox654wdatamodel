MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["createEnum"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R2 K6 ["ItemType"]
  NEWTABLE R3 0 4
  LOADK R4 K7 ["Asset"]
  LOADK R5 K8 ["GamePass"]
  LOADK R6 K9 ["Product"]
  LOADK R7 K10 ["Bundle"]
  SETLIST R3 R4 4 [1]
  CALL R1 2 1
  RETURN R1 1
