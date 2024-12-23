PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["leavingGame"]
  CALL R1 0 0
  GETUPVAL R1 2
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["SelectedCoreObject"]
  GETUPVAL R1 3
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K2 ["AnalyticsTargetName"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["AnalyticsInGameMenuName"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K4 ["AnalyticsLeaveGameName"]
  DUPTABLE R6 K8 [{"confirmed", "universeid", "source"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K9 ["AnalyticsConfirmedName"]
  SETTABLEKS R7 R6 K5 ["confirmed"]
  GETIMPORT R9 K11 [game]
  GETTABLEKS R8 R9 K12 ["GameId"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K14 [tostring]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["universeid"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["AnalyticsLeaveGameSource"]
  SETTABLEKS R7 R6 K7 ["source"]
  NAMECALL R1 R1 K16 ["SetRBXEventStream"]
  CALL R1 5 0
  JUMPIFNOT R0 [+34]
  LOADN R2 0
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K14 [tostring]
  CALL R1 1 1
  DUPTABLE R2 K18 [{"chromeSeenCount"}]
  SETTABLEKS R1 R2 K17 ["chromeSeenCount"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K19 ["LocalPlayer"]
  GETTABLEKS R4 R5 K20 ["UserId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K14 [tostring]
  CALL R3 1 1
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K21 ["publish"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K22 ["OnSurveyEventDescriptor"]
  DUPTABLE R6 K26 [{"eventType", "userId", "customProps"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K27 ["SurveyEventType"]
  SETTABLEKS R7 R6 K23 ["eventType"]
  SETTABLEKS R3 R6 K24 ["userId"]
  SETTABLEKS R2 R6 K25 ["customProps"]
  CALL R4 2 0
  GETUPVAL R1 7
  JUMPIFNOT R1 [+21]
  GETIMPORT R2 K29 [require]
  GETIMPORT R5 K31 [script]
  LOADK R7 K32 ["Settings"]
  NAMECALL R5 R5 K33 ["FindFirstAncestor"]
  CALL R5 2 1
  GETTABLEKS R4 R5 K34 ["Analytics"]
  GETTABLEKS R3 R4 K35 ["CoreGuiFinalStateAnalytics"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K36 ["new"]
  CALL R1 0 1
  SETUPVAL R1 8
  GETUPVAL R1 8
  NAMECALL R1 R1 K37 ["sendCoreGuiFinalAnalytic"]
  CALL R1 1 0
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K38 ["RenderStepped"]
  NAMECALL R1 R1 K39 ["wait"]
  CALL R1 1 0
  GETUPVAL R2 9
  GETTABLEKS R1 R2 K38 ["RenderStepped"]
  NAMECALL R1 R1 K39 ["wait"]
  CALL R1 1 0
  GETIMPORT R1 K11 [game]
  NAMECALL R1 R1 K40 ["Shutdown"]
  CALL R1 1 0
  GETIMPORT R2 K42 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K43 ["Rendering"]
  GETUPVAL R2 10
  CALL R2 0 1
  SETTABLEKS R2 R1 K44 ["QualityLevel"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["RunService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["RbxAnalyticsService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["Players"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R10 R2 K13 ["Modules"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K15 ["FFlagCoreGuiFinalStateAnalytic"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R11 R2 K13 ["Modules"]
  GETTABLEKS R10 R11 K16 ["Common"]
  GETTABLEKS R9 R10 K17 ["PerfUtils"]
  CALL R8 1 1
  GETIMPORT R10 K12 [require]
  GETTABLEKS R13 R1 K18 ["Workspace"]
  GETTABLEKS R12 R13 K19 ["Packages"]
  GETTABLEKS R11 R12 K20 ["MessageBus"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K20 ["MessageBus"]
  LOADNIL R10
  LOADK R13 K13 ["Modules"]
  NAMECALL R11 R2 K6 ["WaitForChild"]
  CALL R11 2 1
  LOADK R13 K21 ["TenFootInterface"]
  NAMECALL R11 R11 K6 ["WaitForChild"]
  CALL R11 2 0
  GETIMPORT R11 K12 [require]
  GETTABLEKS R15 R2 K13 ["Modules"]
  GETTABLEKS R14 R15 K16 ["Common"]
  GETTABLEKS R13 R14 K14 ["Flags"]
  GETTABLEKS R12 R13 K22 ["GetFFlagEnableInGameMenuDurationLogger"]
  CALL R11 1 1
  GETIMPORT R13 K12 [require]
  GETTABLEKS R16 R1 K18 ["Workspace"]
  GETTABLEKS R15 R16 K19 ["Packages"]
  GETTABLEKS R14 R15 K23 ["AppCommonLib"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K24 ["GetDefaultQualityLevel"]
  GETIMPORT R13 K12 [require]
  GETTABLEKS R14 R2 K13 ["Modules"]
  LOADK R16 K25 ["InGameMenu"]
  NAMECALL R14 R14 K6 ["WaitForChild"]
  CALL R14 2 1
  LOADK R16 K26 ["Resources"]
  NAMECALL R14 R14 K6 ["WaitForChild"]
  CALL R14 2 1
  LOADK R16 K27 ["Constants"]
  NAMECALL R14 R14 K6 ["WaitForChild"]
  CALL R14 2 -1
  CALL R13 -1 1
  NEWCLOSURE R14 P0
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE REF R10
  CAPTURE VAL R4
  CAPTURE VAL R12
  CLOSEUPVALS R10
  RETURN R14 1
