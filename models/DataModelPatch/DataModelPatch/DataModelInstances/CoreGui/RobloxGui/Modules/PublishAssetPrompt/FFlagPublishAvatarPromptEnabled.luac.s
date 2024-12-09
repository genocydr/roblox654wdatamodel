MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["FFlagPublishAvatarPromptEnabledAllPlatforms"]
  CALL R0 1 1
  GETIMPORT R2 K7 [game]
  LOADK R4 K8 ["PublishAvatarPromptEnabled5"]
  LOADB R5 0
  NAMECALL R2 R2 K9 ["DefineFastFlag"]
  CALL R2 3 1
  JUMPIF R2 [+2]
  MOVE R1 R0
  JUMPIFNOT R1 [+6]
  GETIMPORT R1 K7 [game]
  LOADK R3 K10 ["AvatarCreationService"]
  NAMECALL R1 R1 K11 ["GetEngineFeature"]
  CALL R1 2 1
  RETURN R1 1
