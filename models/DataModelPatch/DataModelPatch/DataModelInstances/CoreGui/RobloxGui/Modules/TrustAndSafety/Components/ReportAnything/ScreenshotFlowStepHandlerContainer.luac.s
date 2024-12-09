PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"ScreenshotFlowStepHandlerContainer"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K3 ["props"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["ScreenshotFlowStepHandlerContainer"]
  CALL R1 1 -1
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
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ScreenshotFlowStepHandler"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R10 K9 [script]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K12 ["Common"]
  GETTABLEKS R4 R5 K13 ["renderWithCoreScriptsStyleProvider"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K14 ["PureComponent"]
  LOADK R6 K15 ["ScreenshotFlowStepHandlerContainer"]
  NAMECALL R4 R4 K16 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K17 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K18 ["render"]
  RETURN R4 1
