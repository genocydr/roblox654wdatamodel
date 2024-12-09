PROTO_0:
  GETIMPORT R5 K2 [workspace]
  NAMECALL R5 R5 K3 ["GetServerTimeNow"]
  CALL R5 1 1
  MULK R4 R5 K0 [1000]
  FASTCALL1 MATH_FLOOR R4 [+2]
  GETIMPORT R3 K6 [math.floor]
  CALL R3 1 1
  LOADN R4 0
  GETTABLEKS R5 R0 K7 ["menuOpenedUnixTimestampMilliseconds"]
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+9]
  GETTABLEKS R7 R0 K7 ["menuOpenedUnixTimestampMilliseconds"]
  SUB R6 R3 R7
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K6 [math.floor]
  CALL R5 1 1
  MOVE R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["interpretAnnotations"]
  MOVE R6 R1
  CALL R5 1 2
  DUPTABLE R7 K27 [{"placeId", "isPortraitMode", "viewportSizeX", "viewportSizeY", "timeSpentMs", "experiencePersonChangeCount", "typeofabuseChangeCount", "personChangeCount", "reasonChangeCount", "captureSceneCount", "reasonSelection", "commentAdded", "experiencePersonSelection", "annotationFinalCount", "avatarFinalCount", "interactionType", "typeofabuseSelection", "memoryRequirementMet"}]
  GETIMPORT R9 K29 [game]
  GETTABLEKS R8 R9 K30 ["PlaceId"]
  SETTABLEKS R8 R7 K9 ["placeId"]
  GETTABLEKS R8 R0 K10 ["isPortraitMode"]
  SETTABLEKS R8 R7 K10 ["isPortraitMode"]
  GETTABLEKS R8 R0 K11 ["viewportSizeX"]
  SETTABLEKS R8 R7 K11 ["viewportSizeX"]
  GETTABLEKS R8 R0 K12 ["viewportSizeY"]
  SETTABLEKS R8 R7 K12 ["viewportSizeY"]
  SETTABLEKS R4 R7 K13 ["timeSpentMs"]
  GETTABLEKS R8 R0 K14 ["experiencePersonChangeCount"]
  SETTABLEKS R8 R7 K14 ["experiencePersonChangeCount"]
  GETTABLEKS R8 R0 K15 ["typeofabuseChangeCount"]
  SETTABLEKS R8 R7 K15 ["typeofabuseChangeCount"]
  GETTABLEKS R8 R0 K16 ["personChangeCount"]
  SETTABLEKS R8 R7 K16 ["personChangeCount"]
  GETTABLEKS R8 R0 K17 ["reasonChangeCount"]
  SETTABLEKS R8 R7 K17 ["reasonChangeCount"]
  GETTABLEKS R8 R0 K18 ["captureSceneCount"]
  SETTABLEKS R8 R7 K18 ["captureSceneCount"]
  GETTABLEKS R8 R0 K19 ["reasonSelection"]
  SETTABLEKS R8 R7 K19 ["reasonSelection"]
  GETTABLEKS R8 R0 K20 ["commentAdded"]
  SETTABLEKS R8 R7 K20 ["commentAdded"]
  GETTABLEKS R8 R0 K21 ["experiencePersonSelection"]
  SETTABLEKS R8 R7 K21 ["experiencePersonSelection"]
  GETTABLEKS R9 R1 K31 ["annotationPoints"]
  LENGTH R8 R9
  SETTABLEKS R8 R7 K22 ["annotationFinalCount"]
  LENGTH R8 R5
  SETTABLEKS R8 R7 K23 ["avatarFinalCount"]
  GETTABLEKS R9 R0 K32 ["isSubmissionCompleted"]
  JUMPIFNOT R9 [+2]
  LOADN R8 1
  JUMP [+1]
  LOADN R8 2
  SETTABLEKS R8 R7 K24 ["interactionType"]
  GETTABLEKS R8 R0 K25 ["typeofabuseSelection"]
  SETTABLEKS R8 R7 K25 ["typeofabuseSelection"]
  GETTABLEKS R8 R0 K26 ["memoryRequirementMet"]
  SETTABLEKS R8 R7 K26 ["memoryRequirementMet"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K33 ["Dictionary"]
  GETTABLEKS R8 R9 K34 ["join"]
  MOVE R9 R7
  MOVE R10 R2
  CALL R8 2 1
  MOVE R7 R8
  RETURN R7 1

PROTO_1:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  LOADNIL R4
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["AnalyticsAbuseMethods"]
  GETTABLEKS R5 R6 K1 ["Chat"]
  GETIMPORT R6 K3 [pairs]
  GETUPVAL R9 1
  GETTABLEKS R7 R9 K4 ["AbuseMethodToAnalyticsMapping"]
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETTABLEKS R11 R0 K5 ["typeofabuseSelection"]
  JUMPIFNOTEQ R9 R11 [+3]
  MOVE R4 R10
  MOVE R5 R10
  FORGLOOP R6 2 [-7]
  SETTABLEKS R4 R3 K5 ["typeofabuseSelection"]
  SETTABLEKS R5 R3 K6 ["inferredTypeofabuseSelection"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["AnalyticsAbuseMethods"]
  GETTABLEKS R4 R5 K1 ["Game"]
  SETTABLEKS R4 R3 K2 ["typeofabuseSelection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["AnalyticsAbuseMethods"]
  GETTABLEKS R4 R5 K1 ["Game"]
  SETTABLEKS R4 R3 K3 ["inferredTypeofabuseSelection"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["CorePackages"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K12 ["Packages"]
  GETTABLEKS R4 R5 K13 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K14 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K15 ["ReportAnything"]
  GETTABLEKS R7 R8 K16 ["Utility"]
  GETTABLEKS R6 R7 K17 ["ReportAnythingAnalytics"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K15 ["ReportAnything"]
  GETTABLEKS R8 R9 K16 ["Utility"]
  GETTABLEKS R7 R8 K18 ["AbuseReportBuilder"]
  CALL R6 1 1
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R3
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPCLOSURE R9 K21 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPTABLE R10 K24 [{"forPersonReport", "forExperienceReport"}]
  SETTABLEKS R8 R10 K22 ["forPersonReport"]
  SETTABLEKS R9 R10 K23 ["forExperienceReport"]
  RETURN R10 1
