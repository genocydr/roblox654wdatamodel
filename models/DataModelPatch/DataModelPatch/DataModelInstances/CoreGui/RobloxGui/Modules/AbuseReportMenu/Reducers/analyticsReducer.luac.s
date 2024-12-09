PROTO_0:
  GETIMPORT R2 K2 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Reset"]
  JUMPIFNOTEQ R3 R4 [+9]
  GETTABLEKS R4 R2 K5 ["menuEverShown"]
  GETUPVAL R5 1
  GETTABLEKS R2 R5 K6 ["AnalyticsInitialState"]
  SETTABLEKS R4 R2 K5 ["menuEverShown"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["SetMenuOpenedTimestamp"]
  JUMPIFNOTEQ R3 R4 [+9]
  LOADB R4 1
  SETTABLEKS R4 R2 K5 ["menuEverShown"]
  GETTABLEKS R4 R1 K8 ["timestamp"]
  SETTABLEKS R4 R2 K9 ["menuOpenedUnixTimestampMilliseconds"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["IncrementExperiencePersonChanged"]
  JUMPIFNOTEQ R3 R4 [+7]
  GETTABLEKS R4 R2 K11 ["experiencePersonChangeCount"]
  ADDK R4 R4 K12 [1]
  SETTABLEKS R4 R2 K11 ["experiencePersonChangeCount"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["IncrementTypeofabuseChanged"]
  JUMPIFNOTEQ R3 R4 [+7]
  GETTABLEKS R4 R2 K14 ["typeofabuseChangeCount"]
  ADDK R4 R4 K12 [1]
  SETTABLEKS R4 R2 K14 ["typeofabuseChangeCount"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["IncrementPersonChanged"]
  JUMPIFNOTEQ R3 R4 [+7]
  GETTABLEKS R4 R2 K16 ["personChangeCount"]
  ADDK R4 R4 K12 [1]
  SETTABLEKS R4 R2 K16 ["personChangeCount"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["IncrementReasonChanged"]
  JUMPIFNOTEQ R3 R4 [+7]
  GETTABLEKS R4 R2 K18 ["reasonChangeCount"]
  ADDK R4 R4 K12 [1]
  SETTABLEKS R4 R2 K18 ["reasonChangeCount"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["IncrementCaptureScene"]
  JUMPIFNOTEQ R3 R4 [+7]
  GETTABLEKS R4 R2 K20 ["captureSceneCount"]
  ADDK R4 R4 K12 [1]
  SETTABLEKS R4 R2 K20 ["captureSceneCount"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K21 ["SetViewportInformation"]
  JUMPIFNOTEQ R3 R4 [+20]
  GETTABLEKS R4 R1 K22 ["viewportSizeX"]
  SETTABLEKS R4 R2 K22 ["viewportSizeX"]
  GETTABLEKS R4 R1 K23 ["viewportSizeY"]
  SETTABLEKS R4 R2 K23 ["viewportSizeY"]
  GETTABLEKS R5 R1 K22 ["viewportSizeX"]
  GETTABLEKS R6 R1 K23 ["viewportSizeY"]
  JUMPIFLT R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R2 K24 ["isPortraitMode"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K25 ["SetMemoryRequirementMet"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K26 ["memoryRequirementMet"]
  SETTABLEKS R4 R2 K26 ["memoryRequirementMet"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K27 ["SetSubmissionCompleted"]
  JUMPIFNOTEQ R3 R4 [+5]
  LOADB R4 1
  SETTABLEKS R4 R2 K28 ["isSubmissionCompleted"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K29 ["SetTypeOfAbuseSelection"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K30 ["selection"]
  SETTABLEKS R4 R2 K31 ["typeofabuseSelection"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K32 ["SetReasonSelection"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K30 ["selection"]
  SETTABLEKS R4 R2 K33 ["reasonSelection"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K34 ["SetCommentAdded"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K35 ["commentAdded"]
  SETTABLEKS R4 R2 K35 ["commentAdded"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K36 ["SwitchToExperienceInitialSelections"]
  JUMPIFNOTEQ R3 R4 [+14]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K37 ["Dictionary"]
  GETTABLEKS R4 R5 K38 ["join"]
  MOVE R5 R2
  GETUPVAL R6 3
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K39 ["AnalyticsExpeirenceInitialSelections"]
  CALL R4 3 1
  MOVE R2 R4
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K40 ["SwitchToPersonInitialSelections"]
  JUMPIFNOTEQ R3 R4 [+13]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K37 ["Dictionary"]
  GETTABLEKS R4 R5 K38 ["join"]
  MOVE R5 R2
  GETUPVAL R6 3
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K41 ["AnalyticsPersonInitialSelections"]
  CALL R4 3 1
  MOVE R2 R4
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Components"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Components"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Cryo"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K15 ["AnalyticsActions"]
  DUPTABLE R6 K18 [{"typeofabuseSelection", "reasonSelection"}]
  GETTABLEKS R7 R4 K19 ["None"]
  SETTABLEKS R7 R6 K16 ["typeofabuseSelection"]
  GETTABLEKS R7 R4 K19 ["None"]
  SETTABLEKS R7 R6 K17 ["reasonSelection"]
  DUPCLOSURE R7 K20 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R7 1
