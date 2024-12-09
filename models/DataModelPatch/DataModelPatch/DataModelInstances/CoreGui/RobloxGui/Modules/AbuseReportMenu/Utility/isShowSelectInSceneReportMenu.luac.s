PROTO_0:
  GETUPVAL R0 1
  CALL R0 0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["SafetyServiceCaptureModeReportProp"]
  NAMECALL R1 R1 K3 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CaptureModeEnabled"]
  NAMECALL R1 R1 K3 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K5 ["ExperienceStateCaptureMinMemEnabled"]
  NAMECALL R1 R1 K3 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIFNOT R1 [+33]
  GETUPVAL R1 1
  NAMECALL R1 R1 K6 ["CanEnterCaptureMode"]
  CALL R1 1 1
  JUMPIF R1 [+15]
  MOVE R1 R0
  DUPTABLE R2 K9 [{"type", "memoryRequirementMet"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["AnalyticsActions"]
  GETTABLEKS R3 R4 K11 ["SetMemoryRequirementMet"]
  SETTABLEKS R3 R2 K7 ["type"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["memoryRequirementMet"]
  CALL R1 1 0
  LOADB R1 0
  RETURN R1 1
  MOVE R1 R0
  DUPTABLE R2 K9 [{"type", "memoryRequirementMet"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["AnalyticsActions"]
  GETTABLEKS R3 R4 K11 ["SetMemoryRequirementMet"]
  SETTABLEKS R3 R2 K7 ["type"]
  LOADN R3 1
  SETTABLEKS R3 R2 K8 ["memoryRequirementMet"]
  CALL R1 1 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K12 ["ExperienceStateCaptureHiddenSelection"]
  NAMECALL R1 R1 K3 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 3
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

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
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["ExperienceStateCaptureService"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R0 K11 ["Components"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R1 K13 ["Workspace"]
  GETTABLEKS R7 R8 K14 ["Packages"]
  GETTABLEKS R6 R7 K15 ["SharedFlags"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K16 ["GetFFlagSelectInSceneReportMenu"]
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R0 K17 ["Utility"]
  GETTABLEKS R6 R7 K18 ["isInSelectInSceneReportMenuOverrideList"]
  CALL R5 1 1
  LOADB R6 0
  MOVE R7 R4
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETIMPORT R7 K21 [task.defer]
  NEWCLOSURE R8 P0
  CAPTURE REF R6
  CAPTURE VAL R5
  CALL R7 1 0
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE REF R6
  CLOSEUPVALS R6
  RETURN R7 1
