PROTO_0:
  GETTABLEKS R2 R1 K0 ["isVisible"]
  JUMPIF R2 [+9]
  DUPTABLE R2 K2 [{"isVisible", "selectedPlayer"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isVisible"]
  GETTABLEKS R3 R0 K1 ["selectedPlayer"]
  SETTABLEKS R3 R2 K1 ["selectedPlayer"]
  RETURN R2 1
  RETURN R0 1

PROTO_1:
  DUPTABLE R2 K2 [{"isVisible", "selectedPlayer"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isVisible"]
  GETTABLEKS R3 R1 K1 ["selectedPlayer"]
  SETTABLEKS R3 R2 K1 ["selectedPlayer"]
  RETURN R2 1

PROTO_2:
  DUPTABLE R2 K2 [{"isVisible", "selectedPlayer"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isVisible"]
  GETTABLEKS R3 R0 K1 ["selectedPlayer"]
  SETTABLEKS R3 R2 K1 ["selectedPlayer"]
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["player"]
  GETTABLEKS R3 R0 K1 ["selectedPlayer"]
  JUMPIFNOTEQ R2 R3 [+9]
  DUPTABLE R2 K3 [{"isVisible", "selectedPlayer"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["isVisible"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["selectedPlayer"]
  RETURN R2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["Actions"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K12 ["OpenPlayerDropDown"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K13 ["ClosePlayerDropDown"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K14 ["RemovePlayer"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K15 ["SetPlayerListVisibility"]
  CALL R6 1 1
  DUPTABLE R7 K18 [{"isVisible", "selectedPlayer"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["isVisible"]
  LOADNIL R8
  SETTABLEKS R8 R7 K17 ["selectedPlayer"]
  GETTABLEKS R8 R1 K19 ["createReducer"]
  MOVE R9 R7
  NEWTABLE R10 4 0
  GETTABLEKS R11 R6 K20 ["name"]
  DUPCLOSURE R12 K21 [PROTO_0]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R3 K20 ["name"]
  DUPCLOSURE R12 K22 [PROTO_1]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R4 K20 ["name"]
  DUPCLOSURE R12 K23 [PROTO_2]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R5 K20 ["name"]
  DUPCLOSURE R12 K24 [PROTO_3]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  RETURN R8 1
