PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getReportAnythingAvatarEnabled"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getReportAnythingExperienceEnabled"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["TrustAndSafetyIxp"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["TrustAndSafetyIXPManager"]
  GETTABLEKS R1 R2 K10 ["default"]
  DUPTABLE R2 K13 [{"getReportAnythingAvatarEnabled", "getReportAnythingExperienceEnabled"}]
  DUPCLOSURE R3 K14 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K11 ["getReportAnythingAvatarEnabled"]
  DUPCLOSURE R3 K15 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K12 ["getReportAnythingExperienceEnabled"]
  RETURN R2 1
