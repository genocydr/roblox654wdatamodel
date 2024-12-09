PROTO_0:
  GETTABLEKS R1 R0 K0 ["hasCameraPermissions"]
  GETUPVAL R2 0
  LOADK R4 K1 ["client"]
  LOADK R5 K2 ["avatarChat"]
  LOADK R6 K3 ["CameraDevicePermissionResponse"]
  DUPTABLE R7 K6 [{"hasAccessToCamera", "hasEligibleCamera"}]
  SETTABLEKS R1 R7 K4 ["hasAccessToCamera"]
  GETUPVAL R8 1
  SETTABLEKS R8 R7 K5 ["hasEligibleCamera"]
  NAMECALL R2 R2 K7 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["VideoCaptureService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R9 R3 K11 ["RobloxGui"]
  GETTABLEKS R8 R9 K12 ["Modules"]
  GETTABLEKS R7 R8 K13 ["Settings"]
  GETTABLEKS R6 R7 K14 ["getCamMicPermissions"]
  CALL R5 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R0 K15 ["Workspace"]
  GETTABLEKS R10 R11 K9 ["Packages"]
  GETTABLEKS R9 R10 K16 ["PermissionsProtocol"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K16 ["PermissionsProtocol"]
  GETTABLEKS R6 R7 K17 ["default"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R11 R3 K11 ["RobloxGui"]
  GETTABLEKS R10 R11 K12 ["Modules"]
  GETTABLEKS R9 R10 K13 ["Settings"]
  GETTABLEKS R8 R9 K18 ["cameraDevicesHelper"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K19 ["GetDevices"]
  CALL R8 0 1
  GETTABLEKS R10 R4 K20 ["isEmpty"]
  MOVE R11 R8
  CALL R10 1 1
  NOT R9 R10
  JUMPIFNOT R9 [+16]
  DUPCLOSURE R10 K21 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R9
  MOVE R11 R5
  MOVE R12 R10
  NEWTABLE R13 0 1
  GETTABLEKS R15 R6 K22 ["Permissions"]
  GETTABLEKS R14 R15 K23 ["CAMERA_ACCESS"]
  SETLIST R13 R14 1 [1]
  LOADB R14 1
  CALL R11 3 0
  RETURN R0 0
  LOADK R12 K24 ["client"]
  LOADK R13 K25 ["avatarChat"]
  LOADK R14 K26 ["CameraDevicePermissionResponse"]
  DUPTABLE R15 K29 [{"hasAccessToCamera", "hasEligibleCamera"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K27 ["hasAccessToCamera"]
  SETTABLEKS R9 R15 K28 ["hasEligibleCamera"]
  NAMECALL R10 R2 K30 ["SendEventDeferred"]
  CALL R10 5 0
  RETURN R0 0
