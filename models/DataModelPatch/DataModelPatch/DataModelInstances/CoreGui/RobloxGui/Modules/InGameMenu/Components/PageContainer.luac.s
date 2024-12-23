PROTO_0:
  JUMPIFNOT R0 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getSelectionParentNameFromKey"]
  MOVE R3 R1
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["RemoveSelectionGroup"]
  CALL R3 2 0
  GETUPVAL R3 1
  MOVE R5 R2
  MOVE R6 R0
  NAMECALL R3 R3 K2 ["AddSelectionParent"]
  CALL R3 3 0
  RETURN R0 0

PROTO_1:
  MOVE R2 R0
  LOADK R3 K0 ["_IGMPageSelectionGroup"]
  CONCAT R1 R2 R3
  RETURN R1 1

PROTO_2:
  GETIMPORT R1 K2 [UDim2.new]
  SUBK R2 R0 K3 [1]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  CALL R1 4 -1
  RETURN R1 -1

PROTO_3:
  JUMPIFEQKN R0 K0 [0] [+3]
  JUMPIFNOTEQKN R0 K1 [1.25] [+3]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETIMPORT R1 K1 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R7 0
  GETTABLE R6 R7 R4
  MOVE R7 R5
  CALL R6 1 0
  FORGLOOP R1 2 [-5]
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K0 ["onContainerRendered"]
  DUPCLOSURE R2 K1 [PROTO_1]
  SETTABLEKS R2 R0 K2 ["getSelectionParentNameFromKey"]
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  SETTABLEKS R5 R0 K3 ["pagePositions"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R0 K4 ["pageVisibilities"]
  GETIMPORT R5 K6 [pairs]
  GETUPVAL R8 1
  GETTABLEKS R6 R8 K7 ["pagesByKey"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R11 R1 K8 ["currentPage"]
  JUMPIFNOTEQ R11 R8 [+3]
  LOADN R10 1
  JUMP [+1]
  LOADN R10 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K9 ["createBinding"]
  MOVE R12 R10
  CALL R11 1 2
  SETTABLE R11 R2 R8
  SETTABLE R12 R3 R8
  SETTABLE R10 R4 R8
  GETTABLEKS R11 R0 K3 ["pagePositions"]
  GETTABLE R12 R2 R8
  DUPCLOSURE R14 K10 [PROTO_2]
  NAMECALL R12 R12 K11 ["map"]
  CALL R12 2 1
  SETTABLE R12 R11 R8
  GETTABLEKS R11 R0 K4 ["pageVisibilities"]
  GETTABLE R12 R2 R8
  DUPCLOSURE R14 K12 [PROTO_3]
  NAMECALL R12 R12 K11 ["map"]
  CALL R12 2 1
  SETTABLE R12 R11 R8
  FORGLOOP R5 2 [-32]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K13 ["createGroupMotor"]
  MOVE R6 R4
  CALL R5 1 1
  SETTABLEKS R5 R0 K14 ["pageMotor"]
  GETTABLEKS R5 R0 K14 ["pageMotor"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R3
  NAMECALL R5 R5 K15 ["onStep"]
  CALL R5 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onContainerRendered"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isModal"]
  JUMPIF R1 [+61]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createElement"]
  LOADK R2 K2 ["Frame"]
  NEWTABLE R3 8 0
  GETIMPORT R4 K5 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K6 ["Size"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["pagePositions"]
  GETUPVAL R6 3
  GETTABLE R4 R5 R6
  SETTABLEKS R4 R3 K8 ["Position"]
  LOADN R4 1
  SETTABLEKS R4 R3 K9 ["BackgroundTransparency"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["navigationDepth"]
  SETTABLEKS R4 R3 K11 ["ZIndex"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K12 ["Visible"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["Ref"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLE R5 R3 R4
  DUPTABLE R4 K15 [{"Page"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R7 5
  GETUPVAL R8 3
  GETTABLE R6 R7 R8
  DUPTABLE R7 K17 [{"pageTitle"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K18 ["title"]
  JUMPIFNOT R8 [+2]
  GETTABLEKS R8 R0 K18 ["title"]
  SETTABLEKS R8 R7 K16 ["pageTitle"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["Page"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 6
  DUPTABLE R3 K20 [{"Enabled"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K21 ["props"]
  GETTABLEKS R5 R6 K22 ["currentPage"]
  GETUPVAL R6 3
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K19 ["Enabled"]
  DUPTABLE R4 K24 [{"ModalPageContent"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R7 5
  GETUPVAL R8 3
  GETTABLE R6 R7 R8
  DUPTABLE R7 K17 [{"pageTitle"}]
  GETTABLEKS R8 R0 K18 ["title"]
  SETTABLEKS R8 R7 K16 ["pageTitle"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K23 ["ModalPageContent"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_8:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R5 0
  GETTABLEKS R3 R5 K2 ["pagesByKey"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R8 R0 K3 ["pageVisibilities"]
  GETTABLE R7 R8 R5
  GETUPVAL R8 1
  DUPTABLE R9 K5 [{"title"}]
  GETTABLEKS R10 R6 K4 ["title"]
  SETTABLEKS R10 R9 K4 ["title"]
  CALL R8 1 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R6
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R8 1 1
  SETTABLE R8 R1 R5
  FORGLOOP R2 2 [-21]
  GETTABLEKS R4 R0 K6 ["props"]
  GETTABLEKS R3 R4 K7 ["controllerBarCount"]
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+7]
  LOADN R3 255
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K8 ["ControllerBarHeight"]
  MUL R2 R3 R4
  JUMPIF R2 [+1]
  LOADNIL R2
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["createElement"]
  LOADK R4 K10 ["Frame"]
  DUPTABLE R5 K16 [{"Size", "Position", "BackgroundTransparency", "Visible", "ClipsDescendants"}]
  GETIMPORT R6 K19 [UDim2.new]
  LOADN R7 0
  LOADN R8 144
  LOADN R9 1
  MOVE R10 R2
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Size"]
  GETIMPORT R6 K19 [UDim2.new]
  LOADN R7 0
  LOADN R8 64
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K12 ["Position"]
  LOADN R6 1
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  GETTABLEKS R7 R0 K6 ["props"]
  GETTABLEKS R6 R7 K20 ["visible"]
  SETTABLEKS R6 R5 K14 ["Visible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K15 ["ClipsDescendants"]
  MOVE R6 R1
  CALL R3 3 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R3 R1 K0 ["currentPage"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["currentPage"]
  JUMPIFEQ R3 R4 [+128]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["pagesByKey"]
  GETTABLE R6 R7 R4
  GETTABLEKS R5 R6 K3 ["isModal"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["pagesByKey"]
  GETTABLE R7 R8 R3
  GETTABLEKS R6 R7 K3 ["isModal"]
  JUMPIF R5 [+1]
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["pagesByKey"]
  GETTABLE R8 R9 R3
  GETTABLEKS R7 R8 K4 ["navigationDepth"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["pagesByKey"]
  GETTABLE R9 R10 R4
  GETTABLEKS R8 R9 K4 ["navigationDepth"]
  JUMPIFNOTLT R7 R8 [+20]
  JUMPIF R5 [+80]
  GETTABLEKS R7 R0 K5 ["pageMotor"]
  NEWTABLE R9 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["spring"]
  LOADK R11 K7 [1.25]
  DUPTABLE R12 K9 [{"frequency"}]
  LOADK R13 K10 [2.5]
  SETTABLEKS R13 R12 K8 ["frequency"]
  CALL R10 2 1
  SETTABLE R10 R9 R3
  NAMECALL R7 R7 K11 ["setGoal"]
  CALL R7 2 0
  JUMP [+62]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["pagesByKey"]
  GETTABLE R8 R9 R3
  GETTABLEKS R7 R8 K4 ["navigationDepth"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["pagesByKey"]
  GETTABLE R9 R10 R4
  GETTABLEKS R8 R9 K4 ["navigationDepth"]
  JUMPIFNOTEQ R7 R8 [+19]
  GETTABLEKS R7 R0 K5 ["pageMotor"]
  NEWTABLE R9 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["spring"]
  LOADN R11 0
  DUPTABLE R12 K9 [{"frequency"}]
  LOADK R13 K10 [2.5]
  SETTABLEKS R13 R12 K8 ["frequency"]
  CALL R10 2 1
  SETTABLE R10 R9 R3
  NAMECALL R7 R7 K11 ["setGoal"]
  CALL R7 2 0
  JUMP [+30]
  NEWTABLE R7 0 0
  MOVE R8 R3
  JUMPIFEQKNIL R8 [+20]
  JUMPIFEQ R8 R4 [+18]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["spring"]
  LOADN R10 0
  DUPTABLE R11 K9 [{"frequency"}]
  LOADK R12 K12 [3.5]
  SETTABLEKS R12 R11 K8 ["frequency"]
  CALL R9 2 1
  SETTABLE R9 R7 R8
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["pagesByKey"]
  GETTABLE R9 R10 R8
  GETTABLEKS R8 R9 K13 ["parentPage"]
  JUMPBACK [-21]
  GETTABLEKS R9 R0 K5 ["pageMotor"]
  MOVE R11 R7
  NAMECALL R9 R9 K11 ["setGoal"]
  CALL R9 2 0
  GETTABLEKS R7 R0 K5 ["pageMotor"]
  NEWTABLE R9 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["spring"]
  LOADN R11 1
  DUPTABLE R12 K9 [{"frequency"}]
  LOADK R13 K10 [2.5]
  SETTABLEKS R13 R12 K8 ["frequency"]
  CALL R10 2 1
  SETTABLE R10 R9 R4
  NAMECALL R7 R7 K11 ["setGoal"]
  CALL R7 2 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["pagesByKey"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K3 ["isModal"]
  JUMPIF R6 [+9]
  GETTABLEKS R6 R0 K4 ["getSelectionParentNameFromKey"]
  MOVE R7 R4
  CALL R6 1 1
  GETUPVAL R7 1
  MOVE R9 R6
  NAMECALL R7 R7 K5 ["RemoveSelectionGroup"]
  CALL R7 2 0
  FORGLOOP R1 2 [-13]
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K4 [{"currentPage", "visible", "controllerBarHeight", "controllerBarCount"}]
  GETTABLEKS R2 R0 K5 ["menuPage"]
  SETTABLEKS R2 R1 K0 ["currentPage"]
  GETTABLEKS R2 R0 K6 ["isMenuOpen"]
  SETTABLEKS R2 R1 K1 ["visible"]
  GETTABLEKS R2 R0 K2 ["controllerBarHeight"]
  SETTABLEKS R2 R1 K2 ["controllerBarHeight"]
  GETTABLEKS R2 R0 K3 ["controllerBarCount"]
  SETTABLEKS R2 R1 K3 ["controllerBarCount"]
  RETURN R1 1

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
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["RoactRodux"]
  GETTABLEKS R5 R2 K11 ["Otter"]
  GETTABLEKS R6 R2 K12 ["t"]
  GETIMPORT R9 K14 [script]
  GETTABLEKS R8 R9 K15 ["Parent"]
  GETTABLEKS R7 R8 K15 ["Parent"]
  GETIMPORT R8 K6 [require]
  GETIMPORT R11 K14 [script]
  GETTABLEKS R10 R11 K15 ["Parent"]
  GETTABLEKS R9 R10 K16 ["BlurredModalPortal"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETIMPORT R12 K14 [script]
  GETTABLEKS R11 R12 K15 ["Parent"]
  GETTABLEKS R10 R11 K17 ["Pages"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETIMPORT R15 K14 [script]
  GETTABLEKS R14 R15 K15 ["Parent"]
  GETTABLEKS R13 R14 K15 ["Parent"]
  GETTABLEKS R12 R13 K18 ["Resources"]
  GETTABLEKS R11 R12 K19 ["Constants"]
  CALL R10 1 1
  NEWTABLE R11 0 0
  GETIMPORT R12 K21 [pairs]
  GETTABLEKS R13 R9 K22 ["pagesByKey"]
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETIMPORT R17 K6 [require]
  GETTABLEKS R18 R16 K23 ["component"]
  CALL R17 1 1
  SETTABLE R17 R11 R15
  FORGLOOP R12 2 [-7]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R7 K24 ["Localization"]
  GETTABLEKS R13 R14 K25 ["withLocalization"]
  CALL R12 1 1
  GETTABLEKS R13 R3 K26 ["PureComponent"]
  LOADK R15 K27 ["PageContainer"]
  NAMECALL R13 R13 K28 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R6 K29 ["strictInterface"]
  DUPTABLE R15 K34 [{"currentPage", "visible", "controllerBarHeight", "controllerBarCount"}]
  GETTABLEKS R16 R6 K35 ["string"]
  SETTABLEKS R16 R15 K30 ["currentPage"]
  GETTABLEKS R16 R6 K36 ["boolean"]
  SETTABLEKS R16 R15 K31 ["visible"]
  GETTABLEKS R16 R6 K37 ["number"]
  SETTABLEKS R16 R15 K32 ["controllerBarHeight"]
  GETTABLEKS R16 R6 K37 ["number"]
  SETTABLEKS R16 R15 K33 ["controllerBarCount"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K38 ["validateProps"]
  DUPCLOSURE R14 K39 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K40 ["init"]
  DUPCLOSURE R14 K41 [PROTO_8]
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K42 ["render"]
  DUPCLOSURE R14 K43 [PROTO_9]
  CAPTURE VAL R9
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K44 ["didUpdate"]
  DUPCLOSURE R14 K45 [PROTO_10]
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K46 ["willUnmount"]
  GETTABLEKS R14 R4 K47 ["UNSTABLE_connect2"]
  DUPCLOSURE R15 K48 [PROTO_11]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1
