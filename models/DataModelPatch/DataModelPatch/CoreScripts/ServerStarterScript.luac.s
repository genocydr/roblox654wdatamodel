PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetRobloxVersion"]
  CALL R0 1 1
  LOADNIL R1
  JUMPIFNOTEQKS R0 K1 ["?"] [+3]
  LOADK R1 K2 ["DEBUG_SERVER"]
  JUMP [+8]
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["IsStudio"]
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  LOADK R1 K4 ["ROBLOX Studio"]
  JUMP [+1]
  MOVE R1 R0
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["IsStudio"]
  CALL R2 1 1
  JUMPIF R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["ClientGitHash"]
  GETIMPORT R3 K8 [string.format]
  LOADK R4 K9 ["%s (%.6s)"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetRobloxClientChannel"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+33]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Chat"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["LoadDefaultChat"]
  JUMPIFNOT R0 [+23]
  LOADB R0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TextChatService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R1 R2 K6 ["ChatVersion"]
  GETIMPORT R2 K9 [Enum.ChatVersion.LegacyChatService]
  JUMPIFNOTEQ R1 R2 [+11]
  GETIMPORT R1 K1 [game]
  LOADK R3 K10 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NAMECALL R1 R1 K11 ["IsTenFootInterface"]
  CALL R1 1 1
  NOT R0 R1
  RETURN R0 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Chat"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["LoadDefaultChat"]
  JUMPIFNOT R0 [+14]
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TextChatService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R1 R2 K6 ["ChatVersion"]
  GETIMPORT R2 K9 [Enum.ChatVersion.LegacyChatService]
  JUMPIFEQ R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R1 R0 K4 ["IsRunning"]
  CALL R1 1 1
  JUMPIF R1 [+4]
  GETIMPORT R1 K6 [wait]
  CALL R1 0 0
  JUMPBACK [-8]
  GETIMPORT R1 K1 [game]
  LOADK R3 K7 ["RbxAnalyticsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K8 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K9 ["RobloxReplicatedStorage"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K10 ["ScriptContext"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K11 ["CoreGui"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R7 K13 [require]
  GETTABLEKS R10 R2 K14 ["Workspace"]
  GETTABLEKS R9 R10 K15 ["Packages"]
  GETTABLEKS R8 R9 K16 ["SharedFlags"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K17 ["GetFFlagDisplayServerChannel"]
  GETIMPORT R8 K13 [require]
  GETTABLEKS R11 R2 K14 ["Workspace"]
  GETTABLEKS R10 R11 K15 ["Packages"]
  GETTABLEKS R9 R10 K16 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K18 ["getFFlagExpChatAlwaysRunTCS"]
  LOADK R10 K19 ["RobloxGui"]
  LOADK R11 K20 [∞]
  NAMECALL R8 R5 K21 ["WaitForChild"]
  CALL R8 3 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  FASTCALL2K ASSERT R10 K22 [+4]
  LOADK R11 K22 ["RobloxGui should exist"]
  GETIMPORT R9 K24 [assert]
  CALL R9 2 0
  GETIMPORT R9 K13 [require]
  GETTABLEKS R12 R8 K25 ["Modules"]
  GETTABLEKS R11 R12 K26 ["Server"]
  GETTABLEKS R10 R11 K27 ["ServerUtil"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K28 ["getFFlagServerCoreScriptSourceCode"]
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  GETTABLEKS R10 R9 K29 ["initSourceCodeFolder"]
  CALL R10 0 0
  GETIMPORT R10 K1 [game]
  LOADK R12 K30 ["OpenCloudCoreScriptLuaEnabled"]
  LOADB R13 0
  NAMECALL R10 R10 K31 ["DefineFastFlag"]
  CALL R10 3 1
  JUMPIFNOT R10 [+8]
  LOADK R12 K32 ["ServerCoreScripts/OpenCloud/OpenCloudV2"]
  GETIMPORT R14 K34 [script]
  GETTABLEKS R13 R14 K35 ["Parent"]
  NAMECALL R10 R4 K36 ["AddCoreScriptLocal"]
  CALL R10 3 0
  GETIMPORT R10 K1 [game]
  LOADK R12 K37 ["OpenCloudClientLibraryCoreScriptEnabled"]
  LOADB R13 0
  NAMECALL R10 R10 K31 ["DefineFastFlag"]
  CALL R10 3 1
  JUMPIFNOT R10 [+8]
  LOADK R12 K38 ["ServerCoreScripts/OpenCloud/OpenCloudClientLibraryCoreScript"]
  GETIMPORT R14 K34 [script]
  GETTABLEKS R13 R14 K35 ["Parent"]
  NAMECALL R10 R4 K36 ["AddCoreScriptLocal"]
  CALL R10 3 0
  LOADK R12 K39 ["ServerCoreScripts/ServerInGameMenu"]
  GETIMPORT R14 K34 [script]
  GETTABLEKS R13 R14 K35 ["Parent"]
  NAMECALL R10 R4 K36 ["AddCoreScriptLocal"]
  CALL R10 3 0
  LOADK R12 K40 ["ServerCoreScripts/ServerSocialScript"]
  GETIMPORT R14 K34 [script]
  GETTABLEKS R13 R14 K35 ["Parent"]
  NAMECALL R10 R4 K36 ["AddCoreScriptLocal"]
  CALL R10 3 0
  LOADK R12 K41 ["ServerCoreScripts/ServerLeaderstats"]
  GETIMPORT R14 K34 [script]
  GETTABLEKS R13 R14 K35 ["Parent"]
  NAMECALL R10 R4 K36 ["AddCoreScriptLocal"]
  CALL R10 3 0
  LOADK R12 K42 ["ServerCoreScripts/PlayerRagdollRigCreator"]
  GETIMPORT R14 K34 [script]
  GETTABLEKS R13 R14 K35 ["Parent"]
  NAMECALL R10 R4 K36 ["AddCoreScriptLocal"]
  CALL R10 3 0
  GETIMPORT R10 K1 [game]
  LOADK R12 K43 ["DebugFreeCameraForAdmins"]
  LOADB R13 1
  NAMECALL R10 R10 K31 ["DefineFastFlag"]
  CALL R10 3 0
  LOADNIL R10
  GETIMPORT R11 K13 [require]
  GETTABLEKS R15 R8 K25 ["Modules"]
  GETTABLEKS R14 R15 K44 ["Common"]
  GETTABLEKS R13 R14 K45 ["Flags"]
  GETTABLEKS R12 R13 K46 ["FFlagEnableForkedChatAnalytics"]
  CALL R11 1 1
  JUMPIFNOT R11 [+10]
  GETIMPORT R12 K13 [require]
  GETTABLEKS R15 R8 K25 ["Modules"]
  GETTABLEKS R14 R15 K26 ["Server"]
  GETTABLEKS R13 R14 K47 ["SendChatAnalytics"]
  CALL R12 1 1
  MOVE R10 R12
  LOADK R14 K48 ["ServerCoreScripts/ServerDialog"]
  GETIMPORT R16 K34 [script]
  GETTABLEKS R15 R16 K35 ["Parent"]
  NAMECALL R12 R4 K36 ["AddCoreScriptLocal"]
  CALL R12 3 0
  GETIMPORT R12 K51 [Instance.new]
  LOADK R13 K52 ["RemoteFunction"]
  CALL R12 1 1
  LOADK R13 K53 ["GetServerVersion"]
  SETTABLEKS R13 R12 K54 ["Name"]
  SETTABLEKS R3 R12 K35 ["Parent"]
  LOADNIL R13
  MOVE R14 R6
  CALL R14 0 1
  JUMPIFNOT R14 [+10]
  GETIMPORT R14 K51 [Instance.new]
  LOADK R15 K52 ["RemoteFunction"]
  CALL R14 1 1
  MOVE R13 R14
  LOADK R14 K55 ["GetServerChannel"]
  SETTABLEKS R14 R13 K54 ["Name"]
  SETTABLEKS R3 R13 K35 ["Parent"]
  DUPCLOSURE R14 K56 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R15 K57 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R14 R12 K58 ["OnServerInvoke"]
  MOVE R16 R6
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  SETTABLEKS R15 R13 K58 ["OnServerInvoke"]
  GETIMPORT R16 K1 [game]
  LOADK R18 K59 ["EnableTenFootInterfaceCheckForLegacyChat"]
  LOADB R19 0
  NAMECALL R16 R16 K31 ["DefineFastFlag"]
  CALL R16 3 1
  DUPCLOSURE R17 K60 [PROTO_2]
  CAPTURE VAL R16
  MOVE R18 R17
  CALL R18 0 1
  JUMPIFNOT R18 [+41]
  GETIMPORT R18 K13 [require]
  GETIMPORT R24 K1 [game]
  LOADK R26 K11 ["CoreGui"]
  NAMECALL R24 R24 K3 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R23 R24 K19 ["RobloxGui"]
  GETTABLEKS R22 R23 K25 ["Modules"]
  GETTABLEKS R21 R22 K26 ["Server"]
  GETTABLEKS R20 R21 K61 ["ClientChat"]
  GETTABLEKS R19 R20 K62 ["ChatWindowInstaller"]
  CALL R18 1 1
  CALL R18 0 0
  GETIMPORT R18 K13 [require]
  GETIMPORT R24 K1 [game]
  LOADK R26 K11 ["CoreGui"]
  NAMECALL R24 R24 K3 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R23 R24 K19 ["RobloxGui"]
  GETTABLEKS R22 R23 K25 ["Modules"]
  GETTABLEKS R21 R22 K26 ["Server"]
  GETTABLEKS R20 R21 K63 ["ServerChat"]
  GETTABLEKS R19 R20 K64 ["ChatServiceInstaller"]
  CALL R18 1 1
  CALL R18 0 0
  JUMP [+4]
  JUMPIFNOT R11 [+3]
  MOVE R18 R10
  LOADK R19 K65 ["NoLoadDefaultChat"]
  CALL R18 1 0
  GETIMPORT R18 K1 [game]
  LOADK R20 K43 ["DebugFreeCameraForAdmins"]
  NAMECALL R18 R18 K66 ["GetFastFlag"]
  CALL R18 2 1
  JUMPIFNOT R18 [+20]
  GETIMPORT R18 K13 [require]
  GETIMPORT R24 K1 [game]
  LOADK R26 K11 ["CoreGui"]
  NAMECALL R24 R24 K3 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R23 R24 K19 ["RobloxGui"]
  GETTABLEKS R22 R23 K25 ["Modules"]
  GETTABLEKS R21 R22 K26 ["Server"]
  GETTABLEKS R20 R21 K67 ["FreeCamera"]
  GETTABLEKS R19 R20 K68 ["FreeCameraInstaller"]
  CALL R18 1 1
  CALL R18 0 0
  GETIMPORT R18 K13 [require]
  GETIMPORT R24 K1 [game]
  LOADK R26 K11 ["CoreGui"]
  NAMECALL R24 R24 K3 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R23 R24 K19 ["RobloxGui"]
  GETTABLEKS R22 R23 K25 ["Modules"]
  GETTABLEKS R21 R22 K26 ["Server"]
  GETTABLEKS R20 R21 K69 ["ServerSound"]
  GETTABLEKS R19 R20 K70 ["SoundDispatcherInstaller"]
  CALL R18 1 1
  CALL R18 0 0
  GETIMPORT R18 K13 [require]
  GETIMPORT R24 K1 [game]
  LOADK R26 K11 ["CoreGui"]
  NAMECALL R24 R24 K3 ["GetService"]
  CALL R24 2 1
  GETTABLEKS R23 R24 K19 ["RobloxGui"]
  GETTABLEKS R22 R23 K25 ["Modules"]
  GETTABLEKS R21 R22 K26 ["Server"]
  GETTABLEKS R20 R21 K71 ["UGCValidation"]
  GETTABLEKS R19 R20 K72 ["UGCValidationFunctionInstaller"]
  CALL R18 1 1
  CALL R18 0 0
  GETIMPORT R18 K1 [game]
  LOADK R20 K73 ["TextChatService"]
  NAMECALL R18 R18 K3 ["GetService"]
  CALL R18 2 1
  GETTABLEKS R19 R18 K74 ["ChatVersion"]
  MOVE R20 R7
  CALL R20 0 1
  JUMPIF R20 [+4]
  GETIMPORT R20 K76 [Enum.ChatVersion.TextChatService]
  JUMPIFNOTEQ R19 R20 [+15]
  GETIMPORT R20 K13 [require]
  GETTABLEKS R23 R2 K14 ["Workspace"]
  GETTABLEKS R22 R23 K15 ["Packages"]
  GETTABLEKS R21 R22 K77 ["ExpChatServer"]
  CALL R20 1 1
  GETTABLEKS R21 R20 K78 ["mountServerApp"]
  NEWTABLE R22 0 0
  CALL R21 1 0
  NAMECALL R20 R0 K79 ["IsStudio"]
  CALL R20 1 1
  JUMPIFNOTEQKB R20 FALSE [+13]
  GETIMPORT R21 K76 [Enum.ChatVersion.TextChatService]
  JUMPIFNOTEQ R19 R21 [+3]
  LOADK R20 K80 ["textChatServiceChatVersionTextChatService"]
  JUMP [+1]
  LOADK R20 K81 ["textChatServiceChatVersionLegacy"]
  MOVE R23 R20
  LOADN R24 1
  NAMECALL R21 R1 K82 ["ReportCounter"]
  CALL R21 3 0
  GETIMPORT R20 K1 [game]
  LOADK R22 K83 ["VersionedFlags_Dev"]
  LOADB R23 0
  NAMECALL R20 R20 K31 ["DefineFastFlag"]
  CALL R20 3 1
  JUMPIFNOT R20 [+8]
  LOADK R22 K84 ["ServerCoreScripts/VersionedFlagTest"]
  GETIMPORT R24 K34 [script]
  GETTABLEKS R23 R24 K35 ["Parent"]
  NAMECALL R20 R4 K36 ["AddCoreScriptLocal"]
  CALL R20 3 0
  GETIMPORT R20 K13 [require]
  GETTABLEKS R24 R8 K25 ["Modules"]
  GETTABLEKS R23 R24 K44 ["Common"]
  GETTABLEKS R22 R23 K45 ["Flags"]
  GETTABLEKS R21 R22 K85 ["GetFFlagContactListEnabled"]
  CALL R20 1 1
  MOVE R21 R20
  CALL R21 0 1
  JUMPIFNOT R21 [+8]
  LOADK R23 K86 ["ServerCoreScripts/ServerContactList"]
  GETIMPORT R25 K34 [script]
  GETTABLEKS R24 R25 K35 ["Parent"]
  NAMECALL R21 R4 K36 ["AddCoreScriptLocal"]
  CALL R21 3 0
  LOADK R23 K87 ["ServerCoreScripts/PlayerViewCapability"]
  GETIMPORT R25 K34 [script]
  GETTABLEKS R24 R25 K35 ["Parent"]
  NAMECALL R21 R4 K36 ["AddCoreScriptLocal"]
  CALL R21 3 0
  GETIMPORT R21 K13 [require]
  GETTABLEKS R25 R8 K25 ["Modules"]
  GETTABLEKS R24 R25 K44 ["Common"]
  GETTABLEKS R23 R24 K45 ["Flags"]
  GETTABLEKS R22 R23 K88 ["GetFFlagEnableVoiceDefaultServerScript"]
  CALL R21 1 1
  MOVE R22 R21
  CALL R22 0 1
  JUMPIFNOT R22 [+8]
  LOADK R24 K89 ["ServerCoreScripts/VoiceDefault"]
  GETIMPORT R26 K34 [script]
  GETTABLEKS R25 R26 K35 ["Parent"]
  NAMECALL R22 R4 K36 ["AddCoreScriptLocal"]
  CALL R22 3 0
  GETIMPORT R23 K13 [require]
  GETIMPORT R29 K1 [game]
  LOADK R31 K11 ["CoreGui"]
  NAMECALL R29 R29 K3 ["GetService"]
  CALL R29 2 1
  GETTABLEKS R28 R29 K19 ["RobloxGui"]
  GETTABLEKS R27 R28 K25 ["Modules"]
  GETTABLEKS R26 R27 K26 ["Server"]
  GETTABLEKS R25 R26 K90 ["VR"]
  GETTABLEKS R24 R25 K91 ["VRAvatarGesturesServer"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K50 ["new"]
  CALL R22 0 0
  RETURN R0 0
