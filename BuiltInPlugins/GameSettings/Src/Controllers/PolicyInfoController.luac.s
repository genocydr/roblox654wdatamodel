PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  LOADK R3 K0 ["apis"]
  LOADK R4 K1 ["/user-agreements/v1/agreements-resolution/App"]
  NAMECALL R1 R0 K2 ["get"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  LOADK R5 K0 ["apis"]
  LOADK R7 K1 ["/studio-moderation/v1/"]
  MOVE R8 R1
  LOADK R9 K2 ["/contacts"]
  CONCAT R6 R7 R9
  DUPTABLE R7 K4 [{"Body"}]
  DUPTABLE R8 K6 [{"email"}]
  SETTABLEKS R2 R8 K5 ["email"]
  SETTABLEKS R8 R7 K3 ["Body"]
  NAMECALL R3 R0 K7 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["__networking"]
  LOADK R4 K1 ["apis"]
  LOADK R5 K2 ["/user-agreements/v1/agreements-resolution/App"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 3 1
  NAMECALL R2 R2 K4 ["await"]
  CALL R2 1 1
  GETIMPORT R4 K6 [next]
  GETTABLEKS R5 R2 K7 ["responseBody"]
  CALL R4 1 1
  JUMPIFEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["responseCode"]
  SETUPVAL R1 0
  RETURN R0 0

PROTO_5:
  FASTCALL1 TYPE R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["number"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R5 K5 [string.format]
  LOADK R6 K6 ["universeId must be a number, received %s"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  CALL R5 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K8 [assert]
  CALL R3 -1 0
  FASTCALL1 TYPE R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K3 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETIMPORT R5 K5 [string.format]
  LOADK R6 K9 ["contactemail must be a string, received %s"]
  FASTCALL1 TYPE R2 [+3]
  MOVE R8 R2
  GETIMPORT R7 K1 [type]
  CALL R7 1 1
  CALL R5 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K8 [assert]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K10 ["__networking"]
  LOADNIL R4
  GETUPVAL R5 0
  MOVE R6 R3
  MOVE R7 R1
  MOVE R8 R2
  CALL R5 3 1
  NEWCLOSURE R7 P0
  CAPTURE REF R4
  NAMECALL R5 R5 K11 ["catch"]
  CALL R5 2 1
  NAMECALL R5 R5 K12 ["await"]
  CALL R5 1 0
  CLOSEUPVALS R4
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  DUPCLOSURE R2 K4 [PROTO_2]
  DUPCLOSURE R3 K5 [PROTO_3]
  SETTABLEKS R3 R0 K6 ["getPlayerAcceptances"]
  DUPCLOSURE R3 K7 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R3 R0 K8 ["postContactEmail"]
  RETURN R0 1
