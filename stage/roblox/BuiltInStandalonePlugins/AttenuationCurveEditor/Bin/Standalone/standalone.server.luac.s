MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["launch"]
  LOADK R3 K2 ["AttenuationCurveEditor"]
  GETTABLEKS R4 R0 K9 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K10 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K11 ["Bin"]
  GETTABLEKS R4 R5 K12 ["Common"]
  GETTABLEKS R3 R4 K13 ["pluginType"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K14 ["get"]
  CALL R3 0 1
  GETTABLEKS R4 R2 K15 ["standalone"]
  JUMPIFEQ R3 R4 [+2]
  RETURN R0 0
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K11 ["Bin"]
  GETTABLEKS R5 R6 K12 ["Common"]
  GETTABLEKS R4 R5 K16 ["setup"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Bin"]
  GETTABLEKS R6 R7 K12 ["Common"]
  GETTABLEKS R5 R6 K17 ["setupMain"]
  CALL R4 1 1
  MOVE R5 R3
  GETIMPORT R6 K19 [plugin]
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0