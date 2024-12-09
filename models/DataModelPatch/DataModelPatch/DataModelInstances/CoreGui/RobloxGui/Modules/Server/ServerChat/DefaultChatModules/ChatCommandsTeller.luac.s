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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ShowJoinAndLeaveHelpText"]
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ShowJoinAndLeaveHelpText"]
  RETURN R0 1
  LOADB R0 0
  RETURN R0 1

PROTO_3:
  NAMECALL R3 R1 K0 ["lower"]
  CALL R3 1 1
  JUMPIFEQKS R3 K1 ["/?"] [+6]
  NAMECALL R3 R1 K0 ["lower"]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["/help"] [+120]
  GETUPVAL R3 0
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["GetSpeaker"]
  CALL R3 2 1
  GETUPVAL R6 1
  LOADK R8 K4 ["GameChat_ChatCommandsTeller_Desc"]
  LOADK R9 K5 ["These are the basic chat commands."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["AllowMeCommand"]
  JUMPIFNOT R4 [+10]
  GETUPVAL R6 1
  LOADK R8 K9 ["GameChat_ChatCommandsTeller_MeCommand"]
  LOADK R9 K10 ["/me <text> : roleplaying command for doing actions."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R6 1
  LOADK R8 K11 ["GameChat_ChatCommandsTeller_SwitchChannelCommand"]
  LOADK R9 K12 ["/c <channel> : switch channel menu tabs."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["ShowJoinAndLeaveHelpText"]
  JUMPIFEQKNIL R5 [+5]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["ShowJoinAndLeaveHelpText"]
  JUMP [+1]
  LOADB R4 0
  JUMPIFNOT R4 [+20]
  GETUPVAL R6 1
  LOADK R8 K14 ["GameChat_ChatCommandsTeller_JoinChannelCommand"]
  LOADK R9 K15 ["/join <channel> or /j <channel> : join channel."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R6 1
  LOADK R8 K16 ["GameChat_ChatCommandsTeller_LeaveChannelCommand"]
  LOADK R9 K17 ["/leave <channel> or /l <channel> : leave channel. (leaves current if none specified)"]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R6 1
  LOADK R8 K18 ["GameChat_ChatCommandsTeller_WhisperCommand"]
  LOADK R9 K19 ["/whisper <speaker> or /w <speaker> : open private message channel with speaker."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R6 1
  LOADK R8 K20 ["GameChat_ChatCommandsTeller_MuteCommand"]
  LOADK R9 K21 ["/mute <speaker> : mute a speaker."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  GETUPVAL R6 1
  LOADK R8 K22 ["GameChat_ChatCommandsTeller_UnMuteCommand"]
  LOADK R9 K23 ["/unmute <speaker> : unmute a speaker."]
  NAMECALL R6 R6 K6 ["FormatMessageToSend"]
  CALL R6 3 1
  MOVE R7 R2
  NAMECALL R4 R3 K7 ["SendSystemMessage"]
  CALL R4 3 0
  NAMECALL R4 R3 K24 ["GetPlayer"]
  CALL R4 1 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R5 R4 K25 ["Team"]
  JUMPIFNOT R5 [+10]
  GETUPVAL R7 1
  LOADK R9 K26 ["GameChat_ChatCommandsTeller_TeamCommand"]
  LOADK R10 K27 ["/team <message> or /t <message> : send a team chat to players on your team."]
  NAMECALL R7 R7 K6 ["FormatMessageToSend"]
  CALL R7 3 1
  MOVE R8 R2
  NAMECALL R5 R3 K7 ["SendSystemMessage"]
  CALL R5 3 0
  LOADB R5 1
  RETURN R5 1
  LOADB R3 0
  RETURN R3 1

PROTO_4:
  DUPCLOSURE R1 K0 [PROTO_2]
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  LOADK R5 K1 ["chat_commands_inquiry"]
  MOVE R6 R2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["StandardPriority"]
  NAMECALL R3 R0 K3 ["RegisterProcessCommandsFunction"]
  CALL R3 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["GeneralChannelName"]
  JUMPIFNOT R3 [+15]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["GeneralChannelName"]
  NAMECALL R3 R0 K5 ["GetChannel"]
  CALL R3 2 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R4 1
  LOADK R6 K6 ["GameChat_ChatCommandsTeller_AllChannelWelcomeMessage"]
  LOADK R7 K7 ["Chat '/?' or '/help' for a list of chat commands."]
  NAMECALL R4 R4 K8 ["FormatMessageToSend"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K9 ["WelcomeMessage"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Chat"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["ClientChatModules"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R2 K7 [require]
  LOADK R5 K8 ["ChatSettings"]
  NAMECALL R3 R1 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K7 [require]
  LOADK R6 K9 ["ChatConstants"]
  NAMECALL R4 R1 K5 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  LOADNIL R4
  GETIMPORT R5 K11 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE REF R4
  CALL R5 1 0
  JUMPIFNOTEQKNIL R4 [+3]
  NEWTABLE R4 0 0
  GETTABLEKS R5 R4 K12 ["FormatMessageToSend"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R5 R4 K13 ["LocalizeFormattedMessage"]
  JUMPIF R5 [+3]
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K12 ["FormatMessageToSend"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R2
  CAPTURE REF R4
  CAPTURE VAL R3
  CLOSEUPVALS R4
  RETURN R5 1
