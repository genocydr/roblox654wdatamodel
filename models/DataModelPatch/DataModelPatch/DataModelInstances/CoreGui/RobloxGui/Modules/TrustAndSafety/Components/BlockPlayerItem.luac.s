PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onCheckBoxActivated"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["isDisabled"]
  JUMPIF R0 [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onCheckBoxActivated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["isCheckBoxSelected"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onClicked"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Theme"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  LOADK R3 K2 ["TextButton"]
  NEWTABLE R4 8 0
  LOADN R5 1
  SETTABLEKS R5 R4 K3 ["BackgroundTransparency"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["layoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["size"]
  SETTABLEKS R5 R4 K7 ["Size"]
  LOADB R5 0
  SETTABLEKS R5 R4 K8 ["AutoButtonColor"]
  LOADN R5 0
  SETTABLEKS R5 R4 K9 ["BorderSizePixel"]
  LOADK R5 K10 [""]
  SETTABLEKS R5 R4 K11 ["Text"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["Event"]
  GETTABLEKS R5 R6 K13 ["Activated"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["onClicked"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K19 [{"BlockIcon", "CheckBoxFrame", "TextFrame", "Divider"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K24 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageTransparency", "Position", "Size"}]
  GETIMPORT R9 K27 [Vector2.new]
  LOADN R10 0
  LOADK R11 K28 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K29 ["icon"]
  SETTABLEKS R9 R8 K21 ["Image"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K30 ["isDisabled"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K28 [0.5]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["ImageTransparency"]
  GETIMPORT R9 K32 [UDim2.new]
  LOADN R10 0
  LOADN R11 16
  LOADK R12 K28 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K33 ["iconSize"]
  SETTABLEKS R9 R8 K7 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K15 ["BlockIcon"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K34 ["Frame"]
  DUPTABLE R8 K35 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
  GETIMPORT R9 K27 [Vector2.new]
  LOADN R10 1
  LOADK R11 K28 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETIMPORT R9 K32 [UDim2.new]
  LOADN R10 1
  LOADN R11 236
  LOADK R12 K28 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  GETIMPORT R9 K37 [UDim2.fromOffset]
  LOADN R10 24
  LOADN R11 24
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["Size"]
  DUPTABLE R9 K39 [{"CheckBox"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K43 [{"size", "text", "isDisabled", "onActivated", "isSelected"}]
  GETIMPORT R13 K32 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K6 ["size"]
  LOADK R13 K10 [""]
  SETTABLEKS R13 R12 K40 ["text"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K30 ["isDisabled"]
  SETTABLEKS R13 R12 K30 ["isDisabled"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K44 ["onCheckBoxActivated"]
  SETTABLEKS R13 R12 K41 ["onActivated"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K45 ["isCheckBoxSelected"]
  SETTABLEKS R13 R12 K42 ["isSelected"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K38 ["CheckBox"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K16 ["CheckBoxFrame"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  LOADK R7 K34 ["Frame"]
  DUPTABLE R8 K35 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
  GETIMPORT R9 K27 [Vector2.new]
  LOADN R10 0
  LOADK R11 K28 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K3 ["BackgroundTransparency"]
  GETIMPORT R9 K32 [UDim2.new]
  LOADN R10 0
  LOADN R11 60
  LOADK R12 K28 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  GETIMPORT R9 K32 [UDim2.new]
  LOADN R10 1
  LOADN R11 132
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K7 ["Size"]
  DUPTABLE R9 K48 [{"Layout", "Text", "Description"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  LOADK R11 K49 ["UIListLayout"]
  DUPTABLE R12 K55 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R13 K58 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K50 ["FillDirection"]
  GETIMPORT R13 K60 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K51 ["HorizontalAlignment"]
  GETIMPORT R13 K62 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K52 ["VerticalAlignment"]
  GETIMPORT R13 K63 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K53 ["SortOrder"]
  GETIMPORT R13 K65 [UDim.new]
  LOADN R14 0
  LOADN R15 4
  CALL R13 2 1
  SETTABLEKS R13 R12 K54 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K46 ["Layout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K72 [{"LayoutOrder", "TextTransparency", "AutomaticSize", "fontKey", "themeKey", "Text", "TextTruncate", "TextXAlignment"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K30 ["isDisabled"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K28 [0.5]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K66 ["TextTransparency"]
  GETIMPORT R13 K74 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K67 ["AutomaticSize"]
  LOADK R13 K75 ["SubHeader1"]
  SETTABLEKS R13 R12 K68 ["fontKey"]
  LOADK R13 K76 ["TextEmphasis"]
  SETTABLEKS R13 R12 K69 ["themeKey"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K40 ["text"]
  SETTABLEKS R13 R12 K11 ["Text"]
  GETIMPORT R13 K78 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R13 R12 K70 ["TextTruncate"]
  GETIMPORT R13 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K71 ["TextXAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Text"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K82 [{"LayoutOrder", "TextTransparency", "AutomaticSize", "fontKey", "TextWrapped", "themeKey", "Text", "TextXAlignment", "LineHeight"}]
  LOADN R13 2
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K30 ["isDisabled"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K28 [0.5]
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K66 ["TextTransparency"]
  GETIMPORT R13 K74 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K67 ["AutomaticSize"]
  LOADK R13 K83 ["Footer"]
  SETTABLEKS R13 R12 K68 ["fontKey"]
  LOADB R13 1
  SETTABLEKS R13 R12 K80 ["TextWrapped"]
  LOADK R13 K84 ["TextDefault"]
  SETTABLEKS R13 R12 K69 ["themeKey"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K85 ["description"]
  SETTABLEKS R13 R12 K11 ["Text"]
  GETIMPORT R13 K79 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K71 ["TextXAlignment"]
  LOADK R13 K86 [1.25]
  SETTABLEKS R13 R12 K81 ["LineHeight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K47 ["Description"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K17 ["TextFrame"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K87 [{"Position"}]
  GETIMPORT R9 K32 [UDim2.new]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Position"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["Divider"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R2 1 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K8 ["UIBlox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["t"]
  CALL R3 1 1
  GETIMPORT R6 K11 [script]
  GETTABLEKS R5 R6 K12 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Parent"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K13 ["Dependencies"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K14 ["Divider"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K15 ["ThemedTextLabel"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K16 ["Style"]
  GETTABLEKS R8 R9 K17 ["withStyle"]
  GETTABLEKS R11 R2 K18 ["Core"]
  GETTABLEKS R10 R11 K19 ["ImageSet"]
  GETTABLEKS R9 R10 K20 ["ImageSetLabel"]
  GETTABLEKS R12 R2 K21 ["App"]
  GETTABLEKS R11 R12 K22 ["InputButton"]
  GETTABLEKS R10 R11 K23 ["Checkbox"]
  GETTABLEKS R11 R1 K24 ["PureComponent"]
  LOADK R13 K25 ["BlockPlayerItem"]
  NAMECALL R11 R11 K26 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R3 K27 ["strictInterface"]
  DUPTABLE R13 K37 [{"layoutOrder", "size", "text", "description", "icon", "iconSize", "isDisabled", "isCheckBoxSelected", "onCheckBoxActivated"}]
  GETTABLEKS R14 R3 K38 ["optional"]
  GETTABLEKS R15 R3 K39 ["number"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K28 ["layoutOrder"]
  GETTABLEKS R14 R3 K40 ["UDim2"]
  SETTABLEKS R14 R13 K29 ["size"]
  GETTABLEKS R14 R3 K41 ["string"]
  SETTABLEKS R14 R13 K30 ["text"]
  GETTABLEKS R14 R3 K41 ["string"]
  SETTABLEKS R14 R13 K31 ["description"]
  GETTABLEKS R14 R3 K42 ["union"]
  GETTABLEKS R15 R3 K41 ["string"]
  GETTABLEKS R16 R3 K43 ["table"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K32 ["icon"]
  GETTABLEKS R14 R3 K40 ["UDim2"]
  SETTABLEKS R14 R13 K33 ["iconSize"]
  GETTABLEKS R14 R3 K38 ["optional"]
  GETTABLEKS R15 R3 K44 ["boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K34 ["isDisabled"]
  GETTABLEKS R14 R3 K44 ["boolean"]
  SETTABLEKS R14 R13 K35 ["isCheckBoxSelected"]
  GETTABLEKS R14 R3 K45 ["callback"]
  SETTABLEKS R14 R13 K36 ["onCheckBoxActivated"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K46 ["validateProps"]
  DUPTABLE R12 K47 [{"isDisabled", "isCheckBoxSelected"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K34 ["isDisabled"]
  LOADB R13 0
  SETTABLEKS R13 R12 K35 ["isCheckBoxSelected"]
  SETTABLEKS R12 R11 K48 ["defaultProps"]
  DUPCLOSURE R12 K49 [PROTO_1]
  SETTABLEKS R12 R11 K50 ["init"]
  DUPCLOSURE R12 K51 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R12 R11 K52 ["render"]
  RETURN R11 1
