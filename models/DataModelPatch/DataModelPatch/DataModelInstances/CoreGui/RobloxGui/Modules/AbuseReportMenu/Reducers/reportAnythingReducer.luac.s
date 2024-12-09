PROTO_0:
  GETIMPORT R2 K2 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["ClearAll"]
  JUMPIFNOTEQ R3 R4 [+5]
  GETUPVAL R4 1
  GETTABLEKS R2 R4 K5 ["ReportAnythingInitialState"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["ClearAnnotationFlowProperties"]
  JUMPIFNOTEQ R3 R4 [+15]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R2 K7 ["annotationPoints"]
  LOADB R4 0
  SETTABLEKS R4 R2 K8 ["attachCompleted"]
  LOADB R4 0
  SETTABLEKS R4 R2 K9 ["annotationPageSeen"]
  LOADB R4 0
  SETTABLEKS R4 R2 K10 ["annotationOptionSeen"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["SetScreenshotId"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K12 ["screenshotId"]
  SETTABLEKS R4 R2 K12 ["screenshotId"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["SetScreenshotContentId"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K14 ["screenshotContentId"]
  SETTABLEKS R4 R2 K14 ["screenshotContentId"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["SetAnnotationPoints"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETTABLEKS R4 R1 K7 ["annotationPoints"]
  SETTABLEKS R4 R2 K7 ["annotationPoints"]
  LOADB R4 1
  SETTABLEKS R4 R2 K9 ["annotationPageSeen"]
  LOADB R4 1
  SETTABLEKS R4 R2 K10 ["annotationOptionSeen"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K16 ["SetIdentificationResults"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K17 ["identificationResults"]
  SETTABLEKS R4 R2 K17 ["identificationResults"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K18 ["CompleteAttachment"]
  JUMPIFNOTEQ R3 R4 [+5]
  LOADB R4 1
  SETTABLEKS R4 R2 K8 ["attachCompleted"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["SetAnnotationCircleRadius"]
  JUMPIFNOTEQ R3 R4 [+6]
  GETTABLEKS R4 R1 K20 ["radius"]
  SETTABLEKS R4 R2 K21 ["annotationCircleRadius"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K22 ["SetAnnotationAreaDimensions"]
  JUMPIFNOTEQ R3 R4 [+10]
  GETTABLEKS R4 R1 K23 ["width"]
  SETTABLEKS R4 R2 K24 ["annotationAreaWidth"]
  GETTABLEKS R4 R1 K25 ["height"]
  SETTABLEKS R4 R2 K26 ["annotationAreaHeight"]
  RETURN R2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K27 ["SetAnnotationOptionSeen"]
  JUMPIFNOTEQ R3 R4 [+4]
  LOADB R4 1
  SETTABLEKS R4 R2 K10 ["annotationOptionSeen"]
  RETURN R2 1

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
  GETTABLEKS R3 R2 K9 ["ReportAnythingActions"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
