PROTO_0:
  DUPTABLE R2 K2 [{"overlay", "overlayProps"}]
  GETTABLEKS R3 R1 K0 ["overlay"]
  SETTABLEKS R3 R2 K0 ["overlay"]
  GETTABLEKS R3 R1 K1 ["overlayProps"]
  SETTABLEKS R3 R2 K1 ["overlayProps"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K2 [{"overlay", "overlayProps"}]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["overlay"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["overlayProps"]
  RETURN R2 1

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
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K11 ["Actions"]
  GETTABLEKS R4 R5 K12 ["OpenOverlay"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K11 ["Actions"]
  GETTABLEKS R5 R6 K13 ["CloseOverlay"]
  CALL R4 1 1
  DUPTABLE R5 K16 [{"overlay", "overlayProps"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K14 ["overlay"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K15 ["overlayProps"]
  GETTABLEKS R6 R1 K17 ["createReducer"]
  MOVE R7 R5
  NEWTABLE R8 2 0
  GETTABLEKS R9 R3 K18 ["name"]
  DUPCLOSURE R10 K19 [PROTO_0]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R4 K18 ["name"]
  DUPCLOSURE R10 K20 [PROTO_1]
  SETTABLE R10 R8 R9
  CALL R6 2 -1
  RETURN R6 -1
