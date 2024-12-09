PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  LOADB R4 1
  NAMECALL R1 R1 K0 ["FindFirstChild"]
  CALL R1 3 1
  JUMPIF R1 [+11]
  GETIMPORT R2 K2 [wait]
  CALL R2 0 0
  GETUPVAL R2 0
  MOVE R4 R0
  LOADB R5 1
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 3 1
  MOVE R1 R2
  JUMPBACK [-12]
  RETURN R1 1

PROTO_1:
  GETIMPORT R2 K3 [Enum.CoreGuiType.All]
  JUMPIFEQ R0 R2 [+5]
  GETIMPORT R2 K5 [Enum.CoreGuiType.Chat]
  JUMPIFNOTEQ R0 R2 [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Events"]
  GETTABLEKS R2 R3 K7 ["SetCoreGuiEnabledChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TextChatService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["StarterGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K7 ["RobloxGui"]
  LOADK R7 K8 ["Modules"]
  NAMECALL R5 R4 K9 ["WaitForChild"]
  CALL R5 2 1
  LOADK R8 K10 ["UIManager"]
  NAMECALL R6 R5 K9 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R8 R6 K13 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["PanelType"]
  GETIMPORT R9 K12 [require]
  GETTABLEKS R10 R6 K10 ["UIManager"]
  CALL R9 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R4 K8 ["Modules"]
  GETTABLEKS R12 R13 K15 ["Flags"]
  GETTABLEKS R11 R12 K16 ["GetFFlagConsolidateBubbleChat"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  NAMECALL R11 R11 K17 ["IsLoaded"]
  CALL R11 1 1
  JUMPIF R11 [+7]
  GETIMPORT R12 K1 [game]
  GETTABLEKS R11 R12 K18 ["Loaded"]
  NAMECALL R11 R11 K19 ["Wait"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R12 0 1
  JUMPIF R12 [+7]
  GETTABLEKS R12 R2 K20 ["ChatVersion"]
  GETIMPORT R13 K22 [Enum.ChatVersion.TextChatService]
  JUMPIFEQ R12 R13 [+2]
  RETURN R0 0
  GETIMPORT R12 K12 [require]
  GETTABLEKS R14 R4 K8 ["Modules"]
  GETTABLEKS R13 R14 K23 ["RobloxTranslator"]
  CALL R12 1 1
  GETIMPORT R13 K12 [require]
  GETTABLEKS R15 R4 K8 ["Modules"]
  GETTABLEKS R14 R15 K24 ["GameTranslator"]
  CALL R13 1 1
  GETIMPORT R14 K12 [require]
  GETTABLEKS R16 R4 K8 ["Modules"]
  GETTABLEKS R15 R16 K25 ["ApolloClient"]
  CALL R14 1 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R18 R1 K26 ["Workspace"]
  GETTABLEKS R17 R18 K27 ["Packages"]
  GETTABLEKS R16 R17 K28 ["ExpChat"]
  CALL R15 1 1
  GETIMPORT R16 K1 [game]
  LOADK R18 K29 ["FFlagEnableSetCoreGuiEnabledExpChat"]
  LOADB R19 0
  NAMECALL R16 R16 K30 ["DefineFastFlag"]
  CALL R16 3 1
  GETIMPORT R18 K12 [require]
  GETTABLEKS R21 R1 K26 ["Workspace"]
  GETTABLEKS R20 R21 K27 ["Packages"]
  GETTABLEKS R19 R20 K31 ["SharedFlags"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K32 ["GetFFlagAvatarChatCoreScriptSupport"]
  CALL R17 0 1
  GETIMPORT R18 K12 [require]
  GETTABLEKS R21 R4 K8 ["Modules"]
  GETTABLEKS R20 R21 K15 ["Flags"]
  GETTABLEKS R19 R20 K33 ["getFFlagAddApolloClientToExperienceChat"]
  CALL R18 1 1
  GETIMPORT R19 K12 [require]
  GETTABLEKS R22 R4 K8 ["Modules"]
  GETTABLEKS R21 R22 K15 ["Flags"]
  GETTABLEKS R20 R21 K34 ["getFFlagDoNotPromptCameraPermissionsOnMount"]
  CALL R19 1 1
  GETIMPORT R20 K12 [require]
  GETTABLEKS R23 R4 K8 ["Modules"]
  GETTABLEKS R22 R23 K15 ["Flags"]
  GETTABLEKS R21 R22 K35 ["getFFlagEnableAlwaysAvailableCamera"]
  CALL R20 1 1
  GETIMPORT R21 K12 [require]
  GETTABLEKS R24 R4 K8 ["Modules"]
  GETTABLEKS R23 R24 K15 ["Flags"]
  GETTABLEKS R22 R23 K36 ["GetFFlagRemoveInGameChatBubbleChatReferences"]
  CALL R21 1 1
  GETIMPORT R22 K12 [require]
  GETTABLEKS R25 R4 K8 ["Modules"]
  GETTABLEKS R24 R25 K15 ["Flags"]
  GETTABLEKS R23 R24 K37 ["getFFlagRenderVoiceBubbleAfterAsyncInit"]
  CALL R22 1 1
  GETIMPORT R24 K12 [require]
  GETTABLEKS R27 R1 K26 ["Workspace"]
  GETTABLEKS R26 R27 K27 ["Packages"]
  GETTABLEKS R25 R26 K31 ["SharedFlags"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K38 ["GetFFlagShowLikelySpeakingBubbles"]
  GETIMPORT R24 K12 [require]
  GETTABLEKS R27 R4 K8 ["Modules"]
  GETTABLEKS R26 R27 K39 ["Chrome"]
  GETTABLEKS R25 R26 K40 ["Enabled"]
  CALL R24 1 1
  CALL R24 0 1
  GETIMPORT R25 K12 [require]
  GETTABLEKS R28 R4 K8 ["Modules"]
  GETTABLEKS R27 R28 K15 ["Flags"]
  GETTABLEKS R26 R27 K41 ["FFlagEnableSpatialRobloxGui"]
  CALL R25 1 1
  GETIMPORT R27 K12 [require]
  GETTABLEKS R30 R1 K26 ["Workspace"]
  GETTABLEKS R29 R30 K27 ["Packages"]
  GETTABLEKS R28 R29 K31 ["SharedFlags"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K42 ["getFFlagExpChatAlwaysRunTCS"]
  GETIMPORT R27 K12 [require]
  GETTABLEKS R31 R4 K8 ["Modules"]
  GETTABLEKS R30 R31 K43 ["VoiceChat"]
  GETTABLEKS R29 R30 K44 ["Components"]
  GETTABLEKS R28 R29 K45 ["getIconVoiceIndicator"]
  CALL R27 1 1
  GETIMPORT R28 K12 [require]
  GETTABLEKS R32 R4 K8 ["Modules"]
  GETTABLEKS R31 R32 K43 ["VoiceChat"]
  GETTABLEKS R30 R31 K44 ["Components"]
  GETTABLEKS R29 R30 K46 ["onClickedVoiceIndicator"]
  CALL R28 1 1
  LOADNIL R29
  LOADNIL R30
  LOADNIL R31
  LOADNIL R32
  LOADNIL R33
  LOADNIL R34
  LOADNIL R35
  LOADNIL R36
  JUMPIFNOT R17 [+106]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K44 ["Components"]
  GETTABLEKS R38 R39 K47 ["onClickedCameraIndicator"]
  CALL R37 1 1
  MOVE R29 R37
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K44 ["Components"]
  GETTABLEKS R38 R39 K48 ["getPermissions"]
  CALL R37 1 1
  MOVE R30 R37
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K44 ["Components"]
  GETTABLEKS R38 R39 K49 ["selfViewListenerChanged"]
  CALL R37 1 1
  MOVE R31 R37
  MOVE R37 R19
  CALL R37 0 1
  JUMPIFNOT R37 [+39]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R42 R4 K8 ["Modules"]
  GETTABLEKS R41 R42 K50 ["InGameChat"]
  GETTABLEKS R40 R41 K51 ["BubbleChat"]
  GETTABLEKS R39 R40 K52 ["Helpers"]
  GETTABLEKS R38 R39 K53 ["displayCameraDeniedToast"]
  CALL R37 1 1
  MOVE R32 R37
  MOVE R37 R21
  CALL R37 0 1
  JUMPIFNOT R37 [+12]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K52 ["Helpers"]
  GETTABLEKS R38 R39 K53 ["displayCameraDeniedToast"]
  CALL R37 1 1
  MOVE R32 R37
  GETIMPORT R37 K12 [require]
  GETTABLEKS R40 R4 K8 ["Modules"]
  GETTABLEKS R39 R40 K54 ["Settings"]
  GETTABLEKS R38 R39 K55 ["isCamEnabledForUserAndPlace"]
  CALL R37 1 1
  MOVE R33 R37
  MOVE R37 R20
  CALL R37 0 1
  JUMPIFNOT R37 [+10]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R40 R4 K8 ["Modules"]
  GETTABLEKS R39 R40 K54 ["Settings"]
  GETTABLEKS R38 R39 K56 ["isCameraOnlyUser"]
  CALL R37 1 1
  MOVE R34 R37
  MOVE R37 R22
  CALL R37 0 1
  JUMPIFNOT R37 [+12]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K44 ["Components"]
  GETTABLEKS R38 R39 K57 ["isVoiceServiceInitialized"]
  CALL R37 1 1
  MOVE R35 R37
  MOVE R37 R23
  CALL R37 0 1
  JUMPIFNOT R37 [+12]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K44 ["Components"]
  GETTABLEKS R38 R39 K58 ["onClickedLikelySpeakingBubble"]
  CALL R37 1 1
  MOVE R36 R37
  JUMPIFNOT R24 [+12]
  GETIMPORT R37 K12 [require]
  GETTABLEKS R41 R4 K8 ["Modules"]
  GETTABLEKS R40 R41 K43 ["VoiceChat"]
  GETTABLEKS R39 R40 K44 ["Components"]
  GETTABLEKS R38 R39 K48 ["getPermissions"]
  CALL R37 1 1
  MOVE R30 R37
  LOADNIL R37
  LOADNIL R38
  JUMPIFNOT R25 [+29]
  DUPTABLE R39 K61 [{"panelType", "screenGuiProps"}]
  GETTABLEKS R40 R8 K62 ["Chat"]
  SETTABLEKS R40 R39 K59 ["panelType"]
  DUPTABLE R40 K67 [{"Name", "ResetOnSpawn", "DisplayOrder", "ZIndexBehavior"}]
  LOADK R41 K68 ["ExperienceChat"]
  SETTABLEKS R41 R40 K63 ["Name"]
  LOADB R41 0
  SETTABLEKS R41 R40 K64 ["ResetOnSpawn"]
  LOADN R41 255
  SETTABLEKS R41 R40 K65 ["DisplayOrder"]
  GETIMPORT R41 K70 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R41 R40 K66 ["ZIndexBehavior"]
  SETTABLEKS R40 R39 K60 ["screenGuiProps"]
  MOVE R42 R39
  NAMECALL R40 R9 K71 ["createUI"]
  CALL R40 2 1
  GETTABLEKS R37 R40 K72 ["panelObject"]
  MOVE R38 R40
  JUMP [+20]
  GETIMPORT R39 K75 [Instance.new]
  LOADK R40 K76 ["ScreenGui"]
  CALL R39 1 1
  MOVE R37 R39
  LOADK R39 K68 ["ExperienceChat"]
  SETTABLEKS R39 R37 K63 ["Name"]
  LOADB R39 0
  SETTABLEKS R39 R37 K64 ["ResetOnSpawn"]
  LOADN R39 255
  SETTABLEKS R39 R37 K65 ["DisplayOrder"]
  GETIMPORT R39 K70 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R39 R37 K66 ["ZIndexBehavior"]
  SETTABLEKS R0 R37 K77 ["Parent"]
  DUPCLOSURE R39 K78 [PROTO_0]
  CAPTURE VAL R2
  JUMPIFNOT R16 [+7]
  GETTABLEKS R40 R3 K79 ["CoreGuiChangedSignal"]
  DUPCLOSURE R42 K80 [PROTO_1]
  CAPTURE VAL R15
  NAMECALL R40 R40 K81 ["Connect"]
  CALL R40 2 0
  LOADNIL R40
  LOADNIL R41
  MOVE R42 R10
  CALL R42 0 1
  JUMPIFNOT R42 [+30]
  MOVE R42 R26
  CALL R42 0 1
  JUMPIFNOT R42 [+3]
  GETTABLEKS R40 R2 K82 ["CreateDefaultTextChannels"]
  JUMP [+10]
  LOADB R42 0
  GETTABLEKS R43 R2 K20 ["ChatVersion"]
  GETIMPORT R44 K22 [Enum.ChatVersion.TextChatService]
  JUMPIFNOTEQ R43 R44 [+3]
  GETTABLEKS R42 R2 K82 ["CreateDefaultTextChannels"]
  MOVE R40 R42
  GETIMPORT R42 K12 [require]
  GETTABLEKS R46 R4 K8 ["Modules"]
  GETTABLEKS R45 R46 K50 ["InGameChat"]
  GETTABLEKS R44 R45 K51 ["BubbleChat"]
  GETTABLEKS R43 R44 K83 ["Types"]
  CALL R42 1 1
  GETTABLEKS R41 R42 K84 ["IChatSettings"]
  JUMP [+2]
  GETTABLEKS R40 R2 K82 ["CreateDefaultTextChannels"]
  GETTABLEKS R42 R15 K85 ["mountClientApp"]
  DUPTABLE R43 K94 [{"apolloClient", "getIconVoiceIndicator", "onClickedVoiceIndicator", "onClickedCameraIndicator", "displayCameraDeniedToast", "isCamEnabledForUserAndPlace", "isCameraOnlyUser", "getPermissions", "selfViewListenerChanged", "defaultTargetTextChannel", "defaultSystemTextChannel", "validateLegacyBubbleChatSettings", "isVoiceServiceInitialized", "onClickedLikelySpeakingBubble", "translator", "gameTranslator", "parent", "isSpatialUIEnabled"}]
  MOVE R45 R18
  CALL R45 0 1
  JUMPIFNOT R45 [+2]
  MOVE R44 R14
  JUMP [+1]
  LOADNIL R44
  SETTABLEKS R44 R43 K86 ["apolloClient"]
  ORK R44 R27 K95 []
  SETTABLEKS R44 R43 K45 ["getIconVoiceIndicator"]
  ORK R44 R28 K95 []
  SETTABLEKS R44 R43 K46 ["onClickedVoiceIndicator"]
  ORK R44 R29 K95 []
  SETTABLEKS R44 R43 K47 ["onClickedCameraIndicator"]
  ORK R44 R32 K95 []
  SETTABLEKS R44 R43 K53 ["displayCameraDeniedToast"]
  ORK R44 R33 K95 []
  SETTABLEKS R44 R43 K55 ["isCamEnabledForUserAndPlace"]
  ORK R44 R34 K95 []
  SETTABLEKS R44 R43 K56 ["isCameraOnlyUser"]
  ORK R44 R30 K95 []
  SETTABLEKS R44 R43 K48 ["getPermissions"]
  ORK R44 R31 K95 []
  SETTABLEKS R44 R43 K49 ["selfViewListenerChanged"]
  JUMPIFNOT R40 [+4]
  MOVE R44 R39
  LOADK R45 K96 ["RBXGeneral"]
  CALL R44 1 1
  JUMP [+1]
  LOADNIL R44
  SETTABLEKS R44 R43 K87 ["defaultTargetTextChannel"]
  JUMPIFNOT R40 [+4]
  MOVE R44 R39
  LOADK R45 K97 ["RBXSystem"]
  CALL R44 1 1
  JUMP [+1]
  LOADNIL R44
  SETTABLEKS R44 R43 K88 ["defaultSystemTextChannel"]
  ORK R44 R41 K95 []
  SETTABLEKS R44 R43 K89 ["validateLegacyBubbleChatSettings"]
  ORK R44 R35 K95 []
  SETTABLEKS R44 R43 K57 ["isVoiceServiceInitialized"]
  ORK R44 R36 K95 []
  SETTABLEKS R44 R43 K58 ["onClickedLikelySpeakingBubble"]
  SETTABLEKS R12 R43 K90 ["translator"]
  SETTABLEKS R13 R43 K91 ["gameTranslator"]
  SETTABLEKS R37 R43 K92 ["parent"]
  MOVE R44 R38
  JUMPIFNOT R44 [+10]
  GETTABLEKS R45 R38 K98 ["type"]
  GETTABLEKS R47 R7 K99 ["SpatialUIType"]
  GETTABLEKS R46 R47 K100 ["SpatialUI"]
  JUMPIFEQ R45 R46 [+2]
  LOADB R44 0 +1
  LOADB R44 1
  SETTABLEKS R44 R43 K93 ["isSpatialUIEnabled"]
  CALL R42 1 0
  RETURN R0 0
