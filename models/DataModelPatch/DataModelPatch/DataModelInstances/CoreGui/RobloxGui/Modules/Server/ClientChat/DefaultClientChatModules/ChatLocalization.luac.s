PROTO_0:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_hasFetchedLocalization"]
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_translator"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_translator"]
  JUMPIF R1 [+36]
  GETTABLEKS R1 R0 K1 ["_hasFetchedLocalization"]
  JUMPIF R1 [+33]
  LOADB R1 1
  SETTABLEKS R1 R0 K1 ["_hasFetchedLocalization"]
  GETUPVAL R1 0
  LOADK R3 K2 ["ChatLocalization"]
  LOADN R4 4
  NAMECALL R1 R1 K3 ["WaitForChild"]
  CALL R1 3 1
  JUMPIFNOT R1 [+19]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["RobloxLocaleId"]
  NAMECALL R2 R1 K5 ["GetTranslator"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K0 ["_translator"]
  GETUPVAL R2 1
  LOADK R4 K4 ["RobloxLocaleId"]
  NAMECALL R2 R2 K6 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 0
  JUMP [+4]
  GETIMPORT R2 K9 [warn]
  LOADK R3 K10 ["Missing ChatLocalization. Chat interface will not be localized."]
  CALL R2 1 0
  GETTABLEKS R1 R0 K0 ["_translator"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["_getTranslator"]
  CALL R0 1 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R3 2
  GETUPVAL R4 3
  NAMECALL R1 R0 K1 ["FormatByKey"]
  CALL R1 3 1
  SETUPVAL R1 1
  RETURN R0 0
  GETIMPORT R1 K3 [warn]
  LOADK R2 K4 ["Missing Translator. Used default for"]
  GETUPVAL R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  MOVE R4 R2
  GETIMPORT R5 K1 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE REF R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CALL R5 1 0
  CLOSEUPVALS R4
  RETURN R4 1

PROTO_4:
  GETIMPORT R2 K2 [string.find]
  MOVE R3 R1
  LOADK R4 K3 ["{RBX_LOCALIZATION_KEY}"]
  CALL R2 2 2
  JUMPIF R2 [+1]
  RETURN R1 1
  GETIMPORT R4 K2 [string.find]
  MOVE R5 R1
  LOADK R6 K4 ["{RBX_LOCALIZATION_DEFAULT}"]
  CALL R4 2 2
  JUMPIF R4 [+1]
  RETURN R1 1
  GETIMPORT R6 K2 [string.find]
  MOVE R7 R1
  LOADK R8 K5 ["{RBX_LOCALIZATION_PARAMS}"]
  CALL R6 2 2
  ADDK R10 R3 K6 [1]
  SUBK R11 R4 K6 [1]
  FASTCALL3 STRING_SUB R1 R10 R11
  MOVE R9 R1
  GETIMPORT R8 K8 [string.sub]
  CALL R8 3 1
  LOADNIL R9
  JUMPIF R6 [+14]
  ADDK R12 R5 K6 [1]
  FASTCALL2 STRING_SUB R1 R12 [+4]
  MOVE R11 R1
  GETIMPORT R10 K8 [string.sub]
  CALL R10 2 1
  MOVE R9 R10
  MOVE R12 R8
  MOVE R13 R9
  NAMECALL R10 R0 K9 ["Get"]
  CALL R10 3 -1
  RETURN R10 -1
  ADDK R12 R5 K6 [1]
  SUBK R13 R6 K6 [1]
  FASTCALL3 STRING_SUB R1 R12 R13
  MOVE R11 R1
  GETIMPORT R10 K8 [string.sub]
  CALL R10 3 1
  MOVE R9 R10
  ADDK R12 R7 K6 [1]
  FASTCALL2 STRING_SUB R1 R12 [+4]
  MOVE R11 R1
  GETIMPORT R10 K8 [string.sub]
  CALL R10 2 1
  NEWTABLE R11 0 0
  GETIMPORT R12 K11 [string.gmatch]
  MOVE R13 R10
  LOADK R14 K12 ["([^%s]+)=([^%s]+)"]
  CALL R12 2 3
  FORGPREP R12
  SETTABLE R16 R11 R15
  FORGLOOP R12 2 [-2]
  MOVE R14 R8
  MOVE R15 R9
  MOVE R16 R11
  NAMECALL R12 R0 K9 ["Get"]
  CALL R12 4 -1
  RETURN R12 -1

PROTO_5:
  JUMPIFNOT R3 [+11]
  JUMPIFNOT R4 [+10]
  LOADK R6 K0 ["{RBX_LOCALIZATION_KEY}"]
  MOVE R7 R1
  LOADK R8 K1 ["{RBX_LOCALIZATION_DEFAULT}"]
  MOVE R9 R2
  LOADK R10 K2 ["{RBX_LOCALIZATION_PARAMS}"]
  MOVE R11 R3
  LOADK R12 K3 ["="]
  MOVE R13 R4
  CONCAT R5 R6 R13
  RETURN R5 1
  LOADK R6 K0 ["{RBX_LOCALIZATION_KEY}"]
  MOVE R7 R1
  LOADK R8 K1 ["{RBX_LOCALIZATION_DEFAULT}"]
  MOVE R9 R2
  CONCAT R5 R6 R9
  RETURN R5 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+7]
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["Get"]
  CALL R2 3 -1
  RETURN R2 -1
  GETIMPORT R2 K2 [pairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETIMPORT R7 K5 [string.find]
  MOVE R8 R1
  MOVE R9 R5
  CALL R7 2 1
  JUMPIFNOT R7 [+13]
  MOVE R9 R6
  MOVE R10 R5
  NAMECALL R7 R0 K0 ["Get"]
  CALL R7 3 1
  GETIMPORT R8 K7 [string.gsub]
  MOVE R9 R1
  MOVE R10 R5
  MOVE R11 R7
  LOADN R12 1
  CALL R8 4 -1
  RETURN R8 -1
  FORGLOOP R2 2 [-20]
  GETIMPORT R2 K2 [pairs]
  GETUPVAL R3 1
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETIMPORT R7 K5 [string.find]
  MOVE R8 R1
  MOVE R9 R5
  CALL R7 2 1
  GETIMPORT R8 K9 [string.match]
  MOVE R9 R1
  MOVE R10 R5
  CALL R8 2 1
  JUMPIFNOT R7 [+23]
  JUMPIFNOT R8 [+22]
  GETTABLEKS R11 R6 K10 ["LocalizationKey"]
  GETTABLEKS R12 R6 K11 ["English"]
  NAMECALL R9 R0 K0 ["Get"]
  CALL R9 3 1
  LOADN R11 1
  JUMPIFNOTLT R11 R7 [+7]
  LOADN R12 1
  SUBK R13 R7 K12 [1]
  NAMECALL R10 R1 K13 ["sub"]
  CALL R10 3 1
  JUMP [+1]
  LOADK R10 K14 [""]
  MOVE R12 R10
  MOVE R13 R9
  MOVE R14 R8
  CONCAT R11 R12 R14
  RETURN R11 1
  FORGLOOP R2 2 [-35]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Chat"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWTABLE R2 2 0
  LOADK R3 K5 ["InGame.Chat.Label.SystemMessagePrefix"]
  SETTABLEKS R3 R2 K6 ["System"]
  LOADK R3 K7 ["InGame.Chat.Label.TeamMessagePrefix"]
  SETTABLEKS R3 R2 K8 ["Team"]
  NEWTABLE R3 2 0
  DUPTABLE R4 K11 [{"English", "LocalizationKey"}]
  LOADK R5 K12 ["From"]
  SETTABLEKS R5 R4 K9 ["English"]
  LOADK R5 K13 ["InGame.Chat.Label.From"]
  SETTABLEKS R5 R4 K10 ["LocalizationKey"]
  SETTABLEKS R4 R3 K14 ["From(%s.+)"]
  DUPTABLE R4 K11 [{"English", "LocalizationKey"}]
  LOADK R5 K15 ["To"]
  SETTABLEKS R5 R4 K9 ["English"]
  LOADK R5 K16 ["InGame.Chat.Label.To"]
  SETTABLEKS R5 R4 K10 ["LocalizationKey"]
  SETTABLEKS R4 R3 K17 ["To(%s.+)"]
  DUPTABLE R4 K19 [{"_hasFetchedLocalization"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K18 ["_hasFetchedLocalization"]
  DUPCLOSURE R5 K20 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K21 ["_getTranslator"]
  DUPCLOSURE R5 K22 [PROTO_3]
  SETTABLEKS R5 R4 K23 ["Get"]
  DUPCLOSURE R5 K24 [PROTO_4]
  SETTABLEKS R5 R4 K25 ["LocalizeFormattedMessage"]
  DUPCLOSURE R5 K26 [PROTO_5]
  SETTABLEKS R5 R4 K27 ["FormatMessageToSend"]
  DUPCLOSURE R5 K28 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K29 ["tryLocalize"]
  RETURN R4 1
