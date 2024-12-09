PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"layoutOrder", "size", "searchTerm", "targetMemoryData"}]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K1 ["layoutOrder"]
  SETTABLEKS R4 R3 K1 ["layoutOrder"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K2 ["size"]
  SETTABLEKS R4 R3 K2 ["size"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K3 ["searchTerm"]
  SETTABLEKS R4 R3 K3 ["searchTerm"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K7 ["ClientMemoryData"]
  SETTABLEKS R4 R3 K4 ["targetMemoryData"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K10 ["Parent"]
  GETTABLEKS R2 R3 K11 ["Components"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K12 ["DataConsumer"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R2 K13 ["Memory"]
  GETTABLEKS R5 R6 K14 ["MemoryView"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K15 ["Component"]
  LOADK R7 K16 ["ClientMemory"]
  NAMECALL R5 R5 K17 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K19 ["render"]
  MOVE R6 R3
  MOVE R7 R5
  LOADK R8 K20 ["ClientMemoryData"]
  CALL R6 2 -1
  RETURN R6 -1
