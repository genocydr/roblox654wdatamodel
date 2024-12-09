MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Http"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["Reducers"]
  GETTABLEKS R1 R2 K10 ["FetchingStatus"]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K13 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K14 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K15 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K16 ["PlayerId"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K17 ["PlayerName"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K18 ["Assets"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R2 K19 ["AssetBundles"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R2 K20 ["Bundles"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R2 K21 ["EquippedAssets"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R2 K22 ["DetailsInformation"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R2 K23 ["TryingOnInfo"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R2 K24 ["Favorites"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R2 K25 ["Locale"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R2 K26 ["Visible"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R2 K27 ["ItemBeingPurchased"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R2 K28 ["IsLoaded"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R2 K29 ["IsSubjectToChinaPolicies"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R2 K30 ["GamepadEnabled"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R2 K31 ["StoreId"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R2 K32 ["CollectibleResellableInstances"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R2 K33 ["CreatingExperiences"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R2 K34 ["Overlay"]
  CALL R23 1 1
  GETIMPORT R26 K12 [script]
  GETTABLEKS R25 R26 K13 ["Parent"]
  GETTABLEKS R24 R25 K13 ["Parent"]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R27 R24 K35 ["Flags"]
  GETTABLEKS R26 R27 K36 ["FFlagAttributionInInspectAndBuy"]
  CALL R25 1 1
  GETTABLEKS R26 R3 K37 ["combineReducers"]
  DUPTABLE R27 K58 [{"view", "playerId", "playerName", "assets", "bundles", "assetBundles", "equippedAssets", "detailsInformation", "tryingOnInfo", "favorites", "locale", "visible", "itemBeingPurchased", "gamepadEnabled", "isLoaded", "isSubjectToChinaPolicies", "FetchingStatus", "storeId", "collectibleResellableInstances", "creatingExperiences", "overlay"}]
  SETTABLEKS R4 R27 K38 ["view"]
  SETTABLEKS R5 R27 K39 ["playerId"]
  SETTABLEKS R6 R27 K40 ["playerName"]
  SETTABLEKS R7 R27 K41 ["assets"]
  SETTABLEKS R9 R27 K42 ["bundles"]
  SETTABLEKS R8 R27 K43 ["assetBundles"]
  SETTABLEKS R10 R27 K44 ["equippedAssets"]
  SETTABLEKS R11 R27 K45 ["detailsInformation"]
  SETTABLEKS R12 R27 K46 ["tryingOnInfo"]
  SETTABLEKS R13 R27 K47 ["favorites"]
  SETTABLEKS R14 R27 K48 ["locale"]
  SETTABLEKS R15 R27 K49 ["visible"]
  SETTABLEKS R16 R27 K50 ["itemBeingPurchased"]
  SETTABLEKS R19 R27 K51 ["gamepadEnabled"]
  SETTABLEKS R17 R27 K52 ["isLoaded"]
  SETTABLEKS R18 R27 K53 ["isSubjectToChinaPolicies"]
  SETTABLEKS R1 R27 K10 ["FetchingStatus"]
  SETTABLEKS R20 R27 K54 ["storeId"]
  SETTABLEKS R21 R27 K55 ["collectibleResellableInstances"]
  SETTABLEKS R22 R27 K56 ["creatingExperiences"]
  JUMPIFNOT R25 [+2]
  MOVE R28 R23
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K57 ["overlay"]
  CALL R26 1 -1
  RETURN R26 -1
