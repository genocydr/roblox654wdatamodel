PROTO_0:
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [game]
  LOADK R5 K4 ["Chat"]
  NAMECALL R3 R3 K5 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K6 ["ClientChatModules"]
  GETTABLEKS R1 R2 K7 ["ChatLocalization"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  RETURN R2 1

PROTO_2:
  NAMECALL R1 R0 K0 ["len"]
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["MaximumMessageLength"]
  MULK R2 R3 K1 [6]
  JUMPIFNOTLT R2 R1 [+3]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K4 [utf8.len]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K4 [utf8.len]
  GETIMPORT R2 K6 [utf8.nfcnormalize]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["MaximumMessageLength"]
  JUMPIFNOTLT R2 R1 [+3]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  NAMECALL R0 R0 K1 ["CanUserChatAsync"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["IsStudio"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  GETIMPORT R1 K2 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 2
  AND R3 R1 R2
  RETURN R3 1

PROTO_5:
  GETUPVAL R3 0
  MOVE R5 R0
  NAMECALL R3 R3 K0 ["GetSpeaker"]
  CALL R3 2 1
  NAMECALL R4 R3 K1 ["GetPlayer"]
  CALL R4 1 1
  JUMPIF R3 [+2]
  LOADB R5 0
  RETURN R5 1
  JUMPIF R4 [+2]
  LOADB R5 0
  RETURN R5 1
  GETUPVAL R5 1
  NAMECALL R5 R5 K2 ["IsStudio"]
  CALL R5 1 1
  JUMPIF R5 [+7]
  GETTABLEKS R5 R4 K3 ["UserId"]
  LOADN R6 1
  JUMPIFNOTLT R5 R6 [+3]
  LOADB R5 1
  RETURN R5 1
  GETUPVAL R6 1
  NAMECALL R6 R6 K2 ["IsStudio"]
  CALL R6 1 1
  JUMPIFNOT R6 [+2]
  LOADB R5 1
  JUMP [+7]
  GETIMPORT R6 K5 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  CALL R6 1 2
  AND R5 R6 R7
  JUMPIF R5 [+12]
  GETUPVAL R7 3
  LOADK R9 K6 ["GameChat_ChatMessageValidator_SettingsError"]
  LOADK R10 K7 ["Your chat settings prevent you from sending messages."]
  NAMECALL R7 R7 K8 ["FormatMessageToSend"]
  CALL R7 3 1
  MOVE R8 R2
  NAMECALL R5 R3 K9 ["SendSystemMessage"]
  CALL R5 3 0
  LOADB R5 1
  RETURN R5 1
  GETUPVAL R5 4
  MOVE R6 R1
  CALL R5 1 1
  JUMPIF R5 [+13]
  GETUPVAL R5 3
  LOADK R7 K10 ["GameChat_ChatMessageValidator_MaxLengthError"]
  LOADK R8 K11 ["Your message exceeds the maximum message length."]
  NAMECALL R5 R5 K8 ["FormatMessageToSend"]
  CALL R5 3 1
  MOVE R8 R5
  MOVE R9 R2
  NAMECALL R6 R3 K9 ["SendSystemMessage"]
  CALL R6 3 0
  LOADB R6 1
  RETURN R6 1
  GETIMPORT R5 K13 [pairs]
  GETUPVAL R6 5
  CALL R5 1 3
  FORGPREP_NEXT R5
  MOVE R12 R9
  NAMECALL R10 R1 K14 ["find"]
  CALL R10 2 1
  JUMPIFNOT R10 [+12]
  GETUPVAL R12 3
  LOADK R14 K15 ["GameChat_ChatMessageValidator_WhitespaceError"]
  LOADK R15 K16 ["Your message contains whitespace that is not allowed."]
  NAMECALL R12 R12 K8 ["FormatMessageToSend"]
  CALL R12 3 1
  MOVE R13 R2
  NAMECALL R10 R3 K9 ["SendSystemMessage"]
  CALL R10 3 0
  LOADB R10 1
  RETURN R10 1
  FORGLOOP R5 2 [-18]
  LOADB R5 0
  RETURN R5 1

PROTO_6:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  LOADK R4 K0 ["message_validation"]
  MOVE R5 R1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K1 ["VeryHighPriority"]
  NAMECALL R2 R0 K2 ["RegisterProcessCommandsFunction"]
  CALL R2 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Chat"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["ClientChatModules"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  LOADK R6 K9 ["ChatSettings"]
  NAMECALL R4 R2 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K8 [require]
  LOADK R7 K10 ["ChatConstants"]
  NAMECALL R5 R2 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  LOADNIL R5
  GETIMPORT R6 K12 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CALL R6 1 0
  JUMPIFNOTEQKNIL R5 [+3]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R5 K13 ["FormatMessageToSend"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R6 R5 K14 ["LocalizeFormattedMessage"]
  JUMPIF R6 [+3]
  DUPCLOSURE R6 K15 [PROTO_1]
  SETTABLEKS R6 R5 K13 ["FormatMessageToSend"]
  NEWTABLE R6 0 5
  LOADK R7 K16 ["
"]
  LOADK R8 K17 [""]
  LOADK R9 K18 ["	"]
  LOADK R10 K19 [""]
  LOADK R11 K20 [""]
  SETLIST R6 R7 5 [1]
  GETTABLEKS R7 R3 K21 ["DisallowedWhiteSpace"]
  JUMPIFNOT R7 [+2]
  GETTABLEKS R6 R3 K21 ["DisallowedWhiteSpace"]
  DUPCLOSURE R7 K22 [PROTO_2]
  CAPTURE VAL R3
  DUPCLOSURE R8 K23 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWCLOSURE R9 P4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE REF R5
  CAPTURE VAL R7
  CAPTURE REF R6
  CAPTURE VAL R4
  CLOSEUPVALS R5
  RETURN R9 1
