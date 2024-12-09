PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+11]
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K3 ["Settings"]
  GETTABLEKS R1 R2 K4 ["SettingsHub"]
  CALL R0 1 1
  JUMP [+1]
  LOADNIL R0
  GETUPVAL R1 2
  MOVE R3 R0
  NAMECALL R1 R1 K5 ["JoinVoice"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R1 K0 ["icons/controls/publicAudioJoin"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  SETUPVAL R0 0
  GETUPVAL R1 1
  JUMPIF R1 [+27]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K1 ["Available"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["availability"]
  NAMECALL R1 R1 K3 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K4 ["Unavailable"]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K2 ["availability"]
  NAMECALL R1 R1 K5 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Suspended"]
  JUMPIFNOTEQ R0 R1 [+46]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+36]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K2 ["Available"]
  SETUPVAL R1 3
  GETUPVAL R2 4
  JUMPIF R2 [+105]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["AvailabilitySignal"]
  GETTABLEKS R2 R3 K2 ["Available"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K3 ["availability"]
  NAMECALL R2 R2 K4 ["available"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["AvailabilitySignal"]
  GETTABLEKS R2 R3 K5 ["Unavailable"]
  JUMPIFNOTEQ R1 R2 [+85]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K3 ["availability"]
  NAMECALL R2 R2 K6 ["unavailable"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K3 ["availability"]
  NAMECALL R1 R1 K4 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["Joined"]
  JUMPIFNOTEQ R0 R1 [+66]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+36]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K5 ["Unavailable"]
  SETUPVAL R1 3
  GETUPVAL R2 4
  JUMPIF R2 [+34]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["AvailabilitySignal"]
  GETTABLEKS R2 R3 K2 ["Available"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K3 ["availability"]
  NAMECALL R2 R2 K4 ["available"]
  CALL R2 1 0
  JUMP [+20]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["AvailabilitySignal"]
  GETTABLEKS R2 R3 K5 ["Unavailable"]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K3 ["availability"]
  NAMECALL R2 R2 K6 ["unavailable"]
  CALL R2 1 0
  JUMP [+6]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K3 ["availability"]
  NAMECALL R1 R1 K6 ["unavailable"]
  CALL R1 1 0
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K8 ["inExpUpsellEntrypoint"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K9 ["IN_EXP_UPSELL_ENTRYPOINTS"]
  GETTABLEKS R2 R3 K10 ["JOIN_VOICE"]
  JUMPIFNOTEQ R1 R2 [+12]
  GETUPVAL R1 6
  NAMECALL R1 R1 K11 ["ToggleMic"]
  CALL R1 1 0
  GETUPVAL R1 6
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K12 ["VoiceConsentAcceptedToast"]
  NAMECALL R1 R1 K13 ["showPrompt"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 1
  JUMPIFEQ R2 R1 [+49]
  SETUPVAL R1 1
  GETUPVAL R2 1
  JUMPIFNOT R2 [+14]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["availability"]
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 1 1
  SETUPVAL R2 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["availability"]
  NAMECALL R2 R2 K2 ["unavailable"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 2
  SETUPVAL R2 2
  GETUPVAL R3 1
  JUMPIF R3 [+27]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["AvailabilitySignal"]
  GETTABLEKS R3 R4 K4 ["Available"]
  JUMPIFNOTEQ R2 R3 [+8]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K0 ["availability"]
  NAMECALL R3 R3 K5 ["available"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["AvailabilitySignal"]
  GETTABLEKS R3 R4 K6 ["Unavailable"]
  JUMPIFNOTEQ R2 R3 [+7]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K0 ["availability"]
  NAMECALL R3 R3 K2 ["unavailable"]
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ShouldShowJoinVoice"]
  CALL R0 1 1
  JUMPIFNOT R0 [+44]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+36]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["AvailabilitySignal"]
  GETTABLEKS R0 R1 K2 ["Available"]
  SETUPVAL R0 3
  GETUPVAL R1 4
  JUMPIF R1 [+34]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K2 ["Available"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K3 ["availability"]
  NAMECALL R1 R1 K4 ["available"]
  CALL R1 1 0
  JUMP [+20]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K5 ["Unavailable"]
  JUMPIFNOTEQ R0 R1 [+14]
  GETUPVAL R2 5
  GETTABLEKS R1 R2 K3 ["availability"]
  NAMECALL R1 R1 K6 ["unavailable"]
  CALL R1 1 0
  JUMP [+6]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K3 ["availability"]
  NAMECALL R0 R0 K4 ["available"]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["VoiceJoinProgressChanged"]
  GETTABLEKS R0 R1 K8 ["Event"]
  GETUPVAL R2 6
  NAMECALL R0 R0 K9 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+36]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AvailabilitySignal"]
  GETTABLEKS R0 R1 K1 ["Unavailable"]
  SETUPVAL R0 2
  GETUPVAL R1 3
  JUMPIF R1 [+34]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K2 ["Available"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K3 ["availability"]
  NAMECALL R1 R1 K4 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K1 ["Unavailable"]
  JUMPIFNOTEQ R0 R1 [+14]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K3 ["availability"]
  NAMECALL R1 R1 K5 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K3 ["availability"]
  NAMECALL R0 R0 K5 ["unavailable"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+36]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["AvailabilitySignal"]
  GETTABLEKS R0 R1 K1 ["Available"]
  SETUPVAL R0 2
  GETUPVAL R1 3
  JUMPIF R1 [+34]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K1 ["Available"]
  JUMPIFNOTEQ R0 R1 [+8]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["availability"]
  NAMECALL R1 R1 K3 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AvailabilitySignal"]
  GETTABLEKS R1 R2 K4 ["Unavailable"]
  JUMPIFNOTEQ R0 R1 [+14]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["availability"]
  NAMECALL R1 R1 K5 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K2 ["availability"]
  NAMECALL R0 R0 K3 ["available"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  LOADK R4 K8 ["RobloxGui"]
  NAMECALL R2 R1 K9 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K10 ["CorePackages"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R8 R2 K13 ["Modules"]
  GETTABLEKS R7 R8 K14 ["VoiceChat"]
  GETTABLEKS R6 R7 K15 ["VoiceChatServiceManager"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K16 ["default"]
  GETIMPORT R5 K12 [require]
  GETTABLEKS R8 R2 K13 ["Modules"]
  GETTABLEKS R7 R8 K14 ["VoiceChat"]
  GETTABLEKS R6 R7 K17 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R0 K18 ["Integrations"]
  GETTABLEKS R7 R8 K19 ["CommonIcon"]
  CALL R6 1 1
  GETTABLEKS R7 R5 K20 ["VOICE_JOIN_PROGRESS"]
  GETIMPORT R8 K12 [require]
  GETTABLEKS R11 R2 K13 ["Modules"]
  GETTABLEKS R10 R11 K21 ["VoiceChatPrompt"]
  GETTABLEKS R9 R10 K22 ["PromptType"]
  CALL R8 1 1
  GETIMPORT R11 K12 [require]
  GETTABLEKS R14 R3 K23 ["Workspace"]
  GETTABLEKS R13 R14 K24 ["Packages"]
  GETTABLEKS R12 R13 K25 ["CrossExperience"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K26 ["Utils"]
  GETTABLEKS R9 R10 K27 ["observeCurrentContextId"]
  GETIMPORT R14 K12 [require]
  GETTABLEKS R17 R3 K23 ["Workspace"]
  GETTABLEKS R16 R17 K24 ["Packages"]
  GETTABLEKS R15 R16 K25 ["CrossExperience"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K17 ["Constants"]
  GETTABLEKS R12 R13 K28 ["AUDIO_FOCUS_MANAGEMENT"]
  GETTABLEKS R11 R12 K29 ["CEV"]
  GETTABLEKS R10 R11 K30 ["CONTEXT_ID"]
  GETIMPORT R12 K12 [require]
  GETTABLEKS R15 R3 K23 ["Workspace"]
  GETTABLEKS R14 R15 K24 ["Packages"]
  GETTABLEKS R13 R14 K31 ["SharedFlags"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K32 ["GetFFlagEnableJoinVoiceOnUnibar"]
  GETIMPORT R12 K12 [require]
  GETTABLEKS R15 R2 K13 ["Modules"]
  GETTABLEKS R14 R15 K33 ["Flags"]
  GETTABLEKS R13 R14 K34 ["GetFFlagEnableConnectDisconnectInSettingsAndChrome"]
  CALL R12 1 1
  GETIMPORT R14 K12 [require]
  GETTABLEKS R17 R3 K23 ["Workspace"]
  GETTABLEKS R16 R17 K24 ["Packages"]
  GETTABLEKS R15 R16 K31 ["SharedFlags"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K35 ["GetFFlagIntegratePhoneUpsellJoinVoice"]
  GETIMPORT R14 K5 [game]
  LOADK R16 K36 ["JoinVoiceHideWhenPartyVoiceFocused"]
  LOADB R17 0
  NAMECALL R14 R14 K37 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R15 K12 [require]
  GETTABLEKS R16 R0 K38 ["Service"]
  CALL R15 1 1
  LOADB R16 0
  GETTABLEKS R18 R15 K39 ["AvailabilitySignal"]
  GETTABLEKS R17 R18 K40 ["Unavailable"]
  LOADNIL R18
  DUPTABLE R21 K46 [{"initialAvailability", "id", "label", "activated", "components"}]
  GETTABLEKS R23 R15 K39 ["AvailabilitySignal"]
  GETTABLEKS R22 R23 K40 ["Unavailable"]
  SETTABLEKS R22 R21 K41 ["initialAvailability"]
  LOADK R22 K47 ["join_voice"]
  SETTABLEKS R22 R21 K42 ["id"]
  LOADK R22 K48 ["CoreScripts.TopBar.JoinVoice"]
  SETTABLEKS R22 R21 K43 ["label"]
  DUPCLOSURE R22 K49 [PROTO_0]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R22 R21 K44 ["activated"]
  DUPTABLE R22 K51 [{"Icon"}]
  DUPCLOSURE R23 K52 [PROTO_1]
  CAPTURE VAL R6
  SETTABLEKS R23 R22 K50 ["Icon"]
  SETTABLEKS R22 R21 K45 ["components"]
  NAMECALL R19 R15 K53 ["register"]
  CALL R19 2 1
  MOVE R18 R19
  NEWCLOSURE R19 P2
  CAPTURE REF R17
  CAPTURE REF R16
  CAPTURE VAL R15
  CAPTURE REF R18
  NEWCLOSURE R20 P3
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE REF R17
  CAPTURE REF R16
  CAPTURE REF R18
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  JUMPIFNOT R14 [+8]
  MOVE R21 R9
  NEWCLOSURE R22 P4
  CAPTURE VAL R10
  CAPTURE REF R16
  CAPTURE REF R17
  CAPTURE REF R18
  CAPTURE VAL R15
  CALL R21 1 0
  MOVE R21 R11
  CALL R21 0 1
  JUMPIFNOT R21 [+108]
  GETIMPORT R21 K5 [game]
  LOADK R23 K54 ["VoiceChatSupported"]
  NAMECALL R21 R21 K55 ["GetEngineFeature"]
  CALL R21 2 1
  JUMPIFNOT R21 [+101]
  MOVE R21 R13
  CALL R21 0 1
  JUMPIFNOT R21 [+12]
  GETIMPORT R21 K58 [task.spawn]
  NEWCLOSURE R22 P5
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE REF R17
  CAPTURE REF R16
  CAPTURE REF R18
  CAPTURE VAL R20
  CALL R21 1 0
  JUMP [+48]
  NAMECALL R21 R4 K59 ["ShouldShowJoinVoice"]
  CALL R21 1 1
  JUMPIFNOT R21 [+36]
  JUMPIFNOT R14 [+30]
  GETTABLEKS R22 R15 K39 ["AvailabilitySignal"]
  GETTABLEKS R21 R22 K60 ["Available"]
  MOVE R17 R21
  JUMPIF R16 [+29]
  GETTABLEKS R23 R15 K39 ["AvailabilitySignal"]
  GETTABLEKS R22 R23 K60 ["Available"]
  JUMPIFNOTEQ R21 R22 [+7]
  GETTABLEKS R22 R18 K61 ["availability"]
  NAMECALL R22 R22 K62 ["available"]
  CALL R22 1 0
  JUMP [+17]
  GETTABLEKS R23 R15 K39 ["AvailabilitySignal"]
  GETTABLEKS R22 R23 K40 ["Unavailable"]
  JUMPIFNOTEQ R21 R22 [+12]
  GETTABLEKS R22 R18 K61 ["availability"]
  NAMECALL R22 R22 K63 ["unavailable"]
  CALL R22 1 0
  JUMP [+5]
  GETTABLEKS R21 R18 K61 ["availability"]
  NAMECALL R21 R21 K62 ["available"]
  CALL R21 1 0
  GETTABLEKS R22 R4 K64 ["VoiceJoinProgressChanged"]
  GETTABLEKS R21 R22 K65 ["Event"]
  MOVE R23 R20
  NAMECALL R21 R21 K66 ["Connect"]
  CALL R21 2 0
  MOVE R21 R12
  CALL R21 0 1
  JUMPIFNOT R21 [+27]
  GETTABLEKS R22 R4 K67 ["showVoiceUI"]
  GETTABLEKS R21 R22 K65 ["Event"]
  NEWCLOSURE R23 P6
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE REF R17
  CAPTURE REF R16
  CAPTURE REF R18
  NAMECALL R21 R21 K66 ["Connect"]
  CALL R21 2 0
  GETTABLEKS R22 R4 K68 ["hideVoiceUI"]
  GETTABLEKS R21 R22 K65 ["Event"]
  NEWCLOSURE R23 P7
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE REF R17
  CAPTURE REF R16
  CAPTURE REF R18
  NAMECALL R21 R21 K66 ["Connect"]
  CALL R21 2 0
  JUMP [+8]
  GETTABLEKS R22 R4 K64 ["VoiceJoinProgressChanged"]
  GETTABLEKS R21 R22 K65 ["Event"]
  MOVE R23 R20
  NAMECALL R21 R21 K66 ["Connect"]
  CALL R21 2 0
  CLOSEUPVALS R16
  RETURN R18 1
