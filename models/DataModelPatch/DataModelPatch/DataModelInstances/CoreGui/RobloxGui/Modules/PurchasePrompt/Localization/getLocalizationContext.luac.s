PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+21]
  DUPTABLE R2 K4 [{"locale", "translations", "fallbackTranslations"}]
  SETTABLEKS R0 R2 K1 ["locale"]
  GETIMPORT R3 K6 [require]
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["translations"]
  GETIMPORT R3 K6 [require]
  GETUPVAL R4 0
  LOADK R6 K7 ["en-us"]
  NAMECALL R4 R4 K0 ["FindFirstChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  SETTABLEKS R3 R2 K3 ["fallbackTranslations"]
  RETURN R2 1
  GETUPVAL R2 0
  LOADK R4 K7 ["en-us"]
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  DUPTABLE R3 K8 [{"locale", "translations"}]
  LOADK R4 K7 ["en-us"]
  SETTABLEKS R4 R3 K1 ["locale"]
  GETIMPORT R4 K6 [require]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["translations"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K3 ["Locales"]
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
