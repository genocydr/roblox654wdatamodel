PROTO_0:
  GETTABLEKS R1 R0 K0 ["value"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["TextLabel"]
  DUPTABLE R4 K6 [{"Size", "Text", "TextSize"}]
  GETIMPORT R5 K9 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  LOADK R5 K10 ["Current tick is %d!"]
  MOVE R7 R1
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Text"]
  LOADN R5 48
  SETTABLEKS R5 R4 K5 ["TextSize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["running"]
  DUPTABLE R1 K2 [{"count"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["count"]
  SETTABLEKS R1 R0 K3 ["state"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["ScreenGui"]
  DUPTABLE R3 K3 [{"Name"}]
  LOADK R4 K4 ["Roact-demo-counter"]
  SETTABLEKS R4 R3 K2 ["Name"]
  DUPTABLE R4 K6 [{"Count"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"value"}]
  GETTABLEKS R9 R0 K9 ["state"]
  GETTABLEKS R8 R9 K10 ["count"]
  SETTABLEKS R8 R7 K7 ["value"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Count"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["running"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["running"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"count"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["state"]
  GETTABLEKS R4 R5 K1 ["count"]
  ADDK R3 R4 K3 [1]
  SETTABLEKS R3 R2 K1 ["count"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  GETIMPORT R0 K7 [wait]
  LOADN R1 1
  CALL R0 1 0
  JUMPBACK [-22]
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["running"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["mount"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  LOADK R3 K2 ["Roact-counter"]
  CALL R0 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  GETTABLEKS R4 R2 K10 ["Component"]
  LOADK R6 K11 ["App"]
  NAMECALL R4 R4 K12 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_1]
  SETTABLEKS R5 R4 K14 ["init"]
  DUPCLOSURE R5 K15 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K16 ["render"]
  DUPCLOSURE R5 K17 [PROTO_4]
  SETTABLEKS R5 R4 K18 ["didMount"]
  DUPCLOSURE R5 K19 [PROTO_5]
  SETTABLEKS R5 R4 K20 ["willUnmount"]
  DUPCLOSURE R5 K21 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R5 1
