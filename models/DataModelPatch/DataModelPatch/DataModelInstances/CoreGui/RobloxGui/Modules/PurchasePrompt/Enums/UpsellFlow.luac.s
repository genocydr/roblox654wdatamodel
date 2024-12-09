MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["createEnum"]
  CALL R0 1 1
  MOVE R1 R0
  LOADK R2 K6 ["UpsellFlow"]
  NEWTABLE R3 0 5
  LOADK R4 K7 ["Web"]
  LOADK R5 K8 ["Mobile"]
  LOADK R6 K9 ["Xbox"]
  LOADK R7 K10 ["Unavailable"]
  LOADK R8 K11 ["None"]
  SETLIST R3 R4 5 [1]
  CALL R1 2 1
  RETURN R1 1
