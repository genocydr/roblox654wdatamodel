PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InExperienceMenuIXPLayer"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ExperimentLayers"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["AppUserLayers"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K10 ["InExperienceMenuIXPLayer"]
  GETTABLEKS R5 R1 K11 ["ExperienceMenuSettingsExposureLayer"]
  NAMECALL R2 R2 K12 ["DefineFastString"]
  CALL R2 3 0
  DUPCLOSURE R2 K13 [PROTO_0]
  RETURN R2 1
