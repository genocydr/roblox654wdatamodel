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
  JUMPIFEQKNIL R0 [+50]
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
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K7 ["reportAnythingAnalytics"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R2 R1 K5 ["X"]
  GETTABLEKS R3 R1 K6 ["Y"]
  JUMPIFNOTLT R2 R3 [+7]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K7 ["reportAnythingAnalytics"]
  GETTABLEKS R2 R3 K8 ["setIsPortraitMode"]
  CALL R2 0 0
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
  CAPTURE VAL R0
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
  JUMPIFNOTEQKS R15 K22 ["player"] [+3]
  LOADK R14 K23 ["Select Person in Scene"]
  JUMP [+1]
  LOADK R14 K24 ["Select Problem in Scene"]
  GETUPVAL R15 2
  CALL R15 0 1
  JUMPIFNOT R15 [+16]
  GETTABLEKS R16 R0 K21 ["entryPoint"]
  JUMPIFNOTEQKS R16 K22 ["player"] [+7]
  GETUPVAL R15 3
  LOADK R17 K25 ["Feature.ReportAbuse.Label.SelectPerson"]
  NAMECALL R15 R15 K26 ["FormatByKey"]
  CALL R15 2 1
  JUMPIF R15 [+5]
  GETUPVAL R15 3
  LOADK R17 K27 ["Feature.ReportAbuse.Label.SelectProblem"]
  NAMECALL R15 R15 K26 ["FormatByKey"]
  CALL R15 2 1
  MOVE R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K32 [{"titleText", "backAction", "dismissAction", "reportAction", "initialAnnotationPoints", "isSmallPortraitMode", "screenshot", "imageAspectRatio", "reportAnythingAnalytics"}]
  SETTABLEKS R14 R17 K28 ["titleText"]
  SETTABLEKS R12 R17 K29 ["backAction"]
  GETTABLEKS R18 R0 K18 ["dismissAction"]
  SETTABLEKS R18 R17 K18 ["dismissAction"]
  GETTABLEKS R18 R0 K30 ["reportAction"]
  SETTABLEKS R18 R17 K30 ["reportAction"]
  GETTABLEKS R18 R0 K31 ["initialAnnotationPoints"]
  SETTABLEKS R18 R17 K31 ["initialAnnotationPoints"]
  SETTABLEKS R9 R17 K8 ["isSmallPortraitMode"]
  GETTABLEKS R18 R0 K15 ["screenshot"]
  SETTABLEKS R18 R17 K15 ["screenshot"]
  SETTABLEKS R3 R17 K7 ["imageAspectRatio"]
  GETTABLEKS R18 R0 K16 ["reportAnythingAnalytics"]
  SETTABLEKS R18 R17 K16 ["reportAnythingAnalytics"]
  CALL R15 2 1
  MOVE R13 R15
  RETURN R13 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R2 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["Modules"]
  GETTABLEKS R5 R6 K12 ["RobloxTranslator"]
  CALL R4 1 1
  GETIMPORT R8 K14 [script]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R5 R6 K15 ["Parent"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R5 K16 ["Components"]
  GETTABLEKS R8 R9 K17 ["ReportAnything"]
  GETTABLEKS R7 R8 K18 ["ScreenshotDialog"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R5 K16 ["Components"]
  GETTABLEKS R9 R10 K17 ["ReportAnything"]
  GETTABLEKS R8 R9 K19 ["ScreenshotReviewDialog"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R5 K20 ["Flags"]
  GETTABLEKS R9 R10 K21 ["GetFFlagReportAnythingLocalizationEnabled"]
  CALL R8 1 1
  DUPCLOSURE R9 K22 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  RETURN R9 1
