PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"Expansion"}]
  SETTABLEKS R0 R3 K0 ["Expansion"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"Selection"}]
  SETTABLEKS R0 R3 K0 ["Selection"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R2 R1 K4 ["dispatchSetScreen"]
  GETTABLEKS R3 R1 K5 ["CloseOverlay"]
  GETTABLEKS R4 R1 K6 ["RecentViewToggled"]
  GETTABLEKS R5 R1 K7 ["dispatchSetRecentViewToggled"]
  GETIMPORT R6 K9 [next]
  MOVE R7 R0
  CALL R6 1 1
  GETTABLEKS R8 R6 K10 ["children"]
  LENGTH R7 R8
  JUMPIFNOTEQKN R7 K11 [0] [+14]
  JUMPIFNOT R4 [+3]
  MOVE R7 R5
  LOADB R8 0
  CALL R7 1 0
  GETUPVAL R8 1
  GETTABLEKS R9 R6 K12 ["Screen"]
  GETTABLE R7 R8 R9
  MOVE R8 R2
  MOVE R9 R7
  CALL R8 1 0
  MOVE R8 R3
  CALL R8 0 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K2 [{"Expansion", "Selection"}]
  NEWTABLE R2 1 0
  GETTABLEKS R5 R0 K3 ["props"]
  GETTABLEKS R4 R5 K4 ["FileExplorerData"]
  GETTABLEN R3 R4 1
  LOADB R4 1
  SETTABLE R4 R2 R3
  SETTABLEKS R2 R1 K0 ["Expansion"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["Selection"]
  SETTABLEKS R1 R0 K5 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["OnExpansionChange"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["onSelectionChange"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["Overlay"]
  GETTABLEKS R4 R1 K3 ["dispatchSetScreen"]
  GETTABLEKS R5 R1 K4 ["CloseOverlay"]
  GETTABLEKS R6 R1 K5 ["RecentViewToggled"]
  GETTABLEKS R7 R1 K6 ["dispatchSetRecentViewToggled"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 0 0
  DUPTABLE R11 K9 [{"Background", "Overlay"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K15 [{"BackgroundColor", "OnClick", "Position", "Size", "Transparency"}]
  GETIMPORT R15 K18 [Color3.new]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R15 3 1
  SETTABLEKS R15 R14 K10 ["BackgroundColor"]
  SETTABLEKS R5 R14 K11 ["OnClick"]
  GETIMPORT R15 K20 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K12 ["Position"]
  GETIMPORT R15 K20 [UDim2.new]
  GETTABLEKS R17 R3 K8 ["Background"]
  GETTABLEKS R16 R17 K21 ["WidthScale"]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Size"]
  GETTABLEKS R16 R3 K8 ["Background"]
  GETTABLEKS R15 R16 K14 ["Transparency"]
  SETTABLEKS R15 R14 K14 ["Transparency"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K8 ["Background"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K25 [{"BackgroundColor", "Layout", "LayoutOrder", "VerticalAlignment", "Size"}]
  GETTABLEKS R15 R2 K10 ["BackgroundColor"]
  SETTABLEKS R15 R14 K10 ["BackgroundColor"]
  GETIMPORT R15 K29 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K22 ["Layout"]
  LOADN R15 2
  SETTABLEKS R15 R14 K23 ["LayoutOrder"]
  GETIMPORT R15 K31 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K24 ["VerticalAlignment"]
  GETIMPORT R15 K20 [UDim2.new]
  GETTABLEKS R17 R3 K32 ["Foreground"]
  GETTABLEKS R16 R17 K21 ["WidthScale"]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Size"]
  DUPTABLE R15 K35 [{"CloseButton", "FolderTree"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K38 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size"}]
  GETIMPORT R19 K40 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R19 R18 K36 ["HorizontalAlignment"]
  GETIMPORT R19 K42 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K22 ["Layout"]
  LOADN R19 1
  SETTABLEKS R19 R18 K23 ["LayoutOrder"]
  DUPTABLE R19 K43 [{"Right"}]
  GETTABLEKS R21 R3 K37 ["Padding"]
  GETTABLEKS R20 R21 K39 ["Right"]
  SETTABLEKS R20 R19 K39 ["Right"]
  SETTABLEKS R19 R18 K37 ["Padding"]
  GETIMPORT R19 K20 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 24
  CALL R19 4 1
  SETTABLEKS R19 R18 K13 ["Size"]
  DUPTABLE R19 K45 [{"CloseIcon"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K7 ["createElement"]
  LOADK R21 K46 ["ImageButton"]
  NEWTABLE R22 8 0
  GETIMPORT R23 K48 [Vector2.new]
  LOADK R24 K49 [0.5]
  LOADK R25 K49 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K50 ["AnchorPoint"]
  LOADN R23 1
  SETTABLEKS R23 R22 K51 ["BackgroundTransparency"]
  GETTABLEKS R25 R3 K33 ["CloseButton"]
  GETTABLEKS R24 R25 K52 ["Images"]
  GETTABLEKS R23 R24 K53 ["Close"]
  SETTABLEKS R23 R22 K54 ["Image"]
  GETIMPORT R23 K56 [UDim2.fromOffset]
  GETTABLEKS R25 R3 K33 ["CloseButton"]
  GETTABLEKS R24 R25 K13 ["Size"]
  GETTABLEKS R26 R3 K33 ["CloseButton"]
  GETTABLEKS R25 R26 K13 ["Size"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K13 ["Size"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K57 ["Event"]
  GETTABLEKS R23 R24 K58 ["Activated"]
  SETTABLE R5 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K44 ["CloseIcon"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K33 ["CloseButton"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K7 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K63 [{"RootItems", "Size", "Expansion", "LayoutOrder", "OnExpansionChange", "OnSelectionChange"}]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K64 ["FileExplorerData"]
  SETTABLEKS R19 R18 K59 ["RootItems"]
  GETIMPORT R19 K66 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K13 ["Size"]
  GETTABLEKS R20 R0 K67 ["state"]
  GETTABLEKS R19 R20 K60 ["Expansion"]
  SETTABLEKS R19 R18 K60 ["Expansion"]
  LOADN R19 2
  SETTABLEKS R19 R18 K23 ["LayoutOrder"]
  GETTABLEKS R19 R0 K61 ["OnExpansionChange"]
  SETTABLEKS R19 R18 K61 ["OnExpansionChange"]
  GETTABLEKS R19 R0 K68 ["onSelectionChange"]
  SETTABLEKS R19 R18 K62 ["OnSelectionChange"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["FolderTree"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K2 ["Overlay"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_4:
  DUPTABLE R2 K1 [{"RecentViewToggled"}]
  GETTABLEKS R4 R0 K2 ["AssetManagerReducer"]
  GETTABLEKS R3 R4 K3 ["recentViewToggled"]
  SETTABLEKS R3 R2 K0 ["RecentViewToggled"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K2 [{"dispatchSetRecentViewToggled", "dispatchSetScreen"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetRecentViewToggled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchSetScreen"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Pane"]
  GETTABLEKS R8 R6 K13 ["ShowOnTop"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K16 ["FolderTreeItem"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K18 ["Screens"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K14 ["Src"]
  GETTABLEKS R13 R14 K19 ["Actions"]
  GETTABLEKS R12 R13 K20 ["SetRecentViewToggled"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K14 ["Src"]
  GETTABLEKS R14 R15 K19 ["Actions"]
  GETTABLEKS R13 R14 K21 ["SetScreen"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K22 ["PureComponent"]
  LOADK R15 K23 ["ExplorerOverlay"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R3 K25 ["Dash"]
  GETTABLEKS R15 R14 K26 ["join"]
  GETTABLEKS R16 R6 K27 ["TreeView"]
  DUPCLOSURE R17 K28 [PROTO_2]
  CAPTURE VAL R10
  SETTABLEKS R17 R13 K29 ["init"]
  DUPCLOSURE R17 K30 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R16
  SETTABLEKS R17 R13 K31 ["render"]
  MOVE R17 R5
  DUPTABLE R18 K34 [{"Stylizer", "Localization"}]
  GETTABLEKS R19 R4 K32 ["Stylizer"]
  SETTABLEKS R19 R18 K32 ["Stylizer"]
  GETTABLEKS R19 R4 K33 ["Localization"]
  SETTABLEKS R19 R18 K33 ["Localization"]
  CALL R17 1 1
  MOVE R18 R13
  CALL R17 1 1
  MOVE R13 R17
  DUPCLOSURE R17 K35 [PROTO_4]
  DUPCLOSURE R18 K36 [PROTO_7]
  CAPTURE VAL R11
  CAPTURE VAL R12
  GETTABLEKS R19 R2 K37 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R13
  CALL R19 1 -1
  RETURN R19 -1