PROTO_0:
  GETIMPORT R3 K1 [game]
  NAMECALL R1 R0 K2 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"isRooted"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K3 ["isRooted"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K2 [{"isRooted", "show"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isRooted"]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["show"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onAncestryChanged"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["confirmButtonRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K7 ["buttonContainerRef"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"show"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["show"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["onContinueFunc"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["onContinueFunc"]
  CALL R0 0 0
  GETUPVAL R0 1
  LOADB R2 0
  NAMECALL R0 R0 K5 ["SetRobloxGuiFocused"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["InGameMenuModalButtonsSelectionParent"]
  NAMECALL R0 R0 K1 ["RemoveSelectionGroup"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADK R2 K0 ["InGameMenuModalButtonsSelectionParent"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["buttonContainerRef"]
  NAMECALL R3 R3 K3 ["getValue"]
  CALL R3 1 -1
  NAMECALL R0 R0 K4 ["AddSelectionParent"]
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["confirmButtonRef"]
  NAMECALL R1 R1 K3 ["getValue"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Font"]
  GETTABLEKS R2 R3 K1 ["Body"]
  GETTABLEKS R1 R2 K0 ["Font"]
  GETTABLEKS R5 R0 K0 ["Font"]
  GETTABLEKS R4 R5 K1 ["Body"]
  GETTABLEKS R3 R4 K2 ["RelativeSize"]
  GETTABLEKS R5 R0 K0 ["Font"]
  GETTABLEKS R4 R5 K3 ["BaseSize"]
  MUL R2 R3 R4
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["bodyText"]
  GETUPVAL R5 1
  MOVE R7 R3
  MOVE R8 R2
  MOVE R9 R1
  GETIMPORT R10 K7 [Vector2.new]
  LOADN R11 39
  LOADK R12 K8 [∞]
  CALL R10 2 -1
  NAMECALL R5 R5 K9 ["GetTextSize"]
  CALL R5 -1 1
  GETTABLEKS R4 R5 K10 ["Y"]
  GETUPVAL R6 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["subBodyText"]
  MOVE R9 R2
  MOVE R10 R1
  GETIMPORT R11 K7 [Vector2.new]
  LOADN R12 39
  LOADK R13 K8 [∞]
  CALL R11 2 -1
  NAMECALL R6 R6 K9 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R5 R6 K10 ["Y"]
  LOADN R7 20
  MULK R10 R2 K12 [2]
  FASTCALL2 MATH_MAX R4 R10 [+4]
  MOVE R9 R4
  GETIMPORT R8 K15 [math.max]
  CALL R8 2 1
  ADD R6 R7 R8
  LOADN R8 20
  MULK R11 R2 K12 [2]
  FASTCALL2 MATH_MAX R5 R11 [+4]
  MOVE R10 R5
  GETIMPORT R9 K15 [math.max]
  CALL R9 2 1
  ADD R7 R8 R9
  LOADNIL R8
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+6]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["props"]
  GETTABLEKS R9 R10 K17 ["visible"]
  NOT R8 R9
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K19 ["Portal"]
  DUPTABLE R11 K21 [{"target"}]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K20 ["target"]
  DUPTABLE R12 K24 [{"InGameMenuInformationalDialog", "FocusHandler"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K18 ["createElement"]
  LOADK R14 K25 ["ScreenGui"]
  DUPTABLE R15 K31 [{"DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "Enabled", "ZIndexBehavior"}]
  LOADN R16 8
  SETTABLEKS R16 R15 K26 ["DisplayOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K27 ["IgnoreGuiInset"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K32 ["blurBackground"]
  SETTABLEKS R16 R15 K28 ["OnTopOfCoreBlur"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K17 ["visible"]
  JUMPIFNOT R16 [+5]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K33 ["state"]
  GETTABLEKS R16 R17 K34 ["show"]
  SETTABLEKS R16 R15 K29 ["Enabled"]
  GETIMPORT R16 K37 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R16 R15 K30 ["ZIndexBehavior"]
  DUPTABLE R16 K40 [{"Overlay", "DialogMainFrame"}]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K18 ["createElement"]
  LOADK R18 K41 ["TextButton"]
  DUPTABLE R19 K48 [{"AutoButtonColor", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "Text"}]
  LOADB R20 0
  SETTABLEKS R20 R19 K42 ["AutoButtonColor"]
  GETTABLEKS R22 R0 K49 ["Theme"]
  GETTABLEKS R21 R22 K38 ["Overlay"]
  GETTABLEKS R20 R21 K50 ["Color"]
  SETTABLEKS R20 R19 K43 ["BackgroundColor3"]
  GETTABLEKS R22 R0 K49 ["Theme"]
  GETTABLEKS R21 R22 K38 ["Overlay"]
  GETTABLEKS R20 R21 K51 ["Transparency"]
  SETTABLEKS R20 R19 K44 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K45 ["BorderSizePixel"]
  GETIMPORT R20 K53 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K46 ["Size"]
  LOADK R20 K54 [""]
  SETTABLEKS R20 R19 K47 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["Overlay"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K62 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Position", "ScaleType", "Size", "SliceCenter"}]
  GETIMPORT R20 K7 [Vector2.new]
  LOADK R21 K63 [0.5]
  LOADK R22 K63 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K55 ["AnchorPoint"]
  LOADN R20 1
  SETTABLEKS R20 R19 K44 ["BackgroundTransparency"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K64 ["Images"]
  GETTABLEKS R21 R22 K65 ["RoundedRect"]
  GETTABLEKS R20 R21 K56 ["Image"]
  SETTABLEKS R20 R19 K56 ["Image"]
  GETTABLEKS R22 R0 K49 ["Theme"]
  GETTABLEKS R21 R22 K66 ["BackgroundUIDefault"]
  GETTABLEKS R20 R21 K50 ["Color"]
  SETTABLEKS R20 R19 K57 ["ImageColor3"]
  GETTABLEKS R22 R0 K49 ["Theme"]
  GETTABLEKS R21 R22 K66 ["BackgroundUIDefault"]
  GETTABLEKS R20 R21 K51 ["Transparency"]
  SETTABLEKS R20 R19 K58 ["ImageTransparency"]
  GETIMPORT R20 K53 [UDim2.new]
  LOADK R21 K63 [0.5]
  LOADN R22 0
  LOADK R23 K63 [0.5]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K59 ["Position"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K64 ["Images"]
  GETTABLEKS R21 R22 K65 ["RoundedRect"]
  GETTABLEKS R20 R21 K60 ["ScaleType"]
  SETTABLEKS R20 R19 K60 ["ScaleType"]
  GETIMPORT R20 K53 [UDim2.new]
  LOADN R21 0
  LOADN R22 79
  LOADN R23 0
  LOADN R29 49
  ADD R28 R29 R6
  ADD R27 R28 R7
  ADDK R26 R27 K68 [36]
  ADDK R25 R26 K67 [70]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K69 ["iconSize"]
  ADD R24 R25 R26
  CALL R20 4 1
  SETTABLEKS R20 R19 K46 ["Size"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K64 ["Images"]
  GETTABLEKS R21 R22 K65 ["RoundedRect"]
  GETTABLEKS R20 R21 K61 ["SliceCenter"]
  SETTABLEKS R20 R19 K61 ["SliceCenter"]
  DUPTABLE R20 K80 [{"Padding", "Layout", "Icon", "Title", "Divider", "SpaceContainer", "BodyTextContainer", "SubBodyTextContainer", "SpaceContainer2", "ButtonContainer"}]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K81 ["UIPadding"]
  DUPTABLE R23 K86 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K88 [UDim.new]
  LOADN R25 0
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K82 ["PaddingTop"]
  GETIMPORT R24 K88 [UDim.new]
  LOADN R25 0
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K83 ["PaddingBottom"]
  GETIMPORT R24 K88 [UDim.new]
  LOADN R25 0
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K84 ["PaddingLeft"]
  GETIMPORT R24 K88 [UDim.new]
  LOADN R25 0
  LOADN R26 20
  CALL R24 2 1
  SETTABLEKS R24 R23 K85 ["PaddingRight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K70 ["Padding"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K89 ["UIListLayout"]
  DUPTABLE R23 K93 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R24 K95 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K90 ["FillDirection"]
  GETIMPORT R24 K97 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K91 ["HorizontalAlignment"]
  GETIMPORT R24 K99 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K92 ["SortOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K71 ["Layout"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K100 [{"Position", "AnchorPoint", "Image", "Size", "LayoutOrder", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R24 K102 [UDim2.fromScale]
  LOADK R25 K63 [0.5]
  LOADK R26 K63 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K59 ["Position"]
  GETIMPORT R24 K7 [Vector2.new]
  LOADK R25 K63 [0.5]
  LOADK R26 K63 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["AnchorPoint"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K103 ["iconImage"]
  SETTABLEKS R24 R23 K56 ["Image"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 0
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K69 ["iconSize"]
  LOADN R27 0
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K69 ["iconSize"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  LOADN R24 1
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K45 ["BorderSizePixel"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K72 ["Icon"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 8
  DUPTABLE R23 K106 [{"fontKey", "themeKey", "LayoutOrder", "Size", "Text"}]
  LOADK R24 K107 ["Header1"]
  SETTABLEKS R24 R23 K104 ["fontKey"]
  LOADK R24 K108 ["TextEmphasis"]
  SETTABLEKS R24 R23 K105 ["themeKey"]
  LOADN R24 2
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 48
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K109 ["titleText"]
  SETTABLEKS R24 R23 K47 ["Text"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K73 ["Title"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K110 ["Frame"]
  DUPTABLE R23 K111 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETTABLEKS R26 R0 K49 ["Theme"]
  GETTABLEKS R25 R26 K74 ["Divider"]
  GETTABLEKS R24 R25 K50 ["Color"]
  SETTABLEKS R24 R23 K43 ["BackgroundColor3"]
  GETTABLEKS R26 R0 K49 ["Theme"]
  GETTABLEKS R25 R26 K74 ["Divider"]
  GETTABLEKS R24 R25 K51 ["Transparency"]
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 0
  SETTABLEKS R24 R23 K45 ["BorderSizePixel"]
  LOADN R24 3
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADK R25 K112 [0.8]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 1
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K74 ["Divider"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K110 ["Frame"]
  DUPTABLE R23 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 4
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 10
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K75 ["SpaceContainer"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K110 ["Frame"]
  DUPTABLE R23 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 5
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  MOVE R28 R6
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  DUPTABLE R24 K115 [{"BodyText"}]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 8
  DUPTABLE R27 K117 [{"Size", "Text", "TextWrapped"}]
  GETIMPORT R28 K53 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K46 ["Size"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K4 ["bodyText"]
  SETTABLEKS R28 R27 K47 ["Text"]
  LOADB R28 1
  SETTABLEKS R28 R27 K116 ["TextWrapped"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K114 ["BodyText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K76 ["BodyTextContainer"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K110 ["Frame"]
  DUPTABLE R23 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 6
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  MOVE R28 R7
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  DUPTABLE R24 K115 [{"BodyText"}]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 8
  DUPTABLE R27 K117 [{"Size", "Text", "TextWrapped"}]
  GETIMPORT R28 K53 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K46 ["Size"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K11 ["subBodyText"]
  SETTABLEKS R28 R27 K47 ["Text"]
  LOADB R28 1
  SETTABLEKS R28 R27 K116 ["TextWrapped"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K114 ["BodyText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K77 ["SubBodyTextContainer"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K110 ["Frame"]
  DUPTABLE R23 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 7
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 10
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K78 ["SpaceContainer2"]
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K18 ["createElement"]
  LOADK R22 K110 ["Frame"]
  NEWTABLE R23 8 0
  LOADN R24 1
  SETTABLEKS R24 R23 K44 ["BackgroundTransparency"]
  LOADN R24 8
  SETTABLEKS R24 R23 K98 ["LayoutOrder"]
  GETIMPORT R24 K53 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 36
  CALL R24 4 1
  SETTABLEKS R24 R23 K46 ["Size"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K118 ["Ref"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K119 ["buttonContainerRef"]
  SETTABLE R25 R23 R24
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K120 ["Event"]
  GETTABLEKS R24 R25 K121 ["AncestryChanged"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K122 ["onAncestryChanged"]
  SETTABLE R25 R23 R24
  DUPTABLE R24 K124 [{"Layout", "ConfirmButton"}]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K18 ["createElement"]
  LOADK R26 K89 ["UIListLayout"]
  DUPTABLE R27 K126 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R28 K128 [Enum.FillDirection.Horizontal]
  SETTABLEKS R28 R27 K90 ["FillDirection"]
  GETIMPORT R28 K97 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R28 R27 K91 ["HorizontalAlignment"]
  GETIMPORT R28 K88 [UDim.new]
  LOADN R29 0
  LOADN R30 20
  CALL R28 2 1
  SETTABLEKS R28 R27 K70 ["Padding"]
  GETIMPORT R28 K99 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R28 R27 K92 ["SortOrder"]
  GETIMPORT R28 K129 [Enum.VerticalAlignment.Center]
  SETTABLEKS R28 R27 K125 ["VerticalAlignment"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K71 ["Layout"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R26 9
  NEWTABLE R27 8 0
  GETUPVAL R29 10
  GETTABLEKS R28 R29 K130 ["PrimarySystem"]
  SETTABLEKS R28 R27 K131 ["buttonType"]
  LOADN R28 1
  SETTABLEKS R28 R27 K132 ["layoutOrder"]
  GETIMPORT R28 K53 [UDim2.new]
  LOADN R29 1
  LOADN R30 251
  LOADN R31 1
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K133 ["size"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K134 ["confirmText"]
  SETTABLEKS R28 R27 K135 ["text"]
  NEWCLOSURE R28 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U11
  SETTABLEKS R28 R27 K136 ["onActivated"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K118 ["Ref"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K137 ["confirmButtonRef"]
  SETTABLE R29 R27 R28
  CALL R25 2 1
  SETTABLEKS R25 R24 K123 ["ConfirmButton"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K79 ["ButtonContainer"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K39 ["DialogMainFrame"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K22 ["InGameMenuInformationalDialog"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 12
  DUPTABLE R15 K141 [{"isFocused", "shouldForgetPreviousSelection", "didFocus"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K33 ["state"]
  GETTABLEKS R16 R17 K142 ["isRooted"]
  JUMPIFNOT R16 [+20]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K16 ["props"]
  GETTABLEKS R16 R17 K17 ["visible"]
  JUMPIFNOT R16 [+14]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K16 ["props"]
  GETTABLEKS R17 R18 K143 ["inputType"]
  GETUPVAL R20 13
  GETTABLEKS R19 R20 K144 ["InputType"]
  GETTABLEKS R18 R19 K145 ["Gamepad"]
  JUMPIFEQ R17 R18 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K138 ["isFocused"]
  SETTABLEKS R8 R15 K139 ["shouldForgetPreviousSelection"]
  NEWCLOSURE R16 P1
  CAPTURE UPVAL U14
  CAPTURE UPVAL U3
  SETTABLEKS R16 R15 K140 ["didFocus"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["FocusHandler"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CALL R2 1 -1
  RETURN R2 -1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["blurBackground"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["visible"]
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["SetRobloxGuiFocused"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K5 ["onConfirm"]
  CALL R3 0 0
  RETURN R0 0

PROTO_8:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["bindReturnToConfirm"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R2 0
  LOADK R4 K2 ["InGameMenuModalConfirm"]
  MOVE R5 R1
  LOADB R6 0
  GETIMPORT R7 K6 [Enum.KeyCode.Return]
  NAMECALL R2 R2 K7 ["BindCoreAction"]
  CALL R2 5 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  LOADK R3 K0 ["InGameMenuModalConfirm"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  NAMECALL R1 R0 K0 ["updateBlur"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["visible"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K3 ["bindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["updateBlur"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["visible"]
  JUMPIFNOT R1 [+4]
  NAMECALL R1 R0 K3 ["bindActions"]
  CALL R1 1 0
  RETURN R0 0
  NAMECALL R1 R0 K4 ["unbindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["blurBackground"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K2 ["SetRobloxGuiFocused"]
  CALL R1 2 0
  NAMECALL R1 R0 K3 ["unbindActions"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["TextService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["ContextActionService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K8 ["GuiService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K11 ["Packages"]
  GETTABLEKS R7 R8 K12 ["InGameMenuDependencies"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K13 ["Roact"]
  GETTABLEKS R8 R6 K14 ["UIBlox"]
  GETTABLEKS R9 R6 K15 ["t"]
  GETTABLEKS R12 R8 K16 ["App"]
  GETTABLEKS R11 R12 K17 ["Button"]
  GETTABLEKS R10 R11 K17 ["Button"]
  GETTABLEKS R14 R8 K16 ["App"]
  GETTABLEKS R13 R14 K17 ["Button"]
  GETTABLEKS R12 R13 K18 ["Enum"]
  GETTABLEKS R11 R12 K19 ["ButtonType"]
  GETTABLEKS R14 R8 K20 ["Core"]
  GETTABLEKS R13 R14 K21 ["Style"]
  GETTABLEKS R12 R13 K22 ["withStyle"]
  GETIMPORT R15 K24 [script]
  GETTABLEKS R14 R15 K25 ["Parent"]
  GETTABLEKS R13 R14 K25 ["Parent"]
  GETTABLEKS R14 R13 K26 ["Flags"]
  GETIMPORT R15 K10 [require]
  GETTABLEKS R16 R14 K27 ["GetFFlagIGMGamepadSelectionHistory"]
  CALL R15 1 1
  GETIMPORT R16 K10 [require]
  GETTABLEKS R18 R13 K28 ["Resources"]
  GETTABLEKS R17 R18 K29 ["Constants"]
  CALL R16 1 1
  GETIMPORT R17 K10 [require]
  GETTABLEKS R19 R13 K28 ["Resources"]
  GETTABLEKS R18 R19 K30 ["Assets"]
  CALL R17 1 1
  GETIMPORT R18 K10 [require]
  GETIMPORT R21 K24 [script]
  GETTABLEKS R20 R21 K25 ["Parent"]
  GETTABLEKS R19 R20 K31 ["ThemedTextLabel"]
  CALL R18 1 1
  GETTABLEKS R21 R8 K20 ["Core"]
  GETTABLEKS R20 R21 K32 ["ImageSet"]
  GETTABLEKS R19 R20 K33 ["ImageSetLabel"]
  GETIMPORT R20 K10 [require]
  GETIMPORT R24 K24 [script]
  GETTABLEKS R23 R24 K25 ["Parent"]
  GETTABLEKS R22 R23 K34 ["Connection"]
  GETTABLEKS R21 R22 K35 ["FocusHandler"]
  CALL R20 1 1
  GETTABLEKS R21 R7 K36 ["PureComponent"]
  LOADK R23 K37 ["InformationalDialog"]
  NAMECALL R21 R21 K38 ["extend"]
  CALL R21 2 1
  GETTABLEKS R22 R9 K39 ["strictInterface"]
  DUPTABLE R23 K51 [{"bodyText", "confirmText", "titleText", "subBodyText", "iconImage", "iconSize", "onContinueFunc", "bindReturnToConfirm", "blurBackground", "visible", "inputType"}]
  GETTABLEKS R24 R9 K52 ["string"]
  SETTABLEKS R24 R23 K40 ["bodyText"]
  GETTABLEKS R24 R9 K52 ["string"]
  SETTABLEKS R24 R23 K41 ["confirmText"]
  GETTABLEKS R24 R9 K52 ["string"]
  SETTABLEKS R24 R23 K42 ["titleText"]
  GETTABLEKS R24 R9 K53 ["optional"]
  GETTABLEKS R25 R9 K52 ["string"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K43 ["subBodyText"]
  GETTABLEKS R24 R9 K53 ["optional"]
  GETTABLEKS R25 R9 K54 ["union"]
  GETTABLEKS R26 R9 K55 ["table"]
  GETTABLEKS R27 R9 K52 ["string"]
  CALL R25 2 -1
  CALL R24 -1 1
  SETTABLEKS R24 R23 K44 ["iconImage"]
  GETTABLEKS R24 R9 K56 ["number"]
  SETTABLEKS R24 R23 K45 ["iconSize"]
  GETTABLEKS R24 R9 K53 ["optional"]
  GETTABLEKS R25 R9 K57 ["callback"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K46 ["onContinueFunc"]
  GETTABLEKS R24 R9 K58 ["boolean"]
  SETTABLEKS R24 R23 K47 ["bindReturnToConfirm"]
  GETTABLEKS R24 R9 K58 ["boolean"]
  SETTABLEKS R24 R23 K48 ["blurBackground"]
  GETTABLEKS R24 R9 K58 ["boolean"]
  SETTABLEKS R24 R23 K49 ["visible"]
  GETTABLEKS R24 R9 K53 ["optional"]
  GETTABLEKS R25 R9 K52 ["string"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K50 ["inputType"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K59 ["validateProps"]
  DUPTABLE R22 K60 [{"subBodyText", "blurBackground", "iconImage", "iconSize"}]
  LOADNIL R23
  SETTABLEKS R23 R22 K43 ["subBodyText"]
  LOADB R23 0
  SETTABLEKS R23 R22 K48 ["blurBackground"]
  LOADNIL R23
  SETTABLEKS R23 R22 K44 ["iconImage"]
  LOADN R23 64
  SETTABLEKS R23 R22 K45 ["iconSize"]
  SETTABLEKS R22 R21 K61 ["defaultProps"]
  DUPCLOSURE R22 K62 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K63 ["init"]
  DUPCLOSURE R22 K64 [PROTO_5]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R20
  CAPTURE VAL R16
  CAPTURE VAL R5
  SETTABLEKS R22 R21 K65 ["render"]
  DUPCLOSURE R22 K66 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K67 ["updateBlur"]
  DUPCLOSURE R22 K68 [PROTO_8]
  CAPTURE VAL R4
  SETTABLEKS R22 R21 K69 ["bindActions"]
  DUPCLOSURE R22 K70 [PROTO_9]
  CAPTURE VAL R4
  SETTABLEKS R22 R21 K71 ["unbindActions"]
  DUPCLOSURE R22 K72 [PROTO_10]
  SETTABLEKS R22 R21 K73 ["didMount"]
  DUPCLOSURE R22 K74 [PROTO_11]
  SETTABLEKS R22 R21 K75 ["didUpdate"]
  DUPCLOSURE R22 K76 [PROTO_12]
  CAPTURE VAL R1
  SETTABLEKS R22 R21 K77 ["willUnmount"]
  RETURN R21 1