PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+8]
  DUPTABLE R2 K2 [{"debugVisualizationsSearchTerm", "debugVisualizationsTypeFilters"}]
  LOADK R3 K3 [""]
  SETTABLEKS R3 R2 K0 ["debugVisualizationsSearchTerm"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["debugVisualizationsTypeFilters"]
  LOADNIL R3
  GETTABLEKS R4 R1 K4 ["filterTypes"]
  JUMPIFNOTEQKNIL R4 [+4]
  GETTABLEKS R3 R2 K1 ["debugVisualizationsTypeFilters"]
  JUMP [+9]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["JoinDictionaries"]
  GETTABLEKS R5 R2 K1 ["debugVisualizationsTypeFilters"]
  GETTABLEKS R6 R1 K4 ["filterTypes"]
  CALL R4 2 1
  MOVE R3 R4
  GETTABLEKS R4 R1 K6 ["type"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["name"]
  JUMPIFNOTEQ R4 R5 [+15]
  DUPTABLE R4 K2 [{"debugVisualizationsSearchTerm", "debugVisualizationsTypeFilters"}]
  GETTABLEKS R5 R1 K8 ["searchTerm"]
  SETTABLEKS R5 R4 K0 ["debugVisualizationsSearchTerm"]
  SETTABLEKS R3 R4 K1 ["debugVisualizationsTypeFilters"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["JoinDictionaries"]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 -1
  RETURN R5 -1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Immutable"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["DebugVisualizationsUpdateSearchFilter"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
