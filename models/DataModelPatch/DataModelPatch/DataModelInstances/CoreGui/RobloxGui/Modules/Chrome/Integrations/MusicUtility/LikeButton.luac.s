PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["LikeButtonWrapper"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R0 K10 ["Service"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K13 ["Workspace"]
  GETTABLEKS R6 R7 K11 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Songbird"]
  CALL R4 1 1
  DUPTABLE R7 K19 [{"initialAvailability", "id", "label", "components"}]
  GETTABLEKS R9 R2 K20 ["AvailabilitySignal"]
  GETTABLEKS R8 R9 K21 ["Available"]
  SETTABLEKS R8 R7 K15 ["initialAvailability"]
  LOADK R8 K22 ["like_button"]
  SETTABLEKS R8 R7 K16 ["id"]
  LOADK R8 K23 ["CoreScripts.TopBar.PeekLike"]
  SETTABLEKS R8 R7 K17 ["label"]
  DUPTABLE R8 K25 [{"Icon"}]
  DUPCLOSURE R9 K26 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K24 ["Icon"]
  SETTABLEKS R8 R7 K18 ["components"]
  NAMECALL R5 R2 K27 ["register"]
  CALL R5 2 -1
  RETURN R5 -1
