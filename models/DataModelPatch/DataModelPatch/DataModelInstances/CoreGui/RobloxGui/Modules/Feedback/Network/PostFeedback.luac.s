PROTO_0:
  JUMPIFNOT R0 [+3]
  GETUPVAL R2 0
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R4 R1 K0 ["StatusMessage"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  MOVE R5 R0
  NAMECALL R3 R3 K0 ["RequestInternal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  NAMECALL R3 R3 K1 ["Start"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  MOVE R5 R0
  NAMECALL R3 R3 K0 ["RequestInternal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  NAMECALL R3 R3 K1 ["Start"]
  CALL R3 2 1
  RETURN R0 0

PROTO_3:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  LOADN R6 1
  JUMPIFEQKS R2 K0 [""] [+3]
  JUMPIFNOTEQKNIL R2 [+8]
  LOADK R7 K1 ["UID_"]
  GETIMPORT R9 K3 [game]
  GETTABLEKS R8 R9 K4 ["GameId"]
  CONCAT R2 R7 R8
  LOADN R6 2
  DUPTABLE R7 K6 [{"LocalizationFeedback"}]
  DUPTABLE R8 K12 [{"FeedbackTarget", "Locale", "ReasonType", "Suggestion", "Comments"}]
  DUPTABLE R9 K16 [{"ServiceSource", "Source", "Translation"}]
  DUPTABLE R10 K19 [{"Type", "ExternalId"}]
  SETTABLEKS R6 R10 K17 ["Type"]
  SETTABLEKS R2 R10 K18 ["ExternalId"]
  SETTABLEKS R10 R9 K13 ["ServiceSource"]
  DUPTABLE R10 K22 [{"ContentType", "Value"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K20 ["ContentType"]
  SETTABLEKS R0 R10 K21 ["Value"]
  SETTABLEKS R10 R9 K14 ["Source"]
  DUPTABLE R10 K22 [{"ContentType", "Value"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K20 ["ContentType"]
  SETTABLEKS R1 R10 K21 ["Value"]
  SETTABLEKS R10 R9 K15 ["Translation"]
  SETTABLEKS R9 R8 K7 ["FeedbackTarget"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K23 ["LocalPlayer"]
  GETTABLEKS R10 R11 K24 ["LocaleId"]
  JUMPIFNOT R10 [+11]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K23 ["LocalPlayer"]
  GETTABLEKS R9 R10 K24 ["LocaleId"]
  LOADK R11 K25 ["-"]
  LOADK R12 K26 ["_"]
  NAMECALL R9 R9 K27 ["gsub"]
  CALL R9 3 1
  JUMP [+1]
  LOADK R9 K0 [""]
  SETTABLEKS R9 R8 K8 ["Locale"]
  SETTABLEKS R5 R8 K9 ["ReasonType"]
  DUPTABLE R9 K22 [{"ContentType", "Value"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["ContentType"]
  SETTABLEKS R3 R9 K21 ["Value"]
  SETTABLEKS R9 R8 K10 ["Suggestion"]
  SETTABLEKS R4 R8 K11 ["Comments"]
  SETTABLEKS R8 R7 K5 ["LocalizationFeedback"]
  GETIMPORT R8 K30 [string.format]
  LOADK R9 K31 ["%sfeedback-api/v1/feedback/create-localization"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K32 ["APIS_URL"]
  CALL R8 2 1
  DUPTABLE R9 K37 [{"Url", "Method", "Body", "Headers"}]
  SETTABLEKS R8 R9 K33 ["Url"]
  LOADK R10 K38 ["POST"]
  SETTABLEKS R10 R9 K34 ["Method"]
  GETUPVAL R10 2
  MOVE R12 R7
  NAMECALL R10 R10 K39 ["JSONEncode"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K35 ["Body"]
  NEWTABLE R10 2 0
  LOADK R11 K40 ["application/json"]
  SETTABLEKS R11 R10 K41 ["Content-Type"]
  LOADK R11 K40 ["application/json"]
  SETTABLEKS R11 R10 K42 ["Accept"]
  SETTABLEKS R10 R9 K36 ["Headers"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K43 ["new"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE UPVAL U2
  CALL R10 1 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["InGameMenu"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R1 K6 ["Network"]
  GETTABLEKS R3 R4 K7 ["Url"]
  CALL R2 1 1
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["HttpService"]
  NAMECALL R3 R3 K11 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K9 [game]
  LOADK R6 K12 ["Players"]
  NAMECALL R4 R4 K11 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [game]
  LOADK R7 K13 ["CorePackages"]
  NAMECALL R5 R5 K11 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R5 K14 ["Packages"]
  GETTABLEKS R7 R8 K15 ["InGameMenuDependencies"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["Promise"]
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R9 K18 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R9 1
