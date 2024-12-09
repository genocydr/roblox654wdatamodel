PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPageHandle"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["annotationPageHandle"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["annotationPageHandle"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["annotationPageScreenGui"]
  JUMPIFEQKNIL R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["annotationPageFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["annotationPageFrame"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["annotationPageScreenGui"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPageHandle"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["annotationPageHandle"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["annotationPageHandle"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["annotationPageScreenGui"]
  JUMPIFEQKNIL R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["annotationPageFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["annotationPageFrame"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["annotationPageScreenGui"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPageHandle"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["annotationPageHandle"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["annotationPageHandle"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["annotationPageScreenGui"]
  JUMPIFEQKNIL R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["annotationPageFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["annotationPageFrame"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["annotationPageScreenGui"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["annotationPageHandle"]
  JUMPIFEQKNIL R1 [+12]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["unmount"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["annotationPageHandle"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["annotationPageHandle"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["annotationPageScreenGui"]
  JUMPIFEQKNIL R1 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["annotationPageFrame"]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["Parent"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["annotationPageFrame"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["annotationPageScreenGui"]
  GETUPVAL R1 2
  DUPTABLE R2 K7 [{"type", "annotationPoints"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["ReportAnythingActions"]
  GETTABLEKS R3 R4 K9 ["SetAnnotationPoints"]
  SETTABLEKS R3 R2 K5 ["type"]
  SETTABLEKS R0 R2 K6 ["annotationPoints"]
  CALL R1 1 0
  GETUPVAL R1 2
  DUPTABLE R2 K10 [{"type"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["ReportAnythingActions"]
  GETTABLEKS R3 R4 K11 ["CompleteAttachment"]
  SETTABLEKS R3 R2 K5 ["type"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPageHandle"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["annotationPageHandle"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["annotationPageHandle"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["annotationPageScreenGui"]
  JUMPIFEQKNIL R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["annotationPageFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["annotationPageFrame"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["annotationPageScreenGui"]
  GETUPVAL R0 2
  DUPTABLE R1 K6 [{"type"}]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["ReportAnythingActions"]
  GETTABLEKS R2 R3 K8 ["ClearAll"]
  SETTABLEKS R2 R1 K5 ["type"]
  CALL R0 1 0
  GETUPVAL R0 4
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["annotationPageHandle"]
  JUMPIFEQKNIL R0 [+12]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["unmount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["annotationPageHandle"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["annotationPageHandle"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["annotationPageScreenGui"]
  JUMPIFEQKNIL R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["annotationPageFrame"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Parent"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["annotationPageFrame"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["annotationPageScreenGui"]
  GETUPVAL R0 2
  DUPTABLE R1 K6 [{"type"}]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K7 ["ReportAnythingActions"]
  GETTABLEKS R2 R3 K8 ["CompleteAttachment"]
  SETTABLEKS R2 R1 K5 ["type"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"type", "radius"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ReportAnythingActions"]
  GETTABLEKS R3 R4 K4 ["SetAnnotationCircleRadius"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R0 R2 K1 ["radius"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"type", "width", "height"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["ReportAnythingActions"]
  GETTABLEKS R4 R5 K5 ["SetAnnotationAreaDimensions"]
  SETTABLEKS R4 R3 K0 ["type"]
  SETTABLEKS R0 R3 K1 ["width"]
  SETTABLEKS R1 R3 K2 ["height"]
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R5 0
  NAMECALL R5 R5 K0 ["GetGuiInset"]
  CALL R5 1 2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["annotationPageScreenGui"]
  JUMPIF R7 [+78]
  GETIMPORT R7 K4 [Instance.new]
  LOADK R8 K5 ["ScreenGui"]
  CALL R7 1 1
  LOADK R8 K6 ["AnnotationPageContents"]
  SETTABLEKS R8 R7 K7 ["Name"]
  LOADN R8 7
  SETTABLEKS R8 R7 K8 ["DisplayOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Enabled"]
  GETIMPORT R8 K13 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K11 ["ZIndexBehavior"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+9]
  GETUPVAL R8 3
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K14 ["AbuseReportMenuPlaceholderFrame"]
  LOADB R11 1
  NAMECALL R8 R8 K15 ["FindFirstChild"]
  CALL R8 3 1
  JUMP [+8]
  GETUPVAL R8 3
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K16 ["AbuseReportMenuRootName"]
  LOADB R11 1
  NAMECALL R8 R8 K15 ["FindFirstChild"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["Parent"]
  GETUPVAL R8 1
  SETTABLEKS R7 R8 K1 ["annotationPageScreenGui"]
  GETIMPORT R8 K4 [Instance.new]
  LOADK R9 K18 ["Frame"]
  CALL R8 1 1
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["BackgroundTransparency"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R5 K22 ["Y"]
  MINUS R13 R14
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  GETTABLEKS R13 R5 K22 ["Y"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K24 ["Size"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["annotationPageScreenGui"]
  SETTABLEKS R9 R8 K17 ["Parent"]
  GETUPVAL R9 1
  SETTABLEKS R8 R9 K25 ["annotationPageFrame"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K26 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K39 [{"screenshot", "entryPoint", "backAction", "dismissAction", "finishAnnotationAction", "restartAction", "skipAnnotationAction", "setAnnotationCircleRadius", "setAnnotationAreaDimensions", "initialAnnotationPoints", "initialPageNumber", "reportAnythingAnalytics"}]
  GETTABLEKS R10 R3 K40 ["screenshotContentId"]
  SETTABLEKS R10 R9 K27 ["screenshot"]
  SETTABLEKS R0 R9 K28 ["entryPoint"]
  DUPCLOSURE R10 K41 [PROTO_1]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  SETTABLEKS R10 R9 K29 ["backAction"]
  DUPCLOSURE R10 K42 [PROTO_2]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  SETTABLEKS R10 R9 K30 ["dismissAction"]
  NEWCLOSURE R10 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R10 R9 K31 ["finishAnnotationAction"]
  NEWCLOSURE R10 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K32 ["restartAction"]
  NEWCLOSURE R10 P4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R10 R9 K33 ["skipAnnotationAction"]
  NEWCLOSURE R10 P5
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R10 R9 K34 ["setAnnotationCircleRadius"]
  NEWCLOSURE R10 P6
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  SETTABLEKS R10 R9 K35 ["setAnnotationAreaDimensions"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K36 ["initialAnnotationPoints"]
  LOADN R10 1
  SETTABLEKS R10 R9 K37 ["initialPageNumber"]
  SETTABLEKS R2 R9 K38 ["reportAnythingAnalytics"]
  CALL R7 2 1
  MOVE R8 R4
  DUPTABLE R9 K44 [{"type"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K45 ["ReportAnythingActions"]
  GETTABLEKS R10 R11 K46 ["SetAnnotationOptionSeen"]
  SETTABLEKS R10 R9 K43 ["type"]
  CALL R8 1 0
  GETUPVAL R8 1
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K47 ["mount"]
  MOVE R10 R7
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K25 ["annotationPageFrame"]
  LOADK R12 K48 ["AnnotationFlow"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K49 ["annotationPageHandle"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["AbuseReportMenu"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K9 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R3 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R2 K14 ["Components"]
  GETTABLEKS R6 R7 K15 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R2 K14 ["Components"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R2 K17 ["ReportAnything"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K18 ["ScreenshotFlowStepHandlerContainer"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R2 K17 ["ReportAnything"]
  GETTABLEKS R10 R11 K19 ["Utility"]
  GETTABLEKS R9 R10 K20 ["ReportAnythingAnalytics"]
  CALL R8 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R13 R3 K21 ["Workspace"]
  GETTABLEKS R12 R13 K12 ["Packages"]
  GETTABLEKS R11 R12 K22 ["SharedFlags"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K23 ["GetFFlagAbuseReportMenuConsoleSupportRefactor"]
  DUPTABLE R10 K27 [{"annotationPageHandle", "annotationPageFrame", "annotationPageScreenGui"}]
  LOADNIL R11
  SETTABLEKS R11 R10 K24 ["annotationPageHandle"]
  LOADNIL R11
  SETTABLEKS R11 R10 K25 ["annotationPageFrame"]
  LOADNIL R11
  SETTABLEKS R11 R10 K26 ["annotationPageScreenGui"]
  DUPCLOSURE R11 K28 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R4
  DUPCLOSURE R12 K29 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  DUPTABLE R13 K32 [{"mountAnnotationPage", "unmountAnnotationPage"}]
  SETTABLEKS R12 R13 K30 ["mountAnnotationPage"]
  SETTABLEKS R11 R13 K31 ["unmountAnnotationPage"]
  RETURN R13 1
