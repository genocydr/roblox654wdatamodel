PROTO_0:
  DUPTABLE R3 K1 [{"text"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["getMenuText"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K0 ["text"]
  NAMECALL R1 R0 K3 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K5 ["sizeBinding"]
  SETTABLEKS R2 R0 K6 ["updateSizeBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K7 ["sizeConstraintBinding"]
  SETTABLEKS R2 R0 K8 ["updateSizeConstraintBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K9 ["visibleBinding"]
  SETTABLEKS R2 R0 K10 ["updateVisibleBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K11 ["buttonHeightBinding"]
  SETTABLEKS R2 R0 K12 ["updateButtonHeightBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K13 ["textSizeBinding"]
  SETTABLEKS R2 R0 K14 ["updateTextSizeBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["createBinding"]
  LOADNIL R2
  CALL R1 1 2
  SETTABLEKS R1 R0 K15 ["textSizeConstraintBinding"]
  SETTABLEKS R2 R0 K16 ["updateTextSizeConstraintBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K17 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K18 ["textLabelRef"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["updateSizeBinding"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["HubBar"]
  GETTABLEKS R2 R3 K3 ["Size"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["updateVisibleBinding"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["HubBar"]
  GETTABLEKS R2 R3 K5 ["Visible"]
  CALL R1 1 0
  NAMECALL R1 R0 K6 ["updateViewport"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["HubBar"]
  GETTABLEKS R3 R1 K1 ["HubBar"]
  JUMPIFEQ R2 R3 [+19]
  GETTABLEKS R2 R0 K2 ["updateSizeBinding"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["HubBar"]
  GETTABLEKS R3 R4 K3 ["Size"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K4 ["updateVisibleBinding"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["HubBar"]
  GETTABLEKS R3 R4 K5 ["Visible"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["textSize"]
  LOADN R2 24
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["IsSmallTouchScreen"]
  CALL R2 1 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["textSize"]
  LOADN R3 18
  CALL R2 1 1
  MOVE R1 R2
  JUMP [+8]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["textSize"]
  LOADN R3 36
  CALL R2 1 1
  MOVE R1 R2
  GETTABLEKS R2 R0 K2 ["updateTextSizeConstraintBinding"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K3 ["IsPortrait"]
  CALL R2 1 1
  GETUPVAL R4 2
  JUMPIFNOT R4 [+2]
  LOADN R3 120
  JUMP [+3]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["LargeButtonHeight"]
  JUMPIF R2 [+5]
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["IsSmallTouchScreen"]
  CALL R4 1 1
  JUMPIFNOT R4 [+39]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["UIBloxThemeEnabled"]
  JUMPIFNOT R4 [+17]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["ButtonHeight"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["textSize"]
  LOADN R5 16
  CALL R4 1 1
  JUMPIF R4 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["textSize"]
  LOADN R5 24
  CALL R4 1 1
  MOVE R1 R4
  JUMP [+18]
  JUMPIFNOT R2 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["textSize"]
  LOADN R5 18
  CALL R4 1 1
  JUMPIF R4 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["textSize"]
  LOADN R5 24
  CALL R4 1 1
  MOVE R1 R4
  JUMPIFNOT R2 [+2]
  LOADN R4 50
  JUMP [+1]
  LOADN R4 62
  MOVE R3 R4
  GETTABLEKS R4 R0 K7 ["updateTextSizeBinding"]
  MOVE R5 R1
  CALL R4 1 0
  GETTABLEKS R4 R0 K8 ["updateButtonHeightBinding"]
  MOVE R5 R3
  CALL R4 1 0
  GETTABLEKS R4 R0 K9 ["textLabelRef"]
  NAMECALL R4 R4 K10 ["getValue"]
  CALL R4 1 1
  JUMPIFNOT R4 [+48]
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K12 ["BackBarRef"]
  NAMECALL R4 R4 K10 ["getValue"]
  CALL R4 1 1
  JUMPIFNOT R4 [+40]
  GETTABLEKS R7 R0 K9 ["textLabelRef"]
  NAMECALL R7 R7 K10 ["getValue"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K13 ["AbsolutePosition"]
  GETTABLEKS R5 R6 K14 ["X"]
  GETTABLEKS R9 R0 K11 ["props"]
  GETTABLEKS R8 R9 K12 ["BackBarRef"]
  NAMECALL R8 R8 K10 ["getValue"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K13 ["AbsolutePosition"]
  GETTABLEKS R6 R7 K14 ["X"]
  SUB R4 R5 R6
  GETTABLEKS R5 R0 K15 ["updateSizeConstraintBinding"]
  GETIMPORT R6 K18 [Vector2.new]
  GETTABLEKS R11 R0 K11 ["props"]
  GETTABLEKS R10 R11 K12 ["BackBarRef"]
  NAMECALL R10 R10 K10 ["getValue"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K19 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K14 ["X"]
  SUB R7 R8 R4
  LOADK R8 K20 [∞]
  CALL R6 2 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["backEnabled"]
  JUMPIFNOT R1 [+5]
  LOADB R1 0
  GETTABLEN R2 R0 1
  JUMPIFEQKNIL R2 [+2]
  GETTABLEN R1 R0 2
  RETURN R1 1

PROTO_5:
  GETTABLEN R1 R0 1
  GETTABLEN R2 R0 2
  JUMPIFNOT R1 [+23]
  JUMPIFNOT R2 [+22]
  GETIMPORT R3 K2 [UDim2.new]
  GETIMPORT R4 K4 [UDim.new]
  GETTABLEKS R7 R1 K6 ["X"]
  GETTABLEKS R6 R7 K7 ["Scale"]
  MULK R5 R6 K5 [0.5]
  GETTABLEKS R8 R1 K6 ["X"]
  GETTABLEKS R7 R8 K8 ["Offset"]
  MULK R6 R7 K5 [0.5]
  CALL R4 2 1
  GETIMPORT R5 K4 [UDim.new]
  LOADN R6 0
  ADDK R7 R2 K9 [6]
  CALL R5 2 -1
  CALL R3 -1 -1
  RETURN R3 -1
  GETIMPORT R3 K2 [UDim2.new]
  CALL R3 0 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateSizeBinding"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["HubBar"]
  GETTABLEKS R1 R2 K3 ["Size"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateVisibleBinding"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["HubBar"]
  GETTABLEKS R1 R2 K3 ["Visible"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["updateViewport"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  JUMPIFNOT R0 [+8]
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  MOVE R5 R0
  CALL R1 4 -1
  RETURN R1 -1
  GETIMPORT R1 K2 [UDim2.new]
  CALL R1 0 -1
  RETURN R1 -1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UIBloxThemeEnabled"]
  JUMPIFNOT R1 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["color"]
  LOADK R2 K2 ["DefaultButtonHover"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["BackgroundColor3"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["transparency"]
  LOADK R2 K2 ["DefaultButtonHover"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["BackgroundTransparency"]
  RETURN R0 0
  LOADK R1 K6 ["rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"]
  SETTABLEKS R1 R0 K7 ["Image"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["UIBloxThemeEnabled"]
  JUMPIFNOT R1 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["color"]
  LOADK R2 K2 ["DefaultButton"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["BackgroundColor3"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["transparency"]
  LOADK R2 K2 ["DefaultButton"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["BackgroundTransparency"]
  RETURN R0 0
  LOADK R1 K6 ["rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"]
  SETTABLEKS R1 R0 K7 ["Image"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["initiateBackButtonTeleport"]
  GETIMPORT R4 K2 [Enum]
  GETTABLEKS R3 R4 K3 ["AdTeleportMethod"]
  GETTABLEKS R2 R3 K4 ["InGameMenuBackButton"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  NEWTABLE R3 8 0
  LOADN R4 0
  SETTABLEKS R4 R3 K2 ["BorderSizePixel"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  GETIMPORT R4 K6 [Vector2.new]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["AnchorPoint"]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K10 ["Position"]
  GETTABLEKS R5 R0 K11 ["props"]
  GETTABLEKS R4 R5 K12 ["LayoutOrder"]
  SETTABLEKS R4 R3 K12 ["LayoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["joinBindings"]
  NEWTABLE R5 0 2
  GETTABLEKS R7 R0 K14 ["state"]
  GETTABLEKS R6 R7 K15 ["text"]
  GETTABLEKS R7 R0 K16 ["visibleBinding"]
  SETLIST R5 R6 2 [1]
  CALL R4 1 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R4 R4 K17 ["map"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["Visible"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K13 ["joinBindings"]
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K19 ["sizeBinding"]
  GETTABLEKS R7 R0 K20 ["buttonHeightBinding"]
  SETLIST R5 R6 2 [1]
  CALL R4 1 1
  DUPCLOSURE R6 K21 [PROTO_5]
  NAMECALL R4 R4 K17 ["map"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K22 ["Size"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K23 ["Ref"]
  GETTABLEKS R6 R0 K11 ["props"]
  GETTABLEKS R5 R6 K24 ["BackBarRef"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K30 [{"SizeConnection", "VisibleConnection", "ViewportSizeChangedConnection", "UIPadding", "ImageButton"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K33 [{"event", "callback"}]
  GETTABLEKS R9 R0 K11 ["props"]
  GETTABLEKS R8 R9 K34 ["HubBar"]
  LOADK R10 K22 ["Size"]
  NAMECALL R8 R8 K35 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["event"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K32 ["callback"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K25 ["SizeConnection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K33 [{"event", "callback"}]
  GETTABLEKS R9 R0 K11 ["props"]
  GETTABLEKS R8 R9 K34 ["HubBar"]
  LOADK R10 K18 ["Visible"]
  NAMECALL R8 R8 K35 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["event"]
  NEWCLOSURE R8 P3
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K32 ["callback"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["VisibleConnection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K33 [{"event", "callback"}]
  GETIMPORT R9 K37 [workspace]
  GETTABLEKS R8 R9 K38 ["CurrentCamera"]
  LOADK R10 K39 ["ViewportSize"]
  NAMECALL R8 R8 K35 ["GetPropertyChangedSignal"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K31 ["event"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K32 ["callback"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K27 ["ViewportSizeChangedConnection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K28 ["UIPadding"]
  DUPTABLE R7 K42 [{"PaddingBottom", "PaddingTop"}]
  GETIMPORT R8 K44 [UDim.new]
  LOADN R9 0
  LOADN R10 6
  CALL R8 2 1
  SETTABLEKS R8 R7 K40 ["PaddingBottom"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R9 [+6]
  GETIMPORT R8 K44 [UDim.new]
  LOADN R9 0
  LOADN R10 10
  CALL R8 2 1
  JUMP [+5]
  GETIMPORT R8 K44 [UDim.new]
  LOADN R9 0
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K41 ["PaddingTop"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K28 ["UIPadding"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K29 ["ImageButton"]
  NEWTABLE R7 16 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R9 [+2]
  LOADK R8 K46 [""]
  JUMP [+1]
  LOADK R8 K47 ["rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"]
  SETTABLEKS R8 R7 K48 ["Image"]
  LOADN R8 0
  SETTABLEKS R8 R7 K2 ["BorderSizePixel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K49 ["color"]
  LOADK R9 K50 ["DefaultButton"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K51 ["BackgroundColor3"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K52 ["transparency"]
  LOADK R9 K50 ["DefaultButton"]
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K3 ["BackgroundTransparency"]
  GETIMPORT R8 K9 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K10 ["Position"]
  GETTABLEKS R8 R0 K20 ["buttonHeightBinding"]
  DUPCLOSURE R10 K53 [PROTO_9]
  NAMECALL R8 R8 K17 ["map"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["Size"]
  GETIMPORT R8 K57 [Enum.AutomaticSize.X]
  SETTABLEKS R8 R7 K55 ["AutomaticSize"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R9 [+3]
  GETIMPORT R8 K60 [Enum.ScaleType.Stretch]
  JUMP [+2]
  GETIMPORT R8 K62 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K58 ["ScaleType"]
  GETIMPORT R8 K64 [Rect.new]
  LOADN R9 8
  LOADN R10 6
  LOADN R11 46
  LOADN R12 44
  CALL R8 4 1
  SETTABLEKS R8 R7 K65 ["SliceCenter"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K66 ["Event"]
  GETTABLEKS R8 R9 K67 ["MouseEnter"]
  DUPCLOSURE R9 K68 [PROTO_10]
  CAPTURE UPVAL U2
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K66 ["Event"]
  GETTABLEKS R8 R9 K69 ["MouseLeave"]
  DUPCLOSURE R9 K70 [PROTO_11]
  CAPTURE UPVAL U2
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K66 ["Event"]
  GETTABLEKS R8 R9 K71 ["Activated"]
  DUPCLOSURE R9 K72 [PROTO_12]
  CAPTURE UPVAL U3
  SETTABLE R9 R7 R8
  DUPTABLE R8 K75 [{"UICorner", "UIStroke", "Frame"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R10 [+12]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K73 ["UICorner"]
  DUPTABLE R11 K77 [{"CornerRadius"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K78 ["DefaultCornerRadius"]
  SETTABLEKS R12 R11 K76 ["CornerRadius"]
  CALL R9 2 1
  JUMPIF R9 [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K73 ["UICorner"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R10 [+26]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K74 ["UIStroke"]
  DUPTABLE R11 K82 [{"Color", "Transparency", "Thickness"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K49 ["color"]
  LOADK R13 K83 ["DefaultButtonStroke"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K79 ["Color"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K52 ["transparency"]
  LOADK R13 K83 ["DefaultButtonStroke"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K80 ["Transparency"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K84 ["DefaultStokeThickness"]
  SETTABLEKS R12 R11 K81 ["Thickness"]
  CALL R9 2 1
  JUMPIF R9 [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K74 ["UIStroke"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  LOADK R10 K1 ["Frame"]
  DUPTABLE R11 K85 [{"Size", "Position", "BorderSizePixel", "BackgroundTransparency"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R13 [+8]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  JUMP [+7]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 248
  CALL R12 4 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K45 ["UIBloxThemeEnabled"]
  JUMPIFNOT R13 [+8]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 0
  LOADN R14 4
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  JUMP [+7]
  GETIMPORT R12 K9 [UDim2.new]
  LOADN R13 0
  LOADN R14 4
  LOADN R15 0
  LOADN R16 2
  CALL R12 4 1
  SETTABLEKS R12 R11 K10 ["Position"]
  LOADN R12 0
  SETTABLEKS R12 R11 K2 ["BorderSizePixel"]
  LOADN R12 1
  SETTABLEKS R12 R11 K3 ["BackgroundTransparency"]
  DUPTABLE R12 K89 [{"UIPadding", "Container", "ImageLabel", "TextLabel"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  LOADK R14 K28 ["UIPadding"]
  DUPTABLE R15 K91 [{"PaddingRight"}]
  GETIMPORT R16 K44 [UDim.new]
  LOADN R17 0
  LOADN R18 12
  CALL R16 2 1
  SETTABLEKS R16 R15 K90 ["PaddingRight"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["UIPadding"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  LOADK R14 K92 ["UIListLayout"]
  DUPTABLE R15 K97 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R16 K99 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K93 ["FillDirection"]
  GETIMPORT R16 K101 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K94 ["HorizontalAlignment"]
  GETIMPORT R16 K103 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K95 ["VerticalAlignment"]
  GETIMPORT R16 K104 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K96 ["SortOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K86 ["Container"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K105 [{"Image", "Size", "BorderSizePixel", "BackgroundTransparency", "LayoutOrder"}]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K106 ["icons/actions/cycleLeft"]
  SETTABLEKS R16 R15 K48 ["Image"]
  GETIMPORT R16 K9 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADK R19 K107 [0.75]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K22 ["Size"]
  LOADN R16 0
  SETTABLEKS R16 R15 K2 ["BorderSizePixel"]
  LOADN R16 1
  SETTABLEKS R16 R15 K3 ["BackgroundTransparency"]
  LOADN R16 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  DUPTABLE R16 K109 [{"UIAspectRatioConstraint"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["createElement"]
  LOADK R18 K108 ["UIAspectRatioConstraint"]
  NEWTABLE R19 0 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K108 ["UIAspectRatioConstraint"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K87 ["ImageLabel"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  LOADK R14 K88 ["TextLabel"]
  NEWTABLE R15 16 0
  GETTABLEKS R17 R0 K14 ["state"]
  GETTABLEKS R16 R17 K15 ["text"]
  SETTABLEKS R16 R15 K110 ["Text"]
  GETIMPORT R16 K9 [UDim2.new]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K22 ["Size"]
  GETIMPORT R16 K57 [Enum.AutomaticSize.X]
  SETTABLEKS R16 R15 K55 ["AutomaticSize"]
  LOADN R16 0
  SETTABLEKS R16 R15 K2 ["BorderSizePixel"]
  LOADN R16 1
  SETTABLEKS R16 R15 K3 ["BackgroundTransparency"]
  GETIMPORT R16 K112 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K111 ["TextXAlignment"]
  GETIMPORT R16 K115 [Color3.fromRGB]
  LOADN R17 255
  LOADN R18 255
  LOADN R19 255
  CALL R16 3 1
  SETTABLEKS R16 R15 K116 ["TextColor3"]
  GETIMPORT R16 K118 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K117 ["TextYAlignment"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K119 ["font"]
  GETIMPORT R17 K122 [Enum.Font.SourceSansBold]
  LOADK R18 K123 ["Bold"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K120 ["Font"]
  GETTABLEKS R16 R0 K124 ["textSizeBinding"]
  SETTABLEKS R16 R15 K125 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K126 ["TextScaled"]
  LOADB R16 1
  SETTABLEKS R16 R15 K127 ["TextWrapped"]
  LOADN R16 2
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K23 ["Ref"]
  GETTABLEKS R17 R0 K128 ["textLabelRef"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K131 [{"UITextSizeConstraint", "UISizeConstraint"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["createElement"]
  LOADK R18 K129 ["UITextSizeConstraint"]
  DUPTABLE R19 K133 [{"MaxTextSize"}]
  GETTABLEKS R20 R0 K134 ["textSizeConstraintBinding"]
  SETTABLEKS R20 R19 K132 ["MaxTextSize"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K129 ["UITextSizeConstraint"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["createElement"]
  LOADK R18 K130 ["UISizeConstraint"]
  DUPTABLE R19 K136 [{"MaxSize"}]
  GETTABLEKS R20 R0 K137 ["sizeConstraintBinding"]
  SETTABLEKS R20 R19 K135 ["MaxSize"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K130 ["UISizeConstraint"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K88 ["TextLabel"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K1 ["Frame"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K29 ["ImageButton"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K11 ["UIBlox"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K12 ["t"]
  CALL R5 1 1
  GETTABLEKS R8 R4 K13 ["App"]
  GETTABLEKS R7 R8 K14 ["ImageSet"]
  GETTABLEKS R6 R7 K15 ["Images"]
  GETTABLEKS R9 R4 K16 ["Core"]
  GETTABLEKS R8 R9 K14 ["ImageSet"]
  GETTABLEKS R7 R8 K17 ["ImageSetLabel"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R0 K18 ["Workspace"]
  GETTABLEKS R11 R12 K9 ["Packages"]
  GETTABLEKS R10 R11 K19 ["RoactUtils"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K20 ["ExternalEventConnection"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R2 K21 ["Modules"]
  GETTABLEKS R11 R12 K22 ["Settings"]
  GETTABLEKS R10 R11 K23 ["Utility"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R2 K21 ["Modules"]
  GETTABLEKS R12 R13 K22 ["Settings"]
  GETTABLEKS R11 R12 K24 ["BackButtonController"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K25 ["PureComponent"]
  LOADK R13 K26 ["MenuBackButton"]
  NAMECALL R11 R11 K27 ["extend"]
  CALL R11 2 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R14 R2 K21 ["Modules"]
  GETTABLEKS R13 R14 K28 ["TenFootInterface"]
  CALL R12 1 1
  NAMECALL R12 R12 K29 ["IsEnabled"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R2 K21 ["Modules"]
  GETTABLEKS R15 R16 K22 ["Settings"]
  GETTABLEKS R14 R15 K30 ["Theme"]
  CALL R13 1 1
  GETTABLEKS R14 R5 K31 ["strictInterface"]
  DUPTABLE R15 K36 [{"HubBar", "backEnabled", "BackBarRef", "LayoutOrder"}]
  GETTABLEKS R16 R5 K37 ["instanceOf"]
  LOADK R17 K38 ["ImageLabel"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["HubBar"]
  GETTABLEKS R16 R5 K39 ["boolean"]
  SETTABLEKS R16 R15 K33 ["backEnabled"]
  GETTABLEKS R16 R5 K40 ["optional"]
  GETTABLEKS R17 R5 K41 ["table"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K34 ["BackBarRef"]
  GETTABLEKS R16 R5 K40 ["optional"]
  GETTABLEKS R17 R5 K42 ["integer"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K35 ["LayoutOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R11 K43 ["validateProps"]
  DUPTABLE R14 K44 [{"backEnabled"}]
  GETTABLEKS R15 R10 K45 ["hasReturnUniverse"]
  CALL R15 0 1
  SETTABLEKS R15 R14 K33 ["backEnabled"]
  SETTABLEKS R14 R11 K46 ["defaultProps"]
  DUPCLOSURE R14 K47 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R3
  SETTABLEKS R14 R11 K48 ["init"]
  DUPCLOSURE R14 K49 [PROTO_1]
  SETTABLEKS R14 R11 K50 ["didMount"]
  DUPCLOSURE R14 K51 [PROTO_2]
  SETTABLEKS R14 R11 K52 ["didUpdate"]
  DUPCLOSURE R14 K53 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R14 R11 K54 ["updateViewport"]
  DUPCLOSURE R14 K55 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R14 R11 K56 ["render"]
  RETURN R11 1