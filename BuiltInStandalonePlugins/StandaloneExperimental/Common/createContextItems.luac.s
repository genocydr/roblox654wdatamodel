PROTO_0:
  LOADK R0 K0 ["client_id"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["session_id"]
  RETURN R0 1

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Packages"]
  GETTABLEKS R3 R4 K3 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K4 ["ContextServices"]
  GETTABLEKS R4 R3 K5 ["Analytics"]
  GETTABLEKS R5 R3 K6 ["Mouse"]
  GETTABLEKS R6 R3 K7 ["Localization"]
  GETTABLEKS R7 R3 K8 ["Store"]
  GETIMPORT R8 K1 [require]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["Src"]
  GETTABLEKS R10 R11 K10 ["Resources"]
  GETTABLEKS R9 R10 K11 ["createAnalyticsHandlers"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Resources"]
  GETTABLEKS R10 R11 K12 ["MakeTheme"]
  CALL R9 1 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["Src"]
  GETTABLEKS R12 R13 K10 ["Resources"]
  GETTABLEKS R11 R12 K7 ["Localization"]
  GETTABLEKS R10 R11 K13 ["SourceStrings"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["Src"]
  GETTABLEKS R13 R14 K10 ["Resources"]
  GETTABLEKS R12 R13 K7 ["Localization"]
  GETTABLEKS R11 R12 K14 ["LocalizedStrings"]
  GETTABLEKS R13 R3 K15 ["Plugin"]
  GETTABLEKS R12 R13 K16 ["new"]
  MOVE R13 R0
  CALL R12 1 1
  GETTABLEKS R13 R5 K16 ["new"]
  NAMECALL R14 R0 K17 ["getMouse"]
  CALL R14 1 -1
  CALL R13 -1 1
  GETTABLEKS R14 R7 K16 ["new"]
  MOVE R15 R1
  CALL R14 1 1
  MOVE R15 R9
  CALL R15 0 1
  GETTABLEKS R16 R6 K16 ["new"]
  DUPTABLE R17 K21 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R10 R17 K18 ["stringResourceTable"]
  SETTABLEKS R11 R17 K19 ["translationResourceTable"]
  LOADK R18 K22 ["StandaloneExperimental"]
  SETTABLEKS R18 R17 K20 ["pluginName"]
  CALL R16 1 1
  DUPTABLE R17 K27 [{"GetClientId", "GetSessionId", "SendEventDeferred", "ReportCounter"}]
  DUPCLOSURE R18 K28 [PROTO_0]
  SETTABLEKS R18 R17 K23 ["GetClientId"]
  DUPCLOSURE R18 K29 [PROTO_1]
  SETTABLEKS R18 R17 K24 ["GetSessionId"]
  DUPCLOSURE R18 K30 [PROTO_2]
  SETTABLEKS R18 R17 K25 ["SendEventDeferred"]
  DUPCLOSURE R18 K31 [PROTO_3]
  SETTABLEKS R18 R17 K26 ["ReportCounter"]
  GETTABLEKS R18 R4 K16 ["new"]
  MOVE R19 R8
  MOVE R20 R17
  CALL R18 2 1
  DUPTABLE R19 K33 [{"Plugin", "Mouse", "Store", "Theme", "Localization", "Analytics"}]
  SETTABLEKS R12 R19 K15 ["Plugin"]
  SETTABLEKS R13 R19 K6 ["Mouse"]
  SETTABLEKS R14 R19 K8 ["Store"]
  SETTABLEKS R15 R19 K32 ["Theme"]
  SETTABLEKS R16 R19 K7 ["Localization"]
  SETTABLEKS R18 R19 K5 ["Analytics"]
  RETURN R19 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  DUPCLOSURE R1 K3 [PROTO_4]
  CAPTURE VAL R0
  RETURN R1 1
