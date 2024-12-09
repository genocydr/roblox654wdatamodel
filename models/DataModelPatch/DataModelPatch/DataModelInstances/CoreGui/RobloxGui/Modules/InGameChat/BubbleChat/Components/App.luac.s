PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["StoreProvider"]
  DUPTABLE R3 K3 [{"store"}]
  GETTABLEKS R5 R0 K4 ["props"]
  GETTABLEKS R4 R5 K2 ["store"]
  SETTABLEKS R4 R3 K2 ["store"]
  DUPTABLE R4 K6 [{"BubbleChatBillboards"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["BubbleChatBillboards"]
  CALL R1 3 -1
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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K11 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETTABLEKS R5 R6 K13 ["BubbleChatBillboards"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["Component"]
  LOADK R7 K15 ["App"]
  NAMECALL R5 R5 K16 ["extend"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K17 ["strictInterface"]
  DUPTABLE R7 K19 [{"store"}]
  GETTABLEKS R8 R2 K20 ["table"]
  SETTABLEKS R8 R7 K18 ["store"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["validateProps"]
  DUPCLOSURE R6 K22 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K23 ["render"]
  RETURN R5 1