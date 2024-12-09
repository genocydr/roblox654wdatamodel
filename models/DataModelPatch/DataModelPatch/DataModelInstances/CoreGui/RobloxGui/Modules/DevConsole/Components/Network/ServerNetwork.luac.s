PROTO_0:
  DUPTABLE R2 K1 [{"targetNetworkData"}]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["ServerNetworkData"]
  SETTABLEKS R3 R2 K0 ["targetNetworkData"]
  SETTABLEKS R2 R0 K4 ["state"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["layoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["searchTerm"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"size", "searchTerm", "layoutOrder", "targetNetworkData"}]
  SETTABLEKS R3 R6 K3 ["size"]
  SETTABLEKS R2 R6 K2 ["searchTerm"]
  SETTABLEKS R1 R6 K1 ["layoutOrder"]
  GETTABLEKS R8 R0 K7 ["state"]
  GETTABLEKS R7 R8 K5 ["targetNetworkData"]
  SETTABLEKS R7 R6 K5 ["targetNetworkData"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K13 ["NetworkView"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["Component"]
  LOADK R7 K15 ["ServerNetwork"]
  NAMECALL R5 R5 K16 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K17 [PROTO_0]
  SETTABLEKS R6 R5 K18 ["init"]
  DUPCLOSURE R6 K19 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K20 ["render"]
  MOVE R6 R3
  MOVE R7 R5
  LOADK R8 K21 ["ServerNetworkData"]
  CALL R6 2 -1
  RETURN R6 -1
