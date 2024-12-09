PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["dismissCurrentPeek"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["DismissButton"]
  DUPTABLE R3 K3 [{"onDismiss"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["onDismiss"]
  CALL R1 2 -1
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
  GETTABLEKS R5 R6 K16 ["GetFFlagChromePeekArchitecture"]
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R2
  MOVE R8 R5
  CALL R8 0 1
  JUMPIFNOT R8 [+26]
  DUPTABLE R9 K22 [{"id", "label", "components", "initialAvailability"}]
  LOADK R10 K23 ["peek_close"]
  SETTABLEKS R10 R9 K18 ["id"]
  LOADK R10 K24 ["CoreScripts.TopBar.PeekClose"]
  SETTABLEKS R10 R9 K19 ["label"]
  DUPTABLE R10 K26 [{"Icon"}]
  DUPCLOSURE R11 K27 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K25 ["Icon"]
  SETTABLEKS R10 R9 K20 ["components"]
  GETTABLEKS R11 R2 K28 ["AvailabilitySignal"]
  GETTABLEKS R10 R11 K29 ["Available"]
  SETTABLEKS R10 R9 K21 ["initialAvailability"]
  NAMECALL R7 R2 K30 ["register"]
  CALL R7 2 1
  RETURN R7 1
  LOADNIL R7
  RETURN R7 1
