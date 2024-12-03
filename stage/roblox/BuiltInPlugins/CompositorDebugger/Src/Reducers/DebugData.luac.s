PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"FrameBuffer"}]
  GETTABLEKS R5 R1 K2 ["frameBuffer"]
  SETTABLEKS R5 R4 K0 ["FrameBuffer"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Overrides"}]
  GETTABLEKS R5 R1 K2 ["overrides"]
  SETTABLEKS R5 R4 K0 ["Overrides"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["join"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["SetFrameBuffer"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K14 ["SetOverrides"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K15 ["createReducer"]
  DUPTABLE R9 K18 [{"FrameBuffer", "Overrides"}]
  LOADNIL R10
  SETTABLEKS R10 R9 K16 ["FrameBuffer"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K17 ["Overrides"]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R6 K19 ["name"]
  DUPCLOSURE R12 K20 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R7 K19 ["name"]
  DUPCLOSURE R12 K21 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R12 R10 R11
  CALL R8 2 1
  RETURN R8 1