PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["shouldShow"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["onShown"]
  JUMPIFNOT R0 [+19]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["onShown"]
  CALL R0 0 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["onHidden"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["onHidden"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBinding"]
  LOADN R2 1
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createSingleMotor"]
  LOADN R4 1
  CALL R3 1 1
  SETTABLEKS R3 R0 K2 ["motor"]
  GETTABLEKS R3 R0 K2 ["motor"]
  NAMECALL R3 R3 K3 ["start"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K2 ["motor"]
  MOVE R5 R2
  NAMECALL R3 R3 K4 ["onStep"]
  CALL R3 2 0
  SETTABLEKS R1 R0 K5 ["animationProgress"]
  GETTABLEKS R3 R0 K2 ["motor"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["onComplete"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K2 ["motor"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["spring"]
  GETTABLEKS R8 R0 K8 ["props"]
  GETTABLEKS R7 R8 K9 ["shouldShow"]
  JUMPIFNOT R7 [+2]
  LOADN R6 0
  JUMP [+1]
  LOADN R6 1
  GETUPVAL R7 2
  CALL R5 2 -1
  NAMECALL R3 R3 K10 ["setGoal"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R1 K0 ["shouldShow"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["shouldShow"]
  JUMPIFEQ R3 R4 [+19]
  GETTABLEKS R3 R0 K2 ["motor"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["spring"]
  GETTABLEKS R8 R0 K1 ["props"]
  GETTABLEKS R7 R8 K0 ["shouldShow"]
  JUMPIFNOT R7 [+2]
  LOADN R6 0
  JUMP [+1]
  LOADN R6 1
  GETUPVAL R7 1
  CALL R5 2 -1
  NAMECALL R3 R3 K4 ["setGoal"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 0
  LOADN R3 0
  LOADN R5 255
  MUL R4 R5 R0
  LOADN R5 0
  CALL R1 4 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K6 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Position"}]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["BorderSizePixel"]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETTABLEKS R4 R0 K10 ["animationProgress"]
  DUPCLOSURE R6 K11 [PROTO_3]
  NAMECALL R4 R4 K12 ["map"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Position"]
  GETTABLEKS R5 R0 K13 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["Children"]
  GETTABLE R4 R5 R6
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["CorePackages"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Workspace"]
  GETTABLEKS R4 R5 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["PurchasePromptDeps"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["Roact"]
  GETTABLEKS R4 R2 K13 ["Otter"]
  GETTABLEKS R5 R2 K14 ["t"]
  GETTABLEKS R6 R3 K15 ["Component"]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K16 ["Name"]
  NAMECALL R6 R6 K17 ["extend"]
  CALL R6 2 1
  DUPTABLE R7 K20 [{"dampingRatio", "frequency"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K18 ["dampingRatio"]
  LOADK R8 K21 [1.6]
  SETTABLEKS R8 R7 K19 ["frequency"]
  GETTABLEKS R8 R5 K22 ["interface"]
  DUPTABLE R9 K26 [{"shouldShow", "onShown", "onHidden"}]
  GETTABLEKS R10 R5 K27 ["boolean"]
  SETTABLEKS R10 R9 K23 ["shouldShow"]
  GETTABLEKS R10 R5 K28 ["optional"]
  GETTABLEKS R11 R5 K29 ["callback"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["onShown"]
  GETTABLEKS R10 R5 K28 ["optional"]
  GETTABLEKS R11 R5 K29 ["callback"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["onHidden"]
  CALL R8 1 1
  SETTABLEKS R8 R6 K30 ["validateProps"]
  DUPCLOSURE R8 K31 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R8 R6 K32 ["init"]
  DUPCLOSURE R8 K33 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R8 R6 K34 ["didUpdate"]
  DUPCLOSURE R8 K35 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R8 R6 K36 ["render"]
  RETURN R6 1