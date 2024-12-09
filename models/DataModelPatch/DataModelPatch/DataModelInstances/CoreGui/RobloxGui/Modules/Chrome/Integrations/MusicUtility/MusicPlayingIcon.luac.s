PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["MusicPlayingIcon"]
  CALL R1 1 -1
  RETURN R1 -1

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
  DUPTABLE R8 K22 [{"initialAvailability", "id", "label", "containerWidthSlots", "components"}]
  GETTABLEKS R10 R2 K23 ["AvailabilitySignal"]
  GETTABLEKS R9 R10 K24 ["Available"]
  SETTABLEKS R9 R8 K17 ["initialAvailability"]
  LOADK R9 K25 ["music_playing_icon"]
  SETTABLEKS R9 R8 K18 ["id"]
  LOADK R9 K26 ["CoreScripts.TopBar.NowPlaying"]
  SETTABLEKS R9 R8 K19 ["label"]
  GETTABLEKS R9 R5 K27 ["new"]
  LOADN R10 1
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["containerWidthSlots"]
  DUPTABLE R9 K29 [{"Container"}]
  DUPCLOSURE R10 K30 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K28 ["Container"]
  SETTABLEKS R9 R8 K21 ["components"]
  NAMECALL R6 R2 K31 ["register"]
  CALL R6 2 -1
  RETURN R6 -1
