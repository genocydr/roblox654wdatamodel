PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+141]
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R4 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["localizationKeys"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["AbuseMethods"]
  GETTABLEKS R8 R9 K6 ["TextChat"]
  GETTABLE R6 R7 R8
  NAMECALL R4 R4 K7 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["label"]
  GETUPVAL R4 1
  LOADK R6 K8 ["Feature.SettingsHub.MethodOfAbuse.Text.Subtitle"]
  NAMECALL R4 R4 K7 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["subLabel"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["AbuseMethods"]
  GETTABLEKS R4 R5 K6 ["TextChat"]
  SETTABLEKS R4 R3 K2 ["identifier"]
  SETLIST R2 R3 1 [1]
  JUMPIFNOT R1 [+34]
  LENGTH R4 R2
  ADDK R3 R4 K9 [1]
  DUPTABLE R4 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R5 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["localizationKeys"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["AbuseMethods"]
  GETTABLEKS R9 R10 K10 ["Avatar"]
  GETTABLE R7 R8 R9
  NAMECALL R5 R5 K7 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["label"]
  GETUPVAL R5 1
  LOADK R7 K11 ["Feature.SettingsHub.MethodOfAbuse.AvatarSubtitle"]
  NAMECALL R5 R5 K7 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["subLabel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["AbuseMethods"]
  GETTABLEKS R5 R6 K10 ["Avatar"]
  SETTABLEKS R5 R4 K2 ["identifier"]
  SETTABLE R4 R2 R3
  JUMP [+33]
  LENGTH R4 R2
  ADDK R3 R4 K9 [1]
  DUPTABLE R4 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R5 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["localizationKeys"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["AbuseMethods"]
  GETTABLEKS R9 R10 K12 ["Other"]
  GETTABLE R7 R8 R9
  NAMECALL R5 R5 K7 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["label"]
  GETUPVAL R5 1
  LOADK R7 K13 ["Feature.SettingsHub.MethodOfAbuse.Other.Subtitle"]
  NAMECALL R5 R5 K7 ["FormatByKey"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["subLabel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["AbuseMethods"]
  GETTABLEKS R5 R6 K12 ["Other"]
  SETTABLEKS R5 R4 K2 ["identifier"]
  SETTABLE R4 R2 R3
  JUMPIFNOT R0 [+37]
  LOADN R5 1
  DUPTABLE R6 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R7 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["localizationKeys"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K5 ["AbuseMethods"]
  GETTABLEKS R11 R12 K14 ["VoiceChat"]
  GETTABLE R9 R10 R11
  NAMECALL R7 R7 K7 ["FormatByKey"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K0 ["label"]
  GETUPVAL R7 1
  LOADK R9 K15 ["Feature.SettingsHub.MethodOfAbuse.VoiceChat.Subtitle"]
  NAMECALL R7 R7 K7 ["FormatByKey"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K1 ["subLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["AbuseMethods"]
  GETTABLEKS R7 R8 K14 ["VoiceChat"]
  SETTABLEKS R7 R6 K2 ["identifier"]
  FASTCALL3 TABLE_INSERT R2 R5 R6
  MOVE R4 R2
  GETIMPORT R3 K18 [table.insert]
  CALL R3 3 0
  RETURN R2 1
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["AbuseMethods"]
  GETTABLEKS R4 R5 K6 ["TextChat"]
  SETTABLEKS R4 R3 K0 ["label"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K19 ["AbuseMethodSublabel"]
  GETTABLEKS R4 R5 K6 ["TextChat"]
  SETTABLEKS R4 R3 K1 ["subLabel"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["AbuseMethods"]
  GETTABLEKS R4 R5 K6 ["TextChat"]
  SETTABLEKS R4 R3 K2 ["identifier"]
  SETLIST R2 R3 1 [1]
  JUMPIFNOT R1 [+26]
  LENGTH R4 R2
  ADDK R3 R4 K9 [1]
  DUPTABLE R4 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["AbuseMethods"]
  GETTABLEKS R5 R6 K10 ["Avatar"]
  SETTABLEKS R5 R4 K0 ["label"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K19 ["AbuseMethodSublabel"]
  GETTABLEKS R5 R6 K10 ["Avatar"]
  SETTABLEKS R5 R4 K1 ["subLabel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["AbuseMethods"]
  GETTABLEKS R5 R6 K10 ["Avatar"]
  SETTABLEKS R5 R4 K2 ["identifier"]
  SETTABLE R4 R2 R3
  JUMP [+25]
  LENGTH R4 R2
  ADDK R3 R4 K9 [1]
  DUPTABLE R4 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["AbuseMethods"]
  GETTABLEKS R5 R6 K12 ["Other"]
  SETTABLEKS R5 R4 K0 ["label"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K19 ["AbuseMethodSublabel"]
  GETTABLEKS R5 R6 K12 ["Other"]
  SETTABLEKS R5 R4 K1 ["subLabel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["AbuseMethods"]
  GETTABLEKS R5 R6 K12 ["Other"]
  SETTABLEKS R5 R4 K2 ["identifier"]
  SETTABLE R4 R2 R3
  JUMPIFNOT R0 [+29]
  LOADN R5 1
  DUPTABLE R6 K3 [{"label", "subLabel", "identifier"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["AbuseMethods"]
  GETTABLEKS R7 R8 K14 ["VoiceChat"]
  SETTABLEKS R7 R6 K0 ["label"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K19 ["AbuseMethodSublabel"]
  GETTABLEKS R7 R8 K14 ["VoiceChat"]
  SETTABLEKS R7 R6 K1 ["subLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["AbuseMethods"]
  GETTABLEKS R7 R8 K14 ["VoiceChat"]
  SETTABLEKS R7 R6 K2 ["identifier"]
  FASTCALL3 TABLE_INSERT R2 R5 R6
  MOVE R4 R2
  GETIMPORT R3 K18 [table.insert]
  CALL R3 3 0
  RETURN R2 1

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
  GETTABLEKS R4 R0 K10 ["Components"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K12 ["Workspace"]
  GETTABLEKS R5 R6 K13 ["Packages"]
  GETTABLEKS R4 R5 K14 ["RobloxTranslator"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K15 ["Flags"]
  GETTABLEKS R5 R6 K16 ["GetFFlagTranslatorUseInAbuseMethods"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETGLOBAL R5 K18 ["getAvailableMethodsOfAbuse"]
  GETGLOBAL R5 K18 ["getAvailableMethodsOfAbuse"]
  RETURN R5 1
