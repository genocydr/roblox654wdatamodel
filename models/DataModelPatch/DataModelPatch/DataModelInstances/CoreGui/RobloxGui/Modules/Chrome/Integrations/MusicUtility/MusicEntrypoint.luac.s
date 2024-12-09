PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["music_entrypoint"]
  NAMECALL R0 R0 K1 ["toggleWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADK R2 K0 ["icons/common/music"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R3 R4 K1 ["X"]
  GETTABLEKS R5 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K2 ["Y"]
  NAMECALL R1 R1 K3 ["requestSize"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["music_entrypoint"]
  NAMECALL R0 R0 K1 ["toggleWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADK R2 K0 ["music_entrypoint"]
  NAMECALL R0 R0 K1 ["toggleWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+31]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["View"]
  DUPTABLE R2 K4 [{"tag", "onAbsoluteSizeChanged"}]
  LOADK R3 K5 ["auto-xy"]
  SETTABLEKS R3 R2 K2 ["tag"]
  DUPCLOSURE R3 K6 [PROTO_2]
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K3 ["onAbsoluteSizeChanged"]
  DUPTABLE R3 K8 [{"ChromeWindowWrapper"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K7 ["ChromeWindowWrapper"]
  DUPTABLE R6 K10 [{"onClose"}]
  DUPCLOSURE R7 K11 [PROTO_3]
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K9 ["onClose"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["ChromeWindowWrapper"]
  CALL R0 3 -1
  RETURN R0 -1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K7 ["ChromeWindowWrapper"]
  DUPTABLE R2 K10 [{"onClose"}]
  DUPCLOSURE R3 K12 [PROTO_4]
  CAPTURE UPVAL U5
  SETTABLEKS R3 R2 K9 ["onClose"]
  CALL R0 2 1
  RETURN R0 1

PROTO_6:
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R2 K0 ["icons/controls/emoteOff"]
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
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K13 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Songbird"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R0 K15 ["Service"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K16 ["Integrations"]
  GETTABLEKS R8 R9 K17 ["MusicUtility"]
  GETTABLEKS R7 R8 K18 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K16 ["Integrations"]
  GETTABLEKS R8 R9 K19 ["CommonIcon"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K20 ["ChromeShared"]
  GETTABLEKS R10 R11 K15 ["Service"]
  GETTABLEKS R9 R10 K21 ["WindowSizeSignal"]
  CALL R8 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K13 ["Workspace"]
  GETTABLEKS R12 R13 K10 ["Packages"]
  GETTABLEKS R11 R12 K22 ["SharedFlags"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K23 ["GetFFlagChromeSongbirdWindow"]
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K13 ["Workspace"]
  GETTABLEKS R13 R14 K10 ["Packages"]
  GETTABLEKS R12 R13 K22 ["SharedFlags"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K24 ["GetFFlagSongbirdWindowResponsiveSizing"]
  MOVE R11 R9
  CALL R11 0 1
  JUMPIFNOT R11 [+54]
  GETTABLEKS R11 R6 K25 ["MUSIC_WINDOW_MAX_SIZE"]
  GETTABLEKS R12 R8 K26 ["new"]
  GETTABLEKS R13 R11 K27 ["X"]
  GETTABLEKS R14 R11 K28 ["Y"]
  CALL R12 2 1
  DUPTABLE R15 K37 [{"initialAvailability", "id", "draggable", "cachePosition", "windowSize", "label", "activated", "components"}]
  GETTABLEKS R17 R5 K38 ["AvailabilitySignal"]
  GETTABLEKS R16 R17 K39 ["Available"]
  SETTABLEKS R16 R15 K29 ["initialAvailability"]
  LOADK R16 K40 ["music_entrypoint"]
  SETTABLEKS R16 R15 K30 ["id"]
  LOADB R16 1
  SETTABLEKS R16 R15 K31 ["draggable"]
  LOADB R16 1
  SETTABLEKS R16 R15 K32 ["cachePosition"]
  SETTABLEKS R12 R15 K33 ["windowSize"]
  LOADK R16 K41 ["CoreScripts.TopBar.Music"]
  SETTABLEKS R16 R15 K34 ["label"]
  DUPCLOSURE R16 K42 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K35 ["activated"]
  DUPTABLE R16 K45 [{"Icon", "Window"}]
  DUPCLOSURE R17 K46 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R17 R16 K43 ["Icon"]
  DUPCLOSURE R17 K47 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K44 ["Window"]
  SETTABLEKS R16 R15 K36 ["components"]
  NAMECALL R13 R5 K48 ["register"]
  CALL R13 2 -1
  RETURN R13 -1
  DUPTABLE R13 K49 [{"initialAvailability", "id", "label", "activated", "components"}]
  GETTABLEKS R15 R5 K38 ["AvailabilitySignal"]
  GETTABLEKS R14 R15 K39 ["Available"]
  SETTABLEKS R14 R13 K29 ["initialAvailability"]
  LOADK R14 K40 ["music_entrypoint"]
  SETTABLEKS R14 R13 K30 ["id"]
  LOADK R14 K41 ["CoreScripts.TopBar.Music"]
  SETTABLEKS R14 R13 K34 ["label"]
  DUPCLOSURE R14 K50 [PROTO_6]
  SETTABLEKS R14 R13 K35 ["activated"]
  DUPTABLE R14 K51 [{"Icon"}]
  DUPCLOSURE R15 K52 [PROTO_7]
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K43 ["Icon"]
  SETTABLEKS R14 R13 K36 ["components"]
  NAMECALL R11 R5 K48 ["register"]
  CALL R11 2 -1
  RETURN R11 -1
