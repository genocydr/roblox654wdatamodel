PROTO_0:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+7]
  GETUPVAL R3 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K0 ["UpdateDeviceCFrame"]
  CALL R3 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["OnCameraCFrameReplicationRequest"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+7]
  GETUPVAL R3 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K0 ["UpdateDeviceCFrame"]
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["OnCameraCFrameReplicationRequest"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RobloxReplicatedStorage"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["PlayerViewService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R0 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R3 K10 ["Modules"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["GetFFlagPlayerViewRemoteEventTimeoutEnabled"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R3 K10 ["Modules"]
  GETTABLEKS R7 R8 K11 ["Flags"]
  GETTABLEKS R6 R7 K13 ["GetFIntPlayerViewRemoteEventTimeout"]
  CALL R5 1 1
  MOVE R6 R4
  CALL R6 0 1
  JUMPIFNOT R6 [+42]
  MOVE R6 R5
  CALL R6 0 1
  LOADK R9 K14 ["RequestDeviceCameraCFrame"]
  MOVE R10 R6
  NAMECALL R7 R1 K7 ["WaitForChild"]
  CALL R7 3 1
  LOADK R10 K15 ["ReplicateDeviceCameraCFrame"]
  MOVE R11 R6
  NAMECALL R8 R1 K7 ["WaitForChild"]
  CALL R8 3 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K16 ["PlayerViewRemoteEventSupport"]
  NAMECALL R9 R9 K17 ["GetEngineFeature"]
  CALL R9 2 1
  JUMPIFNOT R7 [+18]
  JUMPIFNOT R8 [+17]
  GETTABLEKS R10 R8 K18 ["OnClientEvent"]
  DUPCLOSURE R12 K19 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R2
  NAMECALL R10 R10 K20 ["Connect"]
  CALL R10 2 0
  GETTABLEKS R10 R7 K18 ["OnClientEvent"]
  DUPCLOSURE R12 K21 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R2
  NAMECALL R10 R10 K20 ["Connect"]
  CALL R10 2 0
  RETURN R0 0
  GETIMPORT R10 K23 [warn]
  LOADK R11 K24 ["PlayerViewService failed to initialize."]
  CALL R10 1 0
  RETURN R0 0
  LOADK R8 K14 ["RequestDeviceCameraCFrame"]
  NAMECALL R6 R1 K7 ["WaitForChild"]
  CALL R6 2 1
  LOADK R9 K15 ["ReplicateDeviceCameraCFrame"]
  NAMECALL R7 R1 K7 ["WaitForChild"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K16 ["PlayerViewRemoteEventSupport"]
  NAMECALL R8 R8 K17 ["GetEngineFeature"]
  CALL R8 2 1
  GETTABLEKS R9 R7 K18 ["OnClientEvent"]
  DUPCLOSURE R11 K25 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R2
  NAMECALL R9 R9 K20 ["Connect"]
  CALL R9 2 0
  GETTABLEKS R9 R6 K18 ["OnClientEvent"]
  DUPCLOSURE R11 K26 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  NAMECALL R9 R9 K20 ["Connect"]
  CALL R9 2 0
  RETURN R0 0