PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R4 1
  GETUPVAL R5 2
  NAMECALL R1 R1 K0 ["PerformSaveAvatarWithDescription"]
  CALL R1 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["SignalSaveAvatarFailed"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["analyticsInfo"]
  GETTABLEKS R1 R2 K2 ["addedAssets"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  NAMECALL R4 R0 K0 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K1 ["analyticsInfo"]
  GETTABLEKS R2 R3 K3 ["removedAssets"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K4 ["promptInfo"]
  GETTABLEKS R3 R4 K5 ["humanoidDescription"]
  GETUPVAL R4 0
  MOVE R5 R3
  LOADB R6 0
  CALL R4 2 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R7 K6 [PROTO_1]
  CAPTURE UPVAL U1
  NAMECALL R4 R4 K7 ["andThen"]
  CALL R4 3 0
  GETUPVAL R6 2
  CALL R6 0 -1
  NAMECALL R4 R0 K8 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarEditorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Actions"]
  GETTABLEKS R3 R4 K10 ["CloseOpenPrompt"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K11 ["GetConformedHumanoidDescription"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R4 1