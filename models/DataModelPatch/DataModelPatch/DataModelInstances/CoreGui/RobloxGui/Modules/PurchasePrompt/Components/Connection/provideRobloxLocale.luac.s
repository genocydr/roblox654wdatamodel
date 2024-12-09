PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"localizationContext"}]
  GETUPVAL R4 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["RobloxLocaleId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["localizationContext"]
  DUPTABLE R4 K5 [{"PurchasePromptApp"}]
  MOVE R5 R0
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["PurchasePromptApp"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["LocalizationService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["CorePackages"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R2 K10 ["Workspace"]
  GETTABLEKS R5 R6 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["PurchasePromptDeps"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["Roact"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K14 ["Localization"]
  GETTABLEKS R6 R7 K15 ["getLocalizationContext"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K16 ["LocalizationContextProvider"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R1
  RETURN R7 1
