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
  GETIMPORT R4 K1 [game]
  LOADK R6 K2 ["Players"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K4 ["LocalPlayer"]
  JUMPIFNOT R3 [+29]
  GETTABLEKS R4 R3 K5 ["UserId"]
  LOADN R5 0
  JUMPIFNOTLT R4 R5 [+25]
  GETUPVAL R4 0
  NAMECALL R4 R4 K6 ["IsStudio"]
  CALL R4 1 1
  JUMPIF R4 [+19]
  NAMECALL R4 R1 K7 ["GetCurrentChannel"]
  CALL R4 1 1
  JUMPIFNOT R4 [+13]
  GETUPVAL R5 1
  GETUPVAL R7 2
  LOADK R9 K8 ["GameChat_SwallowGuestChat_Message"]
  LOADK R10 K9 ["Create a free account to get access to chat permissions!"]
  NAMECALL R7 R7 K10 ["Get"]
  CALL R7 3 1
  MOVE R8 R4
  NEWTABLE R9 0 0
  NAMECALL R5 R5 K11 ["SendSystemMessageToSelf"]
  CALL R5 4 0
  LOADB R5 1
  RETURN R5 1
  LOADB R4 0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["Util"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K8 [game]
  LOADK R3 K9 ["RunService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  LOADNIL R2
  GETIMPORT R3 K12 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CALL R3 1 0
  JUMPIFNOTEQKNIL R2 [+6]
  NEWTABLE R2 0 0
  DUPCLOSURE R3 K13 [PROTO_1]
  SETTABLEKS R3 R2 K14 ["Get"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE REF R2
  SETGLOBAL R3 K15 ["ProcessMessage"]
  NEWTABLE R3 2 0
  GETTABLEKS R4 R0 K16 ["KEY_COMMAND_PROCESSOR_TYPE"]
  GETTABLEKS R5 R0 K17 ["COMPLETED_MESSAGE_PROCESSOR"]
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R0 K18 ["KEY_PROCESSOR_FUNCTION"]
  GETGLOBAL R5 K15 ["ProcessMessage"]
  SETTABLE R5 R3 R4
  CLOSEUPVALS R2
  RETURN R3 1
