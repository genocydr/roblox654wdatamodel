MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R5 R1 K8 ["Modules"]
  GETTABLEKS R4 R5 K9 ["Common"]
  GETTABLEKS R3 R4 K10 ["IXPServiceWrapper"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K11 ["Players"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  DUPTABLE R4 K15 [{"enabled", "inSortingExperiment", "inEntryExperiment"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K12 ["enabled"]
  LOADB R5 0
  SETTABLEKS R5 R4 K13 ["inSortingExperiment"]
  LOADB R5 0
  SETTABLEKS R5 R4 K14 ["inEntryExperiment"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K16 ["EnableReportAbuseMenuLayerOnV3"]
  LOADB R8 0
  NAMECALL R5 R5 K17 ["DefineFastFlag"]
  CALL R5 3 1
  JUMPIFNOT R5 [+54]
  GETIMPORT R5 K1 [game]
  LOADK R7 K18 ["ReportAbuseMenuLayerOnV3Layer"]
  LOADK R8 K19 ["Social.VoiceAbuseReport.ReportAbuseMenu.V1"]
  NAMECALL R5 R5 K20 ["DefineFastString"]
  CALL R5 3 1
  GETTABLEKS R6 R3 K21 ["LocalPlayer"]
  LOADN R7 0
  JUMPIF R6 [+16]
  LOADK R10 K21 ["LocalPlayer"]
  NAMECALL R8 R3 K22 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  NAMECALL R8 R8 K23 ["Wait"]
  CALL R8 1 0
  GETTABLEKS R6 R3 K21 ["LocalPlayer"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R8 R6 K24 ["UserId"]
  JUMPIF R8 [+1]
  LOADN R8 0
  MOVE R7 R8
  JUMPBACK [-17]
  MOVE R10 R7
  MOVE R11 R5
  NAMECALL R8 R2 K25 ["InitializeAsync"]
  CALL R8 3 0
  MOVE R10 R5
  NAMECALL R8 R2 K26 ["GetLayerData"]
  CALL R8 2 1
  JUMPIFNOT R8 [+14]
  GETTABLEKS R9 R8 K27 ["VoiceAbuseReportProximitySort"]
  SETTABLEKS R9 R4 K13 ["inSortingExperiment"]
  GETTABLEKS R9 R8 K28 ["VoiceAbuseReportSmartEntry"]
  SETTABLEKS R9 R4 K14 ["inEntryExperiment"]
  GETTABLEKS R10 R8 K29 ["VoiceAbuseReportDisabled"]
  NOT R9 R10
  SETTABLEKS R9 R4 K12 ["enabled"]
  RETURN R4 1
  LOADB R9 0
  SETTABLEKS R9 R4 K12 ["enabled"]
  RETURN R4 1
