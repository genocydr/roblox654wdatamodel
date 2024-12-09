PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 -1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETTABLEKS R6 R0 K3 ["promptStyle"]
  GETTABLEKS R5 R6 K4 ["Font"]
  GETTABLEKS R4 R5 K5 ["Header1"]
  GETTABLEKS R3 R4 K4 ["Font"]
  GETTABLEKS R8 R0 K3 ["promptStyle"]
  GETTABLEKS R7 R8 K4 ["Font"]
  GETTABLEKS R6 R7 K5 ["Header1"]
  GETTABLEKS R5 R6 K6 ["RelativeSize"]
  GETTABLEKS R8 R0 K3 ["promptStyle"]
  GETTABLEKS R7 R8 K4 ["Font"]
  GETTABLEKS R6 R7 K7 ["BaseSize"]
  MUL R4 R5 R6
  GETUPVAL R6 2
  GETTABLEKS R8 R0 K8 ["titleText"]
  MOVE R9 R4
  MOVE R10 R3
  GETIMPORT R11 K11 [Vector2.new]
  LOADN R12 69
  LOADK R13 K12 [∞]
  CALL R11 2 -1
  NAMECALL R6 R6 K13 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R5 R6 K14 ["Y"]
  LOADN R7 20
  ADD R6 R7 R5
  GETTABLEKS R10 R0 K3 ["promptStyle"]
  GETTABLEKS R9 R10 K4 ["Font"]
  GETTABLEKS R8 R9 K15 ["Body"]
  GETTABLEKS R7 R8 K4 ["Font"]
  GETTABLEKS R12 R0 K3 ["promptStyle"]
  GETTABLEKS R11 R12 K4 ["Font"]
  GETTABLEKS R10 R11 K15 ["Body"]
  GETTABLEKS R9 R10 K6 ["RelativeSize"]
  GETTABLEKS R12 R0 K3 ["promptStyle"]
  GETTABLEKS R11 R12 K4 ["Font"]
  GETTABLEKS R10 R11 K7 ["BaseSize"]
  MUL R8 R9 R10
  GETUPVAL R10 2
  GETTABLEKS R12 R0 K16 ["bodyText"]
  MOVE R13 R8
  MOVE R14 R7
  GETIMPORT R15 K11 [Vector2.new]
  LOADN R16 69
  LOADK R17 K12 [∞]
  CALL R15 2 -1
  NAMECALL R10 R10 K13 ["GetTextSize"]
  CALL R10 -1 1
  GETTABLEKS R9 R10 K14 ["Y"]
  LOADN R11 20
  ADD R10 R11 R9
  GETTABLEKS R14 R0 K3 ["promptStyle"]
  GETTABLEKS R13 R14 K4 ["Font"]
  GETTABLEKS R12 R13 K17 ["CaptionHeader"]
  GETTABLEKS R11 R12 K4 ["Font"]
  GETTABLEKS R16 R0 K3 ["promptStyle"]
  GETTABLEKS R15 R16 K4 ["Font"]
  GETTABLEKS R14 R15 K17 ["CaptionHeader"]
  GETTABLEKS R13 R14 K6 ["RelativeSize"]
  GETTABLEKS R16 R0 K3 ["promptStyle"]
  GETTABLEKS R15 R16 K4 ["Font"]
  GETTABLEKS R14 R15 K7 ["BaseSize"]
  MUL R12 R13 R14
  GETUPVAL R14 2
  GETUPVAL R16 3
  MOVE R17 R12
  MOVE R18 R11
  GETIMPORT R19 K11 [Vector2.new]
  LOADN R20 69
  LOADK R21 K12 [∞]
  CALL R19 2 -1
  NAMECALL R14 R14 K13 ["GetTextSize"]
  CALL R14 -1 1
  GETTABLEKS R13 R14 K14 ["Y"]
  LOADN R15 20
  ADD R14 R15 R13
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K18 ["createElement"]
  LOADK R16 K19 ["ScreenGui"]
  DUPTABLE R17 K25 [{"DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "Enabled", "ZIndexBehavior"}]
  LOADN R18 8
  SETTABLEKS R18 R17 K20 ["DisplayOrder"]
  LOADB R18 1
  SETTABLEKS R18 R17 K21 ["IgnoreGuiInset"]
  LOADB R18 1
  SETTABLEKS R18 R17 K22 ["OnTopOfCoreBlur"]
  GETTABLEKS R18 R0 K26 ["showPrompt"]
  SETTABLEKS R18 R17 K23 ["Enabled"]
  GETIMPORT R18 K29 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R18 R17 K24 ["ZIndexBehavior"]
  DUPTABLE R18 K32 [{"Overlay", "DialogMainFrame"}]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K18 ["createElement"]
  LOADK R20 K33 ["TextButton"]
  DUPTABLE R21 K40 [{"AutoButtonColor", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "Text"}]
  LOADB R22 0
  SETTABLEKS R22 R21 K34 ["AutoButtonColor"]
  GETTABLEKS R25 R0 K3 ["promptStyle"]
  GETTABLEKS R24 R25 K41 ["Theme"]
  GETTABLEKS R23 R24 K30 ["Overlay"]
  GETTABLEKS R22 R23 K42 ["Color"]
  SETTABLEKS R22 R21 K35 ["BackgroundColor3"]
  GETTABLEKS R25 R0 K3 ["promptStyle"]
  GETTABLEKS R24 R25 K41 ["Theme"]
  GETTABLEKS R23 R24 K30 ["Overlay"]
  GETTABLEKS R22 R23 K43 ["Transparency"]
  SETTABLEKS R22 R21 K36 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K37 ["BorderSizePixel"]
  GETIMPORT R22 K45 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K38 ["Size"]
  LOADK R22 K46 [""]
  SETTABLEKS R22 R21 K39 ["Text"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["Overlay"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K18 ["createElement"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K47 ["Core"]
  GETTABLEKS R21 R22 K48 ["ImageSet"]
  GETTABLEKS R20 R21 K49 ["ImageSetLabel"]
  DUPTABLE R21 K58 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Position", "ScaleType", "Size", "AutomaticSize", "SliceCenter"}]
  GETIMPORT R22 K11 [Vector2.new]
  LOADK R23 K59 [0.5]
  LOADK R24 K59 [0.5]
  CALL R22 2 1
  SETTABLEKS R22 R21 K50 ["AnchorPoint"]
  LOADN R22 1
  SETTABLEKS R22 R21 K36 ["BackgroundTransparency"]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K60 ["Images"]
  GETTABLEKS R23 R24 K61 ["RoundedRect"]
  GETTABLEKS R22 R23 K51 ["Image"]
  SETTABLEKS R22 R21 K51 ["Image"]
  GETTABLEKS R25 R0 K3 ["promptStyle"]
  GETTABLEKS R24 R25 K41 ["Theme"]
  GETTABLEKS R23 R24 K62 ["BackgroundUIDefault"]
  GETTABLEKS R22 R23 K42 ["Color"]
  SETTABLEKS R22 R21 K52 ["ImageColor3"]
  GETTABLEKS R25 R0 K3 ["promptStyle"]
  GETTABLEKS R24 R25 K41 ["Theme"]
  GETTABLEKS R23 R24 K62 ["BackgroundUIDefault"]
  GETTABLEKS R22 R23 K43 ["Transparency"]
  SETTABLEKS R22 R21 K53 ["ImageTransparency"]
  GETIMPORT R22 K45 [UDim2.new]
  LOADK R23 K59 [0.5]
  LOADN R24 0
  LOADK R25 K59 [0.5]
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K54 ["Position"]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K60 ["Images"]
  GETTABLEKS R23 R24 K61 ["RoundedRect"]
  GETTABLEKS R22 R23 K55 ["ScaleType"]
  SETTABLEKS R22 R21 K55 ["ScaleType"]
  GETIMPORT R22 K45 [UDim2.new]
  LOADN R23 0
  LOADN R24 109
  LOADN R25 0
  ADDK R31 R6 K66 [1]
  ADD R30 R31 R10
  ADDK R29 R30 K65 [14]
  ADDK R28 R29 K64 [36]
  ADDK R27 R28 K63 [60]
  ADD R26 R27 R14
  CALL R22 4 1
  SETTABLEKS R22 R21 K38 ["Size"]
  GETIMPORT R22 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R22 R21 K56 ["AutomaticSize"]
  GETUPVAL R25 6
  GETTABLEKS R24 R25 K60 ["Images"]
  GETTABLEKS R23 R24 K61 ["RoundedRect"]
  GETTABLEKS R22 R23 K57 ["SliceCenter"]
  SETTABLEKS R22 R21 K57 ["SliceCenter"]
  DUPTABLE R22 K77 [{"Padding", "Layout", "TitleTextContainer", "Divider", "DividerSpaceContainer", "BodyTextContainer", "InfoTextContainer", "SpaceContainer", "ButtonContainer"}]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K78 ["UIPadding"]
  DUPTABLE R25 K83 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R26 K85 [UDim.new]
  LOADN R27 0
  LOADN R28 10
  CALL R26 2 1
  SETTABLEKS R26 R25 K79 ["PaddingTop"]
  GETIMPORT R26 K85 [UDim.new]
  LOADN R27 0
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K80 ["PaddingBottom"]
  GETIMPORT R26 K85 [UDim.new]
  LOADN R27 0
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K81 ["PaddingLeft"]
  GETIMPORT R26 K85 [UDim.new]
  LOADN R27 0
  LOADN R28 20
  CALL R26 2 1
  SETTABLEKS R26 R25 K82 ["PaddingRight"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K68 ["Padding"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K86 ["UIListLayout"]
  DUPTABLE R25 K90 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R26 K92 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K87 ["FillDirection"]
  GETIMPORT R26 K94 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R26 R25 K88 ["HorizontalAlignment"]
  GETIMPORT R26 K96 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K89 ["SortOrder"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K69 ["Layout"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K98 [{"BackgroundTransparency", "LayoutOrder", "Size", "AutomaticSize"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 1
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  MOVE R30 R6
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  GETIMPORT R26 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K56 ["AutomaticSize"]
  DUPTABLE R26 K100 [{"TitleText"}]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K101 ["App"]
  GETTABLEKS R29 R30 K39 ["Text"]
  GETTABLEKS R28 R29 K102 ["StyledTextLabel"]
  DUPTABLE R29 K108 [{"fontStyle", "colorStyle", "textXAlignment", "size", "text"}]
  GETTABLEKS R32 R0 K3 ["promptStyle"]
  GETTABLEKS R31 R32 K4 ["Font"]
  GETTABLEKS R30 R31 K5 ["Header1"]
  SETTABLEKS R30 R29 K103 ["fontStyle"]
  GETTABLEKS R32 R0 K3 ["promptStyle"]
  GETTABLEKS R31 R32 K41 ["Theme"]
  GETTABLEKS R30 R31 K109 ["SystemPrimaryDefault"]
  SETTABLEKS R30 R29 K104 ["colorStyle"]
  GETIMPORT R30 K111 [Enum.TextXAlignment.Center]
  SETTABLEKS R30 R29 K105 ["textXAlignment"]
  GETIMPORT R30 K45 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K106 ["size"]
  GETTABLEKS R30 R0 K8 ["titleText"]
  SETTABLEKS R30 R29 K107 ["text"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K99 ["TitleText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K70 ["TitleTextContainer"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K112 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETTABLEKS R29 R0 K3 ["promptStyle"]
  GETTABLEKS R28 R29 K41 ["Theme"]
  GETTABLEKS R27 R28 K71 ["Divider"]
  GETTABLEKS R26 R27 K42 ["Color"]
  SETTABLEKS R26 R25 K35 ["BackgroundColor3"]
  GETTABLEKS R29 R0 K3 ["promptStyle"]
  GETTABLEKS R28 R29 K41 ["Theme"]
  GETTABLEKS R27 R28 K71 ["Divider"]
  GETTABLEKS R26 R27 K43 ["Transparency"]
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K37 ["BorderSizePixel"]
  LOADN R26 2
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 1
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K71 ["Divider"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 3
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 7
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["DividerSpaceContainer"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 4
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  MOVE R30 R10
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  DUPTABLE R26 K115 [{"BodyText"}]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R31 5
  GETTABLEKS R30 R31 K101 ["App"]
  GETTABLEKS R29 R30 K39 ["Text"]
  GETTABLEKS R28 R29 K102 ["StyledTextLabel"]
  DUPTABLE R29 K117 [{"fontStyle", "colorStyle", "textXAlignment", "size", "text", "lineHeight"}]
  GETTABLEKS R32 R0 K3 ["promptStyle"]
  GETTABLEKS R31 R32 K4 ["Font"]
  GETTABLEKS R30 R31 K15 ["Body"]
  SETTABLEKS R30 R29 K103 ["fontStyle"]
  GETTABLEKS R32 R0 K3 ["promptStyle"]
  GETTABLEKS R31 R32 K41 ["Theme"]
  GETTABLEKS R30 R31 K118 ["TextDefault"]
  SETTABLEKS R30 R29 K104 ["colorStyle"]
  GETIMPORT R30 K120 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K105 ["textXAlignment"]
  GETIMPORT R30 K45 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  LOADN R34 0
  CALL R30 4 1
  SETTABLEKS R30 R29 K106 ["size"]
  GETTABLEKS R30 R0 K16 ["bodyText"]
  SETTABLEKS R30 R29 K107 ["text"]
  LOADK R30 K121 [1.2]
  SETTABLEKS R30 R29 K116 ["lineHeight"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K114 ["BodyText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K73 ["BodyTextContainer"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 5
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  ADDK R30 R14 K122 [20]
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  DUPTABLE R26 K125 [{"Padding", "Layout", "Checkbox", "TextContainer"}]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  LOADK R28 K78 ["UIPadding"]
  DUPTABLE R29 K126 [{"PaddingTop"}]
  GETIMPORT R30 K85 [UDim.new]
  LOADN R31 0
  LOADN R32 15
  CALL R30 2 1
  SETTABLEKS R30 R29 K79 ["PaddingTop"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K68 ["Padding"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  LOADK R28 K86 ["UIListLayout"]
  DUPTABLE R29 K128 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R30 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K87 ["FillDirection"]
  GETIMPORT R30 K96 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K89 ["SortOrder"]
  GETIMPORT R30 K132 [Enum.VerticalAlignment.Top]
  SETTABLEKS R30 R29 K127 ["VerticalAlignment"]
  GETIMPORT R30 K133 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R30 R29 K88 ["HorizontalAlignment"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K69 ["Layout"]
  GETTABLEKS R27 R0 K134 ["showCheckbox"]
  JUMPIFNOT R27 [+21]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R28 7
  DUPTABLE R29 K139 [{"text", "isSelected", "isDisabled", "onActivated", "layoutOrder"}]
  LOADK R30 K46 [""]
  SETTABLEKS R30 R29 K107 ["text"]
  SETTABLEKS R1 R29 K135 ["isSelected"]
  LOADB R30 0
  SETTABLEKS R30 R29 K136 ["isDisabled"]
  NEWCLOSURE R30 P0
  CAPTURE VAL R2
  SETTABLEKS R30 R29 K137 ["onActivated"]
  LOADN R30 1
  SETTABLEKS R30 R29 K138 ["layoutOrder"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K123 ["Checkbox"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  LOADK R28 K97 ["Frame"]
  DUPTABLE R29 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K36 ["BackgroundTransparency"]
  LOADN R30 2
  SETTABLEKS R30 R29 K95 ["LayoutOrder"]
  GETIMPORT R30 K45 [UDim2.new]
  GETTABLEKS R32 R0 K134 ["showCheckbox"]
  JUMPIFNOT R32 [+2]
  LOADK R31 K140 [0.95]
  JUMP [+1]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  MOVE R34 R14
  CALL R30 4 1
  SETTABLEKS R30 R29 K38 ["Size"]
  DUPTABLE R30 K142 [{"Padding", "InfoText"}]
  GETTABLEKS R31 R0 K134 ["showCheckbox"]
  JUMPIFNOT R31 [+13]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K18 ["createElement"]
  LOADK R32 K78 ["UIPadding"]
  DUPTABLE R33 K143 [{"PaddingLeft"}]
  GETIMPORT R34 K85 [UDim.new]
  LOADN R35 0
  LOADN R36 10
  CALL R34 2 1
  SETTABLEKS R34 R33 K81 ["PaddingLeft"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K68 ["Padding"]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K18 ["createElement"]
  GETUPVAL R35 5
  GETTABLEKS R34 R35 K101 ["App"]
  GETTABLEKS R33 R34 K39 ["Text"]
  GETTABLEKS R32 R33 K102 ["StyledTextLabel"]
  DUPTABLE R33 K145 [{"fontStyle", "colorStyle", "textXAlignment", "textYAlignment", "size", "text", "lineHeight"}]
  GETTABLEKS R36 R0 K3 ["promptStyle"]
  GETTABLEKS R35 R36 K4 ["Font"]
  GETTABLEKS R34 R35 K17 ["CaptionHeader"]
  SETTABLEKS R34 R33 K103 ["fontStyle"]
  GETTABLEKS R36 R0 K3 ["promptStyle"]
  GETTABLEKS R35 R36 K41 ["Theme"]
  GETTABLEKS R34 R35 K118 ["TextDefault"]
  SETTABLEKS R34 R33 K104 ["colorStyle"]
  GETIMPORT R34 K120 [Enum.TextXAlignment.Left]
  SETTABLEKS R34 R33 K105 ["textXAlignment"]
  GETIMPORT R34 K147 [Enum.TextYAlignment.Top]
  SETTABLEKS R34 R33 K144 ["textYAlignment"]
  GETIMPORT R34 K45 [UDim2.new]
  LOADN R35 1
  LOADN R36 0
  LOADN R37 1
  LOADN R38 0
  CALL R34 4 1
  SETTABLEKS R34 R33 K106 ["size"]
  GETUPVAL R34 3
  SETTABLEKS R34 R33 K107 ["text"]
  LOADK R34 K148 [1.15]
  SETTABLEKS R34 R33 K116 ["lineHeight"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K141 ["InfoText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K124 ["TextContainer"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K74 ["InfoTextContainer"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K113 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 6
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 10
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K75 ["SpaceContainer"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K18 ["createElement"]
  LOADK R24 K97 ["Frame"]
  DUPTABLE R25 K98 [{"BackgroundTransparency", "LayoutOrder", "Size", "AutomaticSize"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K36 ["BackgroundTransparency"]
  LOADN R26 7
  SETTABLEKS R26 R25 K95 ["LayoutOrder"]
  GETIMPORT R26 K45 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  LOADN R30 36
  CALL R26 4 1
  SETTABLEKS R26 R25 K38 ["Size"]
  GETIMPORT R26 K67 [Enum.AutomaticSize.Y]
  SETTABLEKS R26 R25 K56 ["AutomaticSize"]
  DUPTABLE R26 K151 [{"Layout", "SecondaryButton", "ConfirmButton"}]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  LOADK R28 K86 ["UIListLayout"]
  DUPTABLE R29 K152 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R30 K130 [Enum.FillDirection.Horizontal]
  SETTABLEKS R30 R29 K87 ["FillDirection"]
  GETIMPORT R30 K94 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R30 R29 K88 ["HorizontalAlignment"]
  GETIMPORT R30 K85 [UDim.new]
  LOADN R31 0
  LOADN R32 12
  CALL R30 2 1
  SETTABLEKS R30 R29 K68 ["Padding"]
  GETIMPORT R30 K96 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R30 R29 K89 ["SortOrder"]
  GETIMPORT R30 K153 [Enum.VerticalAlignment.Center]
  SETTABLEKS R30 R29 K127 ["VerticalAlignment"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K69 ["Layout"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R28 8
  DUPTABLE R29 K155 [{"buttonType", "layoutOrder", "size", "text", "onActivated"}]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K156 ["Secondary"]
  SETTABLEKS R30 R29 K154 ["buttonType"]
  LOADN R30 1
  SETTABLEKS R30 R29 K138 ["layoutOrder"]
  GETIMPORT R30 K45 [UDim2.new]
  LOADK R31 K59 [0.5]
  LOADN R32 251
  LOADN R33 0
  LOADN R34 36
  CALL R30 4 1
  SETTABLEKS R30 R29 K106 ["size"]
  GETUPVAL R30 10
  SETTABLEKS R30 R29 K107 ["text"]
  GETTABLEKS R30 R0 K157 ["handleSecondaryActivated"]
  SETTABLEKS R30 R29 K137 ["onActivated"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K149 ["SecondaryButton"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R28 8
  DUPTABLE R29 K158 [{"buttonType", "layoutOrder", "size", "text", "isDisabled", "onActivated"}]
  GETUPVAL R31 9
  GETTABLEKS R30 R31 K159 ["PrimarySystem"]
  SETTABLEKS R30 R29 K154 ["buttonType"]
  LOADN R30 2
  SETTABLEKS R30 R29 K138 ["layoutOrder"]
  GETIMPORT R30 K45 [UDim2.new]
  LOADK R31 K59 [0.5]
  LOADN R32 251
  LOADN R33 0
  LOADN R34 36
  CALL R30 4 1
  SETTABLEKS R30 R29 K106 ["size"]
  GETUPVAL R30 11
  SETTABLEKS R30 R29 K107 ["text"]
  GETTABLEKS R30 R0 K134 ["showCheckbox"]
  JUMPIFNOT R30 [+1]
  NOT R30 R1
  SETTABLEKS R30 R29 K136 ["isDisabled"]
  GETTABLEKS R30 R0 K160 ["handlePrimaryActivated"]
  SETTABLEKS R30 R29 K137 ["onActivated"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K150 ["ConfirmButton"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K76 ["ButtonContainer"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K31 ["DialogMainFrame"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TextService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K6 ["RobloxGui"]
  NAMECALL R3 R2 K7 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K12 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K13 ["t"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K14 ["Workspace"]
  GETTABLEKS R9 R10 K10 ["Packages"]
  GETTABLEKS R8 R9 K15 ["ArgCheck"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K10 ["Packages"]
  GETTABLEKS R9 R10 K16 ["UIBlox"]
  CALL R8 1 1
  GETTABLEKS R11 R8 K17 ["App"]
  GETTABLEKS R10 R11 K18 ["Button"]
  GETTABLEKS R9 R10 K18 ["Button"]
  GETTABLEKS R13 R8 K17 ["App"]
  GETTABLEKS R12 R13 K18 ["Button"]
  GETTABLEKS R11 R12 K19 ["Enum"]
  GETTABLEKS R10 R11 K20 ["ButtonType"]
  GETTABLEKS R13 R8 K17 ["App"]
  GETTABLEKS R12 R13 K21 ["InputButton"]
  GETTABLEKS R11 R12 K22 ["Checkbox"]
  GETTABLEKS R14 R8 K17 ["App"]
  GETTABLEKS R13 R14 K23 ["ImageSet"]
  GETTABLEKS R12 R13 K24 ["Images"]
  GETIMPORT R13 K9 [require]
  GETIMPORT R20 K26 [script]
  GETTABLEKS R19 R20 K27 ["Parent"]
  GETTABLEKS R18 R19 K27 ["Parent"]
  GETTABLEKS R17 R18 K27 ["Parent"]
  GETTABLEKS R16 R17 K28 ["InGameMenu"]
  GETTABLEKS R15 R16 K29 ["Resources"]
  GETTABLEKS R14 R15 K30 ["Assets"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R3 K31 ["Modules"]
  GETTABLEKS R15 R16 K32 ["RobloxTranslator"]
  CALL R14 1 1
  LOADK R17 K33 ["Feature.SettingsHub.Action.TurnOn"]
  NAMECALL R15 R14 K34 ["FormatByKey"]
  CALL R15 2 1
  LOADK R18 K35 ["Feature.SettingsHub.Action.NotNow"]
  NAMECALL R16 R14 K34 ["FormatByKey"]
  CALL R16 2 1
  LOADK R19 K36 ["Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn"]
  NAMECALL R17 R14 K34 ["FormatByKey"]
  CALL R17 2 1
  GETTABLEKS R18 R7 K37 ["wrap"]
  GETTABLEKS R19 R6 K38 ["strictInterface"]
  DUPTABLE R20 K47 [{"titleText", "bodyText", "handlePrimaryActivated", "handleSecondaryActivated", "Analytics", "showCheckbox", "promptStyle", "showPrompt"}]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K49 ["string"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K39 ["titleText"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K49 ["string"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K40 ["bodyText"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K50 ["callback"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K41 ["handlePrimaryActivated"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K50 ["callback"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K42 ["handleSecondaryActivated"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K51 ["table"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K43 ["Analytics"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K52 ["boolean"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K44 ["showCheckbox"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K51 ["table"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K45 ["promptStyle"]
  GETTABLEKS R21 R6 K48 ["optional"]
  GETTABLEKS R22 R6 K52 ["boolean"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K46 ["showPrompt"]
  CALL R19 1 -1
  CALL R18 -1 1
  DUPCLOSURE R19 K53 [PROTO_1]
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R16
  CAPTURE VAL R15
  RETURN R19 1
