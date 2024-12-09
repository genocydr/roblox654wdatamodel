PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"leftLayoutSize"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteContentSize"]
  GETTABLEKS R4 R5 K3 ["X"]
  SETTABLEKS R4 R3 K0 ["leftLayoutSize"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"rightLayoutSize"}]
  GETTABLEKS R5 R0 K2 ["AbsoluteContentSize"]
  GETTABLEKS R4 R5 K3 ["X"]
  SETTABLEKS R4 R3 K0 ["rightLayoutSize"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R3 K2 [{"leftLayoutSize", "rightLayoutSize"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K0 ["leftLayoutSize"]
  LOADN R4 0
  SETTABLEKS R4 R3 K1 ["rightLayoutSize"]
  NAMECALL R1 R0 K3 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["leftLayoutSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["rightLayoutSizeChanged"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["screenSize"]
  GETTABLEKS R3 R4 K4 ["Y"]
  MULK R2 R3 K1 [0.1]
  LOADN R4 72
  FASTCALL2 MATH_MIN R4 R2 [+4]
  MOVE R5 R2
  GETIMPORT R3 K7 [math.min]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["createElement"]
  LOADK R5 K9 ["Frame"]
  DUPTABLE R6 K17 [{"Visible", "BorderSizePixel", "BackgroundTransparency", "BackgroundColor3", "Size", "Position", "AnchorPoint"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K18 ["state"]
  GETTABLEKS R8 R9 K19 ["leftLayoutSize"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["props"]
  GETTABLEKS R10 R11 K3 ["screenSize"]
  GETTABLEKS R9 R10 K20 ["X"]
  JUMPIFLT R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["Visible"]
  LOADN R7 0
  SETTABLEKS R7 R6 K11 ["BorderSizePixel"]
  GETTABLEKS R8 R1 K21 ["BackgroundUIContrast"]
  GETTABLEKS R7 R8 K22 ["Transparency"]
  SETTABLEKS R7 R6 K12 ["BackgroundTransparency"]
  GETTABLEKS R8 R1 K21 ["BackgroundUIContrast"]
  GETTABLEKS R7 R8 K23 ["Color"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor3"]
  GETIMPORT R7 K26 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  MOVE R11 R3
  CALL R7 4 1
  SETTABLEKS R7 R6 K14 ["Size"]
  GETIMPORT R7 K28 [UDim2.fromScale]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["Position"]
  GETIMPORT R7 K30 [Vector2.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K16 ["AnchorPoint"]
  DUPTABLE R7 K34 [{"Padding", "LeftFrame", "RightFrame"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K35 ["UIPadding"]
  DUPTABLE R10 K38 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K36 ["PaddingLeft"]
  GETIMPORT R11 K40 [UDim.new]
  LOADN R12 0
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["PaddingRight"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["Padding"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K9 ["Frame"]
  DUPTABLE R10 K41 [{"BackgroundTransparency", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  GETIMPORT R11 K28 [UDim2.fromScale]
  LOADK R12 K42 [0.5]
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  DUPTABLE R11 K45 [{"Layout", "LeaveHint"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  LOADK R13 K46 ["UIListLayout"]
  NEWTABLE R14 8 0
  GETIMPORT R15 K50 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K48 ["SortOrder"]
  GETIMPORT R15 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K51 ["FillDirection"]
  GETIMPORT R15 K56 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K54 ["HorizontalAlignment"]
  GETIMPORT R15 K59 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K57 ["VerticalAlignment"]
  GETIMPORT R15 K40 [UDim.new]
  LOADN R16 0
  LOADN R17 40
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["Padding"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K60 ["Change"]
  GETTABLEKS R15 R16 K61 ["AbsoluteContentSize"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K62 ["leftLayoutSizeChanged"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["Layout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K65 [{"localizationKey", "keyImage"}]
  LOADK R15 K66 ["CoreScripts.TopBar.Back"]
  SETTABLEKS R15 R14 K63 ["localizationKey"]
  GETUPVAL R15 3
  SETTABLEKS R15 R14 K64 ["keyImage"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["LeaveHint"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K32 ["LeftFrame"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K9 ["Frame"]
  DUPTABLE R10 K67 [{"Visible", "BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["state"]
  GETTABLEKS R13 R14 K19 ["leftLayoutSize"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K18 ["state"]
  GETTABLEKS R14 R15 K68 ["rightLayoutSize"]
  ADD R12 R13 R14
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K2 ["props"]
  GETTABLEKS R14 R15 K3 ["screenSize"]
  GETTABLEKS R13 R14 K20 ["X"]
  JUMPIFLT R12 R13 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K10 ["Visible"]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  GETIMPORT R11 K28 [UDim2.fromScale]
  LOADK R12 K42 [0.5]
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETIMPORT R11 K28 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Position"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["AnchorPoint"]
  DUPTABLE R11 K70 [{"Layout", "LeaveHint", "RespawnHint"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  LOADK R13 K46 ["UIListLayout"]
  NEWTABLE R14 8 0
  GETIMPORT R15 K50 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K48 ["SortOrder"]
  GETIMPORT R15 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K51 ["FillDirection"]
  GETIMPORT R15 K72 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K54 ["HorizontalAlignment"]
  GETIMPORT R15 K59 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K57 ["VerticalAlignment"]
  GETIMPORT R15 K40 [UDim.new]
  LOADN R16 0
  LOADN R17 40
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["Padding"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K60 ["Change"]
  GETTABLEKS R15 R16 K61 ["AbsoluteContentSize"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K73 ["rightLayoutSizeChanged"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["Layout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K75 [{"layoutOrder", "localizationKey", "keyImage"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K74 ["layoutOrder"]
  LOADK R15 K76 ["CoreScripts.TopBar.Leave"]
  SETTABLEKS R15 R14 K63 ["localizationKey"]
  GETUPVAL R15 4
  SETTABLEKS R15 R14 K64 ["keyImage"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["LeaveHint"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K2 ["props"]
  GETTABLEKS R12 R13 K77 ["respawnEnabled"]
  JUMPIFNOT R12 [+15]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K75 [{"layoutOrder", "localizationKey", "keyImage"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K74 ["layoutOrder"]
  LOADK R15 K78 ["CoreScripts.TopBar.Respawn"]
  SETTABLEKS R15 R14 K63 ["localizationKey"]
  GETUPVAL R15 5
  SETTABLEKS R15 R14 K64 ["keyImage"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K69 ["RespawnHint"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K33 ["RightFrame"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  DUPTABLE R1 K2 [{"screenSize", "respawnEnabled"}]
  GETTABLEKS R3 R0 K3 ["displayOptions"]
  GETTABLEKS R2 R3 K0 ["screenSize"]
  SETTABLEKS R2 R1 K0 ["screenSize"]
  GETTABLEKS R3 R0 K4 ["respawn"]
  GETTABLEKS R2 R3 K5 ["enabled"]
  SETTABLEKS R2 R1 K1 ["respawnEnabled"]
  RETURN R1 1

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
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["UIBlox"]
  CALL R4 1 1
  GETTABLEKS R7 R4 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETTABLEKS R8 R4 K14 ["App"]
  GETTABLEKS R7 R8 K15 ["ImageSet"]
  GETTABLEKS R6 R7 K16 ["Images"]
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K18 [script]
  GETTABLEKS R9 R10 K19 ["Parent"]
  GETTABLEKS R8 R9 K20 ["ButtonHint"]
  CALL R7 1 1
  GETTABLEKS R8 R6 K21 ["icons/controls/keys/xboxB"]
  GETTABLEKS R9 R6 K22 ["icons/controls/keys/xboxX"]
  GETTABLEKS R10 R6 K23 ["icons/controls/keys/xboxY"]
  GETTABLEKS R11 R1 K24 ["PureComponent"]
  LOADK R13 K25 ["BottomBar"]
  NAMECALL R11 R11 K26 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R3 K27 ["strictInterface"]
  DUPTABLE R13 K30 [{"screenSize", "respawnEnabled"}]
  GETTABLEKS R14 R3 K31 ["Vector2"]
  SETTABLEKS R14 R13 K28 ["screenSize"]
  GETTABLEKS R14 R3 K32 ["boolean"]
  SETTABLEKS R14 R13 K29 ["respawnEnabled"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K33 ["validateProps"]
  DUPCLOSURE R12 K34 [PROTO_2]
  SETTABLEKS R12 R11 K35 ["init"]
  DUPCLOSURE R12 K36 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K37 ["render"]
  DUPCLOSURE R12 K38 [PROTO_5]
  GETTABLEKS R13 R2 K39 ["UNSTABLE_connect2"]
  MOVE R14 R12
  LOADNIL R15
  CALL R13 2 1
  MOVE R14 R11
  CALL R13 1 -1
  RETURN R13 -1
