PROTO_0:
  JUMPIF R0 [+1]
  GETUPVAL R0 0
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 ["Analytics impl must not be nil."]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  DUPTABLE R1 K4 [{"_impl"}]
  SETTABLEKS R0 R1 K3 ["_impl"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K6 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  RETURN R0 0

PROTO_2:
  DUPTABLE R0 K6 [{"SetRBXEvent", "SetRBXEventStream", "SendEventDeferred", "ReportCounter", "ReportStats", "ReportInfluxSeries"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["SetRBXEvent"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K1 ["SetRBXEventStream"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K2 ["SendEventDeferred"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K3 ["ReportCounter"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K4 ["ReportStats"]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K5 ["ReportInfluxSeries"]
  RETURN R0 1

PROTO_3:
  SETTABLEKS R1 R0 K0 ["_impl"]
  RETURN R0 0

PROTO_4:
  MOVE R6 R1
  LOADK R7 K0 ["-"]
  MOVE R8 R2
  CONCAT R5 R6 R8
  GETIMPORT R6 K2 [game]
  LOADK R8 K3 ["LuaVoiceChatAnalyticsUsePointsV2"]
  NAMECALL R6 R6 K4 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R0 K5 ["_impl"]
  MOVE R8 R5
  MOVE R9 R4
  GETIMPORT R10 K2 [game]
  LOADK R12 K6 ["LuaVoiceChatAnalyticsPointsThrottle"]
  NAMECALL R10 R10 K7 ["GetFastInt"]
  CALL R10 2 -1
  NAMECALL R6 R6 K8 ["ReportInfluxSeries"]
  CALL R6 -1 0
  GETIMPORT R6 K2 [game]
  LOADK R8 K9 ["LuaVoiceChatAnalyticsUseCounterV2"]
  NAMECALL R6 R6 K4 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+23]
  MOVE R6 R5
  JUMPIFNOT R3 [+4]
  MOVE R7 R6
  LOADK R8 K0 ["-"]
  MOVE R9 R3
  CONCAT R6 R7 R9
  MOVE R7 R6
  JUMPIFNOT R4 [+8]
  GETTABLEKS R8 R4 K10 ["result"]
  JUMPIFNOT R8 [+5]
  MOVE R8 R7
  LOADK R9 K0 ["-"]
  GETTABLEKS R10 R4 K10 ["result"]
  CONCAT R7 R8 R10
  GETTABLEKS R8 R0 K5 ["_impl"]
  MOVE R10 R7
  LOADN R11 1
  NAMECALL R8 R8 K11 ["ReportCounter"]
  CALL R8 3 0
  GETIMPORT R6 K2 [game]
  LOADK R8 K12 ["LuaVoiceChatAnalyticsUseEventsV2"]
  NAMECALL R6 R6 K4 ["GetFastFlag"]
  CALL R6 2 1
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R0 K5 ["_impl"]
  LOADK R8 K13 ["client"]
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R4
  NAMECALL R6 R6 K14 ["SendEventDeferred"]
  CALL R6 5 0
  RETURN R0 0

PROTO_5:
  LOADK R6 K0 ["voiceChat"]
  LOADK R7 K1 ["defaultChannelJoinResults"]
  MOVE R8 R2
  DUPTABLE R9 K5 [{"success", "result", "logLevel"}]
  SETTABLEKS R1 R9 K2 ["success"]
  SETTABLEKS R2 R9 K3 ["result"]
  JUMPIFNOT R3 [+2]
  MOVE R10 R3
  JUMP [+3]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["INFO"]
  SETTABLEKS R10 R9 K4 ["logLevel"]
  NAMECALL R4 R0 K7 ["_report"]
  CALL R4 5 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["LuaVoiceChatAnalyticsBanMessage"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K4 ["_impl"]
  LOADK R5 K5 ["voiceChat-reportBanMessage"]
  MOVE R6 R1
  CONCAT R4 R5 R6
  LOADN R5 1
  NAMECALL R2 R2 K6 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  LOADK R7 K0 ["voiceChat"]
  LOADK R8 K1 ["reportBanEvent"]
  LOADNIL R9
  DUPTABLE R10 K6 [{"eventType", "banReason", "userId", "voiceSessionId"}]
  SETTABLEKS R1 R10 K2 ["eventType"]
  SETTABLEKS R2 R10 K3 ["banReason"]
  SETTABLEKS R3 R10 K4 ["userId"]
  SETTABLEKS R4 R10 K5 ["voiceSessionId"]
  NAMECALL R5 R0 K7 ["_report"]
  CALL R5 5 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["LuaVoiceChatReconnectMissedSequence"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K4 ["_impl"]
  LOADK R3 K5 ["voiceChat-reconnectMissedSequence"]
  LOADN R4 1
  NAMECALL R1 R1 K6 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_impl"]
  LOADK R3 K1 ["voiceChat-outOfOrderSequence"]
  LOADN R4 1
  NAMECALL R1 R1 K2 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K1 ["voicechat-closednudge"]
  LOADN R6 1
  NAMECALL R3 R3 K2 ["ReportCounter"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K3 ["client"]
  LOADK R6 K4 ["voiceChat"]
  LOADK R7 K5 ["closedNudge"]
  DUPTABLE R8 K9 [{"userId", "voiceSessionId", "closeType"}]
  SETTABLEKS R1 R8 K6 ["userId"]
  SETTABLEKS R2 R8 K7 ["voiceSessionId"]
  LOADK R9 K10 ["CLOSED"]
  SETTABLEKS R9 R8 K8 ["closeType"]
  NAMECALL R3 R3 K11 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K1 ["voicechat-acknowledgednudge"]
  LOADN R6 1
  NAMECALL R3 R3 K2 ["ReportCounter"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K3 ["client"]
  LOADK R6 K4 ["voiceChat"]
  LOADK R7 K5 ["closedNudge"]
  DUPTABLE R8 K9 [{"userId", "voiceSessionId", "closeType"}]
  SETTABLEKS R1 R8 K6 ["userId"]
  SETTABLEKS R2 R8 K7 ["voiceSessionId"]
  LOADK R9 K10 ["ACKNOWLEDGED"]
  SETTABLEKS R9 R8 K8 ["closeType"]
  NAMECALL R3 R3 K11 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K1 ["voicechat-deniednudge"]
  LOADN R6 1
  NAMECALL R3 R3 K2 ["ReportCounter"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K3 ["client"]
  LOADK R6 K4 ["voiceChat"]
  LOADK R7 K5 ["closedNudge"]
  DUPTABLE R8 K9 [{"userId", "voiceSessionId", "closeType"}]
  SETTABLEKS R1 R8 K6 ["userId"]
  SETTABLEKS R2 R8 K7 ["voiceSessionId"]
  LOADK R9 K10 ["DENIED"]
  SETTABLEKS R9 R8 K8 ["closeType"]
  NAMECALL R3 R3 K11 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["_impl"]
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["voice"]
  LOADK R6 K3 ["voiceUIMuteUnmuteIndividual"]
  DUPTABLE R7 K10 [{"user_id", "client_session_id", "target_user_id", "channel_id", "context", "muted"}]
  GETTABLEKS R8 R1 K11 ["userId"]
  SETTABLEKS R8 R7 K4 ["user_id"]
  GETTABLEKS R8 R1 K12 ["clientSessionId"]
  SETTABLEKS R8 R7 K5 ["client_session_id"]
  GETTABLEKS R8 R1 K13 ["targetUserId"]
  SETTABLEKS R8 R7 K6 ["target_user_id"]
  GETTABLEKS R8 R1 K14 ["channelId"]
  SETTABLEKS R8 R7 K7 ["channel_id"]
  GETTABLEKS R8 R1 K8 ["context"]
  SETTABLEKS R8 R7 K8 ["context"]
  GETTABLEKS R8 R1 K9 ["muted"]
  SETTABLEKS R8 R7 K9 ["muted"]
  NAMECALL R2 R2 K15 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["_impl"]
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["voice"]
  LOADK R6 K3 ["voiceUIMuteUnmuteGroup"]
  DUPTABLE R7 K10 [{"user_id", "client_session_id", "channel_id", "context", "group_type", "muted"}]
  GETTABLEKS R8 R1 K11 ["userId"]
  SETTABLEKS R8 R7 K4 ["user_id"]
  GETTABLEKS R8 R1 K12 ["clientSessionId"]
  SETTABLEKS R8 R7 K5 ["client_session_id"]
  GETTABLEKS R8 R1 K13 ["channelId"]
  SETTABLEKS R8 R7 K6 ["channel_id"]
  GETTABLEKS R8 R1 K7 ["context"]
  SETTABLEKS R8 R7 K7 ["context"]
  GETTABLEKS R8 R1 K14 ["groupType"]
  SETTABLEKS R8 R7 K8 ["group_type"]
  GETTABLEKS R8 R1 K9 ["muted"]
  SETTABLEKS R8 R7 K9 ["muted"]
  NAMECALL R2 R2 K15 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R2 R0 K0 ["_impl"]
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["voice"]
  LOADK R6 K3 ["voiceUIMuteUnmuteSelf"]
  DUPTABLE R7 K9 [{"user_id", "client_session_id", "channel_id", "context", "muted"}]
  GETTABLEKS R8 R1 K10 ["userId"]
  SETTABLEKS R8 R7 K4 ["user_id"]
  GETTABLEKS R8 R1 K11 ["clientSessionId"]
  SETTABLEKS R8 R7 K5 ["client_session_id"]
  GETTABLEKS R8 R1 K12 ["channelId"]
  SETTABLEKS R8 R7 K6 ["channel_id"]
  GETTABLEKS R8 R1 K7 ["context"]
  SETTABLEKS R8 R7 K7 ["context"]
  GETTABLEKS R8 R1 K8 ["muted"]
  SETTABLEKS R8 R7 K8 ["muted"]
  NAMECALL R2 R2 K13 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_16:
  GETTABLEKS R5 R0 K0 ["_impl"]
  LOADK R7 K1 ["client"]
  LOADK R8 K2 ["voice"]
  LOADK R9 K3 ["joinVoiceButtonEvent"]
  DUPTABLE R10 K8 [{"eventType", "universeId", "placeId", "playSessionId"}]
  SETTABLEKS R1 R10 K4 ["eventType"]
  SETTABLEKS R2 R10 K5 ["universeId"]
  SETTABLEKS R3 R10 K6 ["placeId"]
  SETTABLEKS R4 R10 K7 ["playSessionId"]
  NAMECALL R5 R5 K9 ["SendEventDeferred"]
  CALL R5 5 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R6 R0 K0 ["_impl"]
  LOADK R8 K1 ["client"]
  LOADK R9 K2 ["voice"]
  LOADK R10 K3 ["joinVoiceButtonEvent"]
  DUPTABLE R11 K9 [{"eventType", "universeId", "placeId", "playSessionId", "voiceSessionId"}]
  SETTABLEKS R1 R11 K4 ["eventType"]
  SETTABLEKS R2 R11 K5 ["universeId"]
  SETTABLEKS R3 R11 K6 ["placeId"]
  SETTABLEKS R4 R11 K7 ["playSessionId"]
  SETTABLEKS R5 R11 K8 ["voiceSessionId"]
  NAMECALL R6 R6 K10 ["SendEventDeferred"]
  CALL R6 5 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R6 R0 K0 ["_impl"]
  LOADK R8 K1 ["client"]
  LOADK R9 K2 ["voice"]
  LOADK R10 K3 ["leaveVoiceButtonEvent"]
  DUPTABLE R11 K9 [{"eventType", "universeId", "placeId", "playSessionId", "voiceSessionId"}]
  SETTABLEKS R1 R11 K4 ["eventType"]
  SETTABLEKS R2 R11 K5 ["universeId"]
  SETTABLEKS R3 R11 K6 ["placeId"]
  SETTABLEKS R4 R11 K7 ["playSessionId"]
  SETTABLEKS R5 R11 K8 ["voiceSessionId"]
  NAMECALL R6 R6 K10 ["SendEventDeferred"]
  CALL R6 5 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R6 R0 K0 ["_impl"]
  LOADK R8 K1 ["client"]
  LOADK R9 K2 ["voiceChat"]
  LOADK R10 K3 ["inExpConsentModalEvent"]
  DUPTABLE R11 K9 [{"eventType", "entry", "universeId", "placeId", "playSessionId"}]
  SETTABLEKS R1 R11 K4 ["eventType"]
  SETTABLEKS R2 R11 K5 ["entry"]
  SETTABLEKS R3 R11 K6 ["universeId"]
  SETTABLEKS R4 R11 K7 ["placeId"]
  SETTABLEKS R5 R11 K8 ["playSessionId"]
  NAMECALL R6 R6 K10 ["SendEventDeferred"]
  CALL R6 5 0
  RETURN R0 0

PROTO_20:
  LOADN R8 2
  LENGTH R10 R5
  SUBK R9 R10 K0 [1]
  FASTCALL3 STRING_SUB R5 R8 R9
  MOVE R7 R5
  GETIMPORT R6 K3 [string.sub]
  CALL R6 3 1
  GETTABLEKS R7 R0 K4 ["_impl"]
  LOADK R9 K5 ["client"]
  LOADK R10 K6 ["voiceChat"]
  LOADK R11 K7 ["devicePermissionsModalEvent"]
  DUPTABLE R12 K13 [{"eventType", "universeId", "placeId", "playSessionId", "voiceSessionId"}]
  SETTABLEKS R1 R12 K8 ["eventType"]
  SETTABLEKS R3 R12 K9 ["universeId"]
  SETTABLEKS R4 R12 K10 ["placeId"]
  SETTABLEKS R6 R12 K11 ["playSessionId"]
  SETTABLEKS R2 R12 K12 ["voiceSessionId"]
  NAMECALL R7 R7 K14 ["SendEventDeferred"]
  CALL R7 5 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R3 R0 K0 ["_impl"]
  LOADK R5 K1 ["client"]
  LOADK R6 K2 ["voiceChat"]
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R3 R3 K3 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["LuaVoiceChatAnalyticsPointsThrottle"]
  LOADN R4 0
  NAMECALL R1 R1 K5 ["DefineFastInt"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["LuaVoiceChatAnalyticsUsePointsV2"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K8 ["LuaVoiceChatAnalyticsUseCounterV2"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K9 ["LuaVoiceChatAnalyticsUseEventsV2"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K10 ["LuaVoiceChatAnalyticsBanMessage"]
  LOADB R4 1
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K11 ["LuaVoiceChatReconnectMissedSequence"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R1 K12 ["__index"]
  LOADK R2 K13 ["info"]
  SETTABLEKS R2 R1 K14 ["INFO"]
  LOADK R2 K15 ["warning"]
  SETTABLEKS R2 R1 K16 ["WARNING"]
  LOADK R2 K17 ["error"]
  SETTABLEKS R2 R1 K18 ["ERROR"]
  DUPCLOSURE R2 K19 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K20 ["new"]
  DUPCLOSURE R2 K21 [PROTO_1]
  DUPCLOSURE R3 K22 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K23 ["stubService"]
  DUPCLOSURE R3 K24 [PROTO_3]
  SETTABLEKS R3 R1 K25 ["setImpl"]
  DUPCLOSURE R3 K26 [PROTO_4]
  SETTABLEKS R3 R1 K27 ["_report"]
  DUPCLOSURE R3 K28 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R3 R1 K29 ["reportVoiceChatJoinResult"]
  DUPCLOSURE R3 K30 [PROTO_6]
  SETTABLEKS R3 R1 K31 ["reportBanMessageEvent"]
  DUPCLOSURE R3 K32 [PROTO_7]
  SETTABLEKS R3 R1 K33 ["reportBanMessageEventV2"]
  DUPCLOSURE R3 K34 [PROTO_8]
  SETTABLEKS R3 R1 K35 ["reportReconnectDueToMissedSequence"]
  DUPCLOSURE R3 K36 [PROTO_9]
  SETTABLEKS R3 R1 K37 ["reportOutOfOrderSequence"]
  DUPCLOSURE R3 K38 [PROTO_10]
  SETTABLEKS R3 R1 K39 ["reportClosedNudge"]
  DUPCLOSURE R3 K40 [PROTO_11]
  SETTABLEKS R3 R1 K41 ["reportAcknowledgedNudge"]
  DUPCLOSURE R3 K42 [PROTO_12]
  SETTABLEKS R3 R1 K43 ["reportDeniedNudge"]
  DUPCLOSURE R3 K44 [PROTO_13]
  SETTABLEKS R3 R1 K45 ["reportVoiceMuteIndividual"]
  DUPCLOSURE R3 K46 [PROTO_14]
  SETTABLEKS R3 R1 K47 ["reportVoiceMuteGroup"]
  DUPCLOSURE R3 K48 [PROTO_15]
  SETTABLEKS R3 R1 K49 ["reportVoiceMuteSelf"]
  DUPCLOSURE R3 K50 [PROTO_16]
  SETTABLEKS R3 R1 K51 ["reportJoinVoiceButtonEvent"]
  DUPCLOSURE R3 K52 [PROTO_17]
  SETTABLEKS R3 R1 K53 ["reportJoinVoiceButtonEventWithVoiceSessionId"]
  DUPCLOSURE R3 K54 [PROTO_18]
  SETTABLEKS R3 R1 K55 ["reportLeaveVoiceButtonEvent"]
  DUPCLOSURE R3 K56 [PROTO_19]
  SETTABLEKS R3 R1 K57 ["reportInExpConsent"]
  DUPCLOSURE R3 K58 [PROTO_20]
  SETTABLEKS R3 R1 K59 ["reportDevicePermissionsModalEvent"]
  DUPCLOSURE R3 K60 [PROTO_21]
  SETTABLEKS R3 R1 K61 ["reportConnectDisconnectEvents"]
  RETURN R1 1
