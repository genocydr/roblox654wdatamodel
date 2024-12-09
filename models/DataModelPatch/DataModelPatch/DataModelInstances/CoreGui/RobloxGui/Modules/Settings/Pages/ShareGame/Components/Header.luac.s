PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["deviceLayout"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["size"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["layoutOrder"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["zIndex"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["closePage"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["searchAreaActive"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["analytics"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["toggleSearchIcon"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K9 ["iconType"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["LayoutSpecific"]
  GETTABLE R10 R11 R1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K11 ["DeviceLayout"]
  GETTABLEKS R12 R13 K12 ["DESKTOP"]
  JUMPIFEQ R1 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  AND R12 R8 R6
  LOADNIL R13
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K13 ["IconType"]
  GETTABLEKS R14 R15 K14 ["None"]
  JUMPIFNOTEQ R9 R14 [+4]
  GETTABLEKS R13 R10 K15 ["BACK_BUTTON_WIDTH"]
  JUMP [+2]
  GETTABLEKS R13 R10 K16 ["BACK_BUTTON_MODAL_WIDTH"]
  NOT R14 R12
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K18 ["Frame"]
  DUPTABLE R17 K25 [{"BackgroundTransparency", "Size", "AnchorPoint", "LayoutOrder", "ZIndex", "Position"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K19 ["BackgroundTransparency"]
  SETTABLEKS R2 R17 K20 ["Size"]
  GETIMPORT R18 K28 [Vector2.new]
  LOADN R19 0
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K21 ["AnchorPoint"]
  SETTABLEKS R3 R17 K22 ["LayoutOrder"]
  SETTABLEKS R4 R17 K23 ["ZIndex"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K29 ["UIBloxThemeEnabled"]
  JUMPIFNOT R19 [+8]
  GETIMPORT R18 K31 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 4
  CALL R18 4 1
  JUMP [+7]
  GETIMPORT R18 K31 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K24 ["Position"]
  DUPTABLE R18 K35 [{"Title", "BackButton", "SearchArea"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K17 ["createElement"]
  LOADK R20 K36 ["TextLabel"]
  DUPTABLE R21 K42 [{"BackgroundTransparency", "Visible", "Position", "Text", "TextSize", "TextColor3", "Font", "ZIndex"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K19 ["BackgroundTransparency"]
  SETTABLEKS R14 R21 K37 ["Visible"]
  GETIMPORT R22 K31 [UDim2.new]
  LOADK R23 K43 [0.5]
  LOADN R24 0
  LOADK R25 K43 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K24 ["Position"]
  GETUPVAL R22 4
  LOADK R24 K44 ["Feature.SettingsHub.Heading.InviteFriends"]
  NAMECALL R22 R22 K45 ["FormatByKey"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K38 ["Text"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K46 ["textSize"]
  GETTABLEKS R23 R10 K47 ["PAGE_TITLE_TEXT_SIZE"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K39 ["TextSize"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K48 ["Color"]
  GETTABLEKS R22 R23 K49 ["WHITE"]
  SETTABLEKS R22 R21 K40 ["TextColor3"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K50 ["font"]
  GETIMPORT R23 K53 [Enum.Font.SourceSansSemibold]
  LOADK R24 K54 ["Semibold"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K41 ["Font"]
  SETTABLEKS R4 R21 K23 ["ZIndex"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K32 ["Title"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K59 [{"visible", "iconType", "position", "size", "anchorPoint", "zIndex", "onClick"}]
  LOADB R22 1
  SETTABLEKS R22 R21 K55 ["visible"]
  SETTABLEKS R9 R21 K9 ["iconType"]
  GETIMPORT R22 K31 [UDim2.new]
  LOADN R23 0
  LOADN R24 0
  LOADK R25 K43 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K56 ["position"]
  GETIMPORT R22 K31 [UDim2.new]
  LOADN R23 0
  MOVE R24 R13
  JUMPIF R24 [+2]
  GETTABLEKS R24 R10 K15 ["BACK_BUTTON_WIDTH"]
  LOADN R25 0
  GETTABLEKS R26 R10 K60 ["BACK_BUTTON_HEIGHT"]
  CALL R22 4 1
  SETTABLEKS R22 R21 K2 ["size"]
  GETIMPORT R22 K28 [Vector2.new]
  LOADN R23 0
  LOADK R24 K43 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K57 ["anchorPoint"]
  SETTABLEKS R4 R21 K4 ["zIndex"]
  SETTABLEKS R5 R21 K58 ["onClick"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["BackButton"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K63 [{"fullWidthSearchBar", "searchBoxMargin", "anchorPoint", "position", "size", "zIndex", "analytics"}]
  MOVE R22 R8
  JUMPIF R22 [+1]
  NOT R22 R11
  SETTABLEKS R22 R21 K61 ["fullWidthSearchBar"]
  GETTABLEKS R22 R10 K64 ["SEARCH_BOX_MARGIN"]
  SETTABLEKS R22 R21 K62 ["searchBoxMargin"]
  GETIMPORT R22 K28 [Vector2.new]
  LOADN R23 1
  LOADK R24 K43 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K57 ["anchorPoint"]
  GETIMPORT R22 K31 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADK R25 K43 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K56 ["position"]
  GETIMPORT R22 K31 [UDim2.new]
  LOADN R23 1
  MINUS R24 R13
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K2 ["size"]
  SETTABLEKS R4 R21 K4 ["zIndex"]
  SETTABLEKS R7 R21 K7 ["analytics"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["SearchArea"]
  CALL R15 3 -1
  RETURN R15 -1

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
  GETTABLEKS R7 R2 K11 ["Modules"]
  GETTABLEKS R6 R7 K12 ["Settings"]
  GETTABLEKS R5 R6 K13 ["Pages"]
  GETTABLEKS R4 R5 K14 ["ShareGame"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R8 R2 K11 ["Modules"]
  GETTABLEKS R7 R8 K12 ["Settings"]
  GETTABLEKS R6 R7 K15 ["Theme"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R7 R4 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R4 K17 ["Components"]
  GETTABLEKS R8 R9 K18 ["BackButton"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R4 K17 ["Components"]
  GETTABLEKS R9 R10 K19 ["SearchArea"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R10 R4 K20 ["getTranslator"]
  CALL R9 1 1
  MOVE R10 R9
  CALL R10 0 1
  GETTABLEKS R11 R3 K21 ["PureComponent"]
  LOADK R13 K22 ["Header"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K24 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K25 ["render"]
  RETURN R11 1