PROTO_0:
  GETIMPORT R1 K2 [math.random]
  LOADN R2 1
  LOADN R3 100
  CALL R1 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K5 ["CoreScriptBacktraceErrorReportPercentage"]
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
  DUPTABLE R4 K3 [{"PlayerCount"}]
  SETTABLEKS R1 R4 K2 ["PlayerCount"]
  NAMECALL R2 R0 K0 ["addAttributes"]
  CALL R2 2 0
  DUPTABLE R4 K5 [{"RobloxChannel"}]
  GETUPVAL R5 2
  NAMECALL R5 R5 K6 ["GetRobloxClientChannel"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["RobloxChannel"]
  NAMECALL R2 R0 K0 ["addAttributes"]
  CALL R2 2 0
  RETURN R0 1

PROTO_2:
  JUMPIFEQKNIL R2 [+64]
  GETUPVAL R6 0
  NAMECALL R4 R2 K0 ["IsDescendantOf"]
  CALL R4 2 1
  JUMPIF R4 [+5]
  GETUPVAL R6 1
  NAMECALL R4 R2 K0 ["IsDescendantOf"]
  CALL R4 2 1
  JUMPIFNOT R4 [+53]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["unstable_parseReactError"]
  MOVE R5 R0
  CALL R4 1 2
  GETTABLEKS R0 R4 K2 ["message"]
  GETTABLEKS R6 R4 K3 ["stack"]
  OR R1 R6 R1
  OR R3 R3 R5
  GETUPVAL R6 3
  MOVE R8 R0
  NAMECALL R6 R6 K4 ["cleanPii"]
  CALL R6 2 1
  GETUPVAL R7 3
  MOVE R9 R1
  NAMECALL R7 R7 K4 ["cleanPii"]
  CALL R7 2 1
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R8 3
  MOVE R10 R3
  NAMECALL R8 R8 K4 ["cleanPii"]
  CALL R8 2 1
  MOVE R3 R8
  GETUPVAL R8 4
  JUMPIFNOT R8 [+15]
  MOVE R9 R6
  MOVE R10 R7
  CONCAT R8 R9 R10
  GETUPVAL R9 5
  MOVE R11 R8
  NAMECALL R9 R9 K5 ["isRateLimited"]
  CALL R9 2 1
  JUMPIFNOT R9 [+1]
  RETURN R0 0
  GETUPVAL R9 5
  MOVE R11 R8
  NAMECALL R9 R9 K6 ["increment"]
  CALL R9 2 0
  GETUPVAL R8 6
  MOVE R10 R6
  MOVE R11 R7
  MOVE R12 R3
  NAMECALL R8 R8 K7 ["reportErrorDeferred"]
  CALL R8 4 0
  RETURN R0 0

PROTO_3:
  PREPVARARGS 0
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  GETVARARGS R2 -1
  CALL R0 -1 2
  JUMPIF R0 [+8]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["CoreScript error reporter failed to handle an error:
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
  GETIMPORT R13 K14 [require]
  GETTABLEKS R15 R2 K20 ["Packages"]
  GETTABLEKS R14 R15 K23 ["React"]
  CALL R13 1 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K24 ["DisableCorescriptBacktraceReporting"]
  LOADB R17 0
  NAMECALL R14 R14 K25 ["DefineFastFlag"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K26 ["CoreScriptBacktraceErrorUploadToken"]
  LOADK R17 K27 [""]
  NAMECALL R14 R14 K28 ["DefineFastString"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K29 ["CoreScriptBacktracePIIFilterEraseTimeoutSeconds"]
  LOADN R17 44
  NAMECALL R14 R14 K30 ["DefineFastInt"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K31 ["CoreScriptBacktraceRepeatedErrorRateLimiting"]
  LOADB R17 1
  NAMECALL R14 R14 K25 ["DefineFastFlag"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K32 ["CoreScriptBacktraceRepeatedErrorRateLimitCount"]
  LOADN R17 5
  NAMECALL R14 R14 K30 ["DefineFastInt"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K33 ["CoreScriptBacktraceRepeatedErrorRateLimitPeriod"]
  LOADN R17 60
  NAMECALL R14 R14 K30 ["DefineFastInt"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K34 ["CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths"]
  LOADN R17 10
  NAMECALL R14 R14 K30 ["DefineFastInt"]
  CALL R14 3 0
  GETIMPORT R14 K1 [game]
  LOADK R16 K35 ["CoreScriptBacktraceErrorReportPercentage"]
  LOADN R17 100
  NAMECALL R14 R14 K30 ["DefineFastInt"]
  CALL R14 3 0
  DUPCLOSURE R14 K36 [PROTO_0]
  GETIMPORT R15 K1 [game]
  LOADK R17 K24 ["DisableCorescriptBacktraceReporting"]
  NAMECALL R15 R15 K37 ["GetFastFlag"]
  CALL R15 2 1
  JUMPIF R15 [+159]
  GETIMPORT R15 K1 [game]
  LOADK R17 K26 ["CoreScriptBacktraceErrorUploadToken"]
  NAMECALL R15 R15 K38 ["GetFastString"]
  CALL R15 2 1
  JUMPIFEQKS R15 K27 [""] [+152]
  GETIMPORT R16 K41 [math.random]
  LOADN R17 1
  LOADN R18 100
  CALL R16 2 1
  GETIMPORT R18 K1 [game]
  LOADK R20 K35 ["CoreScriptBacktraceErrorReportPercentage"]
  NAMECALL R18 R18 K42 ["GetFastInt"]
  CALL R18 2 1
  LOADN R19 0
  LOADN R20 100
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R17 K44 [math.clamp]
  CALL R17 3 1
  JUMPIFLE R16 R17 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  JUMPIFNOT R15 [+129]
  DUPTABLE R15 K51 [{"LocalVersion", "BaseUrl", "PlaceId", "Platform", "UserAgent", "CoreScriptVersion"}]
  NAMECALL R16 R6 K52 ["GetRobloxVersion"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K45 ["LocalVersion"]
  GETTABLEKS R16 R0 K46 ["BaseUrl"]
  SETTABLEKS R16 R15 K46 ["BaseUrl"]
  GETIMPORT R17 K1 [game]
  GETTABLEKS R16 R17 K47 ["PlaceId"]
  SETTABLEKS R16 R15 K47 ["PlaceId"]
  NAMECALL R17 R8 K53 ["GetPlatform"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K54 ["Name"]
  SETTABLEKS R16 R15 K48 ["Platform"]
  NAMECALL R16 R3 K55 ["GetUserAgent"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K49 ["UserAgent"]
  NAMECALL R16 R6 K56 ["GetCoreScriptVersion"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K50 ["CoreScriptVersion"]
  GETTABLEKS R16 R11 K57 ["new"]
  DUPTABLE R17 K59 [{"eraseTimeout"}]
  GETIMPORT R18 K1 [game]
  LOADK R20 K29 ["CoreScriptBacktracePIIFilterEraseTimeoutSeconds"]
  NAMECALL R18 R18 K42 ["GetFastInt"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["eraseTimeout"]
  CALL R16 1 1
  GETIMPORT R17 K1 [game]
  LOADK R19 K31 ["CoreScriptBacktraceRepeatedErrorRateLimiting"]
  NAMECALL R17 R17 K37 ["GetFastFlag"]
  CALL R17 2 1
  LOADNIL R18
  JUMPIFNOT R17 [+30]
  GETTABLEKS R19 R10 K57 ["new"]
  DUPTABLE R20 K63 [{"period", "threshold", "processInterval"}]
  GETIMPORT R21 K1 [game]
  LOADK R23 K33 ["CoreScriptBacktraceRepeatedErrorRateLimitPeriod"]
  NAMECALL R21 R21 K42 ["GetFastInt"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K60 ["period"]
  GETIMPORT R21 K1 [game]
  LOADK R23 K32 ["CoreScriptBacktraceRepeatedErrorRateLimitCount"]
  NAMECALL R21 R21 K42 ["GetFastInt"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K61 ["threshold"]
  GETIMPORT R22 K1 [game]
  LOADK R24 K34 ["CoreScriptBacktraceRepeatedErrorRateLimitProcessIntervalTenths"]
  NAMECALL R22 R22 K42 ["GetFastInt"]
  CALL R22 2 1
  DIVK R21 R22 K64 [10]
  SETTABLEKS R21 R20 K62 ["processInterval"]
  CALL R19 1 1
  MOVE R18 R19
  DUPCLOSURE R19 K65 [PROTO_1]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R6
  GETTABLEKS R20 R12 K57 ["new"]
  DUPTABLE R21 K69 [{"httpService", "token", "processErrorReportMethod"}]
  SETTABLEKS R3 R21 K66 ["httpService"]
  GETIMPORT R22 K1 [game]
  LOADK R24 K26 ["CoreScriptBacktraceErrorUploadToken"]
  NAMECALL R22 R22 K38 ["GetFastString"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K67 ["token"]
  SETTABLEKS R19 R21 K68 ["processErrorReportMethod"]
  CALL R20 1 1
  NEWCLOSURE R21 P2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE REF R18
  CAPTURE VAL R20
  GETTABLEKS R22 R7 K70 ["ErrorDetailed"]
  DUPCLOSURE R24 K71 [PROTO_3]
  CAPTURE VAL R21
  NAMECALL R22 R22 K72 ["Connect"]
  CALL R22 2 0
  LOADK R24 K73 ["GetServerVersion"]
  LOADK R25 K74 [∞]
  NAMECALL R22 R5 K75 ["WaitForChild"]
  CALL R22 3 1
  NAMECALL R23 R22 K76 ["InvokeServer"]
  CALL R23 1 1
  SETTABLEKS R23 R15 K77 ["ServerVersion"]
  CLOSEUPVALS R18
  RETURN R0 0
