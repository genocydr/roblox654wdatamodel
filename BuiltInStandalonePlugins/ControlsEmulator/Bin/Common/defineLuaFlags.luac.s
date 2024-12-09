PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableControlsEmulator"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableVRControllers"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableGrayHoverDeviceEmulator"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["VREmulatorFullRelease"]
  NAMECALL R0 R0 K3 ["GetEngineFeature"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"getFFlagEnableControlsEmulator", "getFFlagEnableVRControllers", "getFFlagEnableGrayHoverDeviceEmulator", "getFFlagControlsEmulatorFullRelease"}]
  DUPCLOSURE R1 K5 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["getFFlagEnableControlsEmulator"]
  DUPCLOSURE R1 K6 [PROTO_1]
  SETTABLEKS R1 R0 K1 ["getFFlagEnableVRControllers"]
  DUPCLOSURE R1 K7 [PROTO_2]
  SETTABLEKS R1 R0 K2 ["getFFlagEnableGrayHoverDeviceEmulator"]
  DUPCLOSURE R1 K8 [PROTO_3]
  SETTABLEKS R1 R0 K3 ["getFFlagControlsEmulatorFullRelease"]
  RETURN R0 1
