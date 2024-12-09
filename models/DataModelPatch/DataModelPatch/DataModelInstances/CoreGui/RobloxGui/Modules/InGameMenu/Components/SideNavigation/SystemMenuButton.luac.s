PROTO_0:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["canCaptureFocus"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K1 ["canCaptureFocus"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["canCaptureFocus"]
  JUMPIFNOT R2 [+21]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["on"]
  GETTABLEKS R3 R1 K2 ["on"]
  JUMPIFEQ R2 R3 [+14]
  GETTABLEKS R3 R0 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["isIconFocused"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K5 ["iconRef"]
  NAMECALL R3 R3 K6 ["getValue"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isIconFocused"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isIconFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isIconFocused"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isIconFocused"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["iconRef"]
  DUPTABLE R3 K3 [{"isIconFocused"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["isIconFocused"]
  NAMECALL R1 R0 K4 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onIconSelectionGained"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onIconSelectionLost"]
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"canCaptureFocus"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["canCaptureFocus"]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["tryCaptureFocus"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["tryCaptureFocus"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["on"]
  JUMPIFNOT R1 [+46]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  NEWTABLE R4 8 0
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["onClose"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["layoutOrder"]
  SETTABLEKS R5 R4 K5 ["layoutOrder"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K6 ["anchorPoint"]
  SETTABLEKS R5 R4 K7 ["AnchorPoint"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["position"]
  SETTABLEKS R5 R4 K9 ["Position"]
  GETTABLEKS R5 R0 K10 ["onIconSelectionGained"]
  SETTABLEKS R5 R4 K11 ["onSelectionGained"]
  GETTABLEKS R5 R0 K12 ["onIconSelectionLost"]
  SETTABLEKS R5 R4 K13 ["onSelectionLost"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["Ref"]
  GETTABLEKS R6 R0 K15 ["iconRef"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 8 0
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["onActivated"]
  SETTABLEKS R5 R4 K4 ["onActivated"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["layoutOrder"]
  SETTABLEKS R5 R4 K5 ["layoutOrder"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K6 ["anchorPoint"]
  SETTABLEKS R5 R4 K6 ["anchorPoint"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["position"]
  SETTABLEKS R5 R4 K8 ["position"]
  GETTABLEKS R5 R0 K10 ["onIconSelectionGained"]
  SETTABLEKS R5 R4 K11 ["onSelectionGained"]
  GETTABLEKS R5 R0 K12 ["onIconSelectionLost"]
  SETTABLEKS R5 R4 K13 ["onSelectionLost"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["Ref"]
  GETTABLEKS R6 R0 K15 ["iconRef"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["t"]
  GETTABLEKS R4 R2 K10 ["Roact"]
  GETIMPORT R5 K6 [require]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K14 ["CloseMenuButton"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R9 K12 [script]
  GETTABLEKS R8 R9 K13 ["Parent"]
  GETTABLEKS R7 R8 K15 ["GameIconButton"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K16 ["PureComponent"]
  LOADK R9 K17 ["SystemMenuButton"]
  NAMECALL R7 R7 K18 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R3 K19 ["strictInterface"]
  DUPTABLE R9 K27 [{"on", "anchorPoint", "position", "layoutOrder", "onActivated", "onClose", "canCaptureFocus"}]
  GETTABLEKS R10 R3 K28 ["optional"]
  GETTABLEKS R11 R3 K29 ["boolean"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["on"]
  GETTABLEKS R10 R3 K28 ["optional"]
  GETTABLEKS R11 R3 K30 ["Vector2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K21 ["anchorPoint"]
  GETTABLEKS R10 R3 K28 ["optional"]
  GETTABLEKS R11 R3 K31 ["UDim2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K22 ["position"]
  GETTABLEKS R10 R3 K28 ["optional"]
  GETTABLEKS R11 R3 K32 ["integer"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["layoutOrder"]
  GETTABLEKS R10 R3 K33 ["callback"]
  SETTABLEKS R10 R9 K24 ["onActivated"]
  GETTABLEKS R10 R3 K33 ["callback"]
  SETTABLEKS R10 R9 K25 ["onClose"]
  GETTABLEKS R10 R3 K28 ["optional"]
  GETTABLEKS R11 R3 K29 ["boolean"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K26 ["canCaptureFocus"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K34 ["validateProps"]
  DUPTABLE R8 K35 [{"on", "canCaptureFocus"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["on"]
  LOADB R9 0
  SETTABLEKS R9 R8 K26 ["canCaptureFocus"]
  SETTABLEKS R8 R7 K36 ["defaultProps"]
  DUPCLOSURE R8 K37 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K38 ["tryCaptureFocus"]
  DUPCLOSURE R8 K39 [PROTO_3]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K40 ["init"]
  DUPCLOSURE R8 K41 [PROTO_4]
  SETTABLEKS R8 R7 K42 ["didMount"]
  DUPCLOSURE R8 K43 [PROTO_5]
  SETTABLEKS R8 R7 K44 ["didUpdate"]
  DUPCLOSURE R8 K45 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K46 ["render"]
  RETURN R7 1
