PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K2 [setmetatable]
  CALL R1 2 1
  SETTABLEKS R0 R1 K3 ["CONTROL_ACTION_PRIORITY"]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["forwardValue"]
  LOADN R2 0
  SETTABLEKS R2 R1 K5 ["backwardValue"]
  LOADN R2 0
  SETTABLEKS R2 R1 K6 ["leftValue"]
  LOADN R2 0
  SETTABLEKS R2 R1 K7 ["rightValue"]
  LOADB R2 1
  SETTABLEKS R2 R1 K8 ["jumpEnabled"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["enabled"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADB R2 1
  RETURN R2 1
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["forwardValue"]
  LOADN R2 0
  SETTABLEKS R2 R0 K2 ["backwardValue"]
  LOADN R2 0
  SETTABLEKS R2 R0 K3 ["leftValue"]
  LOADN R2 0
  SETTABLEKS R2 R0 K4 ["rightValue"]
  GETUPVAL R2 0
  SETTABLEKS R2 R0 K5 ["moveVector"]
  LOADB R2 0
  SETTABLEKS R2 R0 K6 ["jumpRequested"]
  NAMECALL R2 R0 K7 ["UpdateJump"]
  CALL R2 1 0
  JUMPIFNOT R1 [+7]
  NAMECALL R2 R0 K8 ["BindContextActions"]
  CALL R2 1 0
  NAMECALL R2 R0 K9 ["ConnectFocusEventListeners"]
  CALL R2 1 0
  JUMP [+5]
  GETTABLEKS R2 R0 K10 ["_connectionUtil"]
  NAMECALL R2 R2 K11 ["disconnectAll"]
  CALL R2 1 0
  SETTABLEKS R1 R0 K0 ["enabled"]
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETIMPORT R2 K3 [Enum.UserInputState.Cancel]
  JUMPIFNOTEQ R1 R2 [+5]
  GETUPVAL R2 0
  SETTABLEKS R2 R0 K4 ["moveVector"]
  RETURN R0 0
  GETTABLEKS R4 R0 K5 ["leftValue"]
  GETTABLEKS R5 R0 K6 ["rightValue"]
  ADD R3 R4 R5
  LOADN R4 0
  GETTABLEKS R6 R0 K7 ["forwardValue"]
  GETTABLEKS R7 R0 K8 ["backwardValue"]
  ADD R5 R6 R7
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K11 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R0 K4 ["moveVector"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["jumpRequested"]
  SETTABLEKS R1 R0 K1 ["isJumping"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETIMPORT R5 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 255
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["forwardValue"]
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K5 ["UpdateMovement"]
  CALL R3 2 0
  GETIMPORT R3 K8 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_5:
  GETUPVAL R3 0
  GETIMPORT R5 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 1
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["backwardValue"]
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K5 ["UpdateMovement"]
  CALL R3 2 0
  GETIMPORT R3 K8 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_6:
  GETUPVAL R3 0
  GETIMPORT R5 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 255
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["leftValue"]
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K5 ["UpdateMovement"]
  CALL R3 2 0
  GETIMPORT R3 K8 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_7:
  GETUPVAL R3 0
  GETIMPORT R5 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R5 [+3]
  LOADN R4 1
  JUMP [+1]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["rightValue"]
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K5 ["UpdateMovement"]
  CALL R3 2 0
  GETIMPORT R3 K8 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_8:
  GETUPVAL R3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["jumpEnabled"]
  JUMPIFNOT R4 [+6]
  GETIMPORT R5 K4 [Enum.UserInputState.Begin]
  JUMPIFEQ R1 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["jumpRequested"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K6 ["UpdateJump"]
  CALL R3 1 0
  GETIMPORT R3 K9 [Enum.ContextActionResult.Pass]
  RETURN R3 1

PROTO_9:
  GETUPVAL R0 0
  LOADK R2 K0 ["moveForwardAction"]
  NAMECALL R0 R0 K1 ["UnbindAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R2 K0 ["moveBackwardAction"]
  NAMECALL R0 R0 K1 ["UnbindAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R2 K0 ["moveLeftAction"]
  NAMECALL R0 R0 K1 ["UnbindAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADK R2 K0 ["moveRightAction"]
  NAMECALL R0 R0 K1 ["UnbindAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  LOADK R2 K0 ["jumpAction"]
  NAMECALL R0 R0 K1 ["UnbindAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  NEWCLOSURE R4 P3
  CAPTURE VAL R0
  NEWCLOSURE R5 P4
  CAPTURE VAL R0
  GETUPVAL R6 0
  LOADK R8 K0 ["moveForwardAction"]
  MOVE R9 R1
  LOADB R10 0
  GETTABLEKS R11 R0 K1 ["CONTROL_ACTION_PRIORITY"]
  GETIMPORT R12 K5 [Enum.PlayerActions.CharacterForward]
  NAMECALL R6 R6 K6 ["BindActionAtPriority"]
  CALL R6 6 0
  GETUPVAL R6 0
  LOADK R8 K7 ["moveBackwardAction"]
  MOVE R9 R2
  LOADB R10 0
  GETTABLEKS R11 R0 K1 ["CONTROL_ACTION_PRIORITY"]
  GETIMPORT R12 K9 [Enum.PlayerActions.CharacterBackward]
  NAMECALL R6 R6 K6 ["BindActionAtPriority"]
  CALL R6 6 0
  GETUPVAL R6 0
  LOADK R8 K10 ["moveLeftAction"]
  MOVE R9 R3
  LOADB R10 0
  GETTABLEKS R11 R0 K1 ["CONTROL_ACTION_PRIORITY"]
  GETIMPORT R12 K12 [Enum.PlayerActions.CharacterLeft]
  NAMECALL R6 R6 K6 ["BindActionAtPriority"]
  CALL R6 6 0
  GETUPVAL R6 0
  LOADK R8 K13 ["moveRightAction"]
  MOVE R9 R4
  LOADB R10 0
  GETTABLEKS R11 R0 K1 ["CONTROL_ACTION_PRIORITY"]
  GETIMPORT R12 K15 [Enum.PlayerActions.CharacterRight]
  NAMECALL R6 R6 K6 ["BindActionAtPriority"]
  CALL R6 6 0
  GETUPVAL R6 0
  LOADK R8 K16 ["jumpAction"]
  MOVE R9 R5
  LOADB R10 0
  GETTABLEKS R11 R0 K1 ["CONTROL_ACTION_PRIORITY"]
  GETIMPORT R12 K18 [Enum.PlayerActions.CharacterJump]
  NAMECALL R6 R6 K6 ["BindActionAtPriority"]
  CALL R6 6 0
  GETTABLEKS R6 R0 K19 ["_connectionUtil"]
  LOADK R8 K0 ["moveForwardAction"]
  DUPCLOSURE R9 K20 [PROTO_9]
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K21 ["trackBoundFunction"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K19 ["_connectionUtil"]
  LOADK R8 K7 ["moveBackwardAction"]
  DUPCLOSURE R9 K22 [PROTO_10]
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K21 ["trackBoundFunction"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K19 ["_connectionUtil"]
  LOADK R8 K10 ["moveLeftAction"]
  DUPCLOSURE R9 K23 [PROTO_11]
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K21 ["trackBoundFunction"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K19 ["_connectionUtil"]
  LOADK R8 K13 ["moveRightAction"]
  DUPCLOSURE R9 K24 [PROTO_12]
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K21 ["trackBoundFunction"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K19 ["_connectionUtil"]
  LOADK R8 K16 ["jumpAction"]
  DUPCLOSURE R9 K25 [PROTO_13]
  CAPTURE UPVAL U0
  NAMECALL R6 R6 K21 ["trackBoundFunction"]
  CALL R6 3 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["moveVector"]
  GETUPVAL R0 0
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["forwardValue"]
  GETUPVAL R0 0
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["backwardValue"]
  GETUPVAL R0 0
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["leftValue"]
  GETUPVAL R0 0
  LOADN R1 0
  SETTABLEKS R1 R0 K4 ["rightValue"]
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K5 ["jumpRequested"]
  GETUPVAL R0 0
  NAMECALL R0 R0 K6 ["UpdateJump"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["jumpRequested"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["UpdateJump"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  GETTABLEKS R3 R0 K0 ["_connectionUtil"]
  LOADK R5 K1 ["textBoxFocusReleased"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["TextBoxFocusReleased"]
  MOVE R8 R1
  NAMECALL R6 R6 K3 ["Connect"]
  CALL R6 2 -1
  NAMECALL R3 R3 K4 ["trackConnection"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K0 ["_connectionUtil"]
  LOADK R5 K5 ["textBoxFocused"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["TextBoxFocused"]
  MOVE R8 R2
  NAMECALL R6 R6 K3 ["Connect"]
  CALL R6 2 -1
  NAMECALL R3 R3 K4 ["trackConnection"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K0 ["_connectionUtil"]
  LOADK R5 K7 ["windowFocusReleased"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["WindowFocused"]
  MOVE R8 R1
  NAMECALL R6 R6 K3 ["Connect"]
  CALL R6 2 -1
  NAMECALL R3 R3 K4 ["trackConnection"]
  CALL R3 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UserInputService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContextActionService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  LOADK R4 K8 ["CommonUtils"]
  NAMECALL R2 R2 K9 ["WaitForChild"]
  CALL R2 2 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K12 [Vector3.new]
  CALL R3 0 1
  GETIMPORT R4 K14 [require]
  GETIMPORT R6 K6 [script]
  GETTABLEKS R5 R6 K7 ["Parent"]
  LOADK R7 K15 ["BaseCharacterController"]
  NAMECALL R5 R5 K9 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  NEWTABLE R6 8 0
  FASTCALL2 SETMETATABLE R6 R4 [+4]
  MOVE R7 R4
  GETIMPORT R5 K17 [setmetatable]
  CALL R5 2 1
  SETTABLEKS R5 R5 K18 ["__index"]
  DUPCLOSURE R6 K19 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K11 ["new"]
  DUPCLOSURE R6 K20 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K21 ["Enable"]
  DUPCLOSURE R6 K22 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K23 ["UpdateMovement"]
  DUPCLOSURE R6 K24 [PROTO_3]
  SETTABLEKS R6 R5 K25 ["UpdateJump"]
  DUPCLOSURE R6 K26 [PROTO_14]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K27 ["BindContextActions"]
  DUPCLOSURE R6 K28 [PROTO_17]
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K29 ["ConnectFocusEventListeners"]
  RETURN R5 1
