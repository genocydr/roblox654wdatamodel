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
  GETTABLEKS R3 R4 K10 ["PromptRequestReducer"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K11 ["combineReducers"]
  DUPTABLE R4 K13 [{"promptRequest"}]
  SETTABLEKS R2 R4 K12 ["promptRequest"]
  CALL R3 1 1
  RETURN R3 1
