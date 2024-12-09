PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K6 [{"isOpen", "title", "bodyText", "dismissCallback"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["isOpen"]
  GETTABLEKS R5 R1 K3 ["title"]
  SETTABLEKS R5 R4 K3 ["title"]
  GETTABLEKS R5 R1 K4 ["bodyText"]
  SETTABLEKS R5 R4 K4 ["bodyText"]
  GETTABLEKS R5 R1 K5 ["dismissCallback"]
  SETTABLEKS R5 R4 K5 ["dismissCallback"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K6 [{"isOpen", "title", "bodyText", "dismissCallback"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["isOpen"]
  LOADK R5 K7 [""]
  SETTABLEKS R5 R4 K3 ["title"]
  LOADK R5 K7 [""]
  SETTABLEKS R5 R4 K4 ["bodyText"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["None"]
  SETTABLEKS R5 R4 K5 ["dismissCallback"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETTABLEKS R4 R5 K13 ["OpenOrUpdateDialog"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R9 K10 [script]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Actions"]
  GETTABLEKS R5 R6 K14 ["CloseDialog"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K15 ["createReducer"]
  DUPTABLE R6 K20 [{"isOpen", "title", "bodyText", "dismissCallback"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K16 ["isOpen"]
  LOADK R7 K21 [""]
  SETTABLEKS R7 R6 K17 ["title"]
  LOADK R7 K21 [""]
  SETTABLEKS R7 R6 K18 ["bodyText"]
  LOADNIL R7
  SETTABLEKS R7 R6 K19 ["dismissCallback"]
  NEWTABLE R7 2 0
  GETTABLEKS R8 R3 K22 ["name"]
  DUPCLOSURE R9 K23 [PROTO_0]
  CAPTURE VAL R1
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R4 K22 ["name"]
  DUPCLOSURE R9 K24 [PROTO_1]
  CAPTURE VAL R1
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  RETURN R5 -1
