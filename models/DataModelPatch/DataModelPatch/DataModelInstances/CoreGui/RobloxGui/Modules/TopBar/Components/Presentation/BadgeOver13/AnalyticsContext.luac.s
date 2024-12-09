PROTO_0:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Analytics not implemented"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  DUPTABLE R3 K10 [{"fireEvent"}]
  DUPCLOSURE R4 K11 [PROTO_0]
  SETTABLEKS R4 R3 K9 ["fireEvent"]
  CALL R2 1 -1
  RETURN R2 -1
