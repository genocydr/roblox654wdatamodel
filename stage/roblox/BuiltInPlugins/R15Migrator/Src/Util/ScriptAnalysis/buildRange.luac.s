PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R0
  ADDK R7 R2 K1 [1]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["ScriptAnalysis"]
  GETTABLEKS R2 R3 K9 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K8 ["ScriptAnalysis"]
  GETTABLEKS R3 R4 K10 ["Range"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1