PROTO_0:
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["Frame"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R1 R3 K4 ["BorderSizePixel"]
  SETTABLEKS R2 R3 K5 ["BackgroundColor3"]
  RETURN R3 1

PROTO_1:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["ScreenGui"]
  GETUPVAL R2 1
  LOADK R4 K4 ["Rubberband"]
  NAMECALL R2 R2 K5 ["findOrCreateFolder"]
  CALL R2 2 -1
  CALL R0 -1 1
  SETUPVAL R0 0
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETUPVAL R3 3
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K6 ["Frame"]
  MOVE R6 R2
  CALL R4 2 1
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["BorderSizePixel"]
  SETTABLEKS R3 R4 K8 ["BackgroundColor3"]
  MOVE R1 R4
  SETTABLEN R1 R0 1
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETUPVAL R3 3
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K6 ["Frame"]
  MOVE R6 R2
  CALL R4 2 1
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["BorderSizePixel"]
  SETTABLEKS R3 R4 K8 ["BackgroundColor3"]
  MOVE R1 R4
  SETTABLEN R1 R0 2
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETUPVAL R3 3
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K6 ["Frame"]
  MOVE R6 R2
  CALL R4 2 1
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["BorderSizePixel"]
  SETTABLEKS R3 R4 K8 ["BackgroundColor3"]
  MOVE R1 R4
  SETTABLEN R1 R0 3
  GETUPVAL R0 2
  GETUPVAL R2 0
  GETUPVAL R3 3
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K6 ["Frame"]
  MOVE R6 R2
  CALL R4 2 1
  LOADN R5 0
  SETTABLEKS R5 R4 K7 ["BorderSizePixel"]
  SETTABLEKS R3 R4 K8 ["BackgroundColor3"]
  MOVE R1 R4
  SETTABLEN R1 R0 4
  RETURN R0 0

PROTO_2:
  LOADB R2 1
  SETUPVAL R2 0
  SETUPVAL R1 1
  SETUPVAL R1 2
  GETUPVAL R2 3
  JUMPIF R2 [+2]
  GETUPVAL R2 4
  CALL R2 0 0
  GETUPVAL R2 5
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["onRubberbandBegan"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  JUMPIF R2 [+1]
  RETURN R0 0
  SETUPVAL R1 1
  GETUPVAL R3 1
  GETUPVAL R4 2
  SUB R2 R3 R4
  GETUPVAL R4 3
  GETTABLEN R3 R4 1
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  GETTABLEKS R9 R2 K4 ["Y"]
  ADDK R8 R9 K3 [1]
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 2
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  GETTABLEKS R9 R2 K4 ["Y"]
  ADDK R8 R9 K3 [1]
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 3
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  GETTABLEKS R7 R2 K6 ["X"]
  ADDK R6 R7 K3 [1]
  LOADN R7 0
  LOADN R8 1
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 4
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  GETTABLEKS R7 R2 K6 ["X"]
  ADDK R6 R7 K3 [1]
  LOADN R7 0
  LOADN R8 1
  CALL R4 4 1
  SETTABLEKS R4 R3 K5 ["Size"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 1
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["X"]
  LOADN R7 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["Y"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["Position"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 2
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["X"]
  GETTABLEKS R8 R2 K6 ["X"]
  ADD R6 R7 R8
  LOADN R7 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["Y"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["Position"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 3
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["X"]
  LOADN R7 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["Y"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["Position"]
  GETUPVAL R4 3
  GETTABLEN R3 R4 4
  GETIMPORT R4 K2 [UDim2.new]
  LOADN R5 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["X"]
  LOADN R7 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["Y"]
  GETTABLEKS R10 R2 K4 ["Y"]
  ADD R8 R9 R10
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["Position"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADB R1 0
  SETUPVAL R1 0
  LOADNIL R1
  SETUPVAL R1 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+9]
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 2
  NEWTABLE R1 0 0
  SETUPVAL R1 3
  GETUPVAL R1 4
  NAMECALL R1 R1 K1 ["onRubberbandEnded"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  RETURN R1 2

PROTO_7:
  SETUPVAL R1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["FFlag"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["CoreGuiManager"]
  CALL R1 1 1
  LOADNIL R2
  LOADB R3 0
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  NEWTABLE R7 0 4
  GETIMPORT R8 K9 [Color3.new]
  LOADK R9 K10 [0.7019]
  LOADK R10 K10 [0.7019]
  LOADK R11 K10 [0.7019]
  CALL R8 3 1
  DUPCLOSURE R9 K11 [PROTO_0]
  NEWCLOSURE R10 P1
  CAPTURE REF R6
  CAPTURE VAL R1
  CAPTURE REF R7
  CAPTURE VAL R8
  NEWTABLE R11 8 0
  NEWCLOSURE R12 P2
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE REF R6
  CAPTURE VAL R10
  CAPTURE REF R2
  SETTABLEKS R12 R11 K12 ["startRubberbandDrag"]
  NEWCLOSURE R12 P3
  CAPTURE REF R3
  CAPTURE REF R5
  CAPTURE REF R4
  CAPTURE REF R7
  SETTABLEKS R12 R11 K13 ["updateRubberband"]
  NEWCLOSURE R12 P4
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R6
  CAPTURE REF R7
  CAPTURE REF R2
  SETTABLEKS R12 R11 K14 ["finishRubberbandDrag"]
  NEWCLOSURE R12 P5
  CAPTURE REF R3
  SETTABLEKS R12 R11 K15 ["isDragInProgress"]
  NEWCLOSURE R12 P6
  CAPTURE REF R4
  CAPTURE REF R5
  SETTABLEKS R12 R11 K16 ["getBounds"]
  NEWCLOSURE R12 P7
  CAPTURE REF R2
  SETTABLEKS R12 R11 K17 ["setActionMediator"]
  CLOSEUPVALS R2
  RETURN R11 1