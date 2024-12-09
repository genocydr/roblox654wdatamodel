PROTO_0:
  GETIMPORT R1 K2 [math.random]
  LOADN R2 1
  LOADN R3 100
  CALL R1 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K5 ["CEVBacktraceErrorReportPercentage"]
  NAMECALL R3 R3 K6 ["GetFastInt"]
  CALL R3 2 1
  LOADN R4 0
  LOADN R5 100
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K8 [math.clamp]
  CALL R2 3 1
  JUMPIFLE R1 R2 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R3 0
  NAMECALL R1 R0 K0 ["addAttributes"]
  CALL R1 2 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["GetPlayers"]
  CALL R2 1 1
  LENGTH R1 R2
  DUPTABLE R4 K4 [{"PlayerCount", "RobloxChannel"}]
  SETTABLEKS R1 R4 K2 ["PlayerCount"]
  GETUPVAL R5 2
  NAMECALL R5 R5 K5 ["GetRobloxClientChannel"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K3 ["RobloxChannel"]
  NAMECALL R2 R0 K0 ["addAttributes"]
  CALL R2 2 0
  RETURN R0 1

PROTO_2:
  JUMPIFEQKNIL R2 [+53]
  GETUPVAL R6 0
  NAMECALL R4 R2 K0 ["IsDescendantOf"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  GETUPVAL R6 1
  NAMECALL R4 R2 K0 ["IsDescendantOf"]
  CALL R4 2 1
  JUMPIFNOT R4 [+42]
  GETUPVAL R4 2
  MOVE R6 R0
  NAMECALL R4 R4 K1 ["cleanPii"]
  CALL R4 2 1
  GETUPVAL R5 2
  MOVE R7 R1
  NAMECALL R5 R5 K1 ["cleanPii"]
  CALL R5 2 1
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R6 2
  MOVE R8 R3
  NAMECALL R6 R6 K1 ["cleanPii"]
  CALL R6 2 1
  MOVE R3 R6
  GETUPVAL R6 3
  JUMPIFNOT R6 [+15]
  MOVE R7 R4
  MOVE R8 R5
  CONCAT R6 R7 R8
  GETUPVAL R7 4
  MOVE R9 R6
  NAMECALL R7 R7 K2 ["isRateLimited"]
  CALL R7 2 1
  JUMPIFNOT R7 [+1]
  RETURN R0 0
  GETUPVAL R7 4
  MOVE R9 R6
  NAMECALL R7 R7 K3 ["increment"]
  CALL R7 2 0
  GETUPVAL R6 5
  MOVE R8 R4
  MOVE R9 R5
  MOVE R10 R3
  NAMECALL R6 R6 K4 ["reportErrorDeferred"]
  CALL R6 4 0
  RETURN R0 0

PROTO_3:
  PREPVARARGS 0
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  GETVARARGS R2 -1
  CALL R0 -1 2
  JUMPIF R0 [+8]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["CEV error reporter failed to handle an error:
%s"]
  MOVE R5 R1
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CorePackages"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["HttpService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["Players"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["RobloxReplicatedStorage"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K9 ["RunService"]
  NAMECALL R6 R6 K3 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K10 ["ScriptContext"]
  NAMECALL R7 R7 K3 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K11 ["UserInputService"]
  NAMECALL R8 R8 K3 ["GetService"]
  CALL R8 2 1
  GETTABLEKS R9 R1 K12 ["RobloxGui"]
  GETIMPORT R10 K14 [require]
  GETTABLEKS R13 R9 K15 ["Modules"]
  GETTABLEKS R12 R13 K16 ["ErrorReporting"]
  GETTABLEKS R11 R12 K17 ["RateLimiter"]
  CALL R10 1 1
  GETIMPORT R11 K14 [require]
  GETTABLEKS R14 R9 K15 ["Modules"]
  GETTABLEKS R13 R14 K16 ["ErrorReporting"]
  GETTABLEKS R12 R13 K18 ["PiiFilter"]
  CALL R11 1 1
  GETIMPORT R13 K14 [require]
  GETTABLEKS R16 R2 K19 ["Workspace"]
  GETTABLEKS R15 R16 K20 ["Packages"]
  GETTABLEKS R14 R15 K21 ["ErrorReporters"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K22 ["BacktraceReporter"]
  GETIMPORT R13 K1 [game]
  LOADK R15 K23 ["DisableCEVBacktraceReporting"]
  LOADB R16 0
  NAMECALL R13 R13 K24 ["DefineFastFlag"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K25 ["CoreScriptBacktraceErrorUploadToken"]
  LOADK R16 K26 [""]
  NAMECALL R13 R13 K27 ["DefineFastString"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K28 ["CEVBacktracePIIFilterEraseTimeoutSeconds"]
  LOADN R16 44
  NAMECALL R13 R13 K29 ["DefineFastInt"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K30 ["CEVBacktraceRepeatedErrorRateLimiting"]
  LOADB R16 1
  NAMECALL R13 R13 K24 ["DefineFastFlag"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K31 ["CEVBacktraceRepeatedErrorRateLimitCount"]
  LOADN R16 5
  NAMECALL R13 R13 K29 ["DefineFastInt"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K32 ["CEVBacktraceRepeatedErrorRateLimitPeriod"]
  LOADN R16 60
  NAMECALL R13 R13 K29 ["DefineFastInt"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K33 ["CEVBacktraceRepeatedErrorRateLimitProcessIntervalTenths"]
  LOADN R16 10
  NAMECALL R13 R13 K29 ["DefineFastInt"]
  CALL R13 3 0
  GETIMPORT R13 K1 [game]
  LOADK R15 K34 ["CEVBacktraceErrorReportPercentage"]
  LOADN R16 100
  NAMECALL R13 R13 K29 ["DefineFastInt"]
  CALL R13 3 0
  DUPCLOSURE R13 K35 [PROTO_0]
  GETIMPORT R14 K1 [game]
  LOADK R16 K23 ["DisableCEVBacktraceReporting"]
  NAMECALL R14 R14 K36 ["GetFastFlag"]
  CALL R14 2 1
  JUMPIF R14 [+161]
  GETIMPORT R14 K1 [game]
  LOADK R16 K25 ["CoreScriptBacktraceErrorUploadToken"]
  NAMECALL R14 R14 K37 ["GetFastString"]
  CALL R14 2 1
  JUMPIFEQKS R14 K26 [""] [+154]
  GETIMPORT R15 K40 [math.random]
  LOADN R16 1
  LOADN R17 100
  CALL R15 2 1
  GETIMPORT R17 K1 [game]
  LOADK R19 K34 ["CEVBacktraceErrorReportPercentage"]
  NAMECALL R17 R17 K41 ["GetFastInt"]
  CALL R17 2 1
  LOADN R18 0
  LOADN R19 100
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R16 K43 [math.clamp]
  CALL R16 3 1
  JUMPIFLE R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFNOT R14 [+131]
  DUPTABLE R14 K51 [{"LocalVersion", "BaseUrl", "PlaceId", "Platform", "UserAgent", "CoreScriptVersion", "AppName"}]
  NAMECALL R15 R6 K52 ["GetRobloxVersion"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K44 ["LocalVersion"]
  GETTABLEKS R15 R0 K45 ["BaseUrl"]
  SETTABLEKS R15 R14 K45 ["BaseUrl"]
  GETIMPORT R16 K1 [game]
  GETTABLEKS R15 R16 K46 ["PlaceId"]
  SETTABLEKS R15 R14 K46 ["PlaceId"]
  NAMECALL R16 R8 K53 ["GetPlatform"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K54 ["Name"]
  SETTABLEKS R15 R14 K47 ["Platform"]
  NAMECALL R15 R3 K55 ["GetUserAgent"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K48 ["UserAgent"]
  NAMECALL R15 R6 K56 ["GetCoreScriptVersion"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K49 ["CoreScriptVersion"]
  LOADK R15 K57 ["CrossExperienceVoice"]
  SETTABLEKS R15 R14 K50 ["AppName"]
  GETTABLEKS R15 R11 K58 ["new"]
  DUPTABLE R16 K60 [{"eraseTimeout"}]
  GETIMPORT R17 K1 [game]
  LOADK R19 K28 ["CEVBacktracePIIFilterEraseTimeoutSeconds"]
  NAMECALL R17 R17 K41 ["GetFastInt"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K59 ["eraseTimeout"]
  CALL R15 1 1
  GETIMPORT R16 K1 [game]
  LOADK R18 K30 ["CEVBacktraceRepeatedErrorRateLimiting"]
  NAMECALL R16 R16 K36 ["GetFastFlag"]
  CALL R16 2 1
  LOADNIL R17
  JUMPIFNOT R16 [+30]
  GETTABLEKS R18 R10 K58 ["new"]
  DUPTABLE R19 K64 [{"period", "threshold", "processInterval"}]
  GETIMPORT R20 K1 [game]
  LOADK R22 K32 ["CEVBacktraceRepeatedErrorRateLimitPeriod"]
  NAMECALL R20 R20 K41 ["GetFastInt"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["period"]
  GETIMPORT R20 K1 [game]
  LOADK R22 K31 ["CEVBacktraceRepeatedErrorRateLimitCount"]
  NAMECALL R20 R20 K41 ["GetFastInt"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["threshold"]
  GETIMPORT R21 K1 [game]
  LOADK R23 K33 ["CEVBacktraceRepeatedErrorRateLimitProcessIntervalTenths"]
  NAMECALL R21 R21 K41 ["GetFastInt"]
  CALL R21 2 1
  DIVK R20 R21 K65 [10]
  SETTABLEKS R20 R19 K63 ["processInterval"]
  CALL R18 1 1
  MOVE R17 R18
  DUPCLOSURE R18 K66 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R4
  CAPTURE VAL R6
  GETTABLEKS R19 R12 K58 ["new"]
  DUPTABLE R20 K70 [{"httpService", "token", "processErrorReportMethod"}]
  SETTABLEKS R3 R20 K67 ["httpService"]
  GETIMPORT R21 K1 [game]
  LOADK R23 K25 ["CoreScriptBacktraceErrorUploadToken"]
  NAMECALL R21 R21 K37 ["GetFastString"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K68 ["token"]
  SETTABLEKS R18 R20 K69 ["processErrorReportMethod"]
  CALL R19 1 1
  NEWCLOSURE R20 P2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE REF R17
  CAPTURE VAL R19
  GETTABLEKS R21 R7 K71 ["ErrorDetailed"]
  DUPCLOSURE R23 K72 [PROTO_3]
  CAPTURE VAL R20
  NAMECALL R21 R21 K73 ["Connect"]
  CALL R21 2 0
  LOADK R23 K74 ["GetServerVersion"]
  LOADK R24 K75 [∞]
  NAMECALL R21 R5 K76 ["WaitForChild"]
  CALL R21 3 1
  NAMECALL R22 R21 K77 ["InvokeServer"]
  CALL R22 1 1
  SETTABLEKS R22 R14 K78 ["ServerVersion"]
  CLOSEUPVALS R17
  RETURN R0 0
