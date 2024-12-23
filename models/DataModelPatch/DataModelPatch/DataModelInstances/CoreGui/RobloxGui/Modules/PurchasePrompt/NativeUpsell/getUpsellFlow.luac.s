PROTO_0:
  GETIMPORT R1 K3 [Enum.Platform.Windows]
  JUMPIFEQ R0 R1 [+9]
  GETIMPORT R1 K5 [Enum.Platform.OSX]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K7 [Enum.Platform.Linux]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["Web"]
  RETURN R1 1
  GETIMPORT R1 K10 [Enum.Platform.IOS]
  JUMPIFEQ R0 R1 [+9]
  GETIMPORT R1 K12 [Enum.Platform.Android]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K14 [Enum.Platform.UWP]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K15 ["Mobile"]
  RETURN R1 1
  GETIMPORT R1 K17 [Enum.Platform.XBoxOne]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K18 ["Xbox"]
  RETURN R1 1
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+8]
  GETIMPORT R1 K20 [Enum.Platform.PS4]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K15 ["Mobile"]
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K21 ["None"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["UpsellFlow"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Flags"]
  GETTABLEKS R3 R4 K8 ["GetFFlagEnablePalisadesPaymentsPlatform"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
