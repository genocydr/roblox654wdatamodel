PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"reportConfirmationContainer"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K3 ["props"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["reportConfirmationContainer"]
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
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["ReportConfirmationContainer"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R11 K10 [script]
  GETTABLEKS R10 R11 K11 ["Parent"]
  GETTABLEKS R9 R10 K11 ["Parent"]
  GETTABLEKS R8 R9 K11 ["Parent"]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Common"]
  GETTABLEKS R5 R6 K14 ["renderWithCoreScriptsStyleProvider"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K15 ["PureComponent"]
  LOADK R7 K16 ["ReportConfirmationScreen"]
  NAMECALL R5 R5 K17 ["extend"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K18 ["interface"]
  DUPTABLE R7 K21 [{"closeMenu", "player"}]
  GETTABLEKS R8 R2 K22 ["callback"]
  SETTABLEKS R8 R7 K19 ["closeMenu"]
  GETTABLEKS R8 R2 K18 ["interface"]
  DUPTABLE R9 K26 [{"DisplayName", "Name", "UserId"}]
  GETTABLEKS R10 R2 K27 ["string"]
  SETTABLEKS R10 R9 K23 ["DisplayName"]
  GETTABLEKS R10 R2 K27 ["string"]
  SETTABLEKS R10 R9 K24 ["Name"]
  GETTABLEKS R10 R2 K28 ["number"]
  SETTABLEKS R10 R9 K25 ["UserId"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K20 ["player"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K29 ["validateProps"]
  DUPCLOSURE R6 K30 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K31 ["render"]
  RETURN R5 1
