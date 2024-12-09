PROTO_0:
  DUPTABLE R4 K2 [{"lastPage", "lastMenuOpen"}]
  GETTABLEKS R5 R1 K3 ["currentPage"]
  SETTABLEKS R5 R4 K0 ["lastPage"]
  GETTABLEKS R5 R1 K4 ["menuOpen"]
  SETTABLEKS R5 R4 K1 ["lastMenuOpen"]
  NAMECALL R2 R0 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Children"]
  GETTABLE R2 R3 R4
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["lastPage"]
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K2 ["lastMenuOpen"]
  GETTABLEKS R4 R0 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["currentPage"]
  GETTABLEKS R5 R0 K3 ["props"]
  GETTABLEKS R4 R5 K5 ["menuOpen"]
  JUMPIFNOTEQ R1 R3 [+3]
  JUMPIFEQ R2 R4 [+60]
  DUPTABLE R7 K6 [{"lastPage", "lastMenuOpen"}]
  SETTABLEKS R3 R7 K1 ["lastPage"]
  SETTABLEKS R4 R7 K2 ["lastMenuOpen"]
  NAMECALL R5 R0 K7 ["setState"]
  CALL R5 2 0
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K8 ["desiredPage"]
  JUMPIFNOTEQ R3 R5 [+14]
  JUMPIFNOT R4 [+12]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K9 ["onNavigateTo"]
  JUMPIFEQKNIL R5 [+7]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K9 ["onNavigateTo"]
  CALL R5 0 0
  RETURN R0 0
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K8 ["desiredPage"]
  JUMPIFNOTEQ R1 R5 [+14]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K10 ["onNavigateAway"]
  JUMPIFEQKNIL R5 [+7]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K10 ["onNavigateAway"]
  CALL R5 0 0
  RETURN R0 0
  JUMPIFNOT R2 [+12]
  JUMPIF R4 [+11]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K10 ["onNavigateAway"]
  JUMPIFEQKNIL R5 [+6]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K10 ["onNavigateAway"]
  CALL R5 0 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K2 [{"currentPage", "menuOpen"}]
  GETTABLEKS R2 R0 K3 ["menuPage"]
  SETTABLEKS R2 R1 K0 ["currentPage"]
  GETTABLEKS R2 R0 K4 ["isMenuOpen"]
  SETTABLEKS R2 R1 K1 ["menuOpen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["RoactRodux"]
  GETTABLEKS R4 R1 K10 ["t"]
  GETTABLEKS R5 R2 K11 ["PureComponent"]
  LOADK R7 K12 ["PageNavigationWatcher"]
  NAMECALL R5 R5 K13 ["extend"]
  CALL R5 2 1
  GETTABLEKS R6 R4 K14 ["strictInterface"]
  DUPTABLE R7 K20 [{"desiredPage", "onNavigateTo", "onNavigateAway", "currentPage", "menuOpen"}]
  GETTABLEKS R8 R4 K21 ["string"]
  SETTABLEKS R8 R7 K15 ["desiredPage"]
  GETTABLEKS R8 R4 K22 ["optional"]
  GETTABLEKS R9 R4 K23 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K16 ["onNavigateTo"]
  GETTABLEKS R8 R4 K22 ["optional"]
  GETTABLEKS R9 R4 K23 ["callback"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K17 ["onNavigateAway"]
  GETTABLEKS R8 R4 K21 ["string"]
  SETTABLEKS R8 R7 K18 ["currentPage"]
  GETTABLEKS R8 R4 K24 ["boolean"]
  SETTABLEKS R8 R7 K19 ["menuOpen"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K25 ["validateProps"]
  DUPCLOSURE R6 K26 [PROTO_0]
  SETTABLEKS R6 R5 K27 ["init"]
  DUPCLOSURE R6 K28 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K29 ["render"]
  DUPCLOSURE R6 K30 [PROTO_2]
  SETTABLEKS R6 R5 K31 ["didUpdate"]
  GETTABLEKS R6 R3 K32 ["UNSTABLE_connect2"]
  DUPCLOSURE R7 K33 [PROTO_3]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 -1
  RETURN R6 -1
