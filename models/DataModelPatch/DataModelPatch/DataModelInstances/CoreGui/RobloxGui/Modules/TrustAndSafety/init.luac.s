PROTO_0:
  GETTABLEKS R1 R0 K0 ["_initialized"]
  JUMPIF R1 [+6]
  NAMECALL R1 R0 K1 ["initialize"]
  CALL R1 1 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_initialized"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["propValidation"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["setGlobalConfig"]
  DUPTABLE R2 K2 [{"propValidation"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["propValidation"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["elementTracing"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["setGlobalConfig"]
  DUPTABLE R2 K4 [{"elementTracing"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["elementTracing"]
  CALL R1 1 0
  NAMECALL R1 R0 K5 ["createStore"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["store"]
  GETTABLEKS R1 R0 K6 ["store"]
  GETUPVAL R3 2
  GETIMPORT R5 K8 [game]
  GETTABLEKS R4 R5 K9 ["GameId"]
  CALL R3 1 -1
  NAMECALL R1 R1 K10 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R1 R0 K11 ["createLocalization"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K12 ["localization"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K13 ["createElement"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K14 ["StoreProvider"]
  DUPTABLE R3 K15 [{"store"}]
  GETTABLEKS R4 R0 K6 ["store"]
  SETTABLEKS R4 R3 K6 ["store"]
  DUPTABLE R4 K17 [{"PolicyProvider"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["createElement"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K18 ["Provider"]
  DUPTABLE R7 K20 [{"policy"}]
  NEWTABLE R8 0 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K21 ["Mapper"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K19 ["policy"]
  DUPTABLE R8 K23 [{"LocalizationProvider"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K13 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K24 [{"localization"}]
  GETTABLEKS R12 R0 K12 ["localization"]
  SETTABLEKS R12 R11 K12 ["localization"]
  DUPTABLE R12 K26 [{"TrustAndSafety"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K13 ["createElement"]
  GETUPVAL R14 6
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["TrustAndSafety"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["LocalizationProvider"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K16 ["PolicyProvider"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K27 ["root"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K28 ["mount"]
  GETTABLEKS R2 R0 K27 ["root"]
  GETUPVAL R3 7
  LOADK R4 K25 ["TrustAndSafety"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K29 ["element"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NEWTABLE R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["thunkMiddleware"]
  SETLIST R2 R3 1 [1]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["logStore"]
  JUMPIFNOT R3 [+9]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["loggerMiddleware"]
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K5 [table.insert]
  CALL R3 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["Store"]
  GETTABLEKS R3 R4 K7 ["new"]
  MOVE R4 R1
  LOADNIL R5
  MOVE R6 R2
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["RobloxLocaleId"]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["SetLocale"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["RobloxLocaleId"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R3 0
  LOADK R5 K0 ["RobloxLocaleId"]
  NAMECALL R3 R3 K2 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 0
  RETURN R2 1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["store"]
  GETUPVAL R5 0
  GETUPVAL R6 1
  CALL R6 0 -1
  CALL R5 -1 -1
  NAMECALL R3 R3 K1 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R0 K0 ["store"]
  GETUPVAL R5 3
  CALL R5 0 -1
  NAMECALL R3 R3 K1 ["dispatch"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K0 ["store"]
  GETUPVAL R5 4
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 -1
  NAMECALL R3 R3 K1 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["store"]
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R4 0 -1
  CALL R3 -1 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K0 ["store"]
  GETUPVAL R3 3
  CALL R3 0 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["store"]
  GETUPVAL R3 4
  CALL R3 0 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["instanceIsA"]
  LOADK R4 K1 ["Player"]
  CALL R3 1 1
  MOVE R4 R0
  CALL R3 1 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K3 [assert]
  CALL R2 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["startAbuseReportSession"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 3
  NAMECALL R2 R2 K5 ["getInstance"]
  CALL R2 1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["ReportType"]
  GETTABLEKS R4 R5 K1 ["Player"]
  MOVE R5 R0
  NAMECALL R2 R2 K7 ["openReportDialog"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["startAbuseReportSession"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["getInstance"]
  CALL R1 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["ReportType"]
  GETTABLEKS R3 R4 K3 ["Place"]
  NAMECALL R1 R1 K4 ["openReportDialog"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["startAbuseReportSession"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["getInstance"]
  CALL R1 1 1
  NAMECALL R1 R1 K2 ["openReportMenu"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setPreScreenshotHook"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setPostScreenshotHook"]
  MOVE R2 R0
  CALL R1 1 0
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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["LocalizationService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R1 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K8 ["Packages"]
  GETTABLEKS R7 R8 K12 ["t"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R1 K8 ["Packages"]
  GETTABLEKS R8 R9 K13 ["UIBlox"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETIMPORT R10 K15 [script]
  GETTABLEKS R9 R10 K16 ["Dependencies"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K17 ["Localization"]
  GETIMPORT R10 K7 [require]
  GETTABLEKS R11 R8 K18 ["LocalizationProvider"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R12 R8 K19 ["playerInterface"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETIMPORT R15 K15 [script]
  GETTABLEKS R14 R15 K20 ["Resources"]
  GETTABLEKS R13 R14 K21 ["Constants"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETIMPORT R15 K15 [script]
  GETTABLEKS R14 R15 K22 ["GlobalConfig"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETIMPORT R16 K15 [script]
  GETTABLEKS R15 R16 K23 ["Reducers"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETIMPORT R18 K15 [script]
  GETTABLEKS R17 R18 K24 ["Components"]
  GETTABLEKS R16 R17 K25 ["TrustAndSafetyApp"]
  CALL R15 1 1
  GETIMPORT R16 K7 [require]
  GETIMPORT R18 K15 [script]
  GETTABLEKS R17 R18 K26 ["TrustAndSafetyAppPolicy"]
  CALL R16 1 1
  GETIMPORT R17 K7 [require]
  GETIMPORT R20 K15 [script]
  GETTABLEKS R19 R20 K27 ["Actions"]
  GETTABLEKS R18 R19 K28 ["OpenReportDialog"]
  CALL R17 1 1
  GETIMPORT R18 K7 [require]
  GETIMPORT R21 K15 [script]
  GETTABLEKS R20 R21 K27 ["Actions"]
  GETTABLEKS R19 R20 K29 ["OpenReportMenu"]
  CALL R18 1 1
  GETIMPORT R19 K7 [require]
  GETIMPORT R22 K15 [script]
  GETTABLEKS R21 R22 K27 ["Actions"]
  GETTABLEKS R20 R21 K30 ["BeginReportFlow"]
  CALL R19 1 1
  GETIMPORT R20 K7 [require]
  GETIMPORT R23 K15 [script]
  GETTABLEKS R22 R23 K27 ["Actions"]
  GETTABLEKS R21 R22 K31 ["SetVoiceReportingFlow"]
  CALL R20 1 1
  GETIMPORT R21 K7 [require]
  GETIMPORT R24 K15 [script]
  GETTABLEKS R23 R24 K32 ["Thunks"]
  GETTABLEKS R22 R23 K33 ["IdentifyAvatars"]
  CALL R21 1 1
  GETIMPORT R22 K7 [require]
  GETIMPORT R25 K15 [script]
  GETTABLEKS R24 R25 K34 ["Utility"]
  GETTABLEKS R23 R24 K35 ["SessionUtility"]
  CALL R22 1 1
  GETIMPORT R23 K7 [require]
  GETIMPORT R26 K15 [script]
  GETTABLEKS R25 R26 K34 ["Utility"]
  GETTABLEKS R24 R25 K36 ["ScreenshotHookManager"]
  CALL R23 1 1
  GETIMPORT R24 K7 [require]
  GETIMPORT R27 K15 [script]
  GETTABLEKS R26 R27 K32 ["Thunks"]
  GETTABLEKS R25 R26 K37 ["FetchPlaceInfo"]
  CALL R24 1 1
  GETIMPORT R25 K7 [require]
  GETIMPORT R28 K15 [script]
  GETTABLEKS R27 R28 K38 ["Flags"]
  GETTABLEKS R26 R27 K39 ["GetFFlagEnableNewVoiceReportFlows"]
  CALL R25 1 1
  GETIMPORT R26 K7 [require]
  GETIMPORT R29 K15 [script]
  GETTABLEKS R28 R29 K38 ["Flags"]
  GETTABLEKS R27 R28 K40 ["GetFFlagReportAnythingScreenshot"]
  CALL R26 1 1
  NEWTABLE R27 8 0
  DUPCLOSURE R28 K41 [PROTO_0]
  SETTABLEKS R28 R27 K42 ["getInstance"]
  DUPCLOSURE R28 K43 [PROTO_1]
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R24
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R0
  SETTABLEKS R28 R27 K44 ["initialize"]
  DUPCLOSURE R28 K45 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R28 R27 K46 ["createStore"]
  DUPCLOSURE R28 K47 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R28 R27 K48 ["createLocalization"]
  DUPCLOSURE R28 K49 [PROTO_5]
  CAPTURE VAL R20
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R21
  CAPTURE VAL R19
  SETTABLEKS R28 R27 K50 ["openReportDialog"]
  DUPCLOSURE R28 K51 [PROTO_6]
  CAPTURE VAL R20
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R21
  CAPTURE VAL R19
  SETTABLEKS R28 R27 K52 ["openReportMenu"]
  DUPTABLE R28 K57 [{"openReportDialogForPlayer", "openReportDialogForPlace", "openReportMenu", "setPreReportScreenshotHook", "setPostReportScreenshotHook"}]
  DUPCLOSURE R29 K58 [PROTO_7]
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R22
  CAPTURE VAL R27
  CAPTURE VAL R12
  SETTABLEKS R29 R28 K53 ["openReportDialogForPlayer"]
  DUPCLOSURE R29 K59 [PROTO_8]
  CAPTURE VAL R22
  CAPTURE VAL R27
  CAPTURE VAL R12
  SETTABLEKS R29 R28 K54 ["openReportDialogForPlace"]
  DUPCLOSURE R29 K60 [PROTO_9]
  CAPTURE VAL R22
  CAPTURE VAL R27
  SETTABLEKS R29 R28 K52 ["openReportMenu"]
  DUPCLOSURE R29 K61 [PROTO_10]
  CAPTURE VAL R23
  SETTABLEKS R29 R28 K55 ["setPreReportScreenshotHook"]
  DUPCLOSURE R29 K62 [PROTO_11]
  CAPTURE VAL R23
  SETTABLEKS R29 R28 K56 ["setPostReportScreenshotHook"]
  RETURN R28 1