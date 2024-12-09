PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["default"]
  NAMECALL R0 R0 K1 ["shouldCloseSelfViewAtStartup"]
  CALL R0 1 1
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETIMPORT R0 K3 [game]
  LOADK R2 K4 ["DisableSelfViewDefaultOpen"]
  NAMECALL R0 R0 K5 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["DisableSelfViewDefaultOpen"]
  LOADB R4 0
  NAMECALL R1 R1 K7 ["DefineFastFlag"]
  CALL R1 3 0
  GETIMPORT R1 K9 [require]
  GETTABLEKS R3 R0 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["IsExperienceMenuABTestEnabled"]
  CALL R1 1 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K12 ["ExperienceMenuABTestManager"]
  CALL R2 1 1
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
