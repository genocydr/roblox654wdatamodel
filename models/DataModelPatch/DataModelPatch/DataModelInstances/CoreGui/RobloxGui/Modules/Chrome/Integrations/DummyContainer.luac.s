PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K3 [{"Size"}]
  GETIMPORT R4 K6 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Size"]
  DUPTABLE R4 K8 [{"Content"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K10 [{"Size", "BackgroundColor3"}]
  GETIMPORT R8 K6 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K2 ["Size"]
  GETIMPORT R8 K13 [Color3.new]
  LOADK R9 K14 [0.5]
  LOADK R10 K14 [0.5]
  LOADK R11 K14 [0.5]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["BackgroundColor3"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Content"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R0 K2 [task.wait]
  LOADN R1 2
  CALL R0 1 0
  GETIMPORT R0 K5 [math.random]
  LOADN R1 1
  LOADN R2 8
  CALL R0 2 1
  GETIMPORT R1 K7 [print]
  LOADK R2 K8 ["Request slots: "]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K9 ["requestSlots"]
  CALL R1 2 0
  JUMPBACK [-20]
  RETURN R0 0

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
  GETTABLEKS R7 R0 K13 ["ChromeShared"]
  GETTABLEKS R6 R7 K12 ["Service"]
  GETTABLEKS R5 R6 K14 ["ContainerSlotSignal"]
  CALL R4 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K15 ["Workspace"]
  GETTABLEKS R8 R9 K10 ["Packages"]
  GETTABLEKS R7 R8 K16 ["SharedFlags"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K17 ["GetFFlagDebugEnableUnibarDummyIntegrations"]
  GETTABLEKS R6 R4 K18 ["new"]
  LOADN R7 5
  CALL R6 1 1
  DUPTABLE R9 K24 [{"initialAvailability", "id", "label", "containerWidthSlots", "components"}]
  MOVE R11 R5
  CALL R11 0 1
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R3 K25 ["AvailabilitySignal"]
  GETTABLEKS R10 R11 K26 ["Available"]
  JUMP [+4]
  GETTABLEKS R11 R3 K25 ["AvailabilitySignal"]
  GETTABLEKS R10 R11 K27 ["Unavailable"]
  SETTABLEKS R10 R9 K19 ["initialAvailability"]
  LOADK R10 K28 ["dummy_container"]
  SETTABLEKS R10 R9 K20 ["id"]
  LOADK R10 K29 ["CoreScripts.TopBar.Menu"]
  SETTABLEKS R10 R9 K21 ["label"]
  SETTABLEKS R6 R9 K22 ["containerWidthSlots"]
  DUPTABLE R10 K31 [{"Container"}]
  DUPCLOSURE R11 K32 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K30 ["Container"]
  SETTABLEKS R10 R9 K23 ["components"]
  NAMECALL R7 R3 K33 ["register"]
  CALL R7 2 1
  DUPCLOSURE R8 K34 [PROTO_1]
  CAPTURE VAL R6
  SETGLOBAL R8 K35 ["_simulateContainerSlotChange"]
  RETURN R7 1
