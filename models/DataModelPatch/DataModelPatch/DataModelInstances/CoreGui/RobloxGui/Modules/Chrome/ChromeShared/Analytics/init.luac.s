PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["default"]
  LOADNIL R2
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["screenSize"]
  CALL R3 1 1
  MOVE R2 R3
  JUMP [+3]
  GETUPVAL R3 4
  CALL R3 0 1
  MOVE R2 R3
  MOVE R5 R2
  NAMECALL R3 R1 K2 ["setScreenSize"]
  CALL R3 2 0
  GETUPVAL R3 5
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 7
  CALL R3 1 -1
  RETURN R3 -1
  LOADNIL R3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ChromeShared"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  LOADK R4 K8 ["RobloxGui"]
  NAMECALL R2 R1 K9 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K10 ["CorePackages"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K12 [require]
  GETTABLEKS R6 R0 K13 ["Service"]
  GETTABLEKS R5 R6 K14 ["ViewportUtil"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R0 K15 ["Hooks"]
  GETTABLEKS R6 R7 K16 ["useObservableValue"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R10 R2 K17 ["Modules"]
  GETTABLEKS R9 R10 K18 ["Common"]
  GETTABLEKS R8 R9 K15 ["Hooks"]
  GETTABLEKS R7 R8 K19 ["useScreenSize"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K20 ["ChromeAnalytics"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R10 R3 K21 ["Packages"]
  GETTABLEKS R9 R10 K22 ["React"]
  CALL R8 1 1
  GETIMPORT R9 K12 [require]
  GETTABLEKS R12 R3 K23 ["Workspace"]
  GETTABLEKS R11 R12 K21 ["Packages"]
  GETTABLEKS R10 R11 K24 ["SharedFlags"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K25 ["GetFFlagUnibarLuaOcclusionMetrics"]
  CALL R10 0 1
  GETIMPORT R11 K12 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K26 ["OcclusionMetricsManager"]
  CALL R11 1 1
  GETTABLEKS R12 R9 K27 ["GetFFlagRemoveChromeRobloxGuiReferences"]
  DUPCLOSURE R13 K28 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R11
  RETURN R13 1