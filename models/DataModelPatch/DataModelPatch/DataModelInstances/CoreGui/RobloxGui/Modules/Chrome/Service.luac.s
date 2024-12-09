MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R0 K10 ["Enabled"]
  CALL R2 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K11 ["Workspace"]
  GETTABLEKS R6 R7 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["SharedFlags"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K14 ["GetFFlagFixChromeReferences"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K11 ["Workspace"]
  GETTABLEKS R7 R8 K12 ["Packages"]
  GETTABLEKS R6 R7 K13 ["SharedFlags"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K15 ["GetFFlagRefactorChromeAssert"]
  MOVE R5 R4
  CALL R5 0 1
  JUMPIFNOT R5 [+19]
  MOVE R5 R3
  CALL R5 0 1
  JUMPIFNOT R5 [+16]
  MOVE R6 R2
  CALL R6 0 1
  FASTCALL2K ASSERT R6 K16 [+4]
  LOADK R7 K16 ["Chrome.Service should not be initialized when Chrome is not enabled"]
  GETIMPORT R5 K18 [assert]
  CALL R5 2 0
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K19 ["ChromeShared"]
  GETTABLEKS R6 R7 K20 ["Service"]
  CALL R5 1 1
  RETURN R5 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K19 ["ChromeShared"]
  GETTABLEKS R6 R7 K20 ["Service"]
  CALL R5 1 1
  RETURN R5 1
