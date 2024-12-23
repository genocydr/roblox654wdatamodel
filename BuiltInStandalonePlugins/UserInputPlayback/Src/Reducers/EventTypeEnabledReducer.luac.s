PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"gamepad"}]
  GETTABLEKS R5 R1 K2 ["gamepadEnabled"]
  SETTABLEKS R5 R4 K0 ["gamepad"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"keyboard"}]
  GETTABLEKS R5 R1 K2 ["keyboardEnabled"]
  SETTABLEKS R5 R4 K0 ["keyboard"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"mouseClick"}]
  GETTABLEKS R5 R1 K2 ["mouseClickEnabled"]
  SETTABLEKS R5 R4 K0 ["mouseClick"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"mouseMove"}]
  GETTABLEKS R5 R1 K2 ["mouseMoveEnabled"]
  SETTABLEKS R5 R4 K0 ["mouseMove"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"touch"}]
  GETTABLEKS R5 R1 K2 ["touchEnabled"]
  SETTABLEKS R5 R4 K0 ["touch"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createReducer"]
  GETUPVAL R1 1
  DUPTABLE R2 K6 [{"SetGamepadEnabled", "SetKeyboardEnabled", "SetMouseClickEnabled", "SetMouseMoveEnabled", "SetTouchEnabled"}]
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K1 ["SetGamepadEnabled"]
  DUPCLOSURE R3 K8 [PROTO_1]
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K2 ["SetKeyboardEnabled"]
  DUPCLOSURE R3 K9 [PROTO_2]
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K3 ["SetMouseClickEnabled"]
  DUPCLOSURE R3 K10 [PROTO_3]
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K4 ["SetMouseMoveEnabled"]
  DUPCLOSURE R3 K11 [PROTO_4]
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K5 ["SetTouchEnabled"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  JUMPIFEQKNIL R0 [+6]
  GETTABLEKS R2 R1 K0 ["context"]
  GETUPVAL R3 0
  JUMPIFNOTEQ R2 R3 [+6]
  GETUPVAL R2 1
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1
  RETURN R0 1

PROTO_7:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  CALL R2 0 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Dictionary"]
  GETTABLEKS R3 R4 K9 ["join"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Actions"]
  GETTABLEKS R6 R7 K12 ["EventTypeEnabled"]
  GETTABLEKS R5 R6 K13 ["SetGamepadEnabled"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Actions"]
  GETTABLEKS R7 R8 K12 ["EventTypeEnabled"]
  GETTABLEKS R6 R7 K14 ["SetKeyboardEnabled"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Actions"]
  GETTABLEKS R8 R9 K12 ["EventTypeEnabled"]
  GETTABLEKS R7 R8 K15 ["SetMouseClickEnabled"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Actions"]
  GETTABLEKS R9 R10 K12 ["EventTypeEnabled"]
  GETTABLEKS R8 R9 K16 ["SetMouseMoveEnabled"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K11 ["Actions"]
  GETTABLEKS R10 R11 K12 ["EventTypeEnabled"]
  GETTABLEKS R9 R10 K17 ["SetTouchEnabled"]
  CALL R8 1 1
  DUPTABLE R9 K23 [{"mouseMove", "mouseClick", "keyboard", "gamepad", "touch"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K18 ["mouseMove"]
  LOADB R10 1
  SETTABLEKS R10 R9 K19 ["mouseClick"]
  LOADB R10 1
  SETTABLEKS R10 R9 K20 ["keyboard"]
  LOADB R10 1
  SETTABLEKS R10 R9 K21 ["gamepad"]
  LOADB R10 1
  SETTABLEKS R10 R9 K22 ["touch"]
  DUPCLOSURE R10 K24 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R3
  DUPCLOSURE R11 K25 [PROTO_7]
  DUPCLOSURE R12 K26 [PROTO_8]
  CAPTURE VAL R10
  DUPTABLE R13 K28 [{"makeReducerForName"}]
  SETTABLEKS R12 R13 K27 ["makeReducerForName"]
  RETURN R13 1
