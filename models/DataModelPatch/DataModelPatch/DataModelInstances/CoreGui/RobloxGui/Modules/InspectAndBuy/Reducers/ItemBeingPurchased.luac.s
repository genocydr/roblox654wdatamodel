PROTO_0:
  DUPTABLE R2 K2 [{"itemType", "itemId"}]
  GETTABLEKS R3 R1 K0 ["itemType"]
  SETTABLEKS R3 R2 K0 ["itemType"]
  GETTABLEKS R3 R1 K1 ["itemId"]
  SETTABLEKS R3 R2 K1 ["itemId"]
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
  GETTABLEKS R4 R5 K12 ["SetItemBeingPurchased"]
  CALL R3 1 1
  DUPTABLE R4 K15 [{"itemType", "itemId"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["itemType"]
  LOADNIL R5
  SETTABLEKS R5 R4 K14 ["itemId"]
  GETTABLEKS R5 R1 K16 ["createReducer"]
  MOVE R6 R4
  NEWTABLE R7 1 0
  GETTABLEKS R8 R3 K17 ["name"]
  DUPCLOSURE R9 K18 [PROTO_0]
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  RETURN R5 -1
