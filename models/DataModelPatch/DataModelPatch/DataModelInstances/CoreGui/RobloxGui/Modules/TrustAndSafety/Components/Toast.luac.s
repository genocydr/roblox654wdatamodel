PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["toastTitle"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  LOADK R2 K3 ["Frame"]
  DUPTABLE R3 K7 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETIMPORT R4 K10 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Size"]
  LOADN R4 100
  SETTABLEKS R4 R3 K6 ["ZIndex"]
  DUPTABLE R4 K12 [{"Toast"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K15 [{"duration", "toastContent"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K13 ["duration"]
  DUPTABLE R8 K18 [{"iconImage", "toastTitle", "toastSubtitle"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K19 ["icons/status/success"]
  SETTABLEKS R9 R8 K16 ["iconImage"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K1 ["toastTitle"]
  SETTABLEKS R9 R8 K1 ["toastTitle"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K17 ["toastSubtitle"]
  SETTABLEKS R9 R8 K17 ["toastSubtitle"]
  SETTABLEKS R8 R7 K14 ["toastContent"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Toast"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R2 K2 [{"toastTitle", "toastSubtitle"}]
  GETTABLEKS R4 R0 K3 ["common"]
  GETTABLEKS R3 R4 K0 ["toastTitle"]
  SETTABLEKS R3 R2 K0 ["toastTitle"]
  GETTABLEKS R4 R0 K3 ["common"]
  GETTABLEKS R3 R4 K1 ["toastSubtitle"]
  SETTABLEKS R3 R2 K1 ["toastSubtitle"]
  RETURN R2 1

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
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETTABLEKS R7 R3 K11 ["App"]
  GETTABLEKS R6 R7 K12 ["Dialog"]
  GETTABLEKS R5 R6 K13 ["Toast"]
  GETTABLEKS R8 R3 K11 ["App"]
  GETTABLEKS R7 R8 K14 ["ImageSet"]
  GETTABLEKS R6 R7 K15 ["Images"]
  GETTABLEKS R7 R1 K16 ["PureComponent"]
  LOADK R9 K13 ["Toast"]
  NAMECALL R7 R7 K17 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R4 K18 ["strictInterface"]
  DUPTABLE R9 K21 [{"toastTitle", "toastSubtitle"}]
  GETTABLEKS R10 R4 K22 ["optional"]
  GETTABLEKS R11 R4 K23 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K19 ["toastTitle"]
  GETTABLEKS R10 R4 K22 ["optional"]
  GETTABLEKS R11 R4 K23 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["toastSubtitle"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K24 ["validateProps"]
  DUPCLOSURE R8 K25 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K26 ["render"]
  GETTABLEKS R8 R2 K27 ["UNSTABLE_connect2"]
  DUPCLOSURE R9 K28 [PROTO_1]
  LOADNIL R10
  CALL R8 2 1
  MOVE R9 R7
  CALL R8 1 -1
  RETURN R8 -1
