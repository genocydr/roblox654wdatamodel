MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["createEnum"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R2 K6 ["RequestType"]
  NEWTABLE R3 0 8
  LOADK R4 K7 ["None"]
  LOADK R5 K8 ["Asset"]
  LOADK R6 K9 ["Bundle"]
  LOADK R7 K10 ["GamePass"]
  LOADK R8 K11 ["Product"]
  LOADK R9 K12 ["Premium"]
  LOADK R10 K13 ["Subscription"]
  LOADK R11 K14 ["AvatarCreationFee"]
  SETLIST R3 R4 8 [1]
  CALL R1 2 1
  RETURN R1 1
