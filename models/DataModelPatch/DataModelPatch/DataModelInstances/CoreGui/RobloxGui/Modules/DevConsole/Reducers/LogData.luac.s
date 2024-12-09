PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["JoinDictionaries"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"clientData"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Append"]
  GETTABLEKS R6 R0 K1 ["clientData"]
  GETTABLEKS R7 R1 K4 ["newMessage"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["clientData"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["JoinDictionaries"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"serverData"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Append"]
  GETTABLEKS R6 R0 K1 ["serverData"]
  GETTABLEKS R7 R1 K4 ["newMessage"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["serverData"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  DUPTABLE R2 K2 [{"clientData", "clientDataFiltered"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Append"]
  GETTABLEKS R4 R0 K0 ["clientData"]
  GETTABLEKS R5 R1 K4 ["newMessage"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["clientData"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Append"]
  GETTABLEKS R4 R0 K1 ["clientDataFiltered"]
  GETTABLEKS R5 R1 K4 ["newMessage"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["clientDataFiltered"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["JoinDictionaries"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  DUPTABLE R2 K2 [{"serverData", "serverDataFiltered"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Append"]
  GETTABLEKS R4 R0 K0 ["serverData"]
  GETTABLEKS R5 R1 K4 ["newMessage"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["serverData"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Append"]
  GETTABLEKS R4 R0 K1 ["serverDataFiltered"]
  GETTABLEKS R5 R1 K4 ["newMessage"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["serverDataFiltered"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["JoinDictionaries"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_4:
  DUPTABLE R2 K2 [{"clientData", "clientDataFiltered"}]
  GETTABLEKS R3 R1 K3 ["newData"]
  SETTABLEKS R3 R2 K0 ["clientData"]
  GETTABLEKS R3 R1 K4 ["newDataFiltered"]
  SETTABLEKS R3 R2 K1 ["clientDataFiltered"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["JoinDictionaries"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  DUPTABLE R2 K2 [{"serverData", "serverDataFiltered"}]
  GETTABLEKS R3 R1 K3 ["newData"]
  SETTABLEKS R3 R2 K0 ["serverData"]
  GETTABLEKS R3 R1 K4 ["newDataFiltered"]
  SETTABLEKS R3 R2 K1 ["serverDataFiltered"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["JoinDictionaries"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_6:
  DUPTABLE R2 K2 [{"clientSearchTerm", "clientTypeFilters"}]
  GETTABLEKS R3 R1 K3 ["searchTerm"]
  SETTABLEKS R3 R2 K0 ["clientSearchTerm"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["JoinDictionaries"]
  GETTABLEKS R4 R0 K1 ["clientTypeFilters"]
  GETTABLEKS R5 R1 K5 ["filterTypes"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["clientTypeFilters"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["JoinDictionaries"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  DUPTABLE R2 K2 [{"serverSearchTerm", "serverTypeFilters"}]
  GETTABLEKS R3 R1 K3 ["searchTerm"]
  SETTABLEKS R3 R2 K0 ["serverSearchTerm"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["JoinDictionaries"]
  GETTABLEKS R4 R0 K1 ["serverTypeFilters"]
  GETTABLEKS R5 R1 K5 ["filterTypes"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["serverTypeFilters"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["JoinDictionaries"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createReducer"]
  DUPTABLE R3 K5 [{"clientSearchTerm", "clientTypeFilters", "serverSearchTerm", "serverTypeFilters"}]
  LOADK R4 K6 [""]
  SETTABLEKS R4 R3 K1 ["clientSearchTerm"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K2 ["clientTypeFilters"]
  LOADK R4 K6 [""]
  SETTABLEKS R4 R3 K3 ["serverSearchTerm"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["serverTypeFilters"]
  DUPTABLE R4 K15 [{"ClientLogAppendMessage", "ServerLogAppendMessage", "ClientLogAppendFilteredMessage", "ServerLogAppendFilteredMessage", "ClientLogSetData", "ServerLogSetData", "ClientLogUpdateSearchFilter", "ServerLogUpdateSearchFilter"}]
  DUPCLOSURE R5 K16 [PROTO_0]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K7 ["ClientLogAppendMessage"]
  DUPCLOSURE R5 K17 [PROTO_1]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K8 ["ServerLogAppendMessage"]
  DUPCLOSURE R5 K18 [PROTO_2]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K9 ["ClientLogAppendFilteredMessage"]
  DUPCLOSURE R5 K19 [PROTO_3]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K10 ["ServerLogAppendFilteredMessage"]
  DUPCLOSURE R5 K20 [PROTO_4]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K11 ["ClientLogSetData"]
  DUPCLOSURE R5 K21 [PROTO_5]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K12 ["ServerLogSetData"]
  DUPCLOSURE R5 K22 [PROTO_6]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K13 ["ClientLogUpdateSearchFilter"]
  DUPCLOSURE R5 K23 [PROTO_7]
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K14 ["ServerLogUpdateSearchFilter"]
  CALL R2 2 1
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Immutable"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
