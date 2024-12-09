PROTO_0:
  GETUPVAL R0 0
  LOADN R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADN R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K1 [game]
  GETTABLEKS R1 R2 K2 ["Workspace"]
  GETTABLEKS R0 R1 K3 ["CurrentCamera"]
  JUMPIFEQKNIL R0 [+34]
  GETTABLEKS R1 R0 K4 ["ViewportSize"]
  GETUPVAL R2 0
  GETTABLEKS R4 R1 K5 ["X"]
  GETTABLEKS R5 R1 K6 ["Y"]
  DIV R3 R4 R5
  CALL R2 1 0
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["Y"]
  CALL R2 1 0
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K5 ["X"]
  CALL R2 1 0
  GETUPVAL R2 3
  LOADB R3 0
  GETTABLEKS R4 R1 K5 ["X"]
  GETTABLEKS R5 R1 K6 ["Y"]
  JUMPIFNOTLT R4 R5 [+8]
  GETTABLEKS R4 R1 K5 ["X"]
  LOADN R5 32
  JUMPIFLT R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETTABLEKS R3 R0 K1 ["initialPageNumber"]
  JUMPIFNOTEQKNIL R3 [+3]
  LOADN R2 1
  JUMP [+2]
  GETTABLEKS R2 R0 K1 ["initialPageNumber"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  LOADK R4 K2 [1.77777777777778]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  LOADN R6 32
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["useState"]
  LOADN R8 32
  CALL R7 1 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["useState"]
  LOADB R10 1
  CALL R9 1 2
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["useCallback"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R2
  NEWTABLE R13 0 1
  MOVE R14 R2
  SETLIST R13 R14 1 [1]
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["useCallback"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R2
  NEWTABLE R14 0 1
  MOVE R15 R2
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["useEffect"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R10
  NEWTABLE R15 0 0
  CALL R13 2 0
  LOADNIL R13
  JUMPIFNOTEQKN R1 K5 [1] [+41]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K17 [{"imageAspectRatio", "isSmallPortraitMode", "viewportHeight", "viewportWidth", "onNextPage", "onBack", "onSkip", "onRestart", "screenshot", "reportAnythingAnalytics"}]
  SETTABLEKS R3 R16 K7 ["imageAspectRatio"]
  SETTABLEKS R9 R16 K8 ["isSmallPortraitMode"]
  SETTABLEKS R5 R16 K9 ["viewportHeight"]
  SETTABLEKS R7 R16 K10 ["viewportWidth"]
  SETTABLEKS R11 R16 K11 ["onNextPage"]
  GETTABLEKS R17 R0 K18 ["dismissAction"]
  SETTABLEKS R17 R16 K12 ["onBack"]
  GETTABLEKS R17 R0 K19 ["skipAnnotationAction"]
  SETTABLEKS R17 R16 K13 ["onSkip"]
  GETTABLEKS R17 R0 K20 ["restartAction"]
  SETTABLEKS R17 R16 K14 ["onRestart"]
  GETTABLEKS R17 R0 K15 ["screenshot"]
  SETTABLEKS R17 R16 K15 ["screenshot"]
  GETTABLEKS R17 R0 K16 ["reportAnythingAnalytics"]
  SETTABLEKS R17 R16 K16 ["reportAnythingAnalytics"]
  NEWTABLE R17 0 0
  CALL R14 3 1
  MOVE R13 R14
  RETURN R13 1
  GETTABLEKS R15 R0 K21 ["entryPoint"]
  JUMPIFNOTEQKS R15 K22 ["player"] [+7]
  GETUPVAL R14 2
  LOADK R16 K23 ["Feature.ReportAbuse.Label.SelectPerson"]
  NAMECALL R14 R14 K24 ["FormatByKey"]
  CALL R14 2 1
  JUMP [+5]
  GETUPVAL R14 2
  LOADK R16 K25 ["Feature.ReportAbuse.Label.SelectProblem"]
  NAMECALL R14 R14 K24 ["FormatByKey"]
  CALL R14 2 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K32 [{"titleText", "backAction", "dismissAction", "finishAnnotationAction", "initialAnnotationPoints", "isSmallPortraitMode", "screenshot", "imageAspectRatio", "setAnnotationCircleRadius", "setAnnotationAreaDimensions", "reportAnythingAnalytics"}]
  SETTABLEKS R14 R17 K26 ["titleText"]
  SETTABLEKS R12 R17 K27 ["backAction"]
  GETTABLEKS R18 R0 K18 ["dismissAction"]
  SETTABLEKS R18 R17 K18 ["dismissAction"]
  GETTABLEKS R18 R0 K28 ["finishAnnotationAction"]
  SETTABLEKS R18 R17 K28 ["finishAnnotationAction"]
  GETTABLEKS R18 R0 K29 ["initialAnnotationPoints"]
  SETTABLEKS R18 R17 K29 ["initialAnnotationPoints"]
  SETTABLEKS R9 R17 K8 ["isSmallPortraitMode"]
  GETTABLEKS R18 R0 K15 ["screenshot"]
  SETTABLEKS R18 R17 K15 ["screenshot"]
  SETTABLEKS R3 R17 K7 ["imageAspectRatio"]
  GETTABLEKS R18 R0 K30 ["setAnnotationCircleRadius"]
  SETTABLEKS R18 R17 K30 ["setAnnotationCircleRadius"]
  GETTABLEKS R18 R0 K31 ["setAnnotationAreaDimensions"]
  SETTABLEKS R18 R17 K31 ["setAnnotationAreaDimensions"]
  GETTABLEKS R18 R0 K16 ["reportAnythingAnalytics"]
  SETTABLEKS R18 R17 K16 ["reportAnythingAnalytics"]
  CALL R15 2 1
  MOVE R13 R15
  RETURN R13 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Workspace"]
  GETTABLEKS R4 R5 K6 ["Packages"]
  GETTABLEKS R3 R4 K9 ["RobloxTranslator"]
  CALL R2 1 1
  GETIMPORT R5 K11 [script]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETTABLEKS R3 R4 K12 ["Parent"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R3 K13 ["Components"]
  GETTABLEKS R5 R6 K14 ["ScreenshotDialog"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K13 ["Components"]
  GETTABLEKS R6 R7 K15 ["ScreenshotReviewDialog"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R6 1
