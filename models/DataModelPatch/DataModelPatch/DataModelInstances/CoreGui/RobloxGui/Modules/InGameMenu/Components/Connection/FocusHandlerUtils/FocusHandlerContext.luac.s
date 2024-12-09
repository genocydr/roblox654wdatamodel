PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

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
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R2 K9 ["createContext"]
  DUPTABLE R4 K16 [{"currentHandlerId", "candidateHandlerId", "previousSelections", "requestFocusForHandlerId", "forgetLastSelectionForHandlerId", "blurCurrentFocusHandler"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["currentHandlerId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["candidateHandlerId"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K12 ["previousSelections"]
  DUPCLOSURE R5 K17 [PROTO_0]
  SETTABLEKS R5 R4 K13 ["requestFocusForHandlerId"]
  DUPCLOSURE R5 K18 [PROTO_1]
  SETTABLEKS R5 R4 K14 ["forgetLastSelectionForHandlerId"]
  DUPCLOSURE R5 K19 [PROTO_2]
  SETTABLEKS R5 R4 K15 ["blurCurrentFocusHandler"]
  CALL R3 1 -1
  RETURN R3 -1
