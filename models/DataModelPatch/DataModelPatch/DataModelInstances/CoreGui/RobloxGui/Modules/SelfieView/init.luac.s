MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Components"]
  GETTABLEKS R1 R2 K5 ["Icon"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Components"]
  GETTABLEKS R2 R3 K6 ["Window"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Components"]
  GETTABLEKS R3 R4 K7 ["CameraStatusDot"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["Hooks"]
  GETTABLEKS R4 R5 K9 ["useCameraOn"]
  CALL R3 1 1
  DUPTABLE R4 K10 [{"Icon", "Window", "CameraStatusDot", "useCameraOn"}]
  SETTABLEKS R0 R4 K5 ["Icon"]
  SETTABLEKS R1 R4 K6 ["Window"]
  SETTABLEKS R2 R4 K7 ["CameraStatusDot"]
  SETTABLEKS R3 R4 K9 ["useCameraOn"]
  RETURN R4 1
