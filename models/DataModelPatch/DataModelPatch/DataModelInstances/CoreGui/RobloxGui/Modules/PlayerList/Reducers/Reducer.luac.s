PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  JUMPIFNOT R0 [+3]
  GETTABLEKS R4 R0 K0 ["playerKeys"]
  JUMPIF R4 [+1]
  LOADNIL R4
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  SETTABLEKS R3 R2 K0 ["playerKeys"]
  RETURN R2 1

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
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["DisplayOptions"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["ScreenSize"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Settings"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K9 [script]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K14 ["GameStats"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K9 [script]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Teams"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K9 [script]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K16 ["TeamNames"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K9 [script]
  GETTABLEKS R10 R11 K10 ["Parent"]
  GETTABLEKS R9 R10 K17 ["TeamColors"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K9 [script]
  GETTABLEKS R11 R12 K10 ["Parent"]
  GETTABLEKS R10 R11 K18 ["Players"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K9 [script]
  GETTABLEKS R12 R13 K10 ["Parent"]
  GETTABLEKS R11 R12 K19 ["PlayerStats"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R14 K9 [script]
  GETTABLEKS R13 R14 K10 ["Parent"]
  GETTABLEKS R12 R13 K20 ["PlayerTeam"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R15 K9 [script]
  GETTABLEKS R14 R15 K10 ["Parent"]
  GETTABLEKS R13 R14 K21 ["PlayerIconInfo"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETIMPORT R16 K9 [script]
  GETTABLEKS R15 R16 K10 ["Parent"]
  GETTABLEKS R14 R15 K22 ["PlayerRelationship"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETIMPORT R17 K9 [script]
  GETTABLEKS R16 R17 K10 ["Parent"]
  GETTABLEKS R15 R16 K23 ["PlayerDropDown"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETIMPORT R18 K9 [script]
  GETTABLEKS R17 R18 K10 ["Parent"]
  GETTABLEKS R16 R17 K24 ["PlayerKeys"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K25 ["combineReducers"]
  DUPTABLE R17 K39 [{"displayOptions", "screenSize", "settings", "gameStats", "teams", "teamNames", "teamColors", "players", "playerStats", "playerTeam", "playerIconInfo", "playerRelationship", "playerDropDown"}]
  SETTABLEKS R2 R17 K26 ["displayOptions"]
  SETTABLEKS R3 R17 K27 ["screenSize"]
  SETTABLEKS R4 R17 K28 ["settings"]
  SETTABLEKS R5 R17 K29 ["gameStats"]
  SETTABLEKS R6 R17 K30 ["teams"]
  SETTABLEKS R7 R17 K31 ["teamNames"]
  SETTABLEKS R8 R17 K32 ["teamColors"]
  SETTABLEKS R9 R17 K33 ["players"]
  SETTABLEKS R10 R17 K34 ["playerStats"]
  SETTABLEKS R11 R17 K35 ["playerTeam"]
  SETTABLEKS R12 R17 K36 ["playerIconInfo"]
  SETTABLEKS R13 R17 K37 ["playerRelationship"]
  SETTABLEKS R14 R17 K38 ["playerDropDown"]
  CALL R16 1 1
  DUPCLOSURE R17 K40 [PROTO_0]
  CAPTURE VAL R16
  CAPTURE VAL R15
  RETURN R17 1
