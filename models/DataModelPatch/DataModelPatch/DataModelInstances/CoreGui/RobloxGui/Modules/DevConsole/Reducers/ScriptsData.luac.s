PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+15]
  DUPTABLE R2 K4 [{"clientSearchTerm", "clientTypeFilters", "serverSearchTerm", "serverTypeFilters"}]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K0 ["clientSearchTerm"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["clientTypeFilters"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K2 ["serverSearchTerm"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K3 ["serverTypeFilters"]
  GETTABLEKS R3 R1 K6 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["name"]
  JUMPIFNOTEQ R3 R4 [+23]
  DUPTABLE R3 K8 [{"clientSearchTerm", "clientTypeFilters"}]
  GETTABLEKS R4 R1 K9 ["searchTerm"]
  SETTABLEKS R4 R3 K0 ["clientSearchTerm"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["JoinDictionaries"]
  GETTABLEKS R5 R2 K1 ["clientTypeFilters"]
  GETTABLEKS R6 R1 K11 ["filterTypes"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["clientTypeFilters"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["JoinDictionaries"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1
  GETTABLEKS R3 R1 K6 ["type"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["name"]
  JUMPIFNOTEQ R3 R4 [+23]
  DUPTABLE R3 K12 [{"serverSearchTerm", "serverTypeFilters"}]
  GETTABLEKS R4 R1 K9 ["searchTerm"]
  SETTABLEKS R4 R3 K2 ["serverSearchTerm"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["JoinDictionaries"]
  GETTABLEKS R5 R2 K3 ["serverTypeFilters"]
  GETTABLEKS R6 R1 K11 ["filterTypes"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["serverTypeFilters"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["JoinDictionaries"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1
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
  GETTABLEKS R2 R3 K7 ["ClientScriptsUpdateSearchFilter"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K8 ["ServerScriptsUpdateSearchFilter"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
