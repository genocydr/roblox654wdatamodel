MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K3 ["_Index"]
  GETTABLEKS R2 R0 K5 ["roblox_testez"]
  GETTABLEKS R1 R2 K4 ["testez"]
  GETTABLEKS R2 R1 K6 ["ClassName"]
  JUMPIFNOTEQKS R2 K7 ["ModuleScript"] [+6]
  GETIMPORT R2 K9 [require]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  RETURN R1 1