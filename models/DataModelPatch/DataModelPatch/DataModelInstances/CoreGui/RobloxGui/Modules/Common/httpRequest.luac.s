PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["throttlingPriority"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K1 ["contentType"]
  NAMECALL R0 R0 K2 ["PostAsyncFullUrl"]
  CALL R0 5 -1
  RETURN R0 -1

PROTO_1:
  LOADNIL R2
  GETTABLEKS R4 R1 K0 ["postBody"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["Expected a postBody to be specified with this request"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R1 K0 ["postBody"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K6 ["table"] [+9]
  GETUPVAL R3 0
  GETTABLEKS R5 R1 K0 ["postBody"]
  NAMECALL R3 R3 K7 ["JSONEncode"]
  CALL R3 2 1
  MOVE R2 R3
  JUMP [+15]
  GETTABLEKS R4 R1 K0 ["postBody"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K8 ["string"] [+4]
  GETTABLEKS R2 R1 K0 ["postBody"]
  JUMP [+4]
  GETIMPORT R3 K10 [error]
  LOADK R4 K11 ["Expected postBody to be a string or table"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K12 ["contentType"]
  JUMPIF R3 [+3]
  GETUPVAL R3 1
  SETTABLEKS R3 R1 K12 ["contentType"]
  GETTABLEKS R3 R1 K13 ["throttlingPriority"]
  JUMPIF R3 [+3]
  GETUPVAL R3 2
  SETTABLEKS R3 R1 K13 ["throttlingPriority"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE REF R2
  CAPTURE VAL R1
  CLOSEUPVALS R2
  RETURN R3 1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  NAMECALL R0 R0 K0 ["GetAsyncFullUrl"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R1 1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONDecode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  CALL R0 1 2
  JUMPIFNOT R0 [+17]
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+6]
  GETUPVAL R4 2
  DUPTABLE R5 K3 [{"responseBody"}]
  SETTABLEKS R3 R5 K2 ["responseBody"]
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R4 3
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+9]
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0
  MOVE R2 R1
  CALL R2 0 0
  RETURN R0 0

PROTO_7:
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Expected url to be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K6 [+4]
  LOADK R5 K6 ["Expected requestMethod to be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  NOT R4 R2
  JUMPIF R4 [+9]
  FASTCALL1 TYPE R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [type]
  CALL R5 1 1
  JUMPIFEQKS R5 K7 ["table"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Expected options to be a table"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  GETIMPORT R3 K10 [string.upper]
  MOVE R4 R1
  CALL R3 1 1
  MOVE R1 R3
  LOADNIL R3
  JUMPIFNOTEQKS R1 K11 ["POST"] [+7]
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R2
  CALL R4 2 1
  MOVE R3 R4
  JUMP [+15]
  JUMPIFNOTEQKS R1 K12 ["GET"] [+6]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  JUMP [+8]
  GETIMPORT R4 K14 [error]
  GETIMPORT R5 K16 [string.format]
  LOADK R6 K17 ["Unsupported requestMethod : %s"]
  ORK R7 R1 K18 ["nil"]
  CALL R5 2 -1
  CALL R4 -1 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K19 ["new"]
  NEWCLOSURE R5 P1
  CAPTURE REF R3
  CAPTURE UPVAL U4
  CALL R4 1 -1
  CLOSEUPVALS R3
  RETURN R4 -1

PROTO_8:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Promise"]
  CALL R2 1 1
  GETIMPORT R3 K12 [Enum.ThrottlingPriority.Extreme]
  GETIMPORT R4 K15 [Enum.HttpContentType.ApplicationJson]
  DUPCLOSURE R5 K16 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
