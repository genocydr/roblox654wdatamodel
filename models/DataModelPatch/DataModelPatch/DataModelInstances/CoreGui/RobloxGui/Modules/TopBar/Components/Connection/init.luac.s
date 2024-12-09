PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K8 [{"CoreGuiConnector", "MenuConnector", "ChatConnector", "HealthConnector", "EnabledNotifier", "OpenUIConnector", "LastInputTypeConnector"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["CoreGuiConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 2
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["MenuConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 3
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["ChatConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 4
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["HealthConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 5
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["EnabledNotifier"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 6
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["OpenUIConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 7
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["LastInputTypeConnector"]
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
  GETIMPORT R4 K9 [script]
  GETTABLEKS R3 R4 K10 ["CoreGuiConnector"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K9 [script]
  GETTABLEKS R4 R5 K11 ["MenuConnector"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K12 ["ChatConnector"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K13 ["HealthConnector"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K9 [script]
  GETTABLEKS R7 R8 K14 ["EnabledNotifier"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K9 [script]
  GETTABLEKS R8 R9 K15 ["OpenUIConnector"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K9 [script]
  GETTABLEKS R9 R10 K16 ["LastInputTypeConnector"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K17 ["PureComponent"]
  LOADK R11 K18 ["Connection"]
  NAMECALL R9 R9 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K21 ["render"]
  RETURN R9 1
