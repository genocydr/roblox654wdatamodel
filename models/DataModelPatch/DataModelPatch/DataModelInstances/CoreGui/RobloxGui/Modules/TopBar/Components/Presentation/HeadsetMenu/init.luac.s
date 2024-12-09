PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["guiService"]
  NAMECALL R0 R0 K2 ["GetNotificationTypeList"]
  CALL R0 1 1
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+31]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["EnableLuaControlsRestartApp"]
  NAMECALL R1 R1 K6 ["GetEngineFeature"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["guiService"]
  LOADK R3 K7 [""]
  GETTABLEKS R4 R0 K8 ["RESTART_APP"]
  NAMECALL R1 R1 K9 ["BroadcastNotification"]
  CALL R1 3 0
  JUMP [+23]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["guiService"]
  LOADK R3 K7 [""]
  GETTABLEKS R4 R0 K10 ["NATIVE_EXIT"]
  NAMECALL R1 R1 K9 ["BroadcastNotification"]
  CALL R1 3 0
  JUMP [+11]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K11 ["Heartbeat"]
  NAMECALL R1 R1 K12 ["Wait"]
  CALL R1 1 0
  GETIMPORT R1 K4 [game]
  NAMECALL R1 R1 K13 ["Shutdown"]
  CALL R1 1 0
  GETUPVAL R1 0
  DUPTABLE R3 K15 [{"shouldShowDisconnectDialog"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K14 ["shouldShowDisconnectDialog"]
  NAMECALL R1 R1 K16 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K2 [{"vrDeviceAvailable", "shouldShowDisconnectDialog"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["vrDeviceAvailable"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["shouldShowDisconnectDialog"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K4 ["restartApp"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"vrDeviceAvailable"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["vrService"]
  GETTABLEKS R3 R4 K4 ["VRDeviceAvailable"]
  SETTABLEKS R3 R2 K0 ["vrDeviceAvailable"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K2 [{"HeadsetConnection"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K6 [{"event", "callback"}]
  GETTABLEKS R7 R0 K7 ["props"]
  GETTABLEKS R6 R7 K8 ["vrService"]
  LOADK R8 K9 ["VRDeviceAvailable"]
  NAMECALL R6 R6 K10 ["GetPropertyChangedSignal"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["event"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K5 ["callback"]
  DUPTABLE R6 K12 [{"HeadsetDisconnectedDialog"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K17 [{"visible", "screenSize", "onConfirm", "guiService"}]
  GETTABLEKS R11 R0 K18 ["state"]
  GETTABLEKS R10 R11 K19 ["shouldShowDisconnectDialog"]
  SETTABLEKS R10 R9 K13 ["visible"]
  GETTABLEKS R11 R0 K7 ["props"]
  GETTABLEKS R10 R11 K14 ["screenSize"]
  SETTABLEKS R10 R9 K14 ["screenSize"]
  GETTABLEKS R10 R0 K20 ["restartApp"]
  SETTABLEKS R10 R9 K15 ["onConfirm"]
  GETTABLEKS R11 R0 K7 ["props"]
  GETTABLEKS R10 R11 K16 ["guiService"]
  SETTABLEKS R10 R9 K16 ["guiService"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["HeadsetDisconnectedDialog"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K1 ["HeadsetConnection"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  DUPTABLE R3 K1 [{"vrDeviceAvailable"}]
  GETTABLEKS R6 R0 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["vrService"]
  GETTABLEKS R4 R5 K4 ["VRDeviceAvailable"]
  SETTABLEKS R4 R3 K0 ["vrDeviceAvailable"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["vrDeviceAvailable"]
  GETTABLEKS R4 R2 K1 ["vrDeviceAvailable"]
  JUMPIFEQ R3 R4 [+13]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K1 ["vrDeviceAvailable"]
  JUMPIF R3 [+7]
  DUPTABLE R5 K3 [{"shouldShowDisconnectDialog"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["shouldShowDisconnectDialog"]
  NAMECALL R3 R0 K4 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"screenSize"}]
  GETTABLEKS R3 R0 K2 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["RunService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["VRService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Roact"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K12 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K13 ["t"]
  CALL R7 1 1
  GETIMPORT R10 K15 [script]
  GETTABLEKS R9 R10 K16 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Parent"]
  GETTABLEKS R9 R8 K16 ["Parent"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R9 K16 ["Parent"]
  GETTABLEKS R12 R13 K17 ["Common"]
  GETTABLEKS R11 R12 K18 ["EventConnection"]
  CALL R10 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R0 K19 ["Workspace"]
  GETTABLEKS R14 R15 K10 ["Packages"]
  GETTABLEKS R13 R14 K20 ["SharedFlags"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K21 ["isSubjectToDesktopPolicies"]
  GETIMPORT R12 K9 [require]
  GETIMPORT R14 K15 [script]
  GETTABLEKS R13 R14 K22 ["DisconnectedDialog"]
  CALL R12 1 1
  GETTABLEKS R13 R5 K23 ["PureComponent"]
  LOADK R15 K24 ["HeadsetMenu"]
  NAMECALL R13 R13 K25 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R7 K26 ["strictInterface"]
  DUPTABLE R15 K30 [{"screenSize", "vrService", "guiService"}]
  GETTABLEKS R16 R7 K31 ["Vector2"]
  SETTABLEKS R16 R15 K27 ["screenSize"]
  GETTABLEKS R16 R7 K32 ["optional"]
  GETTABLEKS R17 R7 K33 ["union"]
  GETTABLEKS R18 R7 K34 ["instanceOf"]
  LOADK R19 K7 ["VRService"]
  CALL R18 1 1
  GETTABLEKS R19 R7 K35 ["table"]
  CALL R17 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K28 ["vrService"]
  GETTABLEKS R16 R7 K32 ["optional"]
  GETTABLEKS R17 R7 K33 ["union"]
  GETTABLEKS R18 R7 K34 ["instanceOf"]
  LOADK R19 K5 ["GuiService"]
  CALL R18 1 1
  GETTABLEKS R19 R7 K35 ["table"]
  CALL R17 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K29 ["guiService"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K36 ["validateProps"]
  DUPTABLE R14 K37 [{"vrService", "guiService"}]
  SETTABLEKS R4 R14 K28 ["vrService"]
  SETTABLEKS R2 R14 K29 ["guiService"]
  SETTABLEKS R14 R13 K38 ["defaultProps"]
  DUPCLOSURE R14 K39 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K40 ["init"]
  DUPCLOSURE R14 K41 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K42 ["render"]
  DUPCLOSURE R14 K43 [PROTO_4]
  SETTABLEKS R14 R13 K44 ["didMount"]
  DUPCLOSURE R14 K45 [PROTO_5]
  SETTABLEKS R14 R13 K46 ["didUpdate"]
  GETTABLEKS R14 R6 K47 ["connect"]
  DUPCLOSURE R15 K48 [PROTO_6]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
