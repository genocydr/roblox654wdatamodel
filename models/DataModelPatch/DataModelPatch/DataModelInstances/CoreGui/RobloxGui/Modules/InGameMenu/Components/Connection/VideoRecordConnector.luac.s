PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setVideoRecording"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["VideoRecording"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["setVideoRecording"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["VideoRecording"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"event", "callback"}]
  GETUPVAL R4 2
  LOADK R6 K4 ["VideoRecording"]
  NAMECALL R4 R4 K5 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["event"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K2 ["callback"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_4:
  DUPTABLE R1 K1 [{"setVideoRecording"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setVideoRecording"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [settings]
  CALL R1 0 1
  LOADK R3 K6 ["Game Options"]
  NAMECALL R1 R1 K7 ["WaitForChild"]
  CALL R1 2 1
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETIMPORT R3 K12 [require]
  GETTABLEKS R5 R0 K13 ["Packages"]
  GETTABLEKS R4 R5 K14 ["InGameMenuDependencies"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K15 ["Roact"]
  GETTABLEKS R5 R3 K16 ["RoactRodux"]
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R2 K17 ["Actions"]
  GETTABLEKS R7 R8 K18 ["SetVideoRecording"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R2 K19 ["Utility"]
  GETTABLEKS R8 R9 K20 ["ExternalEventConnection"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K21 ["PureComponent"]
  LOADK R10 K22 ["VideoRecordConnector"]
  NAMECALL R8 R8 K23 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K24 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K25 ["init"]
  DUPCLOSURE R9 K26 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K27 ["render"]
  GETTABLEKS R9 R5 K28 ["UNSTABLE_connect2"]
  LOADNIL R10
  DUPCLOSURE R11 K29 [PROTO_4]
  CAPTURE VAL R6
  CALL R9 2 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
