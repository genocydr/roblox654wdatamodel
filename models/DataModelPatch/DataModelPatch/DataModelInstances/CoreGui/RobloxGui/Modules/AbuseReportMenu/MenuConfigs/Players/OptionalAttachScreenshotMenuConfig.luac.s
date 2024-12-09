PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getReportAnythingAvatarEnabled"]
  CALL R1 0 1
  JUMPIFNOT R1 [+21]
  LOADB R1 1
  GETTABLEKS R2 R0 K1 ["methodOfAbuse"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["AbuseMethods"]
  GETTABLEKS R3 R4 K3 ["Other"]
  JUMPIFEQ R2 R3 [+12]
  GETTABLEKS R2 R0 K1 ["methodOfAbuse"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["AbuseMethods"]
  GETTABLEKS R3 R4 K4 ["Avatar"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R1 K0 ["reportAnythingState"]
  GETTABLEKS R2 R3 K1 ["attachCompleted"]
  RETURN R2 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["reportAnythingState"]
  GETTABLEKS R2 R3 K1 ["attachCompleted"]
  JUMPIFNOT R2 [+2]
  LOADK R1 K2 ["icons/actions/accept"]
  RETURN R1 1
  LOADK R1 K3 ["icons/controls/screenshot"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["reportAnythingState"]
  GETTABLEKS R2 R3 K1 ["attachCompleted"]
  JUMPIFNOT R2 [+2]
  LOADK R1 K2 ["SceneCaptured"]
  RETURN R1 1
  LOADK R1 K3 ["CaptureScene"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R3 R2 K0 ["analyticsDispatch"]
  DUPTABLE R4 K2 [{"type"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["AnalyticsActions"]
  GETTABLEKS R5 R6 K4 ["IncrementCaptureScene"]
  SETTABLEKS R5 R4 K1 ["type"]
  CALL R3 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["mountAnnotationPage"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["ReportTypes"]
  GETTABLEKS R4 R5 K7 ["Person"]
  GETTABLEKS R5 R2 K8 ["hideReportTab"]
  GETTABLEKS R6 R2 K9 ["reportAnythingAnalytics"]
  GETTABLEKS R7 R2 K10 ["reportAnythingState"]
  GETTABLEKS R8 R2 K11 ["reportAnythingDispatch"]
  CALL R3 5 0
  RETURN R0 0

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K8 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["IXP"]
  GETTABLEKS R4 R5 K10 ["TnSIXPWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["ReportAnything"]
  GETTABLEKS R6 R7 K6 ["Components"]
  GETTABLEKS R5 R6 K12 ["AnnotationModal"]
  CALL R4 1 1
  DUPTABLE R5 K22 [{"componentType", "getIsVisible", "getIsDisabled", "variant", "getIconSrc", "getButtonLabel", "onClick", "fieldLabel", "componentName"}]
  LOADK R6 K23 ["button"]
  SETTABLEKS R6 R5 K13 ["componentType"]
  DUPCLOSURE R6 K24 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K14 ["getIsVisible"]
  DUPCLOSURE R6 K25 [PROTO_1]
  SETTABLEKS R6 R5 K15 ["getIsDisabled"]
  LOADK R6 K26 ["secondary"]
  SETTABLEKS R6 R5 K16 ["variant"]
  DUPCLOSURE R6 K27 [PROTO_2]
  SETTABLEKS R6 R5 K17 ["getIconSrc"]
  DUPCLOSURE R6 K28 [PROTO_3]
  SETTABLEKS R6 R5 K18 ["getButtonLabel"]
  DUPCLOSURE R6 K29 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K19 ["onClick"]
  LOADK R6 K30 ["AttachScreenshot"]
  SETTABLEKS R6 R5 K20 ["fieldLabel"]
  LOADK R6 K31 ["OptionalScreenshot"]
  SETTABLEKS R6 R5 K21 ["componentName"]
  RETURN R5 1
