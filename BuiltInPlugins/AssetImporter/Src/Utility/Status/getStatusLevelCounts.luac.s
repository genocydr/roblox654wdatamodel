PROTO_0:
  LOADN R1 0
  LOADN R2 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R8 0
  JUMPIFNOT R8 [+24]
  GETTABLEKS R8 R7 K0 ["Level"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["Warning"]
  GETTABLEKS R9 R10 K2 ["rawValue"]
  CALL R9 0 1
  JUMPIFNOTEQ R8 R9 [+3]
  ADDK R2 R2 K3 [1]
  JUMP [+23]
  GETTABLEKS R8 R7 K0 ["Level"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["Error"]
  GETTABLEKS R9 R10 K2 ["rawValue"]
  CALL R9 0 1
  JUMPIFNOTEQ R8 R9 [+14]
  ADDK R1 R1 K3 [1]
  JUMP [+11]
  GETTABLEKS R8 R7 K0 ["Level"]
  JUMPIFNOTEQKS R8 K1 ["Warning"] [+3]
  ADDK R2 R2 K3 [1]
  JUMP [+5]
  GETTABLEKS R8 R7 K0 ["Level"]
  JUMPIFNOTEQKS R8 K4 ["Error"] [+2]
  ADDK R1 R1 K3 [1]
  FORGLOOP R3 2 [-38]
  DUPTABLE R3 K7 [{"errors", "warnings"}]
  SETTABLEKS R1 R3 K5 ["errors"]
  SETTABLEKS R2 R3 K6 ["warnings"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["StatusLevel"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagAssetImportWarningIconJump"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
