PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["default"]
  NAMECALL R0 R0 K1 ["shouldShowStaticSelfView"]
  CALL R0 1 1
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETIMPORT R0 K3 [game]
  LOADK R2 K4 ["SelfieViewHideCameraStatusDot"]
  NAMECALL R0 R0 K5 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["SelfieViewHideCameraStatusDot"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETTABLEKS R1 R2 K9 ["IsExperienceMenuABTestEnabled"]
  CALL R0 1 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K10 ["ExperienceMenuABTestManager"]
  CALL R1 1 1
  DUPCLOSURE R2 K11 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
