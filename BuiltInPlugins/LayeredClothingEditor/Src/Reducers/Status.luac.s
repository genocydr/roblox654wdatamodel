PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"toolMode"}]
  GETTABLEKS R5 R1 K2 ["toolMode"]
  SETTABLEKS R5 R4 K2 ["toolMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"draggerType"}]
  GETTABLEKS R5 R1 K2 ["draggerType"]
  SETTABLEKS R5 R4 K2 ["draggerType"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["createReducer"]
  DUPTABLE R5 K14 [{"toolMode", "draggerType"}]
  GETTABLEKS R7 R3 K15 ["TOOL_MODE"]
  GETTABLEKS R6 R7 K16 ["None"]
  SETTABLEKS R6 R5 K12 ["toolMode"]
  GETIMPORT R6 K20 [Enum.RibbonTool.Select]
  SETTABLEKS R6 R5 K13 ["draggerType"]
  DUPTABLE R6 K23 [{"SetToolMode", "SetDraggerType"}]
  DUPCLOSURE R7 K24 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K21 ["SetToolMode"]
  DUPCLOSURE R7 K25 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K22 ["SetDraggerType"]
  CALL R4 2 -1
  RETURN R4 -1
