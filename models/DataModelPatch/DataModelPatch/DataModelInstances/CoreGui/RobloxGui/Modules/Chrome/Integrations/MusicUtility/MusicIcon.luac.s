PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["MusicIcon"]
  DUPTABLE R3 K3 [{"includeView"}]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["includeView"]
  CALL R1 2 -1
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
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K13 ["Workspace"]
  GETTABLEKS R9 R10 K11 ["Packages"]
  GETTABLEKS R8 R9 K17 ["SharedFlags"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K18 ["GetFFlagFixSongbirdPeekUseFoundationIcons"]
  DUPTABLE R9 K24 [{"initialAvailability", "id", "label", "containerWidthSlots", "components"}]
  GETTABLEKS R11 R2 K25 ["AvailabilitySignal"]
  GETTABLEKS R10 R11 K26 ["Available"]
  SETTABLEKS R10 R9 K19 ["initialAvailability"]
  LOADK R10 K27 ["music_icon"]
  SETTABLEKS R10 R9 K20 ["id"]
  LOADK R10 K28 ["CoreScripts.TopBar.NowPlaying"]
  SETTABLEKS R10 R9 K21 ["label"]
  GETTABLEKS R10 R5 K29 ["new"]
  LOADN R11 1
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["containerWidthSlots"]
  DUPTABLE R10 K31 [{"Container"}]
  DUPCLOSURE R11 K32 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K30 ["Container"]
  SETTABLEKS R10 R9 K23 ["components"]
  NAMECALL R7 R2 K33 ["register"]
  CALL R7 2 -1
  RETURN R7 -1
