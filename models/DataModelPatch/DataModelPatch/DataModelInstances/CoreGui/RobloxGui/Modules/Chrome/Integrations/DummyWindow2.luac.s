PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["icons/menu/home_on"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"BackgroundTransparency", "Size"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETIMPORT R4 K7 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 1
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  DUPTABLE R4 K9 [{"Corner"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K10 ["UICorner"]
  DUPTABLE R7 K12 [{"CornerRadius"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K13 ["CORNER_RADIUS"]
  SETTABLEKS R8 R7 K11 ["CornerRadius"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Corner"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R0 K12 ["Service"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K13 ["Integrations"]
  GETTABLEKS R5 R6 K14 ["CommonIcon"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K15 ["ChromeShared"]
  GETTABLEKS R7 R8 K16 ["Unibar"]
  GETTABLEKS R6 R7 K17 ["Constants"]
  CALL R5 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K18 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["Packages"]
  GETTABLEKS R8 R9 K19 ["SharedFlags"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K20 ["GetFFlagDebugEnableUnibarDummyIntegrations"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K21 ["Flags"]
  GETTABLEKS R8 R9 K22 ["GetFFlagChromeTrackWindowPosition"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K21 ["Flags"]
  GETTABLEKS R9 R10 K23 ["GetFFlagChromeTrackWindowStatus"]
  CALL R8 1 1
  DUPTABLE R11 K30 [{"initialAvailability", "id", "label", "startingWindowPosition", "persistWindowState", "components"}]
  MOVE R13 R6
  CALL R13 0 1
  JUMPIFNOT R13 [+5]
  GETTABLEKS R13 R3 K31 ["AvailabilitySignal"]
  GETTABLEKS R12 R13 K32 ["Available"]
  JUMP [+4]
  GETTABLEKS R13 R3 K31 ["AvailabilitySignal"]
  GETTABLEKS R12 R13 K33 ["Unavailable"]
  SETTABLEKS R12 R11 K24 ["initialAvailability"]
  LOADK R12 K34 ["dummy_window_2"]
  SETTABLEKS R12 R11 K25 ["id"]
  LOADK R12 K35 ["CoreScripts.TopBar.Menu"]
  SETTABLEKS R12 R11 K26 ["label"]
  GETIMPORT R12 K38 [UDim2.new]
  LOADN R13 1
  LOADN R14 11
  LOADN R15 0
  LOADN R16 95
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["startingWindowPosition"]
  MOVE R12 R7
  CALL R12 0 1
  JUMPIF R12 [+4]
  MOVE R12 R8
  CALL R12 0 1
  JUMPIF R12 [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K28 ["persistWindowState"]
  DUPTABLE R12 K41 [{"Icon", "Window"}]
  DUPCLOSURE R13 K42 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K39 ["Icon"]
  DUPCLOSURE R13 K43 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K40 ["Window"]
  SETTABLEKS R12 R11 K29 ["components"]
  NAMECALL R9 R3 K44 ["register"]
  CALL R9 2 -1
  RETURN R9 -1
