PROTO_0:
  NEWTABLE R1 0 0
  LOADN R2 0
  LOADN R3 0
  GETIMPORT R4 K1 [pairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R9 0
  MOVE R11 R7
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K2 ["DefaultFontSize"]
  GETTABLEKS R12 R13 K3 ["TabBar"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K4 ["Font"]
  GETTABLEKS R13 R14 K3 ["TabBar"]
  GETIMPORT R14 K7 [Vector2.new]
  LOADN R15 0
  LOADN R16 0
  CALL R14 2 -1
  NAMECALL R9 R9 K8 ["GetTextSize"]
  CALL R9 -1 1
  GETTABLEKS R10 R9 K9 ["X"]
  SETTABLE R10 R1 R7
  GETTABLEKS R10 R9 K9 ["X"]
  ADD R2 R2 R10
  ADDK R3 R3 K10 [1]
  FORGLOOP R4 2 [-28]
  RETURN R1 3

PROTO_1:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R2 R4 K3 ["tabList"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K4 ["layoutOrder"]
  JUMPIFNOTEQ R6 R0 [+11]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K5 ["dispatchSetActiveTab"]
  MOVE R7 R4
  GETTABLEKS R8 R5 K6 ["hasClientServer"]
  CALL R6 2 0
  RETURN R0 0
  FORGLOOP R1 2 [-15]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["tabList"]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 3
  DUPTABLE R5 K6 [{"textWidths", "totalTextLength", "totalTabCount", "currContainerWidth"}]
  SETTABLEKS R2 R5 K2 ["textWidths"]
  SETTABLEKS R3 R5 K3 ["totalTextLength"]
  SETTABLEKS R4 R5 K4 ["totalTabCount"]
  LOADN R6 0
  SETTABLEKS R6 R5 K5 ["currContainerWidth"]
  SETTABLEKS R5 R0 K7 ["state"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K8 ["onTabButtonClicked"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R1 K0 ["tabList"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K0 ["tabList"]
  JUMPIFEQ R3 R4 [+17]
  GETUPVAL R3 0
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R4 R6 K0 ["tabList"]
  CALL R3 1 3
  DUPTABLE R8 K5 [{"textWidths", "totalTextLength", "totalTabCount"}]
  SETTABLEKS R3 R8 K2 ["textWidths"]
  SETTABLEKS R4 R8 K3 ["totalTextLength"]
  SETTABLEKS R5 R8 K4 ["totalTabCount"]
  NAMECALL R6 R0 K6 ["setState"]
  CALL R6 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["tabList"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["currTabIndex"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["formFactor"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["windowWidth"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["frameHeight"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["layoutOrder"]
  GETTABLEKS R8 R0 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["textWidths"]
  GETTABLEKS R9 R0 K7 ["state"]
  GETTABLEKS R8 R9 K9 ["totalTextLength"]
  GETTABLEKS R10 R0 K7 ["state"]
  GETTABLEKS R9 R10 K10 ["totalTabCount"]
  NEWTABLE R10 0 0
  SUB R12 R4 R8
  DIV R11 R12 R9
  MODK R14 R11 K12 [1]
  MUL R13 R14 R9
  DIVK R12 R13 K11 [2]
  LOADB R13 0
  GETUPVAL R14 0
  JUMPIFNOTLT R11 R14 [+6]
  LOADN R14 0
  JUMPIFLT R14 R4 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K13 ["FormFactor"]
  GETTABLEKS R15 R16 K14 ["Small"]
  JUMPIFEQ R3 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFNOT R1 [+138]
  JUMPIF R13 [+1]
  JUMPIFNOT R14 [+68]
  NEWTABLE R15 0 0
  GETTABLE R17 R1 R2
  GETTABLEKS R16 R17 K6 ["layoutOrder"]
  GETIMPORT R17 K16 [pairs]
  MOVE R18 R1
  CALL R17 1 3
  FORGPREP_NEXT R17
  GETTABLEKS R22 R21 K6 ["layoutOrder"]
  SETTABLE R20 R15 R22
  FORGLOOP R17 2 [-4]
  JUMPIFNOT R14 [+26]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K17 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K22 [{"buttonSize", "dropDownList", "selectedIndex", "onSelection", "layoutOrder"}]
  GETIMPORT R20 K25 [UDim2.new]
  LOADN R21 0
  GETUPVAL R22 4
  LOADN R23 0
  MOVE R24 R5
  CALL R20 4 1
  SETTABLEKS R20 R19 K18 ["buttonSize"]
  SETTABLEKS R15 R19 K19 ["dropDownList"]
  SETTABLEKS R16 R19 K20 ["selectedIndex"]
  GETTABLEKS R20 R0 K26 ["onTabButtonClicked"]
  SETTABLEKS R20 R19 K21 ["onSelection"]
  SETTABLEKS R6 R19 K6 ["layoutOrder"]
  CALL R17 2 -1
  RETURN R17 -1
  JUMPIFNOT R13 [+69]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K17 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K27 [{"buttonSize", "dropDownList", "selectedIndex", "onSelection"}]
  GETIMPORT R20 K25 [UDim2.new]
  LOADN R21 0
  GETUPVAL R22 4
  LOADN R23 0
  MOVE R24 R5
  CALL R20 4 1
  SETTABLEKS R20 R19 K18 ["buttonSize"]
  SETTABLEKS R15 R19 K19 ["dropDownList"]
  SETTABLEKS R16 R19 K20 ["selectedIndex"]
  GETTABLEKS R20 R0 K26 ["onTabButtonClicked"]
  SETTABLEKS R20 R19 K21 ["onSelection"]
  CALL R17 2 -1
  RETURN R17 -1
  JUMP [+44]
  GETIMPORT R15 K16 [pairs]
  MOVE R16 R1
  CALL R15 1 3
  FORGPREP_NEXT R15
  GETTABLE R20 R7 R18
  JUMPIFNOT R20 [+35]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K17 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K33 [{"index", "name", "padding", "textWidth", "isSelected", "layoutOrder", "onTabButtonClicked"}]
  GETTABLEKS R23 R19 K6 ["layoutOrder"]
  SETTABLEKS R23 R22 K28 ["index"]
  SETTABLEKS R18 R22 K29 ["name"]
  SETTABLEKS R11 R22 K30 ["padding"]
  JUMPIFNOT R13 [+2]
  GETUPVAL R23 4
  JUMPIF R23 [+1]
  GETTABLE R23 R7 R18
  SETTABLEKS R23 R22 K31 ["textWidth"]
  JUMPIFEQ R18 R2 [+2]
  LOADB R23 0 +1
  LOADB R23 1
  SETTABLEKS R23 R22 K32 ["isSelected"]
  GETTABLEKS R23 R19 K6 ["layoutOrder"]
  SETTABLEKS R23 R22 K6 ["layoutOrder"]
  GETTABLEKS R23 R0 K26 ["onTabButtonClicked"]
  SETTABLEKS R23 R22 K26 ["onTabButtonClicked"]
  CALL R20 2 1
  SETTABLE R20 R10 R18
  FORGLOOP R15 2 [-38]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K34 ["UIListLayout"]
  DUPTABLE R17 K39 [{"HorizontalAlignment", "SortOrder", "VerticalAlignment", "FillDirection"}]
  GETIMPORT R18 K42 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K35 ["HorizontalAlignment"]
  GETIMPORT R18 K44 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K36 ["SortOrder"]
  GETIMPORT R18 K46 [Enum.VerticalAlignment.Top]
  SETTABLEKS R18 R17 K37 ["VerticalAlignment"]
  GETIMPORT R18 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K38 ["FillDirection"]
  CALL R15 2 1
  SETTABLEKS R15 R10 K34 ["UIListLayout"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K49 ["Frame"]
  DUPTABLE R17 K53 [{"Size", "Position", "Transparency", "LayoutOrder"}]
  GETIMPORT R18 K25 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  MOVE R22 R5
  CALL R18 4 1
  SETTABLEKS R18 R17 K50 ["Size"]
  GETIMPORT R18 K25 [UDim2.new]
  LOADN R19 0
  MOVE R20 R12
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K51 ["Position"]
  LOADN R18 1
  SETTABLEKS R18 R17 K52 ["Transparency"]
  SETTABLEKS R6 R17 K43 ["LayoutOrder"]
  MOVE R18 R10
  CALL R15 3 -1
  RETURN R15 -1

PROTO_5:
  DUPTABLE R2 K2 [{"tabList", "currTabIndex"}]
  GETTABLEKS R4 R0 K3 ["MainView"]
  GETTABLEKS R3 R4 K0 ["tabList"]
  SETTABLEKS R3 R2 K0 ["tabList"]
  GETTABLEKS R4 R0 K3 ["MainView"]
  GETTABLEKS R3 R4 K1 ["currTabIndex"]
  SETTABLEKS R3 R2 K1 ["currTabIndex"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"dispatchSetActiveTab"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetActiveTab"]
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
  GETIMPORT R3 K1 [game]
  LOADK R5 K9 ["TextService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R9 K11 [script]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K13 ["Actions"]
  GETTABLEKS R5 R6 K14 ["SetActiveTab"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K11 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K15 ["TabRowButton"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K11 [script]
  GETTABLEKS R8 R9 K12 ["Parent"]
  GETTABLEKS R7 R8 K16 ["DropDown"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K11 [script]
  GETTABLEKS R9 R10 K12 ["Parent"]
  GETTABLEKS R8 R9 K17 ["FullScreenDropDownButton"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R12 K11 [script]
  GETTABLEKS R11 R12 K12 ["Parent"]
  GETTABLEKS R10 R11 K12 ["Parent"]
  GETTABLEKS R9 R10 K18 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K19 ["TabRowFormatting"]
  GETTABLEKS R9 R10 K20 ["TabDropDownWidth"]
  GETTABLEKS R11 R8 K19 ["TabRowFormatting"]
  GETTABLEKS R10 R11 K21 ["TabOverlapThreshold"]
  GETTABLEKS R11 R1 K22 ["Component"]
  LOADK R13 K23 ["TabRowContainer"]
  NAMECALL R11 R11 K24 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K25 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R8
  DUPCLOSURE R13 K26 [PROTO_2]
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K27 ["init"]
  DUPCLOSURE R13 K28 [PROTO_3]
  CAPTURE VAL R12
  SETTABLEKS R13 R11 K29 ["didUpdate"]
  DUPCLOSURE R13 K30 [PROTO_4]
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R13 R11 K31 ["render"]
  DUPCLOSURE R13 K32 [PROTO_5]
  DUPCLOSURE R14 K33 [PROTO_7]
  CAPTURE VAL R4
  GETTABLEKS R15 R2 K34 ["UNSTABLE_connect2"]
  MOVE R16 R13
  MOVE R17 R14
  CALL R15 2 1
  MOVE R16 R11
  CALL R15 1 -1
  RETURN R15 -1
