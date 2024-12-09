MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["common"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K11 ["displayOptions"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K12 ["placeInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K13 ["report"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["combineReducers"]
  DUPTABLE R7 K15 [{"common", "displayOptions", "placeInfo", "report"}]
  SETTABLEKS R2 R7 K10 ["common"]
  SETTABLEKS R3 R7 K11 ["displayOptions"]
  SETTABLEKS R4 R7 K12 ["placeInfo"]
  SETTABLEKS R5 R7 K13 ["report"]
  CALL R6 1 1
  RETURN R6 1
