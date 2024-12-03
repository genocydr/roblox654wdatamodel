PROTO_0:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetSessionId"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_2:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetClientId"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  CLOSEUPVALS R0
  RETURN R0 1

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["print"]
  LOADK R3 K1 ["reportCounter"]
  MOVE R4 R0
  ORK R5 R1 K2 [1]
  CALL R2 3 0
  GETUPVAL R2 1
  MOVE R4 R0
  ORK R5 R1 K2 [1]
  NAMECALL R2 R2 K3 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["print"]
  LOADK R3 K1 ["reportStats"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["ReportStats"]
  CALL R2 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["printTable"]
  LOADK R3 K1 ["sendEventDeferred"]
  MOVE R4 R0
  GETUPVAL R5 1
  MOVE R7 R1
  NAMECALL R5 R5 K2 ["JSONEncode"]
  CALL R5 2 -1
  CALL R2 -1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["Dictionary"]
  GETTABLEKS R2 R3 K4 ["join"]
  MOVE R3 R1
  DUPTABLE R4 K8 [{"uid", "sid", "pid"}]
  LOADNIL R6
  GETIMPORT R7 K10 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE REF R6
  CAPTURE UPVAL U3
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K5 ["uid"]
  LOADNIL R6
  GETIMPORT R7 K10 [pcall]
  NEWCLOSURE R8 P1
  CAPTURE REF R6
  CAPTURE UPVAL U3
  CALL R7 1 0
  MOVE R5 R6
  CLOSEUPVALS R6
  SETTABLEKS R5 R4 K6 ["sid"]
  GETIMPORT R6 K12 [game]
  GETTABLEKS R5 R6 K13 ["PlaceId"]
  SETTABLEKS R5 R4 K7 ["pid"]
  CALL R2 2 1
  GETUPVAL R3 3
  LOADK R5 K14 ["studio"]
  LOADK R6 K15 ["gameSettings"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K16 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["reportCounter"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K4 ["GameSettings_SettingSaved_%s"]
  MOVE R5 R0
  CALL R3 2 -1
  CALL R2 -1 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K6 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K7 ["boolean"] [+16]
  JUMPIFNOT R1 [+2]
  LOADK R2 K8 ["Enabled"]
  JUMP [+1]
  LOADK R2 K9 ["Disabled"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["reportCounter"]
  GETIMPORT R4 K3 [string.format]
  LOADK R5 K10 ["GameSettings_Setting%s_%s"]
  MOVE R6 R2
  MOVE R7 R0
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K6 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K1 ["string"] [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["reportStats"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K12 ["GameSettings_StringSettingLength_%s"]
  MOVE R5 R0
  CALL R3 2 1
  NAMECALL R4 R1 K13 ["len"]
  CALL R4 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  GETIMPORT R2 K3 [string.format]
  LOADK R3 K4 ["GameSettings_PageLoadAttempt_%s"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["reportCounter"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K4 ["GameSettings_PageLoadSuccess_%s"]
  MOVE R5 R0
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["reportStats"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K6 ["GameSettings_PageLoadTime_Success_%s"]
  MOVE R5 R0
  CALL R3 2 1
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["reportCounter"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K4 ["GameSettings_PageLoadError_%s"]
  MOVE R5 R0
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["reportStats"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K6 ["GameSettings_PageLoadTime_Error_%s"]
  MOVE R5 R0
  CALL R3 2 1
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["GameSettings_SaveAttempt"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["GameSettings_SaveSuccess"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["reportStats"]
  LOADK R2 K3 ["GameSettings_SaveTime_Success"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  LOADK R2 K1 ["GameSettings_SaveError"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["reportStats"]
  LOADK R2 K3 ["GameSettings_SaveTime_Error"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reportCounter"]
  GETIMPORT R2 K3 [string.format]
  LOADK R3 K4 ["GameSettings_PageSaveError_%s"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["gameSettingsOpen"]
  NEWTABLE R4 0 0
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K2 ["toolOpened"]
  DUPTABLE R4 K6 [{"method", "uid", "gameId"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K3 ["method"]
  SETTABLEKS R0 R4 K4 ["uid"]
  SETTABLEKS R1 R4 K5 ["gameId"]
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["gameSettingsClose"]
  NEWTABLE R4 2 0
  SETTABLEKS R0 R4 K2 ["buttonSelected"]
  GETIMPORT R5 K5 [string.format]
  LOADK R6 K6 ["%f"]
  MOVE R7 R1
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["timeOpen"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  JUMPIFNOT R0 [+12]
  JUMPIFNOT R1 [+11]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["gameSettingsTabChange"]
  NEWTABLE R4 2 0
  SETTABLEKS R0 R4 K2 ["oldTab"]
  SETTABLEKS R1 R4 K3 ["newTab"]
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  GETIMPORT R3 K3 [string.format]
  LOADK R4 K4 ["GameSettings_%s_UserCount"]
  MOVE R5 R1
  CALL R3 2 1
  DUPTABLE R4 K7 [{"uid", "gameId"}]
  SETTABLEKS R0 R4 K5 ["uid"]
  GETIMPORT R6 K9 [game]
  GETTABLEKS R5 R6 K10 ["GameId"]
  SETTABLEKS R5 R4 K6 ["gameId"]
  CALL R2 2 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventDeferred"]
  GETIMPORT R4 K3 [string.format]
  LOADK R5 K4 ["GameSettings_%s%sGiven"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  DUPTABLE R5 K7 [{"uid", "gameId"}]
  SETTABLEKS R0 R5 K5 ["uid"]
  GETIMPORT R7 K9 [game]
  GETTABLEKS R6 R7 K10 ["GameId"]
  SETTABLEKS R6 R5 K6 ["gameId"]
  CALL R3 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["sendEventDeferred"]
  GETIMPORT R4 K3 [string.format]
  LOADK R5 K4 ["GameSettings_%s%sRemoved"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  DUPTABLE R5 K7 [{"uid", "gameId"}]
  SETTABLEKS R0 R5 K5 ["uid"]
  GETIMPORT R7 K9 [game]
  GETTABLEKS R6 R7 K10 ["GameId"]
  SETTABLEKS R6 R5 K6 ["gameId"]
  CALL R3 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["GameSettings_AccessPermissions_UserAdded"]
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["GameSettings_AccessPermissions_UserRemoved"]
  CALL R0 1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["GameSettings_AccessPermissions_GroupAdded"]
  CALL R0 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["GameSettings_AccessPermissions_GroupRemoved"]
  CALL R0 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCounter"]
  LOADK R1 K1 ["GameSettings_AccessPermissions_Failed"]
  CALL R0 1 0
  RETURN R0 0

PROTO_28:
  NEWTABLE R1 0 4
  LOADN R2 1
  LOADK R3 K0 [0.75]
  LOADK R4 K1 [0.5]
  LOADK R5 K2 [0.25]
  SETLIST R1 R2 4 [1]
  GETIMPORT R2 K4 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R8 0
  MUL R7 R6 R8
  JUMPIFNOTLE R7 R0 [+13]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["reportCounter"]
  LOADK R9 K6 ["GameSettings_AccessPermissions_NumCollaboratorThreshold_"]
  MULK R11 R6 K7 [100]
  FASTCALL1 MATH_FLOOR R11 [+2]
  GETIMPORT R10 K10 [math.floor]
  CALL R10 1 1
  CONCAT R8 R9 R10
  CALL R7 1 0
  JUMP [+2]
  FORGLOOP R2 2 [-17]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K11 ["sendEventDeferred"]
  LOADK R3 K12 ["GameSettings_AccessPermissions_NumCollaborators"]
  DUPTABLE R4 K15 [{"gameId", "numCollaborators"}]
  GETIMPORT R6 K17 [game]
  GETTABLEKS R5 R6 K18 ["GameId"]
  SETTABLEKS R5 R4 K13 ["gameId"]
  SETTABLEKS R0 R4 K14 ["numCollaborators"]
  CALL R2 2 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sendEventDeferred"]
  LOADK R3 K1 ["GameSettings_SecuritySettingChange"]
  DUPTABLE R4 K4 [{"settingName", "settingValue"}]
  SETTABLEKS R0 R4 K2 ["settingName"]
  SETTABLEKS R1 R4 K3 ["settingValue"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K12 ["MaxAccessPermissionsCollaborators"]
  LOADN R7 200
  NAMECALL R4 R4 K13 ["DefineFastInt"]
  CALL R4 3 1
  DUPCLOSURE R5 K14 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R0
  NEWTABLE R7 32 0
  DUPCLOSURE R8 K16 [PROTO_4]
  SETTABLEKS R8 R7 K17 ["print"]
  DUPCLOSURE R8 K18 [PROTO_5]
  SETTABLEKS R8 R7 K19 ["printTable"]
  DUPCLOSURE R8 K20 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K21 ["reportCounter"]
  DUPCLOSURE R8 K22 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K23 ["reportStats"]
  DUPCLOSURE R8 K24 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K25 ["sendEventDeferred"]
  DUPCLOSURE R8 K26 [PROTO_9]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K27 ["onSettingSaved"]
  DUPCLOSURE R8 K28 [PROTO_10]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K29 ["onPageLoadAttempt"]
  DUPCLOSURE R8 K30 [PROTO_11]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K31 ["onPageLoadSuccess"]
  DUPCLOSURE R8 K32 [PROTO_12]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K33 ["onPageLoadError"]
  DUPCLOSURE R8 K34 [PROTO_13]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K35 ["onSaveAttempt"]
  DUPCLOSURE R8 K36 [PROTO_14]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K37 ["onSaveSuccess"]
  DUPCLOSURE R8 K38 [PROTO_15]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K39 ["onSaveError"]
  DUPCLOSURE R8 K40 [PROTO_16]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K41 ["onPageSaveError"]
  DUPCLOSURE R8 K42 [PROTO_17]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K43 ["onOpenEvent"]
  DUPCLOSURE R8 K44 [PROTO_18]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K45 ["onCloseEvent"]
  DUPCLOSURE R8 K46 [PROTO_19]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K47 ["onTabChangeEvent"]
  DUPCLOSURE R8 K48 [PROTO_20]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K49 ["numberOfUsers"]
  DUPCLOSURE R8 K50 [PROTO_21]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K51 ["onPermissionGiven"]
  DUPCLOSURE R8 K52 [PROTO_22]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K53 ["onPermissionRemoved"]
  DUPCLOSURE R8 K54 [PROTO_23]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K55 ["onUserAdded"]
  DUPCLOSURE R8 K56 [PROTO_24]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K57 ["onUserRemoved"]
  DUPCLOSURE R8 K58 [PROTO_25]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K59 ["onGroupAdded"]
  DUPCLOSURE R8 K60 [PROTO_26]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K61 ["onGroupRemoved"]
  DUPCLOSURE R8 K62 [PROTO_27]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K63 ["onPermissionFailed"]
  DUPCLOSURE R8 K64 [PROTO_28]
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K65 ["onNumCollaboratorsChanged"]
  DUPCLOSURE R8 K66 [PROTO_29]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K67 ["onSecuritySettingChange"]
  RETURN R7 1