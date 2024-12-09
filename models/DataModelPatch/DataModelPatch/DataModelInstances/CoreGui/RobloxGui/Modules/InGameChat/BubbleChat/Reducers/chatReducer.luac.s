MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETIMPORT R7 K12 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K14 ["chatSettings"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K15 ["messages"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETIMPORT R9 K12 [script]
  GETTABLEKS R8 R9 K13 ["Parent"]
  GETTABLEKS R7 R8 K16 ["userMessages"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R11 R2 K17 ["Modules"]
  GETTABLEKS R10 R11 K18 ["VoiceChat"]
  GETTABLEKS R9 R10 K19 ["Reducers"]
  GETTABLEKS R8 R9 K20 ["voiceState"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETIMPORT R11 K12 [script]
  GETTABLEKS R10 R11 K13 ["Parent"]
  GETTABLEKS R9 R10 K21 ["components"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K22 ["combineReducers"]
  DUPTABLE R10 K23 [{"chatSettings", "messages", "userMessages", "voiceState", "components"}]
  SETTABLEKS R4 R10 K14 ["chatSettings"]
  SETTABLEKS R5 R10 K15 ["messages"]
  SETTABLEKS R6 R10 K16 ["userMessages"]
  SETTABLEKS R7 R10 K20 ["voiceState"]
  SETTABLEKS R8 R10 K21 ["components"]
  CALL R9 1 1
  RETURN R9 1
