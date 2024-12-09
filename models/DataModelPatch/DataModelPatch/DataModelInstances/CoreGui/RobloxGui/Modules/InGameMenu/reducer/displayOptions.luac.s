PROTO_0:
  DUPTABLE R2 K2 [{"inspectMenuEnabled", "inputType"}]
  GETTABLEKS R3 R1 K3 ["enabled"]
  SETTABLEKS R3 R2 K0 ["inspectMenuEnabled"]
  GETTABLEKS R3 R0 K1 ["inputType"]
  SETTABLEKS R3 R2 K1 ["inputType"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R2 K2 [{"inspectMenuEnabled", "inputType"}]
  GETTABLEKS R3 R0 K0 ["inspectMenuEnabled"]
  SETTABLEKS R3 R2 K0 ["inspectMenuEnabled"]
  GETTABLEKS R3 R1 K1 ["inputType"]
  SETTABLEKS R3 R2 K1 ["inputType"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Rodux"]
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K14 ["Actions"]
  GETTABLEKS R6 R7 K15 ["SetInspectMenuEnabled"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R3 K14 ["Actions"]
  GETTABLEKS R7 R8 K16 ["SetInputType"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K17 ["InputType"]
  GETTABLEKS R8 R2 K18 ["createReducer"]
  DUPTABLE R9 K21 [{"inspectMenuEnabled", "inputType"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K19 ["inspectMenuEnabled"]
  GETTABLEKS R10 R7 K22 ["MouseAndKeyboard"]
  SETTABLEKS R10 R9 K20 ["inputType"]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R5 K23 ["name"]
  DUPCLOSURE R12 K24 [PROTO_0]
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R6 K23 ["name"]
  DUPCLOSURE R12 K25 [PROTO_1]
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
