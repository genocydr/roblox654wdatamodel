PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R0
  MOVE R6 R2
  MOVE R7 R1
  MOVE R8 R3
  CALL R4 4 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Utils"]
  GETTABLEKS R2 R3 K6 ["getPaymentFromPlatform"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Utils"]
  GETTABLEKS R3 R4 K7 ["getPaymentFromPlatformLegacy"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Utils"]
  GETTABLEKS R4 R5 K8 ["getHasAmazonUserAgent"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Utils"]
  GETTABLEKS R5 R6 K9 ["getHasQuestUserAgent"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Flags"]
  GETTABLEKS R6 R7 K11 ["GetFFlagEnableLuobuInGameUpsell"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R6 1
