PROTO_0:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  DUPTABLE R2 K9 [{"menuVisible", "setMenuVisible"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["menuVisible"]
  DUPCLOSURE R3 K10 [PROTO_0]
  SETTABLEKS R3 R2 K8 ["setMenuVisible"]
  GETTABLEKS R3 R1 K11 ["createContext"]
  MOVE R4 R2
  CALL R3 1 1
  RETURN R3 1