MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Settings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Resources"]
  GETTABLEKS R2 R3 K7 ["SharedSettingsService"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Integrations"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K8 ["Integrations"]
  GETTABLEKS R3 R4 K10 ["SettingFields"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["Fullscreen"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K12 ["ShiftLock"]
  CALL R5 1 1
  DUPTABLE R8 K15 [{"id", "settingsFields"}]
  GETTABLEKS R10 R2 K16 ["GAMESETTINGS"]
  GETTABLEKS R9 R10 K17 ["PAGE_ID"]
  SETTABLEKS R9 R8 K13 ["id"]
  NEWTABLE R9 0 2
  MOVE R10 R4
  MOVE R11 R5
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K14 ["settingsFields"]
  NAMECALL R6 R1 K18 ["registerPage"]
  CALL R6 2 1
  RETURN R6 1
