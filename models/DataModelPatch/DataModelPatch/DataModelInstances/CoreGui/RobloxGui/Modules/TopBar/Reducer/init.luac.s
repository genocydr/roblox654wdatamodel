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
  GETTABLEKS R5 R0 K8 ["Workspace"]
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["CrossExperienceVoice"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Workspace"]
  GETTABLEKS R5 R6 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["CrossExperience"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K11 ["Middlewares"]
  GETTABLEKS R4 R5 K12 ["createPersistenceMiddleware"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Workspace"]
  GETTABLEKS R8 R9 K6 ["Packages"]
  GETTABLEKS R7 R8 K13 ["SharedFlags"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K14 ["GetFFlagEnableCrossExpVoice"]
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K16 [script]
  GETTABLEKS R7 R8 K17 ["DisplayOptions"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K16 [script]
  GETTABLEKS R8 R9 K18 ["CoreGuiEnabled"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K16 [script]
  GETTABLEKS R9 R10 K19 ["Health"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K16 [script]
  GETTABLEKS R10 R11 K20 ["MoreMenu"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETIMPORT R12 K16 [script]
  GETTABLEKS R11 R12 K21 ["Chat"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K16 [script]
  GETTABLEKS R12 R13 K22 ["Respawn"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R14 K16 [script]
  GETTABLEKS R13 R14 K23 ["GameInfo"]
  CALL R12 1 1
  DUPTABLE R13 K31 [{"displayOptions", "coreGuiEnabled", "health", "moreMenu", "chat", "respawn", "gameInfo"}]
  SETTABLEKS R6 R13 K24 ["displayOptions"]
  SETTABLEKS R7 R13 K25 ["coreGuiEnabled"]
  SETTABLEKS R8 R13 K26 ["health"]
  SETTABLEKS R9 R13 K27 ["moreMenu"]
  SETTABLEKS R10 R13 K28 ["chat"]
  SETTABLEKS R11 R13 K29 ["respawn"]
  SETTABLEKS R12 R13 K30 ["gameInfo"]
  MOVE R14 R5
  CALL R14 0 1
  JUMPIFNOT R14 [+38]
  MOVE R14 R4
  DUPTABLE R15 K33 [{"storeKey"}]
  GETTABLEKS R17 R3 K34 ["Constants"]
  GETTABLEKS R16 R17 K35 ["STORAGE_CEV_STORE_KEY"]
  SETTABLEKS R16 R15 K32 ["storeKey"]
  CALL R14 1 1
  LOADNIL R15
  GETTABLEKS R16 R14 K36 ["restore"]
  CALL R16 0 1
  JUMPIFNOT R16 [+12]
  GETTABLEKS R17 R16 K37 ["Squad"]
  JUMPIFNOT R17 [+9]
  GETTABLEKS R18 R16 K37 ["Squad"]
  GETTABLEKS R17 R18 K9 ["CrossExperienceVoice"]
  JUMPIFNOT R17 [+4]
  GETTABLEKS R17 R16 K37 ["Squad"]
  GETTABLEKS R15 R17 K9 ["CrossExperienceVoice"]
  GETTABLEKS R17 R1 K38 ["combineReducers"]
  DUPTABLE R18 K39 [{"CrossExperienceVoice"}]
  GETTABLEKS R19 R2 K40 ["installReducer"]
  MOVE R20 R15
  CALL R19 1 1
  SETTABLEKS R19 R18 K9 ["CrossExperienceVoice"]
  CALL R17 1 1
  SETTABLEKS R17 R13 K37 ["Squad"]
  GETTABLEKS R14 R1 K38 ["combineReducers"]
  MOVE R15 R13
  CALL R14 1 1
  RETURN R14 1
