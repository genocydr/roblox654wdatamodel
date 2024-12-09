PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["string"] [+3]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+29]
  LOADB R1 0
  LOADK R4 K3 ["rblx%-challenge%-response"]
  NAMECALL R2 R0 K4 ["match"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+23]
  LOADB R1 0
  LOADK R4 K5 ["rblx%-challenge%-id"]
  NAMECALL R2 R0 K4 ["match"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+16]
  LOADB R1 0
  LOADK R4 K6 ["rblx%-challenge%-metadata"]
  NAMECALL R2 R0 K4 ["match"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+9]
  LOADK R4 K7 ["rblx%-challenge%-type"]
  NAMECALL R2 R0 K4 ["match"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Flags"]
  GETTABLEKS R2 R3 K6 ["GetFFlagEnablePerformPurchaseGCSHandling"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  SETGLOBAL R2 K8 ["isGenericChallengeResponse"]
  GETGLOBAL R2 K8 ["isGenericChallengeResponse"]
  RETURN R2 1
