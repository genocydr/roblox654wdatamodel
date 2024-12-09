PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["OverflowButton"]
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
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K13 ["Workspace"]
  GETTABLEKS R8 R9 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["SharedFlags"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["GetFFlagEnableChromeWindowOverflowButtonIntegration"]
  MOVE R7 R5
  CALL R7 0 1
  JUMPIFNOT R7 [+25]
  DUPTABLE R8 K21 [{"initialAvailability", "id", "label", "components"}]
  GETTABLEKS R10 R2 K22 ["AvailabilitySignal"]
  GETTABLEKS R9 R10 K23 ["Available"]
  SETTABLEKS R9 R8 K17 ["initialAvailability"]
  LOADK R9 K24 ["overflow_button"]
  SETTABLEKS R9 R8 K18 ["id"]
  LOADK R9 K25 ["CoreScripts.TopBar.Overflow"]
  SETTABLEKS R9 R8 K19 ["label"]
  DUPTABLE R9 K27 [{"Icon"}]
  DUPCLOSURE R10 K28 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K26 ["Icon"]
  SETTABLEKS R9 R8 K20 ["components"]
  NAMECALL R6 R2 K29 ["register"]
  CALL R6 2 1
  RETURN R6 1
  LOADNIL R6
  RETURN R6 1
