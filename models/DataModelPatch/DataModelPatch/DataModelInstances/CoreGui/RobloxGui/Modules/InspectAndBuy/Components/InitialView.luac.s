PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["ScrollingFrame"]
  DUPTABLE R4 K9 [{"BackgroundTransparency", "Position", "Size", "ScrollBarThickness", "ScrollingDirection", "Visible", "Selectable"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K2 ["BackgroundTransparency"]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 0
  GETTABLEKS R7 R1 K13 ["BorderPaddingSize"]
  LOADN R8 0
  LOADN R9 10
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Position"]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 1
  LOADN R9 2
  GETTABLEKS R10 R1 K13 ["BorderPaddingSize"]
  MUL R8 R9 R10
  MINUS R7 R8
  LOADN R8 1
  LOADN R9 220
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  LOADN R5 0
  SETTABLEKS R5 R4 K5 ["ScrollBarThickness"]
  GETIMPORT R5 K16 [Enum.ScrollingDirection.Y]
  SETTABLEKS R5 R4 K6 ["ScrollingDirection"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K17 ["viewingDetails"]
  NOT R5 R6
  SETTABLEKS R5 R4 K7 ["Visible"]
  LOADB R5 0
  SETTABLEKS R5 R4 K8 ["Selectable"]
  DUPTABLE R5 K21 [{"UIListLayout", "Top", "AssetList"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K18 ["UIListLayout"]
  DUPTABLE R8 K25 [{"Padding", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R9 K27 [UDim.new]
  LOADN R10 0
  LOADN R11 15
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["Padding"]
  GETIMPORT R9 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K23 ["HorizontalAlignment"]
  GETIMPORT R9 K31 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R9 R8 K24 ["SortOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["UIListLayout"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K32 ["Frame"]
  DUPTABLE R8 K33 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R9 K12 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R1 K34 ["TopSizeY"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K2 ["BackgroundTransparency"]
  LOADN R9 2
  SETTABLEKS R9 R8 K30 ["LayoutOrder"]
  DUPTABLE R9 K37 [{"UIListLayout", "AvatarHeadShot", "PlayerNameLabel"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  LOADK R11 K18 ["UIListLayout"]
  DUPTABLE R12 K39 [{"Padding", "SortOrder", "FillDirection"}]
  GETIMPORT R13 K27 [UDim.new]
  LOADN R14 0
  LOADN R15 10
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["Padding"]
  GETIMPORT R13 K31 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K24 ["SortOrder"]
  GETIMPORT R13 K41 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K38 ["FillDirection"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["UIListLayout"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 3
  CALL R10 1 1
  SETTABLEKS R10 R9 K35 ["AvatarHeadShot"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 4
  CALL R10 1 1
  SETTABLEKS R10 R9 K36 ["PlayerNameLabel"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K19 ["Top"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 5
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["AssetList"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["view"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["detailsInformation"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Consumer"]
  DUPTABLE R5 K6 [{"render"}]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R6 R5 K5 ["render"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  DUPTABLE R2 K2 [{"view", "detailsInformation"}]
  GETTABLEKS R3 R0 K0 ["view"]
  SETTABLEKS R3 R2 K0 ["view"]
  GETTABLEKS R3 R0 K1 ["detailsInformation"]
  SETTABLEKS R3 R2 K1 ["detailsInformation"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K12 ["Components"]
  GETTABLEKS R5 R6 K13 ["PlayerNameLabel"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K12 ["Components"]
  GETTABLEKS R6 R7 K14 ["AvatarHeadShot"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K12 ["Components"]
  GETTABLEKS R7 R8 K15 ["AssetList"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K12 ["Components"]
  GETTABLEKS R8 R9 K16 ["InspectAndBuyContext"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K17 ["PureComponent"]
  LOADK R10 K18 ["InitialView"]
  NAMECALL R8 R8 K19 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K21 ["render"]
  GETTABLEKS R9 R3 K22 ["UNSTABLE_connect2"]
  DUPCLOSURE R10 K23 [PROTO_2]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 -1
  RETURN R9 -1
