PROTO_0:
  GETIMPORT R1 K2 [string.find]
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["GetUserAgent"]
  CALL R2 1 1
  LOADK R3 K4 ["OculusQuest3Store"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1