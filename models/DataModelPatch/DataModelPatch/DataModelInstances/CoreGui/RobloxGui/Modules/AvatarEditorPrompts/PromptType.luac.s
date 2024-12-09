MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["enumerate"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K8 ["PromptType"]
  NEWTABLE R4 0 8
  LOADK R5 K9 ["AllowInventoryReadAccess"]
  LOADK R6 K10 ["SaveAvatar"]
  LOADK R7 K11 ["CreateOutfit"]
  LOADK R8 K12 ["EnterOutfitName"]
  LOADK R9 K13 ["SetFavorite"]
  LOADK R10 K14 ["DeleteOutfit"]
  LOADK R11 K15 ["RenameOutfit"]
  LOADK R12 K16 ["UpdateOutfit"]
  SETLIST R4 R5 8 [1]
  CALL R2 2 -1
  RETURN R2 -1
