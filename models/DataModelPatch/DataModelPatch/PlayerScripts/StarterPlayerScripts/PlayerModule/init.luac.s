PROTO_0:
  NEWTABLE R1 2 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  GETIMPORT R1 K3 [require]
  GETIMPORT R2 K5 [script]
  LOADK R4 K6 ["CameraModule"]
  NAMECALL R2 R2 K7 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K8 ["cameras"]
  GETIMPORT R1 K3 [require]
  GETIMPORT R2 K5 [script]
  LOADK R4 K9 ["ControlModule"]
  NAMECALL R2 R2 K7 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K10 ["controls"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["cameras"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["controls"]
  NAMECALL R1 R1 K1 ["GetClickToMoveController"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["GetCameras"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["GetControls"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["GetClickToMoveController"]
  GETTABLEKS R1 R0 K2 ["new"]
  CALL R1 0 -1
  RETURN R1 -1