MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["enumerate"]
  CALL R1 1 1
  MOVE R2 R1
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["Name"]
  DUPTABLE R4 K15 [{"Up", "Down", "Left", "Right"}]
  LOADK R5 K11 ["Up"]
  SETTABLEKS R5 R4 K11 ["Up"]
  LOADK R5 K12 ["Down"]
  SETTABLEKS R5 R4 K12 ["Down"]
  LOADK R5 K13 ["Left"]
  SETTABLEKS R5 R4 K13 ["Left"]
  LOADK R5 K14 ["Right"]
  SETTABLEKS R5 R4 K14 ["Right"]
  CALL R2 2 -1
  RETURN R2 -1
