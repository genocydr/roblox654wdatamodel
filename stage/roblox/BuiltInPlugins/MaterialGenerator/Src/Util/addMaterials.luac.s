PROTO_0:
  GETTABLEN R4 R3 1
  DUPTABLE R5 K3 [{"materialVariants", "promptText", "filteredPromptText"}]
  SETTABLEKS R0 R5 K0 ["materialVariants"]
  SETTABLEKS R1 R5 K1 ["promptText"]
  SETTABLEKS R2 R5 K2 ["filteredPromptText"]
  JUMPIFNOT R4 [+28]
  GETTABLEKS R6 R4 K1 ["promptText"]
  JUMPIFNOTEQ R6 R1 [+25]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["append"]
  GETTABLEKS R7 R5 K0 ["materialVariants"]
  GETTABLEKS R8 R4 K0 ["materialVariants"]
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["append"]
  NEWTABLE R7 0 1
  MOVE R8 R5
  SETLIST R7 R8 1 [1]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["slice"]
  MOVE R9 R3
  LOADN R10 2
  CALL R8 2 -1
  CALL R6 -1 -1
  RETURN R6 -1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["append"]
  NEWTABLE R7 0 1
  MOVE R8 R5
  SETLIST R7 R8 1 [1]
  MOVE R8 R3
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R1
  RETURN R3 1