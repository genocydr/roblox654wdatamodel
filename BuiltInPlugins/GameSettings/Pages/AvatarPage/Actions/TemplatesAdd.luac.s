PROTO_0:
  DUPTABLE R0 K1 [{"templatesArrayToAdd"}]
  NEWTABLE R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 -1
  SETLIST R1 R2 -1 [1]
  SETTABLEKS R1 R0 K0 ["templatesArrayToAdd"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R1 K5 ["Packages"]
  GETTABLEKS R5 R6 K6 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Util"]
  GETTABLEKS R4 R5 K9 ["StateModelTemplate"]
  CALL R3 1 1
  MOVE R4 R2
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["Name"]
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE VAL R3
  CALL R4 2 -1
  RETURN R4 -1
