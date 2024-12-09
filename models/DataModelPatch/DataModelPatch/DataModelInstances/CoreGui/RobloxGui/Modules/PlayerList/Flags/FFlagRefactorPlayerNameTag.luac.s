MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["RobloxGui"]
  GETTABLEKS R4 R5 K7 ["Modules"]
  GETTABLEKS R3 R4 K8 ["Flags"]
  GETTABLEKS R2 R3 K9 ["getIsUserProfileOnLeaderboardEnabled"]
  CALL R1 1 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K10 ["RefactorPlayerNameTag2"]
  LOADB R5 0
  NAMECALL R2 R2 K11 ["DefineFastFlag"]
  CALL R2 3 1
  JUMPIFNOT R2 [+2]
  MOVE R2 R1
  CALL R2 0 1
  RETURN R2 1
