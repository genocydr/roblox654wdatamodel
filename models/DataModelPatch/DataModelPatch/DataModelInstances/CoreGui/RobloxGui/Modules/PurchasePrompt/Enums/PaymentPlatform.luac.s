MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["CorePackages"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Workspace"]
  GETTABLEKS R4 R5 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["PurchasePromptDeps"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["enumerate"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K13 ["Utils"]
  GETTABLEKS R5 R6 K14 ["addRawValueMethodToEnum"]
  CALL R4 1 1
  DUPTABLE R5 K25 [{"None", "Apple", "Google", "Amazon", "Xbox", "UWP", "Midas", "Web", "Maquettes", "Palisades"}]
  LOADK R6 K15 ["None"]
  SETTABLEKS R6 R5 K15 ["None"]
  LOADK R6 K16 ["Apple"]
  SETTABLEKS R6 R5 K16 ["Apple"]
  LOADK R6 K17 ["Google"]
  SETTABLEKS R6 R5 K17 ["Google"]
  LOADK R6 K18 ["Amazon"]
  SETTABLEKS R6 R5 K18 ["Amazon"]
  LOADK R6 K19 ["Xbox"]
  SETTABLEKS R6 R5 K19 ["Xbox"]
  LOADK R6 K20 ["UWP"]
  SETTABLEKS R6 R5 K20 ["UWP"]
  LOADK R6 K21 ["Midas"]
  SETTABLEKS R6 R5 K21 ["Midas"]
  LOADK R6 K22 ["Web"]
  SETTABLEKS R6 R5 K22 ["Web"]
  LOADK R6 K23 ["Maquettes"]
  SETTABLEKS R6 R5 K23 ["Maquettes"]
  LOADK R6 K24 ["Palisades"]
  SETTABLEKS R6 R5 K24 ["Palisades"]
  MOVE R6 R3
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K26 ["Name"]
  MOVE R8 R5
  CALL R6 2 1
  MOVE R7 R4
  MOVE R8 R6
  MOVE R9 R5
  CALL R7 2 0
  RETURN R6 1
