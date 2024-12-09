PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"voiceEnabled"}]
  GETTABLEKS R5 R1 K4 ["enabled"]
  SETTABLEKS R5 R4 K2 ["voiceEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["userId"]
  GETTABLE R3 R0 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["HIDDEN"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  NEWTABLE R6 1 0
  SETTABLE R3 R6 R2
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["userId"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["None"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["newParticipants"]
  GETIMPORT R3 K3 [table.clone]
  MOVE R4 R0
  CALL R3 1 1
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["INACTIVE"]
  GETTABLEKS R10 R8 K5 ["subscriptionCompleted"]
  JUMPIF R10 [+4]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["CONNECTING"]
  JUMP [+20]
  GETTABLEKS R10 R8 K7 ["isMutedLocally"]
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["LOCAL_MUTED"]
  JUMP [+13]
  GETTABLEKS R10 R8 K9 ["isMuted"]
  JUMPIFNOT R10 [+4]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K10 ["MUTED"]
  JUMP [+6]
  GETTABLEKS R10 R8 K11 ["isSignalActive"]
  JUMPIFNOT R10 [+3]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["TALKING"]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R11 R7
  GETIMPORT R10 K14 [tostring]
  CALL R10 1 1
  SETTABLE R9 R3 R10
  FORGLOOP R4 2 [-37]
  RETURN R3 1

PROTO_4:
  GETTABLEKS R3 R1 K0 ["userId"]
  GETTABLE R2 R0 R3
  JUMPIFNOT R2 [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Dictionary"]
  GETTABLEKS R2 R3 K2 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K0 ["userId"]
  GETTABLEKS R6 R1 K3 ["newState"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1
  RETURN R0 1

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
  GETTABLEKS R6 R2 K9 ["Modules"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  GETTABLEKS R4 R5 K11 ["FFlagEnableVoiceChatStorybookFix"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Rodux"]
  CALL R5 1 1
  LOADNIL R6
  MOVE R7 R3
  CALL R7 0 1
  JUMPIFNOT R7 [+14]
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R0 K15 ["Workspace"]
  GETTABLEKS R10 R11 K12 ["Packages"]
  GETTABLEKS R9 R10 K16 ["VoiceChat"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["Constants"]
  GETTABLEKS R6 R7 K18 ["VOICE_STATE"]
  JUMP [+15]
  GETIMPORT R8 K8 [require]
  GETIMPORT R12 K20 [script]
  GETTABLEKS R11 R12 K21 ["Parent"]
  GETTABLEKS R10 R11 K21 ["Parent"]
  GETTABLEKS R9 R10 K22 ["VoiceChatServiceManager"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K23 ["default"]
  GETTABLEKS R6 R7 K18 ["VOICE_STATE"]
  GETIMPORT R7 K8 [require]
  GETIMPORT R12 K20 [script]
  GETTABLEKS R11 R12 K21 ["Parent"]
  GETTABLEKS R10 R11 K21 ["Parent"]
  GETTABLEKS R9 R10 K24 ["Actions"]
  GETTABLEKS R8 R9 K25 ["ParticipantAdded"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETIMPORT R13 K20 [script]
  GETTABLEKS R12 R13 K21 ["Parent"]
  GETTABLEKS R11 R12 K21 ["Parent"]
  GETTABLEKS R10 R11 K24 ["Actions"]
  GETTABLEKS R9 R10 K26 ["ParticipantRemoved"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETIMPORT R14 K20 [script]
  GETTABLEKS R13 R14 K21 ["Parent"]
  GETTABLEKS R12 R13 K21 ["Parent"]
  GETTABLEKS R11 R12 K24 ["Actions"]
  GETTABLEKS R10 R11 K27 ["VoiceStateChanged"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETIMPORT R15 K20 [script]
  GETTABLEKS R14 R15 K21 ["Parent"]
  GETTABLEKS R13 R14 K21 ["Parent"]
  GETTABLEKS R12 R13 K24 ["Actions"]
  GETTABLEKS R11 R12 K28 ["VoiceEnabledChanged"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETIMPORT R16 K20 [script]
  GETTABLEKS R15 R16 K21 ["Parent"]
  GETTABLEKS R14 R15 K21 ["Parent"]
  GETTABLEKS R13 R14 K24 ["Actions"]
  GETTABLEKS R12 R13 K29 ["ParticipantsChanged"]
  CALL R11 1 1
  GETTABLEKS R12 R5 K30 ["createReducer"]
  NEWTABLE R13 0 0
  NEWTABLE R14 8 0
  GETTABLEKS R15 R10 K31 ["name"]
  DUPCLOSURE R16 K32 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R7 K31 ["name"]
  NEWCLOSURE R16 P1
  CAPTURE REF R6
  CAPTURE VAL R4
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R8 K31 ["name"]
  DUPCLOSURE R16 K33 [PROTO_2]
  CAPTURE VAL R4
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R11 K31 ["name"]
  NEWCLOSURE R16 P3
  CAPTURE REF R6
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R9 K31 ["name"]
  DUPCLOSURE R16 K34 [PROTO_4]
  CAPTURE VAL R4
  SETTABLE R16 R14 R15
  CALL R12 2 1
  CLOSEUPVALS R6
  RETURN R12 1