PROTO_0:
  DUPTABLE R1 K1 [{"data"}]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["data"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R5 R2 K0 ["abuserUserId"]
  NAMECALL R3 R0 K1 ["GetPlayerByUserId"]
  CALL R3 2 1
  LOADNIL R4
  JUMPIFNOT R3 [+14]
  GETTABLEKS R5 R3 K2 ["Character"]
  JUMPIFNOT R5 [+11]
  GETTABLEKS R6 R3 K2 ["Character"]
  GETTABLEKS R5 R6 K3 ["PrimaryPart"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R3 K2 ["Character"]
  GETTABLEKS R5 R6 K3 ["PrimaryPart"]
  GETTABLEKS R4 R5 K4 ["Position"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["Dictionary"]
  GETTABLEKS R6 R7 K6 ["values"]
  GETTABLEKS R7 R1 K7 ["participants"]
  CALL R6 1 1
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOT R4 [+9]
  GETUPVAL R7 1
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R4
  LOADN R11 160
  LOADNIL R12
  MOVE R13 R3
  CALL R7 6 1
  LENGTH R6 R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["List"]
  GETTABLEKS R7 R8 K9 ["map"]
  GETTABLEKS R8 R2 K10 ["sortedPlayerListUserIds"]
  DUPCLOSURE R9 K11 [PROTO_0]
  CALL R7 2 1
  DUPTABLE R8 K13 [{"tags"}]
  DUPTABLE R9 K26 [{"ENTRY_POINT", "SUBMITTER_USER_ID", "REPORT_TARGET_USER_ID", "REPORTED_ABUSE_CATEGORY", "REPORTER_COMMENT", "IS_PLACE_VOICE_ENABLED", "VOICE_USER_IDS_FROM_CLIENT", "IN_EXP_MENU_OPENED_UNIX_MILLI", "VOICE_CHANNEL_ID", "VOICE_USER_COUNT", "VOICE_IMPACTED_USER_COUNT", "REPORTED_ABUSE_VECTOR"}]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  LOADK R13 K31 ["in-experience"]
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K14 ["ENTRY_POINT"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETTABLEKS R14 R2 K32 ["localUserId"]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K34 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K15 ["SUBMITTER_USER_ID"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETTABLEKS R14 R2 K0 ["abuserUserId"]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K34 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K16 ["REPORT_TARGET_USER_ID"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETTABLEKS R13 R2 K35 ["abuseReason"]
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K17 ["REPORTED_ABUSE_CATEGORY"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETTABLEKS R13 R2 K36 ["abuseComment"]
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K18 ["REPORTER_COMMENT"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  LOADK R13 K37 ["true"]
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K19 ["IS_PLACE_VOICE_ENABLED"]
  DUPTABLE R10 K28 [{"valueList"}]
  SETTABLEKS R7 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K20 ["VOICE_USER_IDS_FROM_CLIENT"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETTABLEKS R14 R2 K38 ["inExpMenuOpenedUnixMilli"]
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K34 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K21 ["IN_EXP_MENU_OPENED_UNIX_MILLI"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETIMPORT R15 K40 [game]
  LOADK R17 K41 ["VoiceChatServiceExposesChannelId"]
  NAMECALL R15 R15 K42 ["GetEngineFeature"]
  CALL R15 2 1
  JUMPIFNOT R15 [+6]
  GETTABLEKS R14 R1 K43 ["service"]
  NAMECALL R14 R14 K44 ["GetChannelId"]
  CALL R14 1 1
  JUMP [+5]
  GETTABLEKS R14 R1 K43 ["service"]
  NAMECALL R14 R14 K45 ["GetGroupId"]
  CALL R14 1 1
  FASTCALL1 TOSTRING R14 [+2]
  GETIMPORT R13 K34 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K22 ["VOICE_CHANNEL_ID"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R14 R5
  GETIMPORT R13 K34 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K23 ["VOICE_USER_COUNT"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R14 R6
  GETIMPORT R13 K34 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K24 ["VOICE_IMPACTED_USER_COUNT"]
  DUPTABLE R10 K28 [{"valueList"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K30 [{"data"}]
  GETTABLEKS R13 R2 K46 ["abuseVector"]
  SETTABLEKS R13 R12 K29 ["data"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K27 ["valueList"]
  SETTABLEKS R10 R9 K25 ["REPORTED_ABUSE_VECTOR"]
  SETTABLEKS R9 R8 K12 ["tags"]
  GETUPVAL R9 2
  MOVE R11 R8
  NAMECALL R9 R9 K47 ["JSONEncode"]
  CALL R9 2 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["VoiceChatServiceManager"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K10 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K13 ["VoiceUsersByProximity"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["getSortedPlayers"]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R0
  RETURN R6 1
