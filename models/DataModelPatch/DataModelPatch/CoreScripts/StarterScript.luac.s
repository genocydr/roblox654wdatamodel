PROTO_0:
  GETIMPORT R1 K1 [pcall]
  GETIMPORT R2 K3 [require]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+1]
  RETURN R2 1
  GETIMPORT R3 K5 [warn]
  LOADK R5 K6 ["Failure to Start CoreScript module "]
  GETTABLEKS R6 R0 K7 ["Name"]
  LOADK R7 K8 [".
"]
  MOVE R8 R2
  CONCAT R4 R5 R8
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Watermark"]
  GETIMPORT R1 K2 [pcall]
  GETIMPORT R2 K4 [require]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K6 [warn]
  LOADK R5 K7 ["Failure to Start CoreScript module "]
  GETTABLEKS R6 R0 K8 ["Name"]
  LOADK R7 K9 [".
"]
  MOVE R8 R2
  CONCAT R4 R5 R8
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["CoreScripts/ScreenTimeInGame"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K1 ["AddCoreScriptLocal"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsSubjectToChinaPolicies"]
  CALL R0 1 1
  JUMPIFNOT R0 [+33]
  GETIMPORT R0 K2 [game]
  NAMECALL R0 R0 K3 ["IsLoaded"]
  CALL R0 1 1
  JUMPIF R0 [+7]
  GETIMPORT R1 K2 [game]
  GETTABLEKS R0 R1 K4 ["Loaded"]
  NAMECALL R0 R0 K5 ["Wait"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K6 ["LuobuWarningToast"]
  GETIMPORT R1 K8 [pcall]
  GETIMPORT R2 K10 [require]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K12 [warn]
  LOADK R5 K13 ["Failure to Start CoreScript module "]
  GETTABLEKS R6 R0 K14 ["Name"]
  LOADK R7 K15 [".
"]
  MOVE R8 R2
  CONCAT R4 R5 R8
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [UserSettings]
  CALL R0 0 1
  LOADK R2 K2 ["UserRoactBubbleChatBeta"]
  NAMECALL R0 R0 K3 ["IsUserFeatureEnabled"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PurchasePrompt"]
  GETIMPORT R2 K2 [pcall]
  GETIMPORT R3 K4 [require]
  MOVE R4 R1
  CALL R2 2 2
  JUMPIFNOT R2 [+2]
  MOVE R0 R3
  JUMP [+10]
  GETIMPORT R4 K6 [warn]
  LOADK R6 K7 ["Failure to Start CoreScript module "]
  GETTABLEKS R7 R1 K8 ["Name"]
  LOADK R8 K9 [".
"]
  MOVE R9 R3
  CONCAT R5 R6 R9
  CALL R4 1 0
  LOADNIL R0
  JUMPIFNOT R0 [+3]
  GETTABLEKS R1 R0 K10 ["mountPurchasePrompt"]
  CALL R1 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["VREnabled"]
  JUMPIF R0 [+8]
  GETUPVAL R0 0
  LOADK R2 K0 ["VREnabled"]
  NAMECALL R0 R0 K1 ["GetPropertyChangedSignal"]
  CALL R0 2 1
  NAMECALL R0 R0 K2 ["Wait"]
  CALL R0 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Modules"]
  GETTABLEKS R1 R2 K4 ["VR"]
  GETTABLEKS R0 R1 K5 ["VRAvatarHeightScaling"]
  GETIMPORT R1 K7 [pcall]
  GETIMPORT R2 K9 [require]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+1]
  JUMP [+9]
  GETIMPORT R3 K11 [warn]
  LOADK R5 K12 ["Failure to Start CoreScript module "]
  GETTABLEKS R6 R0 K13 ["Name"]
  LOADK R7 K14 [".
"]
  MOVE R8 R2
  CONCAT R4 R5 R8
  CALL R3 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Modules"]
  GETTABLEKS R1 R2 K4 ["VR"]
  GETTABLEKS R0 R1 K15 ["VirtualKeyboard"]
  GETIMPORT R1 K7 [pcall]
  GETIMPORT R2 K9 [require]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+1]
  JUMP [+9]
  GETIMPORT R3 K11 [warn]
  LOADK R5 K12 ["Failure to Start CoreScript module "]
  GETTABLEKS R6 R0 K13 ["Name"]
  LOADK R7 K14 [".
"]
  MOVE R8 R2
  CONCAT R4 R5 R8
  CALL R3 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Modules"]
  GETTABLEKS R1 R2 K4 ["VR"]
  GETTABLEKS R0 R1 K16 ["UserGui"]
  GETIMPORT R1 K7 [pcall]
  GETIMPORT R2 K9 [require]
  MOVE R3 R0
  CALL R1 2 2
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K11 [warn]
  LOADK R5 K12 ["Failure to Start CoreScript module "]
  GETTABLEKS R6 R0 K13 ["Name"]
  LOADK R7 K14 [".
"]
  MOVE R8 R2
  CONCAT R4 R5 R8
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [require]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Common"]
  GETTABLEKS R1 R2 K3 ["IXPServiceWrapper"]
  CALL R0 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["UserId"]
  GETUPVAL R4 2
  CALL R4 0 -1
  NAMECALL R1 R0 K5 ["InitializeAsync"]
  CALL R1 -1 0
  GETUPVAL R1 3
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K6 ["default"]
  NAMECALL R1 R1 K7 ["initialize"]
  CALL R1 1 0
  GETUPVAL R1 5
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K6 ["default"]
  NAMECALL R1 R1 K7 ["initialize"]
  CALL R1 1 0
  GETUPVAL R1 7
  CALL R1 0 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 8
  GETTABLEKS R1 R2 K6 ["default"]
  NAMECALL R1 R1 K7 ["initialize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Workspace"]
  GETTABLEKS R2 R3 K1 ["Packages"]
  GETTABLEKS R1 R2 K2 ["AdsEudsa"]
  GETIMPORT R2 K4 [pcall]
  GETIMPORT R3 K6 [require]
  MOVE R4 R1
  CALL R2 2 2
  JUMPIFNOT R2 [+2]
  MOVE R0 R3
  JUMP [+10]
  GETIMPORT R4 K8 [warn]
  LOADK R6 K9 ["Failure to Start CoreScript module "]
  GETTABLEKS R7 R1 K10 ["Name"]
  LOADK R8 K11 [".
"]
  MOVE R9 R3
  CONCAT R5 R6 R9
  CALL R4 1 0
  LOADNIL R0
  JUMPIFNOT R0 [+6]
  GETTABLEKS R1 R0 K12 ["starterScript"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K12 ["starterScript"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Workspace"]
  GETTABLEKS R2 R3 K1 ["Packages"]
  GETTABLEKS R1 R2 K2 ["PremiumSponsoredExperienceReporting"]
  GETIMPORT R2 K4 [pcall]
  GETIMPORT R3 K6 [require]
  MOVE R4 R1
  CALL R2 2 2
  JUMPIFNOT R2 [+2]
  MOVE R0 R3
  JUMP [+10]
  GETIMPORT R4 K8 [warn]
  LOADK R6 K9 ["Failure to Start CoreScript module "]
  GETTABLEKS R7 R1 K10 ["Name"]
  LOADK R8 K11 [".
"]
  MOVE R9 R3
  CONCAT R5 R6 R9
  CALL R4 1 0
  LOADNIL R0
  JUMPIFNOT R0 [+6]
  GETTABLEKS R1 R0 K12 ["starterScript"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K12 ["starterScript"]
  CALL R1 0 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Workspace"]
  GETTABLEKS R2 R3 K1 ["Packages"]
  GETTABLEKS R1 R2 K2 ["AdGuiInteractivity"]
  GETIMPORT R2 K4 [pcall]
  GETIMPORT R3 K6 [require]
  MOVE R4 R1
  CALL R2 2 2
  JUMPIFNOT R2 [+2]
  MOVE R0 R3
  JUMP [+10]
  GETIMPORT R4 K8 [warn]
  LOADK R6 K9 ["Failure to Start CoreScript module "]
  GETTABLEKS R7 R1 K10 ["Name"]
  LOADK R8 K11 [".
"]
  MOVE R9 R3
  CONCAT R5 R6 R9
  CALL R4 1 0
  LOADNIL R0
  JUMPIFNOT R0 [+6]
  GETTABLEKS R1 R0 K12 ["starterScript"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K12 ["starterScript"]
  CALL R1 0 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R2 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Workspace"]
  GETTABLEKS R4 R5 K3 ["Packages"]
  GETTABLEKS R3 R4 K4 ["GenericChallenges"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K5 ["Middleware"]
  GETTABLEKS R0 R1 K6 ["InitExperienceChallengeInterceptor"]
  MOVE R1 R0
  CALL R1 0 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["start"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ScriptContext"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["UserInputService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["VRService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["Players"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K9 ["RunService"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K10 ["CoreGui"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  LOADK R9 K11 ["RobloxGui"]
  NAMECALL R7 R7 K12 ["WaitForChild"]
  CALL R7 2 1
  LOADK R10 K13 ["Modules"]
  NAMECALL R8 R7 K12 ["WaitForChild"]
  CALL R8 2 1
  LOADK R11 K14 ["CoreScripts/CoreScriptErrorReporter"]
  MOVE R12 R7
  NAMECALL R9 R1 K15 ["AddCoreScriptLocal"]
  CALL R9 3 0
  GETIMPORT R9 K17 [require]
  GETTABLEKS R11 R0 K18 ["Packages"]
  GETTABLEKS R10 R11 K19 ["Roact"]
  CALL R9 1 1
  GETIMPORT R10 K17 [require]
  LOADK R13 K20 ["Common"]
  NAMECALL R11 R8 K12 ["WaitForChild"]
  CALL R11 2 1
  LOADK R13 K21 ["PolicyService"]
  NAMECALL R11 R11 K12 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETIMPORT R11 K17 [require]
  GETTABLEKS R14 R7 K13 ["Modules"]
  GETTABLEKS R13 R14 K22 ["Flags"]
  GETTABLEKS R12 R13 K23 ["FFlagUseRoactGlobalConfigInCoreScripts"]
  CALL R11 1 1
  GETIMPORT R12 K1 [game]
  LOADK R14 K24 ["DebugAvatarChatVisualization"]
  LOADB R15 0
  NAMECALL R12 R12 K25 ["DefineFastFlag"]
  CALL R12 3 1
  GETIMPORT R13 K17 [require]
  GETTABLEKS R16 R7 K13 ["Modules"]
  GETTABLEKS R15 R16 K22 ["Flags"]
  GETTABLEKS R14 R15 K26 ["GetFFlagScreenshotHudApi"]
  CALL R13 1 1
  GETIMPORT R14 K17 [require]
  GETTABLEKS R17 R7 K13 ["Modules"]
  GETTABLEKS R16 R17 K22 ["Flags"]
  GETTABLEKS R15 R16 K27 ["GetFFlagEnableVoiceDefaultChannel"]
  CALL R14 1 1
  GETIMPORT R15 K17 [require]
  GETTABLEKS R16 R8 K28 ["IsExperienceMenuABTestEnabled"]
  CALL R15 1 1
  GETIMPORT R16 K17 [require]
  GETTABLEKS R17 R8 K29 ["ExperienceMenuABTestManager"]
  CALL R16 1 1
  GETIMPORT R17 K17 [require]
  GETTABLEKS R19 R8 K22 ["Flags"]
  GETTABLEKS R18 R19 K30 ["GetFFlagEnableNewInviteMenuIXP"]
  CALL R17 1 1
  GETIMPORT R18 K17 [require]
  GETTABLEKS R22 R8 K31 ["Settings"]
  GETTABLEKS R21 R22 K32 ["Pages"]
  GETTABLEKS R20 R21 K33 ["ShareGame"]
  GETTABLEKS R19 R20 K34 ["NewInviteMenuExperimentManager"]
  CALL R18 1 1
  GETIMPORT R19 K17 [require]
  GETTABLEKS R21 R8 K22 ["Flags"]
  GETTABLEKS R20 R21 K35 ["GetFFlagEnableSoundSessionTelemetry"]
  CALL R19 1 1
  GETIMPORT R21 K17 [require]
  GETTABLEKS R24 R0 K36 ["Workspace"]
  GETTABLEKS R23 R24 K18 ["Packages"]
  GETTABLEKS R22 R23 K37 ["SharedFlags"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K38 ["GetFFlagReportAnythingAnnotationIXP"]
  GETIMPORT R22 K17 [require]
  GETTABLEKS R25 R0 K36 ["Workspace"]
  GETTABLEKS R24 R25 K18 ["Packages"]
  GETTABLEKS R23 R24 K39 ["TrustAndSafetyIxp"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K40 ["TrustAndSafetyIXPManager"]
  GETIMPORT R22 K17 [require]
  GETTABLEKS R24 R8 K41 ["Experiment"]
  GETTABLEKS R23 R24 K42 ["GetCoreScriptsLayers"]
  CALL R22 1 1
  GETIMPORT R23 K17 [require]
  GETTABLEKS R26 R7 K13 ["Modules"]
  GETTABLEKS R25 R26 K22 ["Flags"]
  GETTABLEKS R24 R25 K43 ["GetFFlagRtMessaging"]
  CALL R23 1 1
  GETIMPORT R24 K17 [require]
  GETTABLEKS R28 R7 K13 ["Modules"]
  GETTABLEKS R27 R28 K20 ["Common"]
  GETTABLEKS R26 R27 K22 ["Flags"]
  GETTABLEKS R25 R26 K44 ["GetFFlagContactListClientEnabled"]
  CALL R24 1 1
  GETIMPORT R25 K1 [game]
  LOADK R27 K45 ["AddPublishAssetPrompt6"]
  LOADB R28 0
  NAMECALL R25 R25 K25 ["DefineFastFlag"]
  CALL R25 3 1
  GETIMPORT R27 K17 [require]
  GETTABLEKS R30 R0 K36 ["Workspace"]
  GETTABLEKS R29 R30 K18 ["Packages"]
  GETTABLEKS R28 R29 K37 ["SharedFlags"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K46 ["isCharacterNameHandlerEnabled"]
  GETIMPORT R28 K17 [require]
  GETTABLEKS R31 R0 K36 ["Workspace"]
  GETTABLEKS R30 R31 K18 ["Packages"]
  GETTABLEKS R29 R30 K37 ["SharedFlags"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K47 ["GetFFlagIrisAlwaysOnTopEnabled"]
  GETIMPORT R29 K17 [require]
  GETTABLEKS R32 R0 K36 ["Workspace"]
  GETTABLEKS R31 R32 K18 ["Packages"]
  GETTABLEKS R30 R31 K37 ["SharedFlags"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K48 ["GetFFlagEnableSocialContextToast"]
  GETIMPORT R30 K17 [require]
  GETTABLEKS R33 R0 K36 ["Workspace"]
  GETTABLEKS R32 R33 K18 ["Packages"]
  GETTABLEKS R31 R32 K37 ["SharedFlags"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K49 ["GetFFlagLuaAppEnableSquadPage"]
  GETIMPORT R31 K17 [require]
  GETTABLEKS R34 R0 K36 ["Workspace"]
  GETTABLEKS R33 R34 K18 ["Packages"]
  GETTABLEKS R32 R33 K37 ["SharedFlags"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K50 ["GetFFlagEnableAppChatInExperience"]
  GETIMPORT R32 K17 [require]
  GETTABLEKS R35 R0 K36 ["Workspace"]
  GETTABLEKS R34 R35 K18 ["Packages"]
  GETTABLEKS R33 R34 K37 ["SharedFlags"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K51 ["GetFFlagChromeCentralizedConfiguration"]
  GETIMPORT R33 K17 [require]
  GETTABLEKS R36 R0 K36 ["Workspace"]
  GETTABLEKS R35 R36 K18 ["Packages"]
  GETTABLEKS R34 R35 K37 ["SharedFlags"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K52 ["GetFFlagEnableCrossExpVoice"]
  GETIMPORT R33 K1 [game]
  LOADK R35 K53 ["LuaAppEnableToastNotificationsCoreScripts4"]
  LOADB R36 0
  NAMECALL R33 R33 K25 ["DefineFastFlag"]
  CALL R33 3 1
  GETIMPORT R34 K1 [game]
  LOADK R36 K54 ["AdPortalTeleportPromptLua"]
  LOADB R37 0
  NAMECALL R34 R34 K25 ["DefineFastFlag"]
  CALL R34 3 1
  GETIMPORT R35 K17 [require]
  GETTABLEKS R38 R7 K13 ["Modules"]
  GETTABLEKS R37 R38 K22 ["Flags"]
  GETTABLEKS R36 R37 K55 ["GetFFlagVoiceUserAgency3"]
  CALL R35 1 1
  GETIMPORT R36 K17 [require]
  GETTABLEKS R39 R7 K13 ["Modules"]
  GETTABLEKS R38 R39 K22 ["Flags"]
  GETTABLEKS R37 R38 K56 ["GetFFlagLuaInExperienceCoreScriptsGameInviteUnification"]
  CALL R36 1 1
  GETIMPORT R37 K17 [require]
  GETTABLEKS R40 R7 K13 ["Modules"]
  GETTABLEKS R39 R40 K22 ["Flags"]
  GETTABLEKS R38 R39 K57 ["getFFlagMicrophoneDevicePermissionsPromptLogging"]
  CALL R37 1 1
  GETIMPORT R38 K1 [game]
  LOADK R40 K58 ["MoodsEmoteFix3"]
  LOADB R41 0
  NAMECALL R38 R38 K25 ["DefineFastFlag"]
  CALL R38 3 0
  GETIMPORT R38 K1 [game]
  LOADK R40 K59 ["EnableSendCameraAccessAnalytics"]
  LOADB R41 0
  NAMECALL R38 R38 K25 ["DefineFastFlag"]
  CALL R38 3 1
  GETIMPORT R39 K1 [game]
  LOADK R41 K60 ["EnableExperienceNotificationPrompts2"]
  LOADB R42 0
  NAMECALL R39 R39 K25 ["DefineFastFlag"]
  CALL R39 3 1
  GETIMPORT R40 K1 [game]
  LOADK R42 K61 ["EnablePremiumSponsoredExperienceReporting"]
  LOADB R43 0
  NAMECALL R40 R40 K25 ["DefineFastFlag"]
  CALL R40 3 1
  GETIMPORT R41 K17 [require]
  GETTABLEKS R45 R7 K13 ["Modules"]
  GETTABLEKS R44 R45 K20 ["Common"]
  GETTABLEKS R43 R44 K22 ["Flags"]
  GETTABLEKS R42 R43 K62 ["FFlagMoveUGCValidationFunctionFeature"]
  CALL R41 1 1
  GETIMPORT R42 K1 [game]
  LOADK R44 K63 ["EnableCancelSubscriptionApp"]
  NAMECALL R42 R42 K64 ["GetEngineFeature"]
  CALL R42 2 1
  GETIMPORT R43 K1 [game]
  LOADK R45 K65 ["EnableCancelSubscriptionAppLua"]
  LOADB R46 0
  NAMECALL R43 R43 K25 ["DefineFastFlag"]
  CALL R43 3 1
  GETIMPORT R44 K1 [game]
  LOADK R46 K66 ["AudioFocusManagement"]
  NAMECALL R44 R44 K64 ["GetEngineFeature"]
  CALL R44 2 1
  GETIMPORT R45 K17 [require]
  GETTABLEKS R48 R7 K13 ["Modules"]
  GETTABLEKS R47 R48 K22 ["Flags"]
  GETTABLEKS R46 R47 K67 ["FFlagEnableExperienceMenuSessionTracking"]
  CALL R45 1 1
  GETIMPORT R46 K1 [game]
  LOADK R48 K68 ["CoreGuiEnableAnalytics"]
  LOADB R49 0
  NAMECALL R46 R46 K25 ["DefineFastFlag"]
  CALL R46 3 1
  GETIMPORT R47 K1 [game]
  LOADK R49 K69 ["EnableExperienceGenericChallengeRenderingOnLoadingScript"]
  LOADB R50 0
  NAMECALL R47 R47 K25 ["DefineFastFlag"]
  CALL R47 3 1
  GETIMPORT R48 K1 [game]
  LOADK R50 K70 ["EnableRobloxCommerce"]
  NAMECALL R48 R48 K64 ["GetEngineFeature"]
  CALL R48 2 1
  GETIMPORT R49 K17 [require]
  GETTABLEKS R51 R0 K18 ["Packages"]
  GETTABLEKS R50 R51 K71 ["UIBlox"]
  CALL R49 1 1
  GETIMPORT R51 K17 [require]
  GETTABLEKS R54 R0 K36 ["Workspace"]
  GETTABLEKS R53 R54 K18 ["Packages"]
  GETTABLEKS R52 R53 K72 ["CoreScriptsInitializer"]
  CALL R51 1 1
  GETTABLEKS R50 R51 K73 ["UIBloxInGameConfig"]
  GETTABLEKS R51 R49 K74 ["init"]
  MOVE R52 R50
  CALL R51 1 0
  GETTABLEKS R51 R5 K75 ["LocalPlayer"]
  JUMPIF R51 [+10]
  LOADK R54 K75 ["LocalPlayer"]
  NAMECALL R52 R5 K76 ["GetPropertyChangedSignal"]
  CALL R52 2 1
  NAMECALL R52 R52 K77 ["Wait"]
  CALL R52 1 0
  GETTABLEKS R51 R5 K75 ["LocalPlayer"]
  JUMPBACK [-11]
  GETIMPORT R52 K1 [game]
  LOADK R54 K78 ["SoundServiceControlsDefaultListenerLocation"]
  NAMECALL R52 R52 K64 ["GetEngineFeature"]
  CALL R52 2 1
  JUMPIFNOT R52 [+8]
  LOADK R54 K79 ["CoreScripts/DefaultListenerLocation"]
  GETIMPORT R56 K81 [script]
  GETTABLEKS R55 R56 K82 ["Parent"]
  NAMECALL R52 R1 K15 ["AddCoreScriptLocal"]
  CALL R52 3 0
  MOVE R52 R30
  CALL R52 0 1
  JUMPIFNOT R52 [+43]
  GETIMPORT R53 K17 [require]
  GETTABLEKS R56 R0 K36 ["Workspace"]
  GETTABLEKS R55 R56 K18 ["Packages"]
  GETTABLEKS R54 R55 K83 ["ExperimentCacheManager"]
  CALL R53 1 1
  GETTABLEKS R52 R53 K83 ["ExperimentCacheManager"]
  GETTABLEKS R53 R52 K84 ["default"]
  NAMECALL R53 R53 K85 ["initialize"]
  CALL R53 1 0
  GETIMPORT R55 K17 [require]
  GETTABLEKS R58 R0 K36 ["Workspace"]
  GETTABLEKS R57 R58 K18 ["Packages"]
  GETTABLEKS R56 R57 K86 ["AppChat"]
  CALL R55 1 1
  GETTABLEKS R54 R55 K87 ["App"]
  GETTABLEKS R53 R54 K88 ["InExperienceAppChatExperimentation"]
  GETTABLEKS R54 R53 K84 ["default"]
  NAMECALL R54 R54 K85 ["initialize"]
  CALL R54 1 0
  GETTABLEKS R54 R53 K89 ["getHasInExperienceAppChatEntryPoint"]
  CALL R54 0 1
  JUMPIFNOT R54 [+5]
  LOADK R56 K90 ["CoreScripts/AppChatMain"]
  MOVE R57 R7
  NAMECALL R54 R1 K15 ["AddCoreScriptLocal"]
  CALL R54 3 0
  MOVE R52 R32
  CALL R52 0 1
  JUMPIFNOT R52 [+32]
  GETIMPORT R53 K17 [require]
  GETTABLEKS R56 R0 K36 ["Workspace"]
  GETTABLEKS R55 R56 K18 ["Packages"]
  GETTABLEKS R54 R55 K83 ["ExperimentCacheManager"]
  CALL R53 1 1
  GETTABLEKS R52 R53 K83 ["ExperimentCacheManager"]
  GETTABLEKS R53 R52 K84 ["default"]
  NAMECALL R53 R53 K85 ["initialize"]
  CALL R53 1 0
  GETIMPORT R54 K17 [require]
  GETTABLEKS R57 R0 K36 ["Workspace"]
  GETTABLEKS R56 R57 K18 ["Packages"]
  GETTABLEKS R55 R56 K91 ["CrossExperienceVoice"]
  CALL R54 1 1
  GETTABLEKS R53 R54 K92 ["IXPManager"]
  GETTABLEKS R54 R53 K84 ["default"]
  NAMECALL R54 R54 K85 ["initialize"]
  CALL R54 1 0
  JUMPIFNOT R45 [+9]
  GETIMPORT R52 K17 [require]
  GETTABLEKS R55 R0 K36 ["Workspace"]
  GETTABLEKS R54 R55 K18 ["Packages"]
  GETTABLEKS R53 R54 K93 ["InExperienceSessionization"]
  CALL R52 1 1
  GETIMPORT R53 K17 [require]
  GETTABLEKS R56 R0 K36 ["Workspace"]
  GETTABLEKS R55 R56 K18 ["Packages"]
  GETTABLEKS R54 R55 K37 ["SharedFlags"]
  CALL R53 1 1
  GETTABLEKS R52 R53 K94 ["GetFFlagAvatarChatCoreScriptSupport"]
  CALL R52 0 1
  GETIMPORT R53 K17 [require]
  GETTABLEKS R56 R7 K13 ["Modules"]
  GETTABLEKS R55 R56 K95 ["Chrome"]
  GETTABLEKS R54 R55 K96 ["Enabled"]
  CALL R53 1 1
  CALL R53 0 1
  JUMPIFNOT R53 [+19]
  GETIMPORT R54 K17 [require]
  GETTABLEKS R57 R0 K36 ["Workspace"]
  GETTABLEKS R56 R57 K18 ["Packages"]
  GETTABLEKS R55 R56 K97 ["ExpChat"]
  CALL R54 1 1
  GETTABLEKS R55 R54 K98 ["GlobalFlags"]
  SETTABLEKS R52 R55 K99 ["AvatarChatEnabled"]
  GETTABLEKS R55 R54 K98 ["GlobalFlags"]
  LOADB R56 1
  SETTABLEKS R56 R55 K100 ["ChromeEnabled"]
  JUMP [+15]
  JUMPIFNOT R52 [+14]
  GETIMPORT R54 K17 [require]
  GETTABLEKS R57 R0 K36 ["Workspace"]
  GETTABLEKS R56 R57 K18 ["Packages"]
  GETTABLEKS R55 R56 K97 ["ExpChat"]
  CALL R54 1 1
  GETTABLEKS R55 R54 K98 ["GlobalFlags"]
  LOADB R56 1
  SETTABLEKS R56 R55 K99 ["AvatarChatEnabled"]
  GETIMPORT R54 K17 [require]
  GETTABLEKS R57 R7 K13 ["Modules"]
  GETTABLEKS R56 R57 K22 ["Flags"]
  GETTABLEKS R55 R56 K101 ["getFFlagDoNotPromptCameraPermissionsOnMount"]
  CALL R54 1 1
  MOVE R55 R54
  CALL R55 0 1
  JUMPIFNOT R55 [+14]
  GETIMPORT R55 K17 [require]
  GETTABLEKS R58 R0 K36 ["Workspace"]
  GETTABLEKS R57 R58 K18 ["Packages"]
  GETTABLEKS R56 R57 K97 ["ExpChat"]
  CALL R55 1 1
  GETTABLEKS R56 R55 K98 ["GlobalFlags"]
  LOADB R57 1
  SETTABLEKS R57 R56 K102 ["DoNotPromptCameraPermissionsOnMount"]
  GETIMPORT R56 K17 [require]
  GETTABLEKS R59 R0 K36 ["Workspace"]
  GETTABLEKS R58 R59 K18 ["Packages"]
  GETTABLEKS R57 R58 K37 ["SharedFlags"]
  CALL R56 1 1
  GETTABLEKS R55 R56 K103 ["GetFFlagJoinWithoutMicPermissions"]
  MOVE R56 R55
  CALL R56 0 1
  JUMPIFNOT R56 [+14]
  GETIMPORT R56 K17 [require]
  GETTABLEKS R59 R0 K36 ["Workspace"]
  GETTABLEKS R58 R59 K18 ["Packages"]
  GETTABLEKS R57 R58 K97 ["ExpChat"]
  CALL R56 1 1
  GETTABLEKS R57 R56 K98 ["GlobalFlags"]
  LOADB R58 1
  SETTABLEKS R58 R57 K104 ["JoinWithoutMicPermissions"]
  GETIMPORT R56 K17 [require]
  GETTABLEKS R59 R7 K13 ["Modules"]
  GETTABLEKS R58 R59 K22 ["Flags"]
  GETTABLEKS R57 R58 K105 ["getFFlagEnableAlwaysAvailableCamera"]
  CALL R56 1 1
  MOVE R57 R56
  CALL R57 0 1
  JUMPIFNOT R57 [+14]
  GETIMPORT R57 K17 [require]
  GETTABLEKS R60 R0 K36 ["Workspace"]
  GETTABLEKS R59 R60 K18 ["Packages"]
  GETTABLEKS R58 R59 K97 ["ExpChat"]
  CALL R57 1 1
  GETTABLEKS R58 R57 K98 ["GlobalFlags"]
  LOADB R59 1
  SETTABLEKS R59 R58 K106 ["EnableAlwaysAvailableCamera"]
  GETIMPORT R57 K17 [require]
  GETTABLEKS R60 R7 K13 ["Modules"]
  GETTABLEKS R59 R60 K22 ["Flags"]
  GETTABLEKS R58 R59 K107 ["GetFFlagConsolidateBubbleChat"]
  CALL R57 1 1
  MOVE R58 R57
  CALL R58 0 1
  JUMPIFNOT R58 [+14]
  GETIMPORT R58 K17 [require]
  GETTABLEKS R61 R0 K36 ["Workspace"]
  GETTABLEKS R60 R61 K18 ["Packages"]
  GETTABLEKS R59 R60 K97 ["ExpChat"]
  CALL R58 1 1
  GETTABLEKS R59 R58 K98 ["GlobalFlags"]
  LOADB R60 1
  SETTABLEKS R60 R59 K108 ["ConsolidateBubbleChat"]
  GETIMPORT R58 K17 [require]
  GETTABLEKS R61 R7 K13 ["Modules"]
  GETTABLEKS R60 R61 K22 ["Flags"]
  GETTABLEKS R59 R60 K109 ["getFFlagRenderVoiceBubbleAfterAsyncInit"]
  CALL R58 1 1
  MOVE R59 R58
  CALL R59 0 1
  JUMPIFNOT R59 [+14]
  GETIMPORT R59 K17 [require]
  GETTABLEKS R62 R0 K36 ["Workspace"]
  GETTABLEKS R61 R62 K18 ["Packages"]
  GETTABLEKS R60 R61 K97 ["ExpChat"]
  CALL R59 1 1
  GETTABLEKS R60 R59 K98 ["GlobalFlags"]
  LOADB R61 1
  SETTABLEKS R61 R60 K110 ["RenderVoiceBubbleAfterAsyncInit"]
  GETIMPORT R60 K17 [require]
  GETTABLEKS R63 R0 K36 ["Workspace"]
  GETTABLEKS R62 R63 K18 ["Packages"]
  GETTABLEKS R61 R62 K37 ["SharedFlags"]
  CALL R60 1 1
  GETTABLEKS R59 R60 K111 ["GetFFlagShowLikelySpeakingBubbles"]
  MOVE R60 R59
  CALL R60 0 1
  JUMPIFNOT R60 [+14]
  GETIMPORT R60 K17 [require]
  GETTABLEKS R63 R0 K36 ["Workspace"]
  GETTABLEKS R62 R63 K18 ["Packages"]
  GETTABLEKS R61 R62 K97 ["ExpChat"]
  CALL R60 1 1
  GETTABLEKS R61 R60 K98 ["GlobalFlags"]
  LOADB R62 1
  SETTABLEKS R62 R61 K112 ["ShowLikelySpeakingBubbles"]
  GETIMPORT R60 K1 [game]
  LOADK R62 K113 ["InExperienceInterventionApp"]
  LOADB R63 0
  NAMECALL R60 R60 K25 ["DefineFastFlag"]
  CALL R60 3 1
  JUMPIFNOT R11 [+14]
  NAMECALL R61 R6 K114 ["IsStudio"]
  CALL R61 1 1
  JUMPIFNOT R61 [+10]
  GETTABLEKS R61 R9 K115 ["setGlobalConfig"]
  DUPTABLE R62 K118 [{"propValidation", "elementTracing"}]
  LOADB R63 1
  SETTABLEKS R63 R62 K116 ["propValidation"]
  LOADB R63 1
  SETTABLEKS R63 R62 K117 ["elementTracing"]
  CALL R61 1 0
  GETIMPORT R61 K17 [require]
  GETTABLEKS R63 R0 K18 ["Packages"]
  GETTABLEKS R62 R63 K119 ["InGameMenuDependencies"]
  CALL R61 1 1
  GETTABLEKS R62 R61 K71 ["UIBlox"]
  JUMPIFEQ R62 R49 [+5]
  GETTABLEKS R63 R62 K74 ["init"]
  MOVE R64 R50
  CALL R63 1 0
  GETIMPORT R63 K122 [Instance.new]
  LOADK R64 K123 ["Folder"]
  CALL R63 1 1
  LOADK R64 K124 ["Sounds"]
  SETTABLEKS R64 R63 K125 ["Name"]
  SETTABLEKS R7 R63 K82 ["Parent"]
  DUPCLOSURE R64 K126 [PROTO_0]
  LOADK R67 K127 ["CoreScripts/NotificationScript2"]
  MOVE R68 R7
  NAMECALL R65 R1 K15 ["AddCoreScriptLocal"]
  CALL R65 3 0
  MOVE R65 R31
  CALL R65 0 1
  JUMPIFNOT R65 [+9]
  GETIMPORT R65 K130 [coroutine.wrap]
  MOVE R66 R64
  CALL R65 1 1
  GETTABLEKS R67 R8 K95 ["Chrome"]
  GETTABLEKS R66 R67 K131 ["ConfigureChrome"]
  CALL R65 1 0
  GETIMPORT R65 K130 [coroutine.wrap]
  MOVE R66 R64
  CALL R65 1 1
  GETTABLEKS R66 R8 K132 ["SelfieView"]
  CALL R65 1 0
  GETIMPORT R65 K130 [coroutine.wrap]
  MOVE R66 R64
  CALL R65 1 1
  GETTABLEKS R66 R8 K133 ["TopBar"]
  CALL R65 1 0
  GETIMPORT R65 K1 [game]
  LOADK R67 K134 ["LuobuModerationStatus"]
  NAMECALL R65 R65 K64 ["GetEngineFeature"]
  CALL R65 2 1
  JUMPIFNOT R65 [+6]
  GETIMPORT R65 K130 [coroutine.wrap]
  DUPCLOSURE R66 K135 [PROTO_1]
  CAPTURE VAL R8
  CALL R65 1 1
  CALL R65 0 0
  JUMPIFNOT R60 [+11]
  GETIMPORT R65 K130 [coroutine.wrap]
  MOVE R66 R64
  CALL R65 1 1
  GETTABLEKS R68 R0 K36 ["Workspace"]
  GETTABLEKS R67 R68 K18 ["Packages"]
  GETTABLEKS R66 R67 K136 ["InExperienceIntervention"]
  CALL R65 1 0
  LOADK R67 K137 ["CoreScripts/MainBotChatScript2"]
  MOVE R68 R7
  NAMECALL R65 R1 K15 ["AddCoreScriptLocal"]
  CALL R65 3 0
  GETIMPORT R65 K1 [game]
  LOADK R67 K138 ["ProximityPrompts"]
  NAMECALL R65 R65 K64 ["GetEngineFeature"]
  CALL R65 2 1
  JUMPIFNOT R65 [+5]
  LOADK R67 K139 ["CoreScripts/ProximityPrompt"]
  MOVE R68 R7
  NAMECALL R65 R1 K15 ["AddCoreScriptLocal"]
  CALL R65 3 0
  JUMPIFNOT R41 [+17]
  GETIMPORT R65 K1 [game]
  LOADK R67 K140 ["ValidateUGCBodyAPIFeature"]
  NAMECALL R65 R65 K64 ["GetEngineFeature"]
  CALL R65 2 1
  JUMPIFNOT R65 [+10]
  GETIMPORT R65 K17 [require]
  GETTABLEKS R68 R8 K141 ["Server"]
  GETTABLEKS R67 R68 K142 ["UGCValidation"]
  GETTABLEKS R66 R67 K143 ["UGCValidationFunctionInstaller"]
  CALL R65 1 1
  CALL R65 0 0
  GETIMPORT R65 K130 [coroutine.wrap]
  DUPCLOSURE R66 K144 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CALL R65 1 1
  CALL R65 0 0
  GETIMPORT R65 K130 [coroutine.wrap]
  DUPCLOSURE R66 K145 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R8
  CALL R65 1 1
  CALL R65 0 0
  LOADK R67 K146 ["CoreScripts/PerformanceStatsManagerScript"]
  MOVE R68 R7
  NAMECALL R65 R1 K15 ["AddCoreScriptLocal"]
  CALL R65 3 0
  LOADK R67 K147 ["CoreScripts/PlayerRagdoll"]
  MOVE R68 R7
  NAMECALL R65 R1 K15 ["AddCoreScriptLocal"]
  CALL R65 3 0
  GETIMPORT R65 K130 [coroutine.wrap]
  MOVE R66 R64
  CALL R65 1 1
  GETTABLEKS R67 R7 K13 ["Modules"]
  GETTABLEKS R66 R67 K148 ["ChatSelector"]
  CALL R65 1 0
  GETIMPORT R65 K130 [coroutine.wrap]
  MOVE R66 R64
  CALL R65 1 1
  GETTABLEKS R68 R7 K13 ["Modules"]
  GETTABLEKS R67 R68 K149 ["PlayerList"]
  GETTABLEKS R66 R67 K150 ["PlayerListManager"]
  CALL R65 1 0
  LOADNIL R65
  GETIMPORT R66 K152 [pcall]
  DUPCLOSURE R67 K153 [PROTO_4]
  CALL R66 1 2
  AND R65 R66 R67
  GETIMPORT R66 K1 [game]
  LOADK R68 K154 ["EnableBubbleChatFromChatService"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIF R66 [+1]
  JUMPIFNOT R65 [+5]
  LOADK R68 K155 ["CoreScripts/PlayerBillboards"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  MOVE R66 R27
  CALL R66 0 1
  JUMPIFNOT R66 [+5]
  LOADK R68 K156 ["CoreScripts/IrisUpdateBubbleChat"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K130 [coroutine.wrap]
  DUPCLOSURE R67 K157 [PROTO_5]
  CAPTURE VAL R8
  CALL R66 1 1
  CALL R66 0 0
  JUMPIFNOT R25 [+7]
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R67 R8 K158 ["PublishAssetPrompt"]
  CALL R66 1 0
  LOADK R68 K159 ["CoreScripts/BlockPlayerPrompt"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K160 ["CoreScripts/FriendPlayerPrompt"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K161 ["CoreScripts/AvatarContextMenu"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R68 R7 K13 ["Modules"]
  GETTABLEKS R67 R68 K162 ["BackpackScript"]
  CALL R66 1 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R68 R7 K13 ["Modules"]
  GETTABLEKS R67 R68 K163 ["KeyboardUINavigation"]
  CALL R66 1 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R69 R7 K13 ["Modules"]
  GETTABLEKS R68 R69 K164 ["EmotesMenu"]
  GETTABLEKS R67 R68 K165 ["EmotesMenuMaster"]
  CALL R66 1 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R69 R7 K13 ["Modules"]
  GETTABLEKS R68 R69 K166 ["Screenshots"]
  GETTABLEKS R67 R68 K167 ["ScreenshotsApp"]
  CALL R66 1 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R67 R8 K168 ["AvatarEditorPrompts"]
  CALL R66 1 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R69 R7 K13 ["Modules"]
  GETTABLEKS R68 R69 K169 ["VirtualCursor"]
  GETTABLEKS R67 R68 K170 ["VirtualCursorMain"]
  CALL R66 1 0
  LOADK R68 K171 ["CoreScripts/VehicleHud"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K172 ["CoreScripts/InviteToGamePrompt"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETTABLEKS R66 R2 K173 ["TouchEnabled"]
  JUMPIFNOT R66 [+22]
  LOADK R68 K174 ["CoreScripts/ContextActionTouch"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K175 ["ControlFrame"]
  NAMECALL R66 R7 K12 ["WaitForChild"]
  CALL R66 2 0
  GETTABLEKS R66 R7 K175 ["ControlFrame"]
  LOADK R68 K176 ["BottomLeftControl"]
  NAMECALL R66 R66 K12 ["WaitForChild"]
  CALL R66 2 0
  GETTABLEKS R67 R7 K175 ["ControlFrame"]
  GETTABLEKS R66 R67 K176 ["BottomLeftControl"]
  LOADB R67 0
  SETTABLEKS R67 R66 K177 ["Visible"]
  LOADK R68 K178 ["CoreScripts/InspectAndBuy"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K130 [coroutine.wrap]
  DUPCLOSURE R67 K179 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CALL R66 1 1
  CALL R66 0 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R70 R7 K13 ["Modules"]
  GETTABLEKS R69 R70 K180 ["VR"]
  GETTABLEKS R68 R69 K181 ["VRAvatarGestures"]
  GETTABLEKS R67 R68 K182 ["VRAvatarGesturesClient"]
  CALL R66 1 0
  LOADK R68 K183 ["CoreScripts/NetworkPause"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  MOVE R66 R13
  CALL R66 0 1
  JUMPIFNOT R66 [+9]
  NAMECALL R66 R10 K184 ["IsSubjectToChinaPolicies"]
  CALL R66 1 1
  JUMPIF R66 [+5]
  LOADK R68 K185 ["CoreScripts/ScreenshotHud"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  MOVE R66 R37
  CALL R66 0 1
  JUMPIFNOT R66 [+5]
  LOADK R68 K186 ["CoreScripts/MicrophoneDevicePermissionsLoggingInitializer"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K187 ["VoiceChatSupported"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+8]
  MOVE R66 R14
  CALL R66 0 1
  JUMPIFNOT R66 [+5]
  LOADK R68 K188 ["CoreScripts/VoiceDefaultChannel"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K130 [coroutine.wrap]
  NEWCLOSURE R67 P7
  CAPTURE VAL R8
  CAPTURE REF R51
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R21
  CALL R66 1 1
  CALL R66 0 0
  LOADK R68 K189 ["CoreScripts/ExperienceChatMain"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K190 ["CoreScripts/ChatEmoteUsage"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  JUMPIFNOT R33 [+8]
  LOADK R68 K191 ["CoreScripts/ToastNotificationGUI"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  MOVE R66 R23
  CALL R66 0 1
  JUMPIFNOT R66 [+6]
  GETIMPORT R66 K1 [game]
  LOADK R68 K192 ["RtMessagingService"]
  NAMECALL R66 R66 K3 ["GetService"]
  CALL R66 2 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K193 ["FacialAnimationStreaming2"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+8]
  LOADK R68 K194 ["CoreScripts/FacialAnimationStreaming"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  JUMPIFNOT R52 [+29]
  LOADK R68 K195 ["CoreScripts/FaceChatSelfieView"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  JUMPIFNOT R12 [+8]
  LOADK R68 K196 ["CoreScripts/AvatarChatDebugVisualization"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K197 ["TrackerLodControllerDebugUI"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+8]
  LOADK R68 K198 ["CoreScripts/TrackerLodControllerDebugUI"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K199 ["NewMoodAnimationTypeApiEnabled"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+15]
  GETIMPORT R66 K1 [game]
  LOADK R68 K58 ["MoodsEmoteFix3"]
  NAMECALL R66 R66 K200 ["GetFastFlag"]
  CALL R66 2 1
  JUMPIFNOT R66 [+8]
  LOADK R68 K201 ["CoreScripts/AvatarMood"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K202 ["CoreScripts/PortalTeleportGUI"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K203 ["PortalAdPrompt"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+6]
  JUMPIFNOT R34 [+5]
  LOADK R68 K204 ["CoreScripts/AdTeleportPrompt"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K130 [coroutine.wrap]
  DUPCLOSURE R67 K205 [PROTO_8]
  CAPTURE VAL R0
  CALL R66 1 1
  CALL R66 0 0
  JUMPIFNOT R40 [+6]
  GETIMPORT R66 K130 [coroutine.wrap]
  DUPCLOSURE R67 K206 [PROTO_9]
  CAPTURE VAL R0
  CALL R66 1 1
  CALL R66 0 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K207 ["EnableAdGuiInteractivityControlRefactor"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+6]
  GETIMPORT R66 K130 [coroutine.wrap]
  DUPCLOSURE R67 K208 [PROTO_10]
  CAPTURE VAL R0
  CALL R66 1 1
  CALL R66 0 0
  GETIMPORT R66 K1 [game]
  LOADK R68 K209 ["EnableVoiceAttention"]
  NAMECALL R66 R66 K64 ["GetEngineFeature"]
  CALL R66 2 1
  JUMPIFNOT R66 [+8]
  LOADK R68 K210 ["CoreScripts/VoiceAttention"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  MOVE R66 R19
  CALL R66 0 1
  JUMPIFNOT R66 [+8]
  LOADK R68 K211 ["CoreScripts/SoundTelemetry"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R67 R8 K212 ["ApolloClient"]
  CALL R66 1 0
  MOVE R66 R24
  CALL R66 0 1
  JUMPIFNOT R66 [+7]
  GETIMPORT R66 K130 [coroutine.wrap]
  MOVE R67 R64
  CALL R66 1 1
  GETTABLEKS R67 R8 K213 ["ContactList"]
  CALL R66 1 0
  MOVE R66 R26
  CALL R66 0 1
  JUMPIFNOT R66 [+8]
  LOADK R68 K214 ["CoreScripts/CharacterNameHandler"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  MOVE R66 R35
  CALL R66 0 1
  JUMPIFNOT R66 [+5]
  LOADK R68 K215 ["CoreScripts/VoiceUserAgency"]
  MOVE R69 R7
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  LOADK R68 K216 ["CoreScripts/CoreScriptsGlobalEffects"]
  GETIMPORT R70 K81 [script]
  GETTABLEKS R69 R70 K82 ["Parent"]
  NAMECALL R66 R1 K15 ["AddCoreScriptLocal"]
  CALL R66 3 0
  GETIMPORT R67 K17 [require]
  GETTABLEKS R70 R0 K36 ["Workspace"]
  GETTABLEKS R69 R70 K18 ["Packages"]
  GETTABLEKS R68 R69 K217 ["SoundManager"]
  CALL R67 1 1
  GETTABLEKS R66 R67 K217 ["SoundManager"]
  GETTABLEKS R67 R66 K74 ["init"]
  CALL R67 0 0
  MOVE R67 R28
  CALL R67 0 1
  JUMPIFNOT R67 [+5]
  LOADK R69 K218 ["CoreScripts/SocialContextToast"]
  MOVE R70 R7
  NAMECALL R67 R1 K15 ["AddCoreScriptLocal"]
  CALL R67 3 0
  MOVE R67 R36
  CALL R67 0 1
  JUMPIFNOT R67 [+8]
  LOADK R69 K219 ["CoreScripts/GameInviteModalGUI"]
  GETIMPORT R71 K81 [script]
  GETTABLEKS R70 R71 K82 ["Parent"]
  NAMECALL R67 R1 K15 ["AddCoreScriptLocal"]
  CALL R67 3 0
  JUMPIFNOT R39 [+8]
  LOADK R69 K220 ["CoreScripts/ExperienceNotifications"]
  GETIMPORT R71 K81 [script]
  GETTABLEKS R70 R71 K82 ["Parent"]
  NAMECALL R67 R1 K15 ["AddCoreScriptLocal"]
  CALL R67 3 0
  GETIMPORT R68 K17 [require]
  GETTABLEKS R71 R0 K36 ["Workspace"]
  GETTABLEKS R70 R71 K18 ["Packages"]
  GETTABLEKS R69 R70 K221 ["Achievements"]
  CALL R68 1 1
  GETTABLEKS R67 R68 K222 ["InExpAchievementManager"]
  GETTABLEKS R68 R67 K121 ["new"]
  CALL R68 0 1
  NAMECALL R69 R68 K223 ["startUp"]
  CALL R69 1 0
  GETIMPORT R69 K17 [require]
  GETTABLEKS R73 R7 K13 ["Modules"]
  GETTABLEKS R72 R73 K20 ["Common"]
  GETTABLEKS R71 R72 K22 ["Flags"]
  GETTABLEKS R70 R71 K224 ["GetFFlagPlayerViewRemoteEnabled"]
  CALL R69 1 1
  MOVE R70 R69
  CALL R70 0 1
  JUMPIFNOT R70 [+5]
  LOADK R72 K225 ["CoreScripts/PlayerView"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  JUMPIFNOT R38 [+5]
  LOADK R72 K226 ["CoreScripts/SendCameraAccessAnalytics"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  LOADK R72 K227 ["CoreScripts/BulkPurchaseApp"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  JUMPIFNOT R44 [+5]
  LOADK R72 K228 ["CoreScripts/ExperienceAudioFocusBinder"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  JUMPIFNOT R42 [+6]
  JUMPIFNOT R43 [+5]
  LOADK R72 K229 ["CoreScripts/CancelSubscriptionApp"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  JUMPIFNOT R48 [+5]
  LOADK R72 K230 ["CoreScripts/CommercePurchaseApp"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  JUMPIFNOT R46 [+5]
  LOADK R72 K231 ["CoreScripts/CoreGuiEnableAnalytics"]
  MOVE R73 R7
  NAMECALL R70 R1 K15 ["AddCoreScriptLocal"]
  CALL R70 3 0
  JUMPIF R47 [+6]
  GETIMPORT R70 K130 [coroutine.wrap]
  DUPCLOSURE R71 K232 [PROTO_11]
  CAPTURE VAL R0
  CALL R70 1 1
  CALL R70 0 0
  GETIMPORT R70 K17 [require]
  GETTABLEKS R72 R8 K20 ["Common"]
  GETTABLEKS R71 R72 K233 ["ReactPerfTracker"]
  CALL R70 1 1
  JUMPIFNOT R70 [+9]
  GETTABLEKS R71 R70 K121 ["new"]
  CALL R71 0 1
  GETIMPORT R72 K236 [task.delay]
  LOADN R73 5
  DUPCLOSURE R74 K237 [PROTO_12]
  CAPTURE VAL R71
  CALL R72 2 0
  CLOSEUPVALS R51
  RETURN R0 0
