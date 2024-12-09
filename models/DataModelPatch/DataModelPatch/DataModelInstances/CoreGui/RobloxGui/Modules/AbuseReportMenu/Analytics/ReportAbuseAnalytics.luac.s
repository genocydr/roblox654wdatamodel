PROTO_0:
  FASTCALL2K ASSERT R2 K0 [+5]
  MOVE R4 R2
  LOADK R5 K0 ["Base context needs to be provided to ReportAbuseAnalytics"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  DUPTABLE R3 K6 [{"_eventStreamImpl", "_diagImpl", "_context"}]
  SETTABLEKS R0 R3 K3 ["_eventStreamImpl"]
  SETTABLEKS R1 R3 K4 ["_diagImpl"]
  SETTABLEKS R2 R3 K5 ["_context"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K8 [setmetatable]
  CALL R4 2 0
  RETURN R3 1

PROTO_1:
  GETTABLEKS R5 R0 K0 ["_context"]
  LOADK R6 K1 ["_"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["DiagCounters"]
  GETTABLEKS R7 R8 K3 ["SuccessfulSubmissionTime"]
  CONCAT R4 R5 R7
  GETTABLEKS R6 R0 K0 ["_context"]
  LOADK R7 K1 ["_"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["DiagCounters"]
  GETTABLEKS R8 R11 K4 ["SubmittedMethodOfAbuse"]
  LOADK R9 K1 ["_"]
  MOVE R10 R2
  CONCAT R5 R6 R10
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["Dictionary"]
  GETTABLEKS R6 R7 K6 ["join"]
  MOVE R7 R3
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  DUPTABLE R8 K9 [{"timeToComplete", "methodOfAbuse"}]
  SETTABLEKS R1 R8 K7 ["timeToComplete"]
  SETTABLEKS R2 R8 K8 ["methodOfAbuse"]
  CALL R6 2 1
  MOVE R3 R6
  GETTABLEKS R6 R0 K10 ["_diagImpl"]
  MOVE R8 R4
  MOVE R9 R1
  NAMECALL R6 R6 K11 ["reportStats"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K10 ["_diagImpl"]
  MOVE R8 R5
  LOADN R9 1
  NAMECALL R6 R6 K12 ["reportCounter"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K13 ["_eventStreamImpl"]
  GETTABLEKS R8 R0 K0 ["_context"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["ActionNames"]
  GETTABLEKS R9 R10 K15 ["FormSubmitted"]
  MOVE R10 R3
  NAMECALL R6 R6 K16 ["sendEventDeferred"]
  CALL R6 4 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R4 R0 K0 ["_context"]
  LOADK R5 K1 ["_"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["DiagCounters"]
  GETTABLEKS R6 R7 K3 ["AbandonedSubmissionTime"]
  CONCAT R3 R4 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["Dictionary"]
  GETTABLEKS R4 R5 K5 ["join"]
  MOVE R5 R2
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  DUPTABLE R6 K7 [{"timeToExit"}]
  SETTABLEKS R1 R6 K6 ["timeToExit"]
  CALL R4 2 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K8 ["_diagImpl"]
  MOVE R6 R3
  MOVE R7 R1
  NAMECALL R4 R4 K9 ["reportStats"]
  CALL R4 3 0
  GETTABLEKS R4 R0 K10 ["_eventStreamImpl"]
  GETTABLEKS R6 R0 K0 ["_context"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["ActionNames"]
  GETTABLEKS R7 R8 K12 ["FormAbandoned"]
  MOVE R8 R2
  NAMECALL R4 R4 K13 ["sendEventDeferred"]
  CALL R4 4 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["_eventStreamImpl"]
  GETTABLEKS R4 R0 K1 ["_context"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["ActionNames"]
  GETTABLEKS R5 R6 K3 ["FieldChanged"]
  MOVE R6 R1
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  NAMECALL R2 R2 K4 ["sendEventDeferred"]
  CALL R2 4 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_eventStreamImpl"]
  GETTABLEKS R4 R0 K1 ["_context"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["ActionNames"]
  GETTABLEKS R5 R6 K3 ["ButtonActivated"]
  MOVE R6 R1
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  NAMECALL R2 R2 K4 ["sendEventDeferred"]
  CALL R2 4 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R1 K0 ["interactionType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["SUBMIT"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["DiagCounters"]
  GETTABLEKS R3 R4 K3 ["AbandonedSubmissionTime"]
  JUMPIFNOT R2 [+24]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["DiagCounters"]
  GETTABLEKS R3 R4 K4 ["SuccessfulSubmissionTime"]
  GETTABLEKS R5 R0 K5 ["_context"]
  LOADK R6 K6 ["_"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["DiagCounters"]
  GETTABLEKS R7 R10 K7 ["SubmittedMethodOfAbuse"]
  LOADK R8 K6 ["_"]
  GETTABLEKS R9 R1 K8 ["inferredTypeofabuseSelection"]
  CONCAT R4 R5 R9
  GETTABLEKS R5 R0 K9 ["_diagImpl"]
  MOVE R7 R4
  LOADN R8 1
  NAMECALL R5 R5 K10 ["reportCounter"]
  CALL R5 3 0
  GETTABLEKS R5 R0 K5 ["_context"]
  LOADK R6 K6 ["_"]
  MOVE R7 R3
  CONCAT R4 R5 R7
  GETTABLEKS R5 R0 K9 ["_diagImpl"]
  MOVE R7 R4
  GETTABLEKS R8 R1 K11 ["timeSpentMs"]
  NAMECALL R5 R5 K12 ["reportStats"]
  CALL R5 3 0
  GETTABLEKS R5 R0 K13 ["_eventStreamImpl"]
  GETTABLEKS R7 R0 K5 ["_context"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K14 ["ActionNames"]
  GETTABLEKS R8 R9 K15 ["InGameAbuseReport"]
  MOVE R9 R1
  NAMECALL R5 R5 K16 ["sendEventDeferred"]
  CALL R5 4 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["_diagImpl"]
  GETTABLEKS R6 R0 K1 ["_context"]
  LOADK R7 K2 ["_"]
  MOVE R8 R1
  CONCAT R5 R6 R8
  LOADN R6 1
  NAMECALL R3 R3 K3 ["reportCounter"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K4 ["_eventStreamImpl"]
  GETTABLEKS R5 R0 K1 ["_context"]
  MOVE R6 R1
  MOVE R7 R2
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  NAMECALL R3 R3 K5 ["sendEventDeferred"]
  CALL R3 4 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["SessionConstants"]
  GETTABLEKS R5 R6 K1 ["StructuralIdentifier"]
  GETTABLEKS R4 R5 K2 ["AbuseReport"]
  NAMECALL R2 R2 K3 ["SessionExists"]
  CALL R2 2 1
  JUMPIF R2 [+25]
  GETUPVAL R3 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["SessionConstants"]
  GETTABLEKS R6 R7 K1 ["StructuralIdentifier"]
  GETTABLEKS R5 R6 K4 ["Level1"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["SessionConstants"]
  GETTABLEKS R7 R8 K1 ["StructuralIdentifier"]
  GETTABLEKS R6 R7 K2 ["AbuseReport"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["SessionConstants"]
  GETTABLEKS R8 R9 K1 ["StructuralIdentifier"]
  GETTABLEKS R7 R8 K2 ["AbuseReport"]
  NAMECALL R3 R3 K5 ["SetSession"]
  CALL R3 4 0
  GETUPVAL R3 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["SessionConstants"]
  GETTABLEKS R6 R7 K1 ["StructuralIdentifier"]
  GETTABLEKS R5 R6 K2 ["AbuseReport"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["SessionConstants"]
  GETTABLEKS R7 R8 K6 ["Metadata"]
  GETTABLEKS R6 R7 K7 ["EntryPoint"]
  NAMECALL R3 R3 K8 ["GetMetadata"]
  CALL R3 3 1
  JUMPIF R3 [+19]
  GETUPVAL R4 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["SessionConstants"]
  GETTABLEKS R7 R8 K1 ["StructuralIdentifier"]
  GETTABLEKS R6 R7 K2 ["AbuseReport"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["SessionConstants"]
  GETTABLEKS R8 R9 K6 ["Metadata"]
  GETTABLEKS R7 R8 K7 ["EntryPoint"]
  MOVE R8 R1
  NAMECALL R4 R4 K9 ["SetMetadata"]
  CALL R4 4 0
  GETUPVAL R4 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["SessionConstants"]
  GETTABLEKS R7 R8 K1 ["StructuralIdentifier"]
  GETTABLEKS R6 R7 K2 ["AbuseReport"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["SessionConstants"]
  GETTABLEKS R8 R9 K6 ["Metadata"]
  GETTABLEKS R7 R8 K10 ["DeleteOnGameLeave"]
  LOADK R8 K11 ["True"]
  NAMECALL R4 R4 K9 ["SetMetadata"]
  CALL R4 4 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["SessionConstants"]
  GETTABLEKS R4 R5 K1 ["StructuralIdentifier"]
  GETTABLEKS R3 R4 K2 ["AbuseReport"]
  NAMECALL R1 R1 K3 ["SessionExists"]
  CALL R1 2 1
  JUMPIFNOT R1 [+19]
  GETUPVAL R2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["SessionConstants"]
  GETTABLEKS R5 R6 K1 ["StructuralIdentifier"]
  GETTABLEKS R4 R5 K2 ["AbuseReport"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["SessionConstants"]
  GETTABLEKS R6 R7 K4 ["Metadata"]
  GETTABLEKS R5 R6 K5 ["EntryPoint"]
  NAMECALL R2 R2 K6 ["GetMetadata"]
  CALL R2 3 1
  RETURN R2 1
  LOADK R2 K7 [""]
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["SessionConstants"]
  GETTABLEKS R4 R5 K1 ["StructuralIdentifier"]
  GETTABLEKS R3 R4 K2 ["AbuseReport"]
  NAMECALL R1 R1 K3 ["SessionExists"]
  CALL R1 2 1
  JUMPIFNOT R1 [+11]
  GETUPVAL R2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["SessionConstants"]
  GETTABLEKS R5 R6 K1 ["StructuralIdentifier"]
  GETTABLEKS R4 R5 K2 ["AbuseReport"]
  NAMECALL R2 R2 K4 ["RemoveSession"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["SessionService"]
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
  NEWTABLE R3 16 0
  SETTABLEKS R3 R3 K9 ["__index"]
  DUPTABLE R4 K13 [{"LegacyMenu", "LegacySentPage", "NewMenu"}]
  GETIMPORT R5 K1 [game]
  LOADK R7 K14 ["ReportAnalyticsLegacyMenuContext"]
  LOADK R8 K15 ["ReportAbuseLegacyMenu"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K10 ["LegacyMenu"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K17 ["ReportAnalyticsLegacySentPageContext"]
  LOADK R8 K18 ["ReportAbuseLegacySentPage"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["LegacySentPage"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K19 ["ReportAnalyticsNewMenuContext"]
  LOADK R8 K20 ["ReportAbuseNewMenu"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K12 ["NewMenu"]
  SETTABLEKS R4 R3 K21 ["MenuContexts"]
  DUPTABLE R4 K25 [{"SuccessfulSubmissionTime", "AbandonedSubmissionTime", "SubmittedMethodOfAbuse"}]
  GETIMPORT R5 K1 [game]
  LOADK R7 K26 ["ReportAnalyticsSuccessfulSubmissionTimeStat"]
  LOADK R8 K22 ["SuccessfulSubmissionTime"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K22 ["SuccessfulSubmissionTime"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K27 ["ReportAnalyticsAbandonedSubmissionTimeStat"]
  LOADK R8 K23 ["AbandonedSubmissionTime"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K23 ["AbandonedSubmissionTime"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K28 ["ReportAnalyticsSubmittedMethodOfAbuseStat"]
  LOADK R8 K24 ["SubmittedMethodOfAbuse"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K24 ["SubmittedMethodOfAbuse"]
  SETTABLEKS R4 R3 K29 ["DiagCounters"]
  DUPTABLE R4 K35 [{"FieldChanged", "FormSubmitted", "FormAbandoned", "ButtonActivated", "InGameAbuseReport"}]
  GETIMPORT R5 K1 [game]
  LOADK R7 K36 ["ReportAnalyticsFieldChanged"]
  LOADK R8 K30 ["FieldChanged"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K30 ["FieldChanged"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K37 ["ReportAnalyticsFormSubmitted"]
  LOADK R8 K31 ["FormSubmitted"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K31 ["FormSubmitted"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K38 ["ReportAnalyticsFormAbandoned"]
  LOADK R8 K32 ["FormAbandoned"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K32 ["FormAbandoned"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K39 ["ReportAnalyticsButtonActivated"]
  LOADK R8 K33 ["ButtonActivated"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K33 ["ButtonActivated"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K40 ["ReportAnalyticsInGameAbuseReport"]
  LOADK R8 K34 ["InGameAbuseReport"]
  NAMECALL R5 R5 K16 ["DefineFastString"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K34 ["InGameAbuseReport"]
  SETTABLEKS R4 R3 K41 ["ActionNames"]
  DUPTABLE R4 K44 [{"StructuralIdentifier", "Metadata"}]
  DUPTABLE R5 K47 [{"Level1", "AbuseReport"}]
  LOADK R6 K48 ["level1"]
  SETTABLEKS R6 R5 K45 ["Level1"]
  LOADK R6 K46 ["AbuseReport"]
  SETTABLEKS R6 R5 K46 ["AbuseReport"]
  SETTABLEKS R5 R4 K42 ["StructuralIdentifier"]
  DUPTABLE R5 K51 [{"EntryPoint", "DeleteOnGameLeave"}]
  LOADK R6 K52 ["entryPoint"]
  SETTABLEKS R6 R5 K49 ["EntryPoint"]
  LOADK R6 K53 ["_deleteOnGameLeave"]
  SETTABLEKS R6 R5 K50 ["DeleteOnGameLeave"]
  SETTABLEKS R5 R4 K43 ["Metadata"]
  SETTABLEKS R4 R3 K54 ["SessionConstants"]
  DUPTABLE R4 K57 [{"SUBMIT", "ABANDON"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K55 ["SUBMIT"]
  LOADN R5 2
  SETTABLEKS R5 R4 K56 ["ABANDON"]
  DUPCLOSURE R5 K58 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K59 ["new"]
  DUPCLOSURE R5 K60 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K61 ["reportFormSubmitted"]
  DUPCLOSURE R5 K62 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K63 ["reportFormAbandoned"]
  DUPCLOSURE R5 K64 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K65 ["reportAnalyticsFieldChanged"]
  DUPCLOSURE R5 K66 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K67 ["reportButtonClick"]
  DUPCLOSURE R5 K68 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K69 ["reportInGameAbuseReportInteraction"]
  DUPCLOSURE R5 K70 [PROTO_6]
  SETTABLEKS R5 R3 K71 ["reportEventAndIncrement"]
  DUPCLOSURE R5 K72 [PROTO_7]
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K73 ["startAbuseReportSession"]
  DUPCLOSURE R5 K74 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K75 ["getAbuseReportSessionEntryPoint"]
  DUPCLOSURE R5 K76 [PROTO_9]
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K77 ["endAbuseReportSession"]
  RETURN R3 1
