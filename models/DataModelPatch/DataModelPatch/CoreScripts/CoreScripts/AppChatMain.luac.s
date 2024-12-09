PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Instance"]
  GETTABLEKS R0 R1 K1 ["MenuContainer"]
  RETURN R0 1

PROTO_1:
  JUMPIFEQKS R0 K0 ["AppChatPage"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetVisibility"]
  CALL R0 1 1
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["Instance"]
  LOADB R2 0
  LOADB R3 1
  NAMECALL R0 R0 K2 ["PopMenu"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Instance"]
  LOADB R2 1
  LOADB R3 0
  NAMECALL R0 R0 K1 ["SetVisibility"]
  CALL R0 3 0
  GETUPVAL R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Instance"]
  GETTABLEKS R2 R3 K2 ["AppChatPage"]
  NAMECALL R0 R0 K3 ["SwitchToPage"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["getSquadEntrypointsEnabled"]
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Instance"]
  GETTABLEKS R2 R3 K2 ["AppChatPage"]
  GETTABLEKS R1 R2 K3 ["SetCurrentSquadId"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["setUnreadCount"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["default"]
  GETTABLEKS R0 R1 K1 ["frame"]
  RETURN R0 1

PROTO_7:
  PREPVARARGS 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getVisible"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["default"]
  LOADB R2 0
  NAMECALL R0 R0 K1 ["setVisible"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["default"]
  LOADB R2 1
  NAMECALL R0 R0 K1 ["setVisible"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["getSquadEntrypointsEnabled"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["setCurrentSquadId"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["ReactRoblox"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Rodux"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R0 K13 ["Workspace"]
  GETTABLEKS R8 R9 K9 ["Packages"]
  GETTABLEKS R7 R8 K14 ["SocialCommon"]
  CALL R6 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R0 K13 ["Workspace"]
  GETTABLEKS R10 R11 K9 ["Packages"]
  GETTABLEKS R9 R10 K15 ["SocialExperiments"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K16 ["SquadExperimentation"]
  GETTABLEKS R9 R6 K17 ["Enums"]
  GETTABLEKS R8 R9 K18 ["ChatEntryPointNames"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K5 ["RobloxGui"]
  GETTABLEKS R11 R12 K19 ["Modules"]
  GETTABLEKS R10 R11 K20 ["ApolloClient"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R2 K19 ["Modules"]
  GETTABLEKS R12 R13 K21 ["Flags"]
  GETTABLEKS R11 R12 K22 ["GetFFlagFixSettingshubImportOrder"]
  CALL R10 1 1
  MOVE R11 R10
  CALL R11 0 1
  JUMPIFNOT R11 [+4]
  LOADK R13 K23 ["TopBarApp"]
  NAMECALL R11 R1 K6 ["WaitForChild"]
  CALL R11 2 0
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R2 K19 ["Modules"]
  GETTABLEKS R13 R14 K24 ["Settings"]
  GETTABLEKS R12 R13 K25 ["SettingsHub"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R0 K13 ["Workspace"]
  GETTABLEKS R14 R15 K9 ["Packages"]
  GETTABLEKS R13 R14 K26 ["AppChat"]
  CALL R12 1 1
  GETTABLEKS R14 R12 K27 ["App"]
  GETTABLEKS R13 R14 K28 ["InExperienceAppChat"]
  GETTABLEKS R15 R12 K27 ["App"]
  GETTABLEKS R14 R15 K29 ["AppChatReducer"]
  GETTABLEKS R16 R12 K27 ["App"]
  GETTABLEKS R15 R16 K30 ["InExperienceAppChatProviders"]
  GETTABLEKS R17 R12 K27 ["App"]
  GETTABLEKS R16 R17 K31 ["InExperienceAppChatExperimentation"]
  GETTABLEKS R18 R12 K27 ["App"]
  GETTABLEKS R17 R18 K32 ["InExperienceAppChatModal"]
  GETIMPORT R18 K8 [require]
  GETTABLEKS R23 R2 K19 ["Modules"]
  GETTABLEKS R22 R23 K33 ["Chrome"]
  GETTABLEKS R21 R22 K34 ["ChromeShared"]
  GETTABLEKS R20 R21 K35 ["Service"]
  GETTABLEKS R19 R20 K36 ["ViewportUtil"]
  CALL R18 1 1
  GETIMPORT R20 K8 [require]
  GETTABLEKS R23 R0 K13 ["Workspace"]
  GETTABLEKS R22 R23 K9 ["Packages"]
  GETTABLEKS R21 R22 K37 ["SharedFlags"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K38 ["getFFlagAppChatCoreUIConflictFix"]
  MOVE R21 R19
  CALL R21 0 1
  JUMPIFNOT R21 [+8]
  GETIMPORT R20 K8 [require]
  GETTABLEKS R22 R2 K19 ["Modules"]
  GETTABLEKS R21 R22 K39 ["ChatSelector"]
  CALL R20 1 1
  JUMP [+1]
  LOADNIL R20
  MOVE R22 R19
  CALL R22 0 1
  JUMPIFNOT R22 [+10]
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R2 K19 ["Modules"]
  GETTABLEKS R23 R24 K40 ["PlayerList"]
  GETTABLEKS R22 R23 K41 ["PlayerListManager"]
  CALL R21 1 1
  JUMP [+1]
  LOADNIL R21
  GETIMPORT R22 K8 [require]
  GETTABLEKS R26 R2 K19 ["Modules"]
  GETTABLEKS R25 R26 K33 ["Chrome"]
  GETTABLEKS R24 R25 K21 ["Flags"]
  GETTABLEKS R23 R24 K42 ["GetFFlagAppChatInExpConnectIconEnableSquadIndicator"]
  CALL R22 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R27 R2 K19 ["Modules"]
  GETTABLEKS R26 R27 K43 ["TopBar"]
  GETTABLEKS R25 R26 K44 ["Constants"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K45 ["TopBarTopMargin"]
  GETTABLEKS R25 R12 K21 ["Flags"]
  GETTABLEKS R24 R25 K46 ["getFFlagAppChatMoveApolloProvider"]
  GETIMPORT R26 K8 [require]
  GETTABLEKS R29 R0 K13 ["Workspace"]
  GETTABLEKS R28 R29 K9 ["Packages"]
  GETTABLEKS R27 R28 K37 ["SharedFlags"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K47 ["FFlagUpdateSquadInDefaultAppChatContainer"]
  GETIMPORT R26 K50 [Instance.new]
  LOADK R27 K51 ["Folder"]
  CALL R26 1 1
  LOADK R27 K26 ["AppChat"]
  SETTABLEKS R27 R26 K52 ["Name"]
  SETTABLEKS R1 R26 K53 ["Parent"]
  GETTABLEKS R27 R4 K54 ["createRoot"]
  MOVE R28 R26
  CALL R27 1 1
  GETTABLEKS R29 R5 K55 ["Store"]
  GETTABLEKS R28 R29 K49 ["new"]
  MOVE R29 R14
  LOADNIL R30
  NEWTABLE R31 0 1
  GETTABLEKS R32 R5 K56 ["thunkMiddleware"]
  SETLIST R31 R32 1 [1]
  CALL R28 3 1
  JUMPIFNOT R25 [+6]
  GETTABLEKS R29 R16 K57 ["default"]
  NAMECALL R29 R29 K58 ["shouldUseIndependentAppChatContainer"]
  CALL R29 1 1
  JUMP [+5]
  GETTABLEKS R30 R16 K57 ["default"]
  GETTABLEKS R29 R30 K59 ["getShowPlatformChatInChrome"]
  CALL R29 0 1
  GETTABLEKS R32 R11 K48 ["Instance"]
  GETTABLEKS R31 R32 K60 ["PlayersPage"]
  GETTABLEKS R30 R31 K61 ["UpdateAppChatUnreadMessagesCount"]
  DUPTABLE R31 K69 [{"getParentContainer", "visibilitySignal", "getShouldSetAppChatVisible", "entryPoint", "hideParentContainer", "showParentContainer", "updateCurrentSquadId"}]
  DUPCLOSURE R32 K70 [PROTO_0]
  CAPTURE VAL R11
  SETTABLEKS R32 R31 K62 ["getParentContainer"]
  GETTABLEKS R32 R11 K71 ["CurrentPageSignal"]
  SETTABLEKS R32 R31 K63 ["visibilitySignal"]
  DUPCLOSURE R32 K72 [PROTO_1]
  SETTABLEKS R32 R31 K64 ["getShouldSetAppChatVisible"]
  GETTABLEKS R32 R8 K25 ["SettingsHub"]
  SETTABLEKS R32 R31 K65 ["entryPoint"]
  DUPCLOSURE R32 K73 [PROTO_2]
  CAPTURE VAL R11
  SETTABLEKS R32 R31 K66 ["hideParentContainer"]
  DUPCLOSURE R32 K74 [PROTO_3]
  CAPTURE VAL R11
  SETTABLEKS R32 R31 K67 ["showParentContainer"]
  DUPCLOSURE R32 K75 [PROTO_4]
  CAPTURE VAL R25
  CAPTURE VAL R7
  CAPTURE VAL R11
  SETTABLEKS R32 R31 K68 ["updateCurrentSquadId"]
  JUMPIFNOT R29 [+58]
  GETTABLEKS R32 R17 K57 ["default"]
  MOVE R34 R23
  MOVE R35 R11
  MOVE R36 R18
  MOVE R37 R20
  MOVE R38 R21
  NAMECALL R32 R32 K76 ["initialize"]
  CALL R32 6 0
  DUPCLOSURE R30 K77 [PROTO_5]
  CAPTURE VAL R17
  DUPTABLE R32 K69 [{"getParentContainer", "visibilitySignal", "getShouldSetAppChatVisible", "entryPoint", "hideParentContainer", "showParentContainer", "updateCurrentSquadId"}]
  DUPCLOSURE R33 K78 [PROTO_6]
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K62 ["getParentContainer"]
  GETTABLEKS R35 R17 K57 ["default"]
  GETTABLEKS R34 R35 K63 ["visibilitySignal"]
  GETTABLEKS R33 R34 K79 ["Event"]
  SETTABLEKS R33 R32 K63 ["visibilitySignal"]
  DUPCLOSURE R33 K80 [PROTO_7]
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K64 ["getShouldSetAppChatVisible"]
  GETTABLEKS R36 R16 K57 ["default"]
  GETTABLEKS R35 R36 K81 ["variant"]
  GETTABLEKS R34 R35 K82 ["ShowPlatformChatChromeUnibarEntryPoint"]
  JUMPIFNOT R34 [+3]
  GETTABLEKS R33 R8 K83 ["ChromeUnibar"]
  JUMP [+2]
  GETTABLEKS R33 R8 K84 ["ChromeDropdown"]
  SETTABLEKS R33 R32 K65 ["entryPoint"]
  DUPCLOSURE R33 K85 [PROTO_8]
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K66 ["hideParentContainer"]
  DUPCLOSURE R33 K86 [PROTO_9]
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K67 ["showParentContainer"]
  DUPCLOSURE R33 K87 [PROTO_10]
  CAPTURE VAL R22
  CAPTURE VAL R7
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K68 ["updateCurrentSquadId"]
  MOVE R31 R32
  GETTABLEKS R32 R3 K88 ["createElement"]
  MOVE R33 R15
  DUPTABLE R34 K93 [{"store", "updateAppChatUnreadMessagesCount", "parentContainerContext", "apolloClient"}]
  SETTABLEKS R28 R34 K89 ["store"]
  SETTABLEKS R30 R34 K90 ["updateAppChatUnreadMessagesCount"]
  SETTABLEKS R31 R34 K91 ["parentContainerContext"]
  MOVE R36 R24
  CALL R36 0 1
  JUMPIFNOT R36 [+2]
  MOVE R35 R9
  JUMP [+1]
  LOADNIL R35
  SETTABLEKS R35 R34 K92 ["apolloClient"]
  DUPTABLE R35 K95 [{"appChat"}]
  GETTABLEKS R36 R3 K88 ["createElement"]
  MOVE R37 R13
  DUPTABLE R38 K96 [{"apolloClient"}]
  MOVE R40 R24
  CALL R40 0 1
  JUMPIFNOT R40 [+2]
  LOADNIL R39
  JUMP [+1]
  MOVE R39 R9
  SETTABLEKS R39 R38 K92 ["apolloClient"]
  CALL R36 2 1
  SETTABLEKS R36 R35 K94 ["appChat"]
  CALL R32 3 1
  MOVE R35 R32
  NAMECALL R33 R27 K97 ["render"]
  CALL R33 2 0
  RETURN R0 0
