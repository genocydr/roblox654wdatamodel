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
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K11 ["DisplayOptions"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K12 ["EmotesPage"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K13 ["EmotesWheel"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K14 ["Layout"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K15 ["Locale"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K16 ["combineReducers"]
  DUPTABLE R9 K22 [{"displayOptions", "emotesPage", "emotesWheel", "layout", "locale"}]
  SETTABLEKS R3 R9 K17 ["displayOptions"]
  SETTABLEKS R4 R9 K18 ["emotesPage"]
  SETTABLEKS R5 R9 K19 ["emotesWheel"]
  SETTABLEKS R6 R9 K20 ["layout"]
  SETTABLEKS R7 R9 K21 ["locale"]
  CALL R8 1 1
  RETURN R8 1
