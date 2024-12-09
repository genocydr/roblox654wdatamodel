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
  GETTABLEKS R5 R6 K12 ["feedbackFlowState"]
  CALL R4 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Workspace"]
  GETTABLEKS R9 R10 K6 ["Packages"]
  GETTABLEKS R8 R9 K14 ["Http"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K15 ["Reducers"]
  GETTABLEKS R5 R6 K16 ["FetchingStatus"]
  GETTABLEKS R6 R1 K17 ["combineReducers"]
  DUPTABLE R7 K18 [{"common", "displayOptions", "feedbackFlowState", "FetchingStatus"}]
  SETTABLEKS R2 R7 K10 ["common"]
  SETTABLEKS R3 R7 K11 ["displayOptions"]
  SETTABLEKS R4 R7 K12 ["feedbackFlowState"]
  SETTABLEKS R5 R7 K16 ["FetchingStatus"]
  CALL R6 1 1
  RETURN R6 1
