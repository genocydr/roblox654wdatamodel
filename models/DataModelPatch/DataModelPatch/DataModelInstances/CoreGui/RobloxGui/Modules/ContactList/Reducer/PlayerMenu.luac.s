PROTO_0:
  GETTABLEKS R2 R1 K0 ["friend"]
  JUMPIFNOT R2 [+21]
  GETTABLEKS R3 R1 K0 ["friend"]
  GETTABLEKS R2 R3 K1 ["combinedName"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K5 [{"isOpen", "friend"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["isOpen"]
  GETTABLEKS R5 R1 K0 ["friend"]
  SETTABLEKS R5 R4 K0 ["friend"]
  CALL R2 2 -1
  RETURN R2 -1
  DUPTABLE R2 K5 [{"isOpen", "friend"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["isOpen"]
  DUPTABLE R3 K8 [{"userId", "combinedName", "userName"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K6 ["userId"]
  LOADK R4 K9 [""]
  SETTABLEKS R4 R3 K1 ["combinedName"]
  LOADK R4 K9 [""]
  SETTABLEKS R4 R3 K7 ["userName"]
  SETTABLEKS R3 R2 K0 ["friend"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K2 [{"isOpen", "friend"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isOpen"]
  DUPTABLE R3 K6 [{"userId", "combinedName", "userName"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["userId"]
  LOADK R4 K7 [""]
  SETTABLEKS R4 R3 K4 ["combinedName"]
  LOADK R4 K7 [""]
  SETTABLEKS R4 R3 K5 ["userName"]
  SETTABLEKS R3 R2 K1 ["friend"]
  RETURN R2 1

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
  GETTABLEKS R4 R5 K13 ["OpenOrUpdateCFM"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R9 K10 [script]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Actions"]
  GETTABLEKS R5 R6 K14 ["CloseCFM"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K15 ["createReducer"]
  DUPTABLE R6 K18 [{"isOpen", "friend"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K16 ["isOpen"]
  DUPTABLE R7 K22 [{"userId", "combinedName", "userName"}]
  LOADNIL R8
  SETTABLEKS R8 R7 K19 ["userId"]
  LOADK R8 K23 [""]
  SETTABLEKS R8 R7 K20 ["combinedName"]
  LOADK R8 K23 [""]
  SETTABLEKS R8 R7 K21 ["userName"]
  SETTABLEKS R7 R6 K17 ["friend"]
  NEWTABLE R7 2 0
  GETTABLEKS R8 R3 K24 ["name"]
  DUPCLOSURE R9 K25 [PROTO_0]
  CAPTURE VAL R1
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R4 K24 ["name"]
  DUPCLOSURE R9 K26 [PROTO_1]
  SETTABLE R9 R7 R8
  CALL R5 2 -1
  RETURN R5 -1
