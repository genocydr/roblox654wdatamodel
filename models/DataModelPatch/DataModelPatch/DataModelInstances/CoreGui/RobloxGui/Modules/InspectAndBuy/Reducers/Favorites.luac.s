MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K11 ["FavoriteAssets"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R1 K12 ["FavoriteBundles"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K13 ["combineReducers"]
  DUPTABLE R6 K16 [{"assets", "bundles"}]
  SETTABLEKS R3 R6 K14 ["assets"]
  SETTABLEKS R4 R6 K15 ["bundles"]
  CALL R5 1 -1
  RETURN R5 -1
