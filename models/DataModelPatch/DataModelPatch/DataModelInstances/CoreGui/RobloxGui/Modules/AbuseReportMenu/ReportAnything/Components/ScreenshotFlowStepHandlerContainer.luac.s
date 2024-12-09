PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  DUPTABLE R4 K2 [{"FocusNavigationCoreScriptsWrapper"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K5 [{"selectionGroupName", "focusNavigableSurfaceIdentifier"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K6 ["ScreenshotFlowStepHandlerRootName"]
  SETTABLEKS R8 R7 K3 ["selectionGroupName"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["CentralOverlay"]
  SETTABLEKS R8 R7 K4 ["focusNavigableSurfaceIdentifier"]
  DUPTABLE R8 K9 [{"ScreenshotFlowStepHandlerContainer"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 5
  GETTABLEKS R11 R0 K10 ["props"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["ScreenshotFlowStepHandlerContainer"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["FocusNavigationCoreScriptsWrapper"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R0 K12 ["ReportAnything"]
  GETTABLEKS R5 R6 K13 ["Resources"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K15 ["Parent"]
  GETTABLEKS R5 R6 K16 ["ScreenshotFlowStepHandler"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K17 ["PureComponent"]
  LOADK R7 K18 ["ScreenshotFlowStepHandlerContainer"]
  NAMECALL R5 R5 K19 ["extend"]
  CALL R5 2 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K20 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["Packages"]
  GETTABLEKS R8 R9 K21 ["CoreScriptsRoactCommon"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K22 ["CoreScriptsRootProvider"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K20 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["Packages"]
  GETTABLEKS R8 R9 K23 ["FocusNavigationUtils"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K24 ["FocusNavigationCoreScriptsWrapper"]
  GETTABLEKS R9 R7 K25 ["FocusNavigableSurfaceIdentifierEnum"]
  DUPCLOSURE R10 K26 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R10 R5 K27 ["render"]
  RETURN R5 1
