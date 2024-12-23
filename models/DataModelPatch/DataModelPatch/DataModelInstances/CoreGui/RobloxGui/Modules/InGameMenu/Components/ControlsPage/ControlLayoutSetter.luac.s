PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["inputToControlTypeMap"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K1 ["GetLastInputType"]
  CALL R3 1 1
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+6]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K3 ["dispatchSetControlLayout"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  LOADNIL R1
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["inputToControlTypeMap"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["dispatchSetControlLayout"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LastInputTypeChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["inputChangedConnection"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["inputChangedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["inputChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"dispatchSetControlLayout"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetControlLayout"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UserInputService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["RoactRodux"]
  GETIMPORT R8 K12 [script]
  GETTABLEKS R7 R8 K13 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R5 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["Controls"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R5 K16 ["Actions"]
  GETTABLEKS R8 R9 K17 ["SetControlLayout"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K18 ["PureComponent"]
  LOADK R10 K19 ["ControlLayoutSetter"]
  NAMECALL R8 R8 K20 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K21 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K22 ["init"]
  DUPCLOSURE R9 K23 [PROTO_1]
  SETTABLEKS R9 R8 K24 ["render"]
  DUPCLOSURE R9 K25 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K26 ["didMount"]
  DUPCLOSURE R9 K27 [PROTO_4]
  SETTABLEKS R9 R8 K28 ["willUnmount"]
  GETTABLEKS R9 R4 K29 ["UNSTABLE_connect2"]
  LOADNIL R10
  DUPCLOSURE R11 K30 [PROTO_6]
  CAPTURE VAL R7
  CALL R9 2 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
