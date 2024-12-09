PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["UnibarSongbirdWrapper"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R0 K10 ["Service"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K13 ["Workspace"]
  GETTABLEKS R6 R7 K11 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Songbird"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K15 ["ChromeShared"]
  GETTABLEKS R7 R8 K10 ["Service"]
  GETTABLEKS R6 R7 K16 ["ContainerSlotSignal"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K17 ["Integrations"]
  GETTABLEKS R8 R9 K18 ["MusicUtility"]
  GETTABLEKS R7 R8 K19 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K17 ["Integrations"]
  GETTABLEKS R9 R10 K18 ["MusicUtility"]
  GETTABLEKS R8 R9 K20 ["shouldUseSmallPeek"]
  CALL R7 1 1
  DUPTABLE R10 K26 [{"id", "label", "initialAvailability", "containerWidthSlots", "components"}]
  LOADK R11 K27 ["now_playing"]
  SETTABLEKS R11 R10 K21 ["id"]
  LOADK R11 K28 ["CoreScripts.TopBar.NowPlaying"]
  SETTABLEKS R11 R10 K22 ["label"]
  GETTABLEKS R12 R2 K29 ["AvailabilitySignal"]
  GETTABLEKS R11 R12 K30 ["Available"]
  SETTABLEKS R11 R10 K23 ["initialAvailability"]
  GETTABLEKS R11 R5 K31 ["new"]
  MOVE R13 R7
  CALL R13 0 1
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R6 K32 ["MIN_TRACK_DETAILS_WIDTH"]
  JUMP [+2]
  GETTABLEKS R12 R6 K33 ["MAX_TRACK_DETAILS_WIDTH"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K24 ["containerWidthSlots"]
  DUPTABLE R11 K35 [{"Container"}]
  DUPCLOSURE R12 K36 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K34 ["Container"]
  SETTABLEKS R11 R10 K25 ["components"]
  NAMECALL R8 R2 K37 ["register"]
  CALL R8 2 -1
  RETURN R8 -1
