PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["Events"]
  GETTABLEKS R3 R2 K1 ["LegacyBubbleTextUpdated"]
  JUMPIFEQKNIL R3 [+6]
  GETTABLEKS R3 R2 K1 ["LegacyBubbleTextUpdated"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  DUPTABLE R2 K4 [{"messageId", "newText"}]
  SETTABLEKS R0 R2 K2 ["messageId"]
  SETTABLEKS R1 R2 K3 ["newText"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Workspace"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["ExpChat"]
  CALL R1 1 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K9 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R4 K10 ["RobloxGui"]
  NAMECALL R2 R2 K11 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Rodux"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K13 ["makeActionCreator"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K14 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R10 K16 [script]
  GETTABLEKS R9 R10 K17 ["Parent"]
  GETTABLEKS R8 R9 K17 ["Parent"]
  GETTABLEKS R7 R8 K18 ["Helpers"]
  GETTABLEKS R6 R7 K19 ["maybeAssert"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R2 K20 ["Modules"]
  GETTABLEKS R8 R9 K21 ["Flags"]
  GETTABLEKS R7 R8 K22 ["GetFFlagConsolidateBubbleChat"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K23 ["tuple"]
  GETTABLEKS R8 R4 K24 ["string"]
  GETTABLEKS R9 R4 K24 ["string"]
  CALL R7 2 1
  MOVE R8 R3
  GETIMPORT R10 K16 [script]
  GETTABLEKS R9 R10 K25 ["Name"]
  DUPCLOSURE R10 K26 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R1
  CALL R8 2 -1
  RETURN R8 -1
