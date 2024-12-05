PROTO_0:
  JUMPIF R0 [+2]
  LOADK R1 K0 [""]
  RETURN R1 1
  NEWTABLE R1 0 1
  GETTABLEKS R2 R0 K1 ["creatorType"]
  SETLIST R1 R2 1 [1]
  GETTABLEKS R2 R0 K2 ["isTemplates"]
  JUMPIFNOT R2 [+17]
  FASTCALL2K TABLE_INSERT R1 K3 [+5]
  MOVE R3 R1
  LOADK R4 K3 ["templates"]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETTABLEKS R5 R0 K8 ["search"]
  ORK R4 R5 K7 ["All"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  JUMP [+21]
  FASTCALL2K TABLE_INSERT R1 K9 [+5]
  MOVE R3 R1
  LOADK R4 K9 ["experiences"]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K8 ["search"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R2 R0 K8 ["search"]
  JUMPIFEQKS R2 K0 [""] [+8]
  FASTCALL2K TABLE_INSERT R1 K8 [+5]
  MOVE R3 R1
  LOADK R4 K8 ["search"]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K10 ["isPublic"]
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K11 [+5]
  MOVE R3 R1
  LOADK R4 K11 ["public"]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K12 ["isArchived"]
  JUMPIFNOT R2 [+7]
  FASTCALL2K TABLE_INSERT R1 K13 [+5]
  MOVE R3 R1
  LOADK R4 K13 ["archived"]
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETIMPORT R2 K16 [string.lower]
  GETIMPORT R3 K18 [table.concat]
  MOVE R4 R1
  LOADK R5 K19 ["_"]
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["universe"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R1 K0 ["universe"]
  GETTABLEKS R2 R3 K1 ["name"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R3 R1 K0 ["universe"]
  GETTABLEKS R2 R3 K2 ["id"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R1 K0 ["universe"]
  GETTABLEKS R2 R3 K3 ["rootPlaceId"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["search"]
  JUMPIFEQKS R2 K5 ["All"] [+8]
  GETTABLEKS R2 R1 K6 ["gameTemplateType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["search"]
  JUMPIFNOTEQ R2 R3 [+25]
  DUPTABLE R2 K11 [{"Name", "Id", "GameTemplateType", "RootPlaceId"}]
  GETTABLEKS R4 R1 K0 ["universe"]
  GETTABLEKS R3 R4 K1 ["name"]
  SETTABLEKS R3 R2 K7 ["Name"]
  GETTABLEKS R4 R1 K0 ["universe"]
  GETTABLEKS R3 R4 K2 ["id"]
  SETTABLEKS R3 R2 K8 ["Id"]
  GETTABLEKS R3 R1 K6 ["gameTemplateType"]
  SETTABLEKS R3 R2 K9 ["GameTemplateType"]
  GETTABLEKS R4 R1 K0 ["universe"]
  GETTABLEKS R3 R4 K3 ["rootPlaceId"]
  SETTABLEKS R3 R2 K10 ["RootPlaceId"]
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["data"]
  JUMPIF R1 [+9]
  DUPTABLE R1 K3 [{"games", "targetResults"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["games"]
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["targetResults"]
  RETURN R1 1
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["data"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CALL R1 2 1
  DUPTABLE R2 K3 [{"games", "targetResults"}]
  SETTABLEKS R1 R2 K1 ["games"]
  LENGTH R3 R1
  SETTABLEKS R3 R2 K2 ["targetResults"]
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["name"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R1 K1 ["id"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K2 ["rootPlaceId"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K3 ["privacyType"]
  JUMPIFNOT R2 [+15]
  JUMPIFEQKS R2 K4 ["Public"] [+14]
  JUMPIFEQKS R2 K5 ["Private"] [+12]
  JUMPIFEQKS R2 K6 ["Draft"] [+10]
  GETIMPORT R3 K8 [error]
  LOADK R5 K9 ["Invalid value for privacyType: \"%*\""]
  MOVE R7 R2
  NAMECALL R5 R5 K10 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  DUPTABLE R3 K22 [{"IsGame", "Name", "CreatorName", "CreatorTargetId", "Type", "Description", "Created", "Updated", "PrivacyType", "Id", "RootPlaceId"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K11 ["IsGame"]
  GETTABLEKS R4 R1 K0 ["name"]
  SETTABLEKS R4 R3 K12 ["Name"]
  GETTABLEKS R4 R1 K23 ["creatorName"]
  SETTABLEKS R4 R3 K13 ["CreatorName"]
  GETTABLEKS R4 R1 K24 ["creatorTargetId"]
  SETTABLEKS R4 R3 K14 ["CreatorTargetId"]
  LOADK R4 K25 ["Experience"]
  SETTABLEKS R4 R3 K15 ["Type"]
  GETTABLEKS R4 R1 K26 ["description"]
  SETTABLEKS R4 R3 K16 ["Description"]
  GETTABLEKS R4 R1 K27 ["created"]
  SETTABLEKS R4 R3 K17 ["Created"]
  GETTABLEKS R4 R1 K28 ["updated"]
  SETTABLEKS R4 R3 K18 ["Updated"]
  SETTABLEKS R2 R3 K19 ["PrivacyType"]
  GETTABLEKS R4 R1 K1 ["id"]
  SETTABLEKS R4 R3 K20 ["Id"]
  GETTABLEKS R4 R1 K2 ["rootPlaceId"]
  SETTABLEKS R4 R3 K21 ["RootPlaceId"]
  RETURN R3 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["data"]
  JUMPIF R1 [+9]
  DUPTABLE R1 K3 [{"games", "targetResults"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["games"]
  LOADN R2 0
  SETTABLEKS R2 R1 K2 ["targetResults"]
  RETURN R1 1
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["data"]
  DUPCLOSURE R3 K4 [PROTO_3]
  CALL R1 2 1
  DUPTABLE R2 K3 [{"games", "targetResults"}]
  SETTABLEKS R1 R2 K1 ["games"]
  GETTABLEKS R3 R0 K5 ["totalResults"]
  JUMPIF R3 [+1]
  LENGTH R3 R1
  SETTABLEKS R3 R2 K2 ["targetResults"]
  RETURN R2 1

PROTO_5:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLE R2 R1 R3
  JUMPIF R2 [+15]
  GETUPVAL R2 0
  DUPTABLE R3 K5 [{"targetResults", "pages"}]
  GETUPVAL R6 0
  GETTABLE R5 R0 R6
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["targetResults"]
  SETTABLEKS R4 R3 K3 ["targetResults"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["pages"]
  SETTABLE R3 R1 R2
  GETUPVAL R4 0
  GETTABLE R3 R1 R4
  GETTABLEKS R2 R3 K4 ["pages"]
  GETUPVAL R3 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["games"]
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLE R4 R2 R3
  RETURN R1 1

PROTO_6:
  GETIMPORT R1 K2 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  GETUPVAL R6 1
  GETTABLE R5 R1 R6
  GETTABLEKS R4 R5 K3 ["pages"]
  GETUPVAL R5 2
  GETTABLE R3 R4 R5
  CALL R2 1 0
  RETURN R1 1

PROTO_7:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R1 1 0
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["games"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R9 R6 K1 ["IsPlaceholder"]
  NOT R8 R9
  FASTCALL2K ASSERT R8 K2 [+4]
  LOADK R9 K2 ["Data returned from network should not be a placeholder sentinel value"]
  GETIMPORT R7 K4 [assert]
  CALL R7 2 0
  GETTABLEKS R8 R6 K5 ["Id"]
  FASTCALL2K ASSERT R8 K6 [+4]
  LOADK R9 K6 ["Experience should have a value for Id"]
  GETIMPORT R7 K4 [assert]
  CALL R7 2 0
  GETTABLEKS R9 R6 K5 ["Id"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K9 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-26]
  DUPTABLE R2 K12 [{"gameIds", "setter"}]
  SETTABLEKS R1 R2 K10 ["gameIds"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K11 ["setter"]
  RETURN R2 1

PROTO_9:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["DiscoverPlaceHolderIcons experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["DiscoverExperiences experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+33]
  GETIMPORT R0 K2 [os.clock]
  CALL R0 0 1
  GETUPVAL R1 0
  GETUPVAL R3 1
  DUPTABLE R4 K8 [{"telemetryType", "telemetrySubtype", "measurementName", "timeElapsedMilliseconds", "context"}]
  LOADK R5 K9 ["performance"]
  SETTABLEKS R5 R4 K3 ["telemetryType"]
  LOADK R5 K10 ["search_load"]
  SETTABLEKS R5 R4 K4 ["telemetrySubtype"]
  LOADK R5 K11 ["discover_experiences"]
  SETTABLEKS R5 R4 K5 ["measurementName"]
  GETUPVAL R8 2
  SUB R7 R0 R8
  MULK R6 R7 K12 [1000]
  FASTCALL1 MATH_ROUND R6 [+2]
  GETIMPORT R5 K15 [math.round]
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["timeElapsedMilliseconds"]
  GETUPVAL R5 3
  GETUPVAL R6 4
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["context"]
  NAMECALL R1 R1 K16 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R5 K2 [os.clock]
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["new"]
  CALL R6 0 1
  LOADNIL R7
  GETTABLEKS R8 R0 K4 ["isTemplates"]
  JUMPIFNOT R8 [+40]
  GETTABLEKS R8 R6 K5 ["composeUrl"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["TEMPLATES_SEARCH_URL"]
  GETTABLEKS R9 R10 K7 ["Prefix"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["TEMPLATES_SEARCH_URL"]
  GETTABLEKS R10 R11 K8 ["Url"]
  CALL R10 0 1
  MOVE R11 R0
  CALL R8 3 1
  GETUPVAL R9 2
  GETUPVAL R11 2
  MOVE R13 R8
  NAMECALL R11 R11 K9 ["get"]
  CALL R11 2 -1
  NAMECALL R9 R9 K10 ["parseJson"]
  CALL R9 -1 1
  GETUPVAL R11 3
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["validate"]
  CALL R11 1 -1
  NAMECALL R9 R9 K12 ["andThen"]
  CALL R9 -1 1
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  NAMECALL R9 R9 K12 ["andThen"]
  CALL R9 2 1
  MOVE R7 R9
  JUMP [+38]
  GETTABLEKS R8 R6 K5 ["composeUrl"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["EXPERIENCES_SEARCH_URL"]
  GETTABLEKS R9 R10 K7 ["Prefix"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["EXPERIENCES_SEARCH_URL"]
  GETTABLEKS R10 R11 K8 ["Url"]
  CALL R10 0 1
  MOVE R11 R0
  CALL R8 3 1
  GETUPVAL R9 2
  GETUPVAL R11 2
  MOVE R13 R8
  NAMECALL R11 R11 K9 ["get"]
  CALL R11 2 -1
  NAMECALL R9 R9 K10 ["parseJson"]
  CALL R9 -1 1
  GETUPVAL R11 3
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K11 ["validate"]
  CALL R11 1 -1
  NAMECALL R9 R9 K12 ["andThen"]
  CALL R9 -1 1
  DUPCLOSURE R11 K14 [PROTO_4]
  CAPTURE UPVAL U5
  NAMECALL R9 R9 K12 ["andThen"]
  CALL R9 2 1
  MOVE R7 R9
  NEWCLOSURE R10 P2
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  NAMECALL R8 R7 K12 ["andThen"]
  CALL R8 2 1
  GETUPVAL R10 7
  NAMECALL R8 R8 K12 ["andThen"]
  CALL R8 2 1
  GETTABLEKS R10 R0 K4 ["isTemplates"]
  JUMPIFNOT R10 [+9]
  GETUPVAL R11 8
  NAMECALL R9 R8 K12 ["andThen"]
  CALL R9 2 1
  DUPCLOSURE R11 K15 [PROTO_9]
  NAMECALL R9 R9 K16 ["catch"]
  CALL R9 2 1
  JUMP [+11]
  DUPCLOSURE R11 K17 [PROTO_10]
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  NAMECALL R9 R8 K12 ["andThen"]
  CALL R9 2 1
  DUPCLOSURE R11 K18 [PROTO_11]
  NAMECALL R9 R9 K16 ["catch"]
  CALL R9 2 1
  NEWCLOSURE R12 P6
  CAPTURE VAL R4
  CAPTURE UPVAL U12
  CAPTURE VAL R5
  CAPTURE UPVAL U13
  CAPTURE VAL R0
  NAMECALL R10 R9 K12 ["andThen"]
  CALL R10 2 1
  GETIMPORT R12 K20 [warn]
  NAMECALL R10 R10 K16 ["catch"]
  CALL R10 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Models"]
  GETTABLEKS R5 R6 K13 ["ApiArrayResponseGameTemplateModel"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K12 ["Models"]
  GETTABLEKS R6 R7 K14 ["SearchUniversesResponse"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Network"]
  GETTABLEKS R7 R8 K16 ["Urls"]
  CALL R6 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["Services"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K19 ["Networking"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K20 ["createResponseValidator"]
  CALL R8 1 1
  GETTABLEKS R10 R2 K21 ["RobloxAPI"]
  GETTABLEKS R9 R10 K22 ["Url"]
  GETTABLEKS R10 R7 K23 ["new"]
  DUPTABLE R11 K26 [{"isInternal", "loggingLevel"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K24 ["isInternal"]
  SETTABLEKS R1 R11 K25 ["loggingLevel"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K17 ["Util"]
  GETTABLEKS R12 R13 K27 ["TypedDash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K28 ["collectArray"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K29 ["DEPRECATED_Network"]
  GETTABLEKS R14 R15 K30 ["DiscoverPlaces"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K29 ["DEPRECATED_Network"]
  GETTABLEKS R15 R16 K31 ["DiscoverAutogeneratedIcons"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K29 ["DEPRECATED_Network"]
  GETTABLEKS R16 R17 K32 ["DiscoverPlaceholderIcons"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K29 ["DEPRECATED_Network"]
  GETTABLEKS R17 R18 K33 ["DiscoverTeamCreatePresence"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K29 ["DEPRECATED_Network"]
  GETTABLEKS R18 R19 K34 ["DiscoverAgeRecommendations"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K17 ["Util"]
  GETTABLEKS R20 R21 K35 ["Telemetry"]
  GETTABLEKS R19 R20 K36 ["TelemetryContext"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K17 ["Util"]
  GETTABLEKS R21 R22 K35 ["Telemetry"]
  GETTABLEKS R20 R21 K37 ["StartPageTelemetryEvent"]
  CALL R19 1 1
  DUPCLOSURE R20 K38 [PROTO_0]
  DUPCLOSURE R21 K39 [PROTO_13]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R20
  RETURN R21 1