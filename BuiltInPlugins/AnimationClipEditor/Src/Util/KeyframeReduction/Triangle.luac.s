PROTO_0:
  DUPTABLE R4 K4 [{"a", "b", "c", "area"}]
  SETTABLEKS R0 R4 K0 ["a"]
  SETTABLEKS R1 R4 K1 ["b"]
  SETTABLEKS R2 R4 K2 ["c"]
  LOADN R5 0
  SETTABLEKS R5 R4 K3 ["area"]
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K6 [setmetatable]
  CALL R3 2 1
  NAMECALL R4 R3 K7 ["updateArea"]
  CALL R4 1 0
  RETURN R3 1

PROTO_1:
  LOADN R2 0
  LOADN R5 1
  LENGTH R3 R0
  LOADN R4 1
  FORNPREP R3
  GETTABLE R8 R0 R5
  GETTABLE R9 R1 R5
  SUB R7 R8 R9
  GETTABLE R9 R0 R5
  GETTABLE R10 R1 R5
  SUB R8 R9 R10
  MUL R6 R7 R8
  ADD R2 R2 R6
  FORNLOOP R3
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["a"]
  GETTABLEKS R3 R0 K1 ["b"]
  CALL R1 2 1
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["a"]
  GETTABLEKS R4 R0 K2 ["c"]
  CALL R2 2 1
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K1 ["b"]
  GETTABLEKS R5 R0 K2 ["c"]
  CALL R3 2 1
  ADD R5 R1 R2
  SUB R4 R5 R3
  LOADN R8 4
  MUL R7 R8 R1
  MUL R6 R7 R2
  MUL R7 R4 R4
  SUB R5 R6 R7
  SETTABLEKS R5 R0 K3 ["area"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  SETTABLEKS R2 R2 K6 ["__index"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K8 ["new"]
  DUPCLOSURE R3 K9 [PROTO_1]
  DUPCLOSURE R4 K10 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R4 R2 K11 ["updateArea"]
  RETURN R2 1
