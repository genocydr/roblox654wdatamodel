MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["t"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["union"]
  GETTABLEKS R3 R1 K9 ["instanceIsA"]
  LOADK R4 K10 ["Player"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["interface"]
  DUPTABLE R5 K15 [{"UserId", "Name", "DisplayName"}]
  GETTABLEKS R6 R1 K16 ["integer"]
  SETTABLEKS R6 R5 K12 ["UserId"]
  GETTABLEKS R6 R1 K17 ["string"]
  SETTABLEKS R6 R5 K13 ["Name"]
  GETTABLEKS R6 R1 K17 ["string"]
  SETTABLEKS R6 R5 K14 ["DisplayName"]
  CALL R4 1 -1
  CALL R2 -1 -1
  RETURN R2 -1
