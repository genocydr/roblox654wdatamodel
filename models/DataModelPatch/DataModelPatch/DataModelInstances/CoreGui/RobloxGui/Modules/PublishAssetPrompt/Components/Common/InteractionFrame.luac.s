PROTO_0:
  GETTABLEKS R2 R0 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.Touch]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K5 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R0 K0 ["UserInputType"]
  GETIMPORT R5 K7 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  OR R4 R2 R3
  MOVE R5 R1
  MOVE R6 R4
  MOVE R7 R2
  MOVE R8 R3
  RETURN R5 4

PROTO_1:
  GETTABLEKS R1 R0 K0 ["inputChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["inputEndedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["renderSteppedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["inputChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["inputEndedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["renderSteppedConnection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R5 R1 K0 ["UserInputType"]
  GETIMPORT R6 K3 [Enum.UserInputType.Touch]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETTABLEKS R6 R1 K0 ["UserInputType"]
  GETIMPORT R7 K5 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R7 R1 K0 ["UserInputType"]
  GETIMPORT R8 K7 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  OR R7 R5 R6
  MOVE R2 R4
  MOVE R3 R7
  GETTABLEKS R5 R1 K0 ["UserInputType"]
  GETIMPORT R6 K9 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  OR R5 R4 R3
  JUMPIF R5 [+2]
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADNIL R6
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R0 K10 ["activeMouseInput"]
  RETURN R6 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R7 R0 K11 ["activeTouchInputs"]
  GETTABLE R6 R7 R1
  RETURN R6 1

PROTO_3:
  JUMPIFNOT R2 [+21]
  GETUPVAL R4 0
  GETIMPORT R6 K3 [Enum.UserInputType.MouseButton1]
  NAMECALL R4 R4 K4 ["IsMouseButtonPressed"]
  CALL R4 2 1
  JUMPIF R4 [+6]
  GETUPVAL R4 0
  GETIMPORT R6 K6 [Enum.UserInputType.MouseButton2]
  NAMECALL R4 R4 K4 ["IsMouseButtonPressed"]
  CALL R4 2 1
  NOT R3 R4
  JUMPIFNOT R3 [+4]
  LOADNIL R4
  SETTABLEKS R4 R0 K7 ["activeMouseInput"]
  JUMP [+11]
  RETURN R0 0
  JUMP [+9]
  GETTABLEKS R3 R0 K8 ["activeTouchInputs"]
  LOADNIL R4
  SETTABLE R4 R3 R1
  GETTABLEKS R4 R0 K10 ["numActiveTouchInputs"]
  SUBK R3 R4 K9 [1]
  SETTABLEKS R3 R0 K10 ["numActiveTouchInputs"]
  GETTABLEKS R4 R0 K11 ["numActiveInputs"]
  SUBK R3 R4 K9 [1]
  SETTABLEKS R3 R0 K11 ["numActiveInputs"]
  GETTABLEKS R3 R0 K11 ["numActiveInputs"]
  JUMPIFNOTEQKN R3 K12 [0] [+4]
  NAMECALL R3 R0 K13 ["disconnectEvents"]
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["lastPrimaryPointerInputBeganPosition"]
  JUMPIFNOT R3 [+26]
  GETTABLEKS R4 R0 K0 ["lastPrimaryPointerInputBeganPosition"]
  GETTABLEKS R5 R1 K1 ["Position"]
  SUB R3 R4 R5
  GETTABLEKS R5 R0 K2 ["lastPrimaryPointerInputBeganTime"]
  SUB R4 R2 R5
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["doubleTap"]
  JUMPIFNOT R5 [+13]
  GETTABLEKS R5 R3 K5 ["Magnitude"]
  LOADN R6 30
  JUMPIFNOTLT R5 R6 [+9]
  LOADK R5 K6 [0.25]
  JUMPIFNOTLT R4 R5 [+6]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["doubleTap"]
  CALL R5 0 0
  GETTABLEKS R3 R1 K1 ["Position"]
  SETTABLEKS R3 R0 K0 ["lastPrimaryPointerInputBeganPosition"]
  SETTABLEKS R2 R0 K2 ["lastPrimaryPointerInputBeganTime"]
  RETURN R0 0

PROTO_5:
  MOVE R6 R1
  NAMECALL R4 R0 K0 ["getActiveInput"]
  CALL R4 2 1
  JUMPIFNOT R4 [+1]
  RETURN R0 0
  DUPTABLE R4 K3 [{"lastPosition", "lastTime"}]
  GETTABLEKS R5 R1 K4 ["Position"]
  SETTABLEKS R5 R4 K1 ["lastPosition"]
  SETTABLEKS R3 R4 K2 ["lastTime"]
  JUMPIFNOT R2 [+3]
  SETTABLEKS R4 R0 K5 ["activeMouseInput"]
  JUMP [+22]
  GETTABLEKS R5 R0 K6 ["activeTouchInputs"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["Dictionary"]
  GETTABLEKS R6 R7 K8 ["join"]
  MOVE R7 R4
  DUPTABLE R8 K11 [{"lastDeltaTime", "lastDeltaPosition"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K9 ["lastDeltaTime"]
  LOADK R9 K12 [{0, 0, 0}]
  SETTABLEKS R9 R8 K10 ["lastDeltaPosition"]
  CALL R6 2 1
  SETTABLE R6 R5 R1
  GETTABLEKS R6 R0 K14 ["numActiveTouchInputs"]
  ADDK R5 R6 K13 [1]
  SETTABLEKS R5 R0 K14 ["numActiveTouchInputs"]
  GETTABLEKS R6 R0 K15 ["numActiveInputs"]
  ADDK R5 R6 K13 [1]
  SETTABLEKS R5 R0 K15 ["numActiveInputs"]
  GETTABLEKS R5 R0 K15 ["numActiveInputs"]
  JUMPIFNOTEQKN R5 K13 [1] [+37]
  GETTABLEKS R6 R0 K16 ["props"]
  GETTABLEKS R5 R6 K17 ["setAngularVelocityByPixels"]
  LOADN R6 0
  CALL R5 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K18 ["InputChanged"]
  GETTABLEKS R7 R0 K19 ["onInputChanged"]
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K21 ["inputChangedConnection"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K22 ["InputEnded"]
  GETTABLEKS R7 R0 K23 ["onInputEnded"]
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K24 ["inputEndedConnection"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K25 ["RenderStepped"]
  GETTABLEKS R7 R0 K26 ["setInputNotChanged"]
  NAMECALL R5 R5 K20 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K27 ["renderSteppedConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseWheel]
  JUMPIFNOTEQ R2 R3 [+17]
  GETTABLEKS R4 R1 K4 ["Position"]
  GETTABLEKS R3 R4 K5 ["Z"]
  MINUS R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["props"]
  GETTABLEKS R3 R4 K7 ["zoomToPoint"]
  MOVE R4 R2
  GETUPVAL R5 1
  NAMECALL R5 R5 K8 ["GetMouseLocation"]
  CALL R5 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["activeTouchInputs"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADB R6 0
  SETTABLEKS R6 R5 K1 ["changedThisFrame"]
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["UserInputType"]
  GETIMPORT R4 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R0 K0 ["UserInputType"]
  GETIMPORT R5 K5 [Enum.UserInputType.Touch]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  OR R4 R2 R3
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  MOVE R7 R0
  NAMECALL R5 R5 K6 ["getActiveInput"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETIMPORT R6 K8 [tick]
  CALL R6 0 1
  GETTABLEKS R8 R5 K9 ["lastTime"]
  SUB R7 R6 R8
  GETTABLEKS R9 R0 K10 ["Position"]
  GETTABLEKS R10 R5 K11 ["lastPosition"]
  SUB R8 R9 R10
  GETIMPORT R10 K14 [Vector2.new]
  GETTABLEKS R11 R8 K15 ["X"]
  GETTABLEKS R12 R8 K16 ["Y"]
  CALL R10 2 1
  GETIMPORT R11 K14 [Vector2.new]
  LOADN R12 255
  LOADN R13 1
  CALL R11 2 1
  MUL R9 R10 R11
  GETUPVAL R10 1
  GETIMPORT R12 K18 [Enum.UserInputType.MouseButton1]
  NAMECALL R10 R10 K19 ["IsMouseButtonPressed"]
  CALL R10 2 1
  GETUPVAL R11 1
  GETIMPORT R13 K21 [Enum.UserInputType.MouseButton2]
  NAMECALL R11 R11 K19 ["IsMouseButtonPressed"]
  CALL R11 2 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K22 ["lastPanTime"]
  SUB R13 R6 R14
  LOADK R14 K23 [0.1]
  JUMPIFLT R14 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  JUMPIFNOT R2 [+1]
  JUMPIF R10 [+6]
  JUMPIFNOT R3 [+13]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K24 ["numActiveTouchInputs"]
  JUMPIFNOTEQKN R13 K25 [1] [+9]
  JUMPIFNOT R12 [+7]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K26 ["props"]
  GETTABLEKS R13 R14 K27 ["rotateByPixels"]
  MINUS R14 R9
  CALL R13 1 0
  JUMPIFNOT R2 [+1]
  JUMPIF R11 [+6]
  JUMPIFNOT R3 [+19]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K24 ["numActiveTouchInputs"]
  JUMPIFNOTEQKN R13 K28 [2] [+15]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K29 ["numActiveInputs"]
  DIV R13 R9 R14
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K26 ["props"]
  GETTABLEKS R14 R15 K30 ["panByPixels"]
  MOVE R15 R13
  CALL R14 1 0
  GETUPVAL R14 0
  SETTABLEKS R6 R14 K22 ["lastPanTime"]
  GETTABLEKS R13 R0 K10 ["Position"]
  SETTABLEKS R13 R5 K11 ["lastPosition"]
  SETTABLEKS R6 R5 K9 ["lastTime"]
  JUMPIFNOT R3 [+21]
  GETTABLEKS R13 R5 K31 ["changedThisFrame"]
  JUMPIFNOT R13 [+11]
  GETTABLEKS R14 R5 K32 ["lastDeltaPosition"]
  ADD R13 R8 R14
  SETTABLEKS R13 R5 K32 ["lastDeltaPosition"]
  GETTABLEKS R14 R5 K33 ["lastDeltaTime"]
  ADD R13 R7 R14
  SETTABLEKS R13 R5 K33 ["lastDeltaTime"]
  RETURN R0 0
  SETTABLEKS R8 R5 K32 ["lastDeltaPosition"]
  SETTABLEKS R7 R5 K33 ["lastDeltaTime"]
  LOADB R13 1
  SETTABLEKS R13 R5 K31 ["changedThisFrame"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R6 R0 K0 ["UserInputType"]
  GETIMPORT R7 K3 [Enum.UserInputType.Touch]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R7 R0 K0 ["UserInputType"]
  GETIMPORT R8 K5 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R8 R0 K0 ["UserInputType"]
  GETIMPORT R9 K7 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  OR R8 R6 R7
  MOVE R2 R5
  MOVE R3 R8
  MOVE R4 R6
  OR R5 R2 R3
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 0
  MOVE R8 R0
  NAMECALL R6 R6 K8 ["getActiveInput"]
  CALL R6 2 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETIMPORT R7 K10 [tick]
  CALL R7 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["lastPanTime"]
  SUB R8 R7 R9
  MOVE R9 R2
  JUMPIFNOT R9 [+2]
  GETTABLEKS R9 R6 K12 ["changedThisFrame"]
  LOADB R10 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["numActiveInputs"]
  JUMPIFNOTEQKN R11 K14 [1] [+6]
  LOADK R11 K15 [0.1]
  JUMPIFLT R11 R8 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIF R9 [+1]
  JUMPIFNOT R4 [+26]
  JUMPIFNOT R10 [+25]
  LOADNIL R11
  LOADNIL R12
  JUMPIFNOT R4 [+9]
  GETTABLEKS R13 R0 K16 ["Position"]
  GETTABLEKS R14 R6 K17 ["lastPosition"]
  SUB R11 R13 R14
  GETTABLEKS R13 R6 K18 ["lastTime"]
  SUB R12 R7 R13
  JUMP [+4]
  GETTABLEKS R11 R6 K19 ["lastDeltaPosition"]
  GETTABLEKS R12 R6 K20 ["lastDeltaTime"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K21 ["props"]
  GETTABLEKS R13 R14 K22 ["setAngularVelocityByPixels"]
  GETTABLEKS R15 R11 K23 ["X"]
  DIV R14 R15 R12
  CALL R13 1 0
  GETUPVAL R11 0
  MOVE R13 R0
  MOVE R14 R3
  NAMECALL R11 R11 K24 ["removeActivePointerInput"]
  CALL R11 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["handleScroll"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R6 R1 K1 ["UserInputType"]
  GETIMPORT R7 K4 [Enum.UserInputType.Touch]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R7 R1 K1 ["UserInputType"]
  GETIMPORT R8 K6 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R8 R1 K1 ["UserInputType"]
  GETIMPORT R9 K8 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  OR R8 R6 R7
  MOVE R2 R5
  MOVE R3 R8
  MOVE R4 R6
  OR R5 R2 R3
  JUMPIF R5 [+1]
  RETURN R0 0
  OR R6 R2 R4
  GETIMPORT R7 K10 [tick]
  CALL R7 0 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R8 0
  MOVE R10 R1
  MOVE R11 R7
  NAMECALL R8 R8 K11 ["handleDoubleTap"]
  CALL R8 3 0
  GETUPVAL R8 0
  MOVE R10 R1
  MOVE R11 R3
  MOVE R12 R7
  NAMECALL R8 R8 K12 ["addActivePointerInput"]
  CALL R8 4 0
  RETURN R0 0

PROTO_11:
  GETTABLEN R5 R1 2
  JUMPIFNOTEQKNIL R5 [+2]
  RETURN R0 0
  GETIMPORT R5 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R4 R5 [+10]
  GETUPVAL R5 0
  GETTABLEN R8 R1 1
  GETTABLEN R9 R1 2
  SUB R7 R8 R9
  GETTABLEKS R6 R7 K4 ["Magnitude"]
  SETTABLEKS R6 R5 K5 ["lastPinchDistance"]
  RETURN R0 0
  GETTABLEN R7 R1 1
  GETTABLEN R8 R1 2
  SUB R6 R7 R8
  GETTABLEKS R5 R6 K4 ["Magnitude"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["lastPinchDistance"]
  SUB R6 R5 R7
  GETUPVAL R7 0
  SETTABLEKS R5 R7 K5 ["lastPinchDistance"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["props"]
  GETTABLEKS R7 R8 K7 ["zoomToPoint"]
  MULK R8 R6 K8 [-0.05]
  GETTABLEN R11 R1 1
  GETTABLEN R12 R1 2
  ADD R10 R11 R12
  DIVK R9 R10 K9 [2]
  CALL R7 2 0
  RETURN R0 0

PROTO_12:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["inputChangedConnection"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["inputEndedConnection"]
  LOADN R1 1
  SETTABLEKS R1 R0 K2 ["lastPinchDistance"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["lastPanTime"]
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["lastPrimaryPointerInputBeganTime"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["lastPrimaryPointerInputBeganPosition"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["activeTouchInputs"]
  LOADN R1 0
  SETTABLEKS R1 R0 K7 ["numActiveTouchInputs"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["activeMouseInput"]
  LOADN R1 0
  SETTABLEKS R1 R0 K9 ["numActiveInputs"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K10 ["handleScroll"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["setInputNotChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K12 ["onInputChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onInputEnded"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onInputBegan"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["onTouchPinch"]
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["inputChangedConnection"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["disconnectEvents"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Visible"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Size"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K5 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 1
  LOADN R6 0
  CALL R2 4 1
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["Position"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K7 ["ZIndex"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["createElement"]
  LOADK R6 K9 ["Frame"]
  NEWTABLE R7 16 0
  LOADN R8 1
  SETTABLEKS R8 R7 K10 ["BackgroundTransparency"]
  SETTABLEKS R2 R7 K2 ["Size"]
  SETTABLEKS R3 R7 K6 ["Position"]
  SETTABLEKS R4 R7 K7 ["ZIndex"]
  SETTABLEKS R1 R7 K1 ["Visible"]
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["Active"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K13 ["InputBegan"]
  GETTABLEKS R9 R0 K14 ["onInputBegan"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K15 ["InputChanged"]
  GETTABLEKS R9 R0 K16 ["handleScroll"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K17 ["TouchPinch"]
  GETTABLEKS R9 R0 K18 ["onTouchPinch"]
  SETTABLE R9 R7 R8
  GETTABLEKS R9 R0 K0 ["props"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K19 ["Children"]
  GETTABLE R8 R9 R10
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["UserInputService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["t"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_0]
  GETTABLEKS R7 R4 K13 ["PureComponent"]
  LOADK R9 K14 ["InteractionFrame"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPTABLE R8 K17 [{"Visible"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K16 ["Visible"]
  SETTABLEKS R8 R7 K18 ["defaultProps"]
  GETTABLEKS R8 R5 K19 ["interface"]
  DUPTABLE R9 K28 [{"panByPixels", "rotateByPixels", "setAngularVelocityByPixels", "zoomToPoint", "doubleTap", "Size", "Position", "Visible", "ZIndex"}]
  GETTABLEKS R10 R5 K29 ["callback"]
  SETTABLEKS R10 R9 K20 ["panByPixels"]
  GETTABLEKS R10 R5 K29 ["callback"]
  SETTABLEKS R10 R9 K21 ["rotateByPixels"]
  GETTABLEKS R10 R5 K29 ["callback"]
  SETTABLEKS R10 R9 K22 ["setAngularVelocityByPixels"]
  GETTABLEKS R10 R5 K29 ["callback"]
  SETTABLEKS R10 R9 K23 ["zoomToPoint"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K29 ["callback"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K24 ["doubleTap"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K31 ["UDim2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K25 ["Size"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K31 ["UDim2"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K26 ["Position"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K32 ["boolean"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K16 ["Visible"]
  GETTABLEKS R10 R5 K30 ["optional"]
  GETTABLEKS R11 R5 K33 ["number"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K27 ["ZIndex"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K34 ["validateProps"]
  DUPCLOSURE R8 K35 [PROTO_1]
  SETTABLEKS R8 R7 K36 ["disconnectEvents"]
  DUPCLOSURE R8 K37 [PROTO_2]
  SETTABLEKS R8 R7 K38 ["getActiveInput"]
  DUPCLOSURE R8 K39 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K40 ["removeActivePointerInput"]
  DUPCLOSURE R8 K41 [PROTO_4]
  SETTABLEKS R8 R7 K42 ["handleDoubleTap"]
  DUPCLOSURE R8 K43 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K44 ["addActivePointerInput"]
  DUPCLOSURE R8 K45 [PROTO_12]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K46 ["init"]
  DUPCLOSURE R8 K47 [PROTO_13]
  SETTABLEKS R8 R7 K48 ["willUnmount"]
  DUPCLOSURE R8 K49 [PROTO_14]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K50 ["render"]
  RETURN R7 1
