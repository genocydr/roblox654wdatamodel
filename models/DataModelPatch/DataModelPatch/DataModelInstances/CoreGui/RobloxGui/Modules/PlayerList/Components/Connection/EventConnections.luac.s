PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K9 [{"PlayerServiceConnector", "TeamServiceConnector", "LeaderstatsConnector", "CoreGuiConnector", "SocialConnector", "GuiServiceConnector", "UserInputServiceConnector", "ScreenSizeConnector"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["PlayerServiceConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 2
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["TeamServiceConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 3
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["LeaderstatsConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 4
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["CoreGuiConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 5
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["SocialConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 6
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["GuiServiceConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 7
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["UserInputServiceConnector"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["createElement"]
  GETUPVAL R4 8
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["ScreenSizeConnector"]
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
  GETTABLEKS R3 R4 K11 ["PlayerServiceConnector"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["TeamServiceConnector"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K9 [script]
  GETTABLEKS R6 R7 K10 ["Parent"]
  GETTABLEKS R5 R6 K13 ["LeaderstatsConnector"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K9 [script]
  GETTABLEKS R7 R8 K10 ["Parent"]
  GETTABLEKS R6 R7 K14 ["CoreGuiConnector"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K9 [script]
  GETTABLEKS R8 R9 K10 ["Parent"]
  GETTABLEKS R7 R8 K15 ["SocialConnector"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K9 [script]
  GETTABLEKS R9 R10 K10 ["Parent"]
  GETTABLEKS R8 R9 K16 ["GuiServiceConnector"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K9 [script]
  GETTABLEKS R10 R11 K10 ["Parent"]
  GETTABLEKS R9 R10 K17 ["UserInputServiceConnector"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K9 [script]
  GETTABLEKS R11 R12 K10 ["Parent"]
  GETTABLEKS R10 R11 K18 ["ScreenSizeConnector"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K19 ["PureComponent"]
  LOADK R12 K20 ["EventConnections"]
  NAMECALL R10 R10 K21 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K23 ["render"]
  RETURN R10 1
