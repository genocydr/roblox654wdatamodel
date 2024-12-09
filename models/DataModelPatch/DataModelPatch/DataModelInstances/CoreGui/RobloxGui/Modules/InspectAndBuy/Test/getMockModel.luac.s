PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K4 ["Part"]
  CALL R1 1 1
  LOADK R2 K5 ["HumanoidRootPart"]
  SETTABLEKS R2 R1 K6 ["Name"]
  SETTABLEKS R0 R1 K7 ["Parent"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K8 ["Humanoid"]
  CALL R2 1 1
  LOADK R3 K8 ["Humanoid"]
  SETTABLEKS R3 R2 K6 ["Name"]
  SETTABLEKS R0 R2 K7 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K9 ["HumanoidDescription"]
  CALL R3 1 1
  LOADK R4 K9 ["HumanoidDescription"]
  SETTABLEKS R4 R3 K6 ["Name"]
  SETTABLEKS R2 R3 K7 ["Parent"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
