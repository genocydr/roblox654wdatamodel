PROTO_0:
  JUMPIFNOTEQKS R1 K0 ["VRDeviceAvailable"] [+6]
  GETTABLEKS R3 R0 K1 ["_vrDeviceAvailableChanged"]
  GETTABLEKS R2 R3 K2 ["Event"]
  RETURN R2 1
  GETIMPORT R2 K4 [error]
  LOADK R3 K5 ["%s is not a valid property name"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K8 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["VRDeviceAvailable"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["VRDeviceAvailable"]
  GETTABLEKS R2 R0 K1 ["_vrDeviceAvailableChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R0 K2 [{"VRDeviceAvailable", "_vrDeviceAvailableChanged"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["VRDeviceAvailable"]
  GETIMPORT R1 K5 [Instance.new]
  LOADK R2 K6 ["BindableEvent"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["_vrDeviceAvailableChanged"]
  DUPTABLE R3 K8 [{"__index"}]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K7 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K10 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  SETTABLEKS R1 R0 K2 ["GetPropertyChangedSignal"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["toggleHeadsetConnectionState"]
  DUPCLOSURE R1 K5 [PROTO_2]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["new"]
  RETURN R0 1
