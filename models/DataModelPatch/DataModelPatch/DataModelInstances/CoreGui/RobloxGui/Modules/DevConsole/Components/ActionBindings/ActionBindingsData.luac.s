PROTO_0:
  GETTABLEKS R3 R0 K0 ["counter"]
  GETTABLEKS R4 R1 K0 ["counter"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["actionInfo"]
  GETTABLEKS R2 R3 K1 ["priorityLevel"]
  GETTABLEKS R4 R1 K0 ["actionInfo"]
  GETTABLEKS R3 R4 K1 ["priorityLevel"]
  JUMPIFNOTEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K2 ["counter"]
  GETTABLEKS R4 R1 K2 ["counter"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R4 R0 K0 ["actionInfo"]
  GETTABLEKS R3 R4 K1 ["priorityLevel"]
  GETTABLEKS R5 R1 K0 ["actionInfo"]
  GETTABLEKS R4 R5 K1 ["priorityLevel"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["actionInfo"]
  GETTABLEKS R2 R3 K1 ["isCore"]
  GETTABLEKS R4 R1 K0 ["actionInfo"]
  GETTABLEKS R3 R4 K1 ["isCore"]
  JUMPIFNOTEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K2 ["counter"]
  GETTABLEKS R4 R1 K2 ["counter"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R3 R0 K0 ["actionInfo"]
  GETTABLEKS R2 R3 K1 ["isCore"]
  RETURN R2 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["name"]
  NAMECALL R3 R3 K1 ["lower"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K0 ["name"]
  NAMECALL R4 R4 K1 ["lower"]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETTABLEKS R6 R0 K0 ["actionInfo"]
  GETTABLEKS R5 R6 K1 ["inputTypes"]
  GETTABLEN R4 R5 1
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  GETTABLEKS R7 R1 K0 ["actionInfo"]
  GETTABLEKS R6 R7 K1 ["inputTypes"]
  GETTABLEN R5 R6 1
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  NEWTABLE R0 8 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["_bindingsUpdated"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K4 ["_bindingsData"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["_bindingCounter"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["_sortedBindingData"]
  GETUPVAL R2 2
  GETTABLEN R1 R2 1
  SETTABLEKS R1 R0 K7 ["_sortType"]
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["_isRunning"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+19]
  SETTABLEKS R1 R0 K0 ["_sortType"]
  GETIMPORT R2 K3 [table.sort]
  GETTABLEKS R3 R0 K4 ["_sortedBindingData"]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["_sortType"]
  GETTABLE R4 R5 R6
  CALL R2 2 0
  GETTABLEKS R2 R0 K5 ["_bindingsUpdated"]
  GETTABLEKS R4 R0 K4 ["_sortedBindingData"]
  NAMECALL R2 R2 K6 ["Fire"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K8 [error]
  GETIMPORT R3 K11 [string.format]
  LOADK R4 K12 ["attempted to pass invalid sortType: %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K14 [tostring]
  CALL R5 1 1
  CALL R3 2 1
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_sortType"]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_bindingsUpdated"]
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_sortedBindingData"]
  RETURN R1 1

PROTO_10:
  JUMPIFNOTEQKNIL R2 [+25]
  GETTABLEKS R3 R0 K0 ["_bindingsData"]
  LOADNIL R4
  SETTABLE R4 R3 R1
  GETIMPORT R3 K2 [pairs]
  GETTABLEKS R4 R0 K3 ["_sortedBindingData"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K4 ["name"]
  JUMPIFNOTEQ R8 R1 [+8]
  GETIMPORT R8 K7 [table.remove]
  GETTABLEKS R9 R0 K3 ["_sortedBindingData"]
  MOVE R10 R6
  CALL R8 2 0
  RETURN R0 0
  FORGLOOP R3 2 [-12]
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_bindingsData"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+29]
  GETTABLEKS R4 R0 K9 ["_bindingCounter"]
  ADDK R3 R4 K8 [1]
  SETTABLEKS R3 R0 K9 ["_bindingCounter"]
  GETTABLEKS R3 R0 K0 ["_bindingsData"]
  SETTABLE R2 R3 R1
  DUPTABLE R3 K12 [{"name", "actionInfo", "counter"}]
  SETTABLEKS R1 R3 K4 ["name"]
  GETTABLEKS R5 R0 K0 ["_bindingsData"]
  GETTABLE R4 R5 R1
  SETTABLEKS R4 R3 K10 ["actionInfo"]
  GETTABLEKS R4 R0 K9 ["_bindingCounter"]
  SETTABLEKS R4 R3 K11 ["counter"]
  GETTABLEKS R5 R0 K3 ["_sortedBindingData"]
  FASTCALL2 TABLE_INSERT R5 R3 [+4]
  MOVE R6 R3
  GETIMPORT R4 K14 [table.insert]
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R3 R0 K0 ["_bindingsData"]
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_isRunning"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R3 0
  MOVE R5 R0
  LOADNIL R6
  NAMECALL R3 R3 K0 ["updateBindingDataEntry"]
  CALL R3 3 0
  GETUPVAL R3 0
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K0 ["updateBindingDataEntry"]
  CALL R3 3 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_bindingsUpdated"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["_sortedBindingData"]
  NAMECALL R3 R3 K3 ["Fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_13:
  SETTABLEKS R3 R2 K0 ["isCore"]
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R2
  NAMECALL R4 R4 K1 ["updateBindingDataEntry"]
  CALL R4 3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["_bindingsUpdated"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["_sortedBindingData"]
  NAMECALL R4 R4 K4 ["Fire"]
  CALL R4 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  MOVE R5 R0
  LOADNIL R6
  NAMECALL R3 R3 K0 ["updateBindingDataEntry"]
  CALL R3 3 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["_bindingsUpdated"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["_sortedBindingData"]
  NAMECALL R3 R3 K3 ["Fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetAllBoundActionInfo"]
  CALL R1 1 1
  GETIMPORT R2 K2 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADB R7 0
  SETTABLEKS R7 R6 K3 ["isCore"]
  MOVE R9 R5
  MOVE R10 R6
  NAMECALL R7 R0 K4 ["updateBindingDataEntry"]
  CALL R7 3 0
  FORGLOOP R2 2 [-9]
  GETUPVAL R2 0
  NAMECALL R2 R2 K5 ["GetAllBoundCoreActionInfo"]
  CALL R2 1 1
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  LOADB R8 1
  SETTABLEKS R8 R7 K3 ["isCore"]
  MOVE R10 R6
  MOVE R11 R7
  NAMECALL R8 R0 K4 ["updateBindingDataEntry"]
  CALL R8 3 0
  FORGLOOP R3 2 [-9]
  GETTABLEKS R3 R0 K6 ["_actionChangedConnection"]
  JUMPIF R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["BoundActionChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K8 ["connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["_actionChangedConnection"]
  GETTABLEKS R3 R0 K9 ["_actionAddedConnection"]
  JUMPIF R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["BoundActionAdded"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K8 ["connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_actionAddedConnection"]
  GETTABLEKS R3 R0 K11 ["_actionRemovedConnection"]
  JUMPIF R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K12 ["BoundActionRemoved"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K8 ["connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K11 ["_actionRemovedConnection"]
  LOADB R3 1
  SETTABLEKS R3 R0 K13 ["_isRunning"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["actionChangedConnector"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["actionChangedConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["actionChangedConnector"]
  GETTABLEKS R1 R0 K2 ["actionAddedConnector"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["actionAddedConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["actionAddedConnector"]
  GETTABLEKS R1 R0 K3 ["actionRemovedConnector"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["actionRemovedConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["actionRemovedConnector"]
  LOADB R1 0
  SETTABLEKS R1 R0 K4 ["_isRunning"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContextActionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K9 ["Signal"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R7 K7 [script]
  GETTABLEKS R6 R7 K8 ["Parent"]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K11 ["ActionBindingsFormatting"]
  GETTABLEKS R3 R4 K12 ["ChartHeaderNames"]
  NEWTABLE R4 8 0
  GETTABLEN R5 R3 1
  DUPCLOSURE R6 K13 [PROTO_0]
  SETTABLE R6 R4 R5
  GETTABLEN R5 R3 2
  DUPCLOSURE R6 K14 [PROTO_1]
  SETTABLE R6 R4 R5
  GETTABLEN R5 R3 3
  DUPCLOSURE R6 K15 [PROTO_2]
  SETTABLE R6 R4 R5
  GETTABLEN R5 R3 4
  DUPCLOSURE R6 K16 [PROTO_3]
  SETTABLE R6 R4 R5
  GETTABLEN R5 R3 5
  DUPCLOSURE R6 K17 [PROTO_4]
  SETTABLE R6 R4 R5
  NEWTABLE R5 16 0
  SETTABLEKS R5 R5 K18 ["__index"]
  DUPCLOSURE R6 K19 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K20 ["new"]
  DUPCLOSURE R6 K21 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K22 ["setSortType"]
  DUPCLOSURE R6 K23 [PROTO_7]
  SETTABLEKS R6 R5 K24 ["getSortType"]
  DUPCLOSURE R6 K25 [PROTO_8]
  SETTABLEKS R6 R5 K9 ["Signal"]
  DUPCLOSURE R6 K26 [PROTO_9]
  SETTABLEKS R6 R5 K27 ["getCurrentData"]
  DUPCLOSURE R6 K28 [PROTO_10]
  SETTABLEKS R6 R5 K29 ["updateBindingDataEntry"]
  DUPCLOSURE R6 K30 [PROTO_11]
  SETTABLEKS R6 R5 K31 ["isRunning"]
  DUPCLOSURE R6 K32 [PROTO_15]
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K33 ["start"]
  DUPCLOSURE R6 K34 [PROTO_16]
  SETTABLEKS R6 R5 K35 ["stop"]
  RETURN R5 1
