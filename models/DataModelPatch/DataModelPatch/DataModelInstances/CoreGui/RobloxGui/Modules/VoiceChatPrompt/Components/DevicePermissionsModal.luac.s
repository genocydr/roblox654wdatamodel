PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 -1 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K2 ["settingsAppAvailable"]
  GETTABLEKS R3 R0 K3 ["UserInputService"]
  CALL R1 2 1
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K3 ["UserInputService"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K4 ["promptStyle"]
  GETTABLEKS R5 R6 K5 ["Font"]
  GETTABLEKS R4 R5 K6 ["Header1"]
  GETTABLEKS R3 R4 K5 ["Font"]
  GETTABLEKS R8 R0 K4 ["promptStyle"]
  GETTABLEKS R7 R8 K5 ["Font"]
  GETTABLEKS R6 R7 K6 ["Header1"]
  GETTABLEKS R5 R6 K7 ["RelativeSize"]
  GETTABLEKS R8 R0 K4 ["promptStyle"]
  GETTABLEKS R7 R8 K5 ["Font"]
  GETTABLEKS R6 R7 K8 ["BaseSize"]
  MUL R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R8 R0 K9 ["titleText"]
  MOVE R9 R4
  MOVE R10 R3
  GETIMPORT R11 K12 [Vector2.new]
  LOADN R12 69
  LOADK R13 K13 [∞]
  CALL R11 2 -1
  NAMECALL R6 R6 K14 ["GetTextSize"]
  CALL R6 -1 1
  GETTABLEKS R5 R6 K15 ["Y"]
  LOADN R7 20
  ADD R6 R7 R5
  GETTABLEKS R10 R0 K4 ["promptStyle"]
  GETTABLEKS R9 R10 K5 ["Font"]
  GETTABLEKS R8 R9 K16 ["Body"]
  GETTABLEKS R7 R8 K5 ["Font"]
  GETTABLEKS R12 R0 K4 ["promptStyle"]
  GETTABLEKS R11 R12 K5 ["Font"]
  GETTABLEKS R10 R11 K16 ["Body"]
  GETTABLEKS R9 R10 K7 ["RelativeSize"]
  GETTABLEKS R12 R0 K4 ["promptStyle"]
  GETTABLEKS R11 R12 K5 ["Font"]
  GETTABLEKS R10 R11 K8 ["BaseSize"]
  MUL R8 R9 R10
  GETUPVAL R10 3
  GETTABLEKS R12 R0 K17 ["bodyText"]
  MOVE R13 R8
  MOVE R14 R7
  GETIMPORT R15 K12 [Vector2.new]
  LOADN R16 69
  LOADK R17 K13 [∞]
  CALL R15 2 -1
  NAMECALL R10 R10 K14 ["GetTextSize"]
  CALL R10 -1 1
  GETTABLEKS R9 R10 K15 ["Y"]
  LOADN R11 20
  ADD R10 R11 R9
  LOADN R11 0
  JUMPIFNOT R2 [+39]
  GETTABLEKS R15 R0 K4 ["promptStyle"]
  GETTABLEKS R14 R15 K5 ["Font"]
  GETTABLEKS R13 R14 K18 ["CaptionHeader"]
  GETTABLEKS R12 R13 K5 ["Font"]
  GETTABLEKS R17 R0 K4 ["promptStyle"]
  GETTABLEKS R16 R17 K5 ["Font"]
  GETTABLEKS R15 R16 K18 ["CaptionHeader"]
  GETTABLEKS R14 R15 K7 ["RelativeSize"]
  GETTABLEKS R17 R0 K4 ["promptStyle"]
  GETTABLEKS R16 R17 K5 ["Font"]
  GETTABLEKS R15 R16 K8 ["BaseSize"]
  MUL R13 R14 R15
  GETUPVAL R15 3
  MOVE R17 R2
  MOVE R18 R13
  MOVE R19 R12
  GETIMPORT R20 K12 [Vector2.new]
  LOADN R21 69
  LOADK R22 K13 [∞]
  CALL R20 2 -1
  NAMECALL R15 R15 K14 ["GetTextSize"]
  CALL R15 -1 1
  GETTABLEKS R14 R15 K15 ["Y"]
  LOADN R15 10
  ADD R11 R15 R14
  LOADN R12 0
  JUMPIFNOT R1 [+42]
  GETTABLEKS R16 R0 K4 ["promptStyle"]
  GETTABLEKS R15 R16 K5 ["Font"]
  GETTABLEKS R14 R15 K16 ["Body"]
  GETTABLEKS R13 R14 K5 ["Font"]
  GETTABLEKS R18 R0 K4 ["promptStyle"]
  GETTABLEKS R17 R18 K5 ["Font"]
  GETTABLEKS R16 R17 K16 ["Body"]
  GETTABLEKS R15 R16 K7 ["RelativeSize"]
  GETTABLEKS R18 R0 K4 ["promptStyle"]
  GETTABLEKS R17 R18 K5 ["Font"]
  GETTABLEKS R16 R17 K8 ["BaseSize"]
  MUL R14 R15 R16
  GETUPVAL R16 3
  MOVE R18 R1
  MOVE R19 R14
  MOVE R20 R13
  GETIMPORT R21 K12 [Vector2.new]
  LOADN R22 69
  LOADK R23 K13 [∞]
  CALL R21 2 -1
  NAMECALL R16 R16 K14 ["GetTextSize"]
  CALL R16 -1 1
  GETTABLEKS R15 R16 K15 ["Y"]
  JUMPIFNOT R2 [+2]
  LOADN R16 10
  JUMP [+1]
  LOADN R16 20
  ADD R12 R16 R15
  LOADN R13 4
  JUMPIFNOT R1 [+1]
  LOADK R13 K19 [4.5]
  JUMPIFNOT R2 [+1]
  LOADK R13 K20 [5.5]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K21 ["createElement"]
  LOADK R15 K22 ["ScreenGui"]
  DUPTABLE R16 K28 [{"DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "Enabled", "ZIndexBehavior"}]
  LOADN R17 8
  SETTABLEKS R17 R16 K23 ["DisplayOrder"]
  LOADB R17 1
  SETTABLEKS R17 R16 K24 ["IgnoreGuiInset"]
  LOADB R17 1
  SETTABLEKS R17 R16 K25 ["OnTopOfCoreBlur"]
  GETTABLEKS R17 R0 K29 ["showPrompt"]
  SETTABLEKS R17 R16 K26 ["Enabled"]
  GETIMPORT R17 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R17 R16 K27 ["ZIndexBehavior"]
  DUPTABLE R17 K35 [{"Overlay", "DialogMainFrame"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K21 ["createElement"]
  LOADK R19 K36 ["TextButton"]
  DUPTABLE R20 K43 [{"AutoButtonColor", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "Text"}]
  LOADB R21 0
  SETTABLEKS R21 R20 K37 ["AutoButtonColor"]
  GETTABLEKS R24 R0 K4 ["promptStyle"]
  GETTABLEKS R23 R24 K44 ["Theme"]
  GETTABLEKS R22 R23 K33 ["Overlay"]
  GETTABLEKS R21 R22 K45 ["Color"]
  SETTABLEKS R21 R20 K38 ["BackgroundColor3"]
  GETTABLEKS R24 R0 K4 ["promptStyle"]
  GETTABLEKS R23 R24 K44 ["Theme"]
  GETTABLEKS R22 R23 K33 ["Overlay"]
  GETTABLEKS R21 R22 K46 ["Transparency"]
  SETTABLEKS R21 R20 K39 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K40 ["BorderSizePixel"]
  GETIMPORT R21 K48 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K41 ["Size"]
  LOADK R21 K49 [""]
  SETTABLEKS R21 R20 K42 ["Text"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K33 ["Overlay"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K21 ["createElement"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K50 ["Core"]
  GETTABLEKS R20 R21 K51 ["ImageSet"]
  GETTABLEKS R19 R20 K52 ["ImageSetLabel"]
  DUPTABLE R20 K61 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Position", "ScaleType", "Size", "AutomaticSize", "SliceCenter"}]
  GETIMPORT R21 K12 [Vector2.new]
  LOADK R22 K62 [0.5]
  LOADK R23 K62 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["AnchorPoint"]
  LOADN R21 1
  SETTABLEKS R21 R20 K39 ["BackgroundTransparency"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K63 ["Images"]
  GETTABLEKS R22 R23 K64 ["RoundedRect"]
  GETTABLEKS R21 R22 K54 ["Image"]
  SETTABLEKS R21 R20 K54 ["Image"]
  GETTABLEKS R24 R0 K4 ["promptStyle"]
  GETTABLEKS R23 R24 K44 ["Theme"]
  GETTABLEKS R22 R23 K65 ["BackgroundUIDefault"]
  GETTABLEKS R21 R22 K45 ["Color"]
  SETTABLEKS R21 R20 K55 ["ImageColor3"]
  GETTABLEKS R24 R0 K4 ["promptStyle"]
  GETTABLEKS R23 R24 K44 ["Theme"]
  GETTABLEKS R22 R23 K65 ["BackgroundUIDefault"]
  GETTABLEKS R21 R22 K46 ["Transparency"]
  SETTABLEKS R21 R20 K56 ["ImageTransparency"]
  GETIMPORT R21 K48 [UDim2.new]
  LOADK R22 K62 [0.5]
  LOADN R23 0
  LOADK R24 K62 [0.5]
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K57 ["Position"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K63 ["Images"]
  GETTABLEKS R22 R23 K64 ["RoundedRect"]
  GETTABLEKS R21 R22 K58 ["ScaleType"]
  SETTABLEKS R21 R20 K58 ["ScaleType"]
  GETIMPORT R21 K48 [UDim2.new]
  LOADN R22 0
  LOADN R23 109
  LOADN R24 0
  ADDK R31 R6 K68 [5]
  ADD R30 R31 R10
  ADDK R29 R30 K67 [36]
  MULK R30 R13 K69 [20]
  ADD R28 R29 R30
  ADD R27 R28 R12
  ADDK R26 R27 K66 [55]
  ADD R25 R26 R11
  CALL R21 4 1
  SETTABLEKS R21 R20 K41 ["Size"]
  GETIMPORT R21 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K59 ["AutomaticSize"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K63 ["Images"]
  GETTABLEKS R22 R23 K64 ["RoundedRect"]
  GETTABLEKS R21 R22 K60 ["SliceCenter"]
  SETTABLEKS R21 R20 K60 ["SliceCenter"]
  DUPTABLE R21 K83 [{"Padding", "Layout", "Icon", "TitleTextContainer", "Divider", "DividerSpaceContainer", "BodyTextContainer", "InfoTextContainer", "SpaceContainer", "PrimingTextContainer", "SpaceContainerTemp", "ButtonContainer"}]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K84 ["UIPadding"]
  DUPTABLE R24 K89 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R25 K91 [UDim.new]
  LOADN R26 0
  LOADN R27 15
  CALL R25 2 1
  SETTABLEKS R25 R24 K85 ["PaddingTop"]
  GETIMPORT R25 K91 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K86 ["PaddingBottom"]
  GETIMPORT R25 K91 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K87 ["PaddingLeft"]
  GETIMPORT R25 K91 [UDim.new]
  LOADN R26 0
  LOADN R27 20
  CALL R25 2 1
  SETTABLEKS R25 R24 K88 ["PaddingRight"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K71 ["Padding"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K92 ["UIListLayout"]
  DUPTABLE R24 K96 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R25 K98 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K93 ["FillDirection"]
  GETIMPORT R25 K100 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R25 R24 K94 ["HorizontalAlignment"]
  GETIMPORT R25 K102 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K95 ["SortOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K72 ["Layout"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K50 ["Core"]
  GETTABLEKS R24 R25 K51 ["ImageSet"]
  GETTABLEKS R23 R24 K52 ["ImageSetLabel"]
  DUPTABLE R24 K103 [{"Position", "AnchorPoint", "Image", "Size", "LayoutOrder", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R25 K105 [UDim2.fromScale]
  LOADK R26 K62 [0.5]
  LOADK R27 K62 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K57 ["Position"]
  GETIMPORT R25 K12 [Vector2.new]
  LOADK R26 K62 [0.5]
  LOADK R27 K62 [0.5]
  CALL R25 2 1
  SETTABLEKS R25 R24 K53 ["AnchorPoint"]
  GETUPVAL R25 7
  SETTABLEKS R25 R24 K54 ["Image"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 0
  LOADN R27 55
  LOADN R28 0
  LOADN R29 55
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K40 ["BorderSizePixel"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K73 ["Icon"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K107 [{"BackgroundTransparency", "LayoutOrder", "Size", "AutomaticSize"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 2
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  MOVE R29 R6
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  GETIMPORT R25 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R25 R24 K59 ["AutomaticSize"]
  DUPTABLE R25 K109 [{"Padding", "TitleText"}]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  LOADK R27 K84 ["UIPadding"]
  DUPTABLE R28 K110 [{"PaddingBottom"}]
  GETIMPORT R29 K91 [UDim.new]
  LOADN R30 0
  LOADN R31 7
  CALL R29 2 1
  SETTABLEKS R29 R28 K86 ["PaddingBottom"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K71 ["Padding"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K111 ["App"]
  GETTABLEKS R28 R29 K42 ["Text"]
  GETTABLEKS R27 R28 K112 ["StyledTextLabel"]
  DUPTABLE R28 K118 [{"fontStyle", "colorStyle", "textXAlignment", "size", "text"}]
  GETTABLEKS R31 R0 K4 ["promptStyle"]
  GETTABLEKS R30 R31 K5 ["Font"]
  GETTABLEKS R29 R30 K6 ["Header1"]
  SETTABLEKS R29 R28 K113 ["fontStyle"]
  GETTABLEKS R31 R0 K4 ["promptStyle"]
  GETTABLEKS R30 R31 K44 ["Theme"]
  GETTABLEKS R29 R30 K119 ["SystemPrimaryDefault"]
  SETTABLEKS R29 R28 K114 ["colorStyle"]
  GETIMPORT R29 K121 [Enum.TextXAlignment.Center]
  SETTABLEKS R29 R28 K115 ["textXAlignment"]
  GETIMPORT R29 K48 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K116 ["size"]
  GETTABLEKS R29 R0 K9 ["titleText"]
  SETTABLEKS R29 R28 K117 ["text"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K108 ["TitleText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K74 ["TitleTextContainer"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K122 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETTABLEKS R28 R0 K4 ["promptStyle"]
  GETTABLEKS R27 R28 K44 ["Theme"]
  GETTABLEKS R26 R27 K75 ["Divider"]
  GETTABLEKS R25 R26 K45 ["Color"]
  SETTABLEKS R25 R24 K38 ["BackgroundColor3"]
  GETTABLEKS R28 R0 K4 ["promptStyle"]
  GETTABLEKS R27 R28 K44 ["Theme"]
  GETTABLEKS R26 R27 K75 ["Divider"]
  GETTABLEKS R25 R26 K46 ["Transparency"]
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K40 ["BorderSizePixel"]
  LOADN R25 3
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 1
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K75 ["Divider"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 4
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 15
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K76 ["DividerSpaceContainer"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 5
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  MOVE R29 R10
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  DUPTABLE R25 K125 [{"BodyText"}]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K111 ["App"]
  GETTABLEKS R28 R29 K42 ["Text"]
  GETTABLEKS R27 R28 K112 ["StyledTextLabel"]
  DUPTABLE R28 K127 [{"fontStyle", "colorStyle", "textXAlignment", "size", "text", "lineHeight"}]
  GETTABLEKS R31 R0 K4 ["promptStyle"]
  GETTABLEKS R30 R31 K5 ["Font"]
  GETTABLEKS R29 R30 K16 ["Body"]
  SETTABLEKS R29 R28 K113 ["fontStyle"]
  GETTABLEKS R31 R0 K4 ["promptStyle"]
  GETTABLEKS R30 R31 K44 ["Theme"]
  GETTABLEKS R29 R30 K128 ["TextDefault"]
  SETTABLEKS R29 R28 K114 ["colorStyle"]
  GETIMPORT R29 K130 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K115 ["textXAlignment"]
  GETIMPORT R29 K48 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K116 ["size"]
  GETTABLEKS R29 R0 K17 ["bodyText"]
  SETTABLEKS R29 R28 K117 ["text"]
  LOADK R29 K131 [1.2]
  SETTABLEKS R29 R28 K126 ["lineHeight"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K124 ["BodyText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K77 ["BodyTextContainer"]
  JUMPIFNOT R1 [+124]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 6
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  ADDK R29 R12 K69 [20]
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  DUPTABLE R25 K133 [{"Padding", "TextContainer"}]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  LOADK R27 K84 ["UIPadding"]
  DUPTABLE R28 K134 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R29 K91 [UDim.new]
  LOADN R30 0
  JUMPIFNOT R2 [+2]
  LOADN R31 8
  JUMP [+1]
  LOADN R31 15
  CALL R29 2 1
  SETTABLEKS R29 R28 K85 ["PaddingTop"]
  GETIMPORT R29 K91 [UDim.new]
  LOADN R30 0
  LOADN R31 8
  CALL R29 2 1
  SETTABLEKS R29 R28 K87 ["PaddingLeft"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K71 ["Padding"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  LOADK R27 K106 ["Frame"]
  DUPTABLE R28 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K39 ["BackgroundTransparency"]
  LOADN R29 2
  SETTABLEKS R29 R28 K101 ["LayoutOrder"]
  GETIMPORT R29 K48 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  MOVE R33 R12
  CALL R29 4 1
  SETTABLEKS R29 R28 K41 ["Size"]
  DUPTABLE R29 K136 [{"InfoText"}]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K21 ["createElement"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K111 ["App"]
  GETTABLEKS R32 R33 K42 ["Text"]
  GETTABLEKS R31 R32 K112 ["StyledTextLabel"]
  DUPTABLE R32 K138 [{"fontStyle", "colorStyle", "textXAlignment", "textYAlignment", "size", "text", "lineHeight"}]
  GETTABLEKS R35 R0 K4 ["promptStyle"]
  GETTABLEKS R34 R35 K5 ["Font"]
  GETTABLEKS R33 R34 K16 ["Body"]
  SETTABLEKS R33 R32 K113 ["fontStyle"]
  GETTABLEKS R35 R0 K4 ["promptStyle"]
  GETTABLEKS R34 R35 K44 ["Theme"]
  GETTABLEKS R33 R34 K139 ["TextEmphasis"]
  SETTABLEKS R33 R32 K114 ["colorStyle"]
  GETIMPORT R33 K130 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K115 ["textXAlignment"]
  GETIMPORT R33 K142 [Enum.TextYAlignment.Top]
  SETTABLEKS R33 R32 K137 ["textYAlignment"]
  GETIMPORT R33 K48 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 1
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K116 ["size"]
  SETTABLEKS R1 R32 K117 ["text"]
  LOADK R33 K143 [1.25]
  SETTABLEKS R33 R32 K126 ["lineHeight"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K135 ["InfoText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K132 ["TextContainer"]
  CALL R22 3 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K78 ["InfoTextContainer"]
  JUMPIF R2 [+25]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 7
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  JUMPIFNOT R1 [+2]
  LOADN R29 40
  JUMP [+1]
  LOADN R29 20
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K79 ["SpaceContainer"]
  JUMPIFNOT R2 [+75]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 8
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  MOVE R29 R11
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  DUPTABLE R25 K145 [{"PrimingText"}]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  GETUPVAL R30 5
  GETTABLEKS R29 R30 K111 ["App"]
  GETTABLEKS R28 R29 K42 ["Text"]
  GETTABLEKS R27 R28 K112 ["StyledTextLabel"]
  DUPTABLE R28 K138 [{"fontStyle", "colorStyle", "textXAlignment", "textYAlignment", "size", "text", "lineHeight"}]
  GETTABLEKS R31 R0 K4 ["promptStyle"]
  GETTABLEKS R30 R31 K5 ["Font"]
  GETTABLEKS R29 R30 K16 ["Body"]
  SETTABLEKS R29 R28 K113 ["fontStyle"]
  GETTABLEKS R31 R0 K4 ["promptStyle"]
  GETTABLEKS R30 R31 K44 ["Theme"]
  GETTABLEKS R29 R30 K128 ["TextDefault"]
  SETTABLEKS R29 R28 K114 ["colorStyle"]
  GETIMPORT R29 K130 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K115 ["textXAlignment"]
  GETIMPORT R29 K142 [Enum.TextYAlignment.Top]
  SETTABLEKS R29 R28 K137 ["textYAlignment"]
  GETIMPORT R29 K48 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K116 ["size"]
  SETTABLEKS R2 R28 K117 ["text"]
  LOADK R29 K143 [1.25]
  SETTABLEKS R29 R28 K126 ["lineHeight"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K144 ["PrimingText"]
  CALL R22 3 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K80 ["PrimingTextContainer"]
  JUMPIFNOT R2 [+22]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 9
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 30
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K81 ["SpaceContainerTemp"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K106 ["Frame"]
  DUPTABLE R24 K123 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K39 ["BackgroundTransparency"]
  LOADN R25 10
  SETTABLEKS R25 R24 K101 ["LayoutOrder"]
  GETIMPORT R25 K48 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  LOADN R29 36
  CALL R25 4 1
  SETTABLEKS R25 R24 K41 ["Size"]
  DUPTABLE R25 K148 [{"Layout", "SecondaryButton", "ConfirmButton"}]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  LOADK R27 K92 ["UIListLayout"]
  DUPTABLE R28 K150 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R29 K152 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K93 ["FillDirection"]
  GETIMPORT R29 K100 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R29 R28 K94 ["HorizontalAlignment"]
  GETIMPORT R29 K91 [UDim.new]
  LOADN R30 0
  LOADN R31 12
  CALL R29 2 1
  SETTABLEKS R29 R28 K71 ["Padding"]
  GETIMPORT R29 K102 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R29 R28 K95 ["SortOrder"]
  GETIMPORT R29 K153 [Enum.VerticalAlignment.Center]
  SETTABLEKS R29 R28 K149 ["VerticalAlignment"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K72 ["Layout"]
  GETTABLEKS R27 R0 K2 ["settingsAppAvailable"]
  JUMPIFNOT R27 [+31]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  GETUPVAL R27 8
  DUPTABLE R28 K157 [{"buttonType", "layoutOrder", "size", "text", "onActivated"}]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K158 ["Secondary"]
  SETTABLEKS R29 R28 K154 ["buttonType"]
  LOADN R29 1
  SETTABLEKS R29 R28 K155 ["layoutOrder"]
  GETIMPORT R29 K48 [UDim2.new]
  LOADK R30 K62 [0.5]
  LOADN R31 251
  LOADN R32 0
  LOADN R33 36
  CALL R29 4 1
  SETTABLEKS R29 R28 K116 ["size"]
  GETUPVAL R29 10
  SETTABLEKS R29 R28 K117 ["text"]
  GETTABLEKS R29 R0 K159 ["handleSecondaryActivated"]
  SETTABLEKS R29 R28 K156 ["onActivated"]
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K146 ["SecondaryButton"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K21 ["createElement"]
  GETUPVAL R27 8
  DUPTABLE R28 K157 [{"buttonType", "layoutOrder", "size", "text", "onActivated"}]
  GETUPVAL R30 9
  GETTABLEKS R29 R30 K160 ["PrimarySystem"]
  SETTABLEKS R29 R28 K154 ["buttonType"]
  LOADN R29 2
  SETTABLEKS R29 R28 K155 ["layoutOrder"]
  GETIMPORT R29 K48 [UDim2.new]
  GETTABLEKS R31 R0 K2 ["settingsAppAvailable"]
  JUMPIFNOT R31 [+2]
  LOADK R30 K62 [0.5]
  JUMP [+1]
  LOADN R30 1
  LOADN R31 251
  LOADN R32 0
  LOADN R33 36
  CALL R29 4 1
  SETTABLEKS R29 R28 K116 ["size"]
  GETTABLEKS R30 R0 K2 ["settingsAppAvailable"]
  JUMPIFNOT R30 [+2]
  GETUPVAL R29 11
  JUMP [+1]
  GETUPVAL R29 12
  SETTABLEKS R29 R28 K117 ["text"]
  GETTABLEKS R29 R0 K161 ["handlePrimaryActivated"]
  SETTABLEKS R29 R28 K156 ["onActivated"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K147 ["ConfirmButton"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K82 ["ButtonContainer"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["DialogMainFrame"]
  CALL R14 3 -1
  RETURN R14 -1

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
  GETTABLEKS R5 R6 K11 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K12 ["t"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K13 ["Workspace"]
  GETTABLEKS R8 R9 K10 ["Packages"]
  GETTABLEKS R7 R8 K14 ["ArgCheck"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K15 ["UIBlox"]
  CALL R7 1 1
  GETTABLEKS R10 R7 K16 ["App"]
  GETTABLEKS R9 R10 K17 ["Button"]
  GETTABLEKS R8 R9 K17 ["Button"]
  GETTABLEKS R12 R7 K16 ["App"]
  GETTABLEKS R11 R12 K17 ["Button"]
  GETTABLEKS R10 R11 K18 ["Enum"]
  GETTABLEKS R9 R10 K19 ["ButtonType"]
  GETTABLEKS R12 R7 K16 ["App"]
  GETTABLEKS R11 R12 K20 ["ImageSet"]
  GETTABLEKS R10 R11 K21 ["Images"]
  GETIMPORT R11 K9 [require]
  GETIMPORT R18 K23 [script]
  GETTABLEKS R17 R18 K24 ["Parent"]
  GETTABLEKS R16 R17 K24 ["Parent"]
  GETTABLEKS R15 R16 K24 ["Parent"]
  GETTABLEKS R14 R15 K25 ["InGameMenu"]
  GETTABLEKS R13 R14 K26 ["Resources"]
  GETTABLEKS R12 R13 K27 ["Assets"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R3 K28 ["Modules"]
  GETTABLEKS R13 R14 K29 ["RobloxTranslator"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETIMPORT R18 K23 [script]
  GETTABLEKS R17 R18 K24 ["Parent"]
  GETTABLEKS R16 R17 K24 ["Parent"]
  GETTABLEKS R15 R16 K30 ["Helpers"]
  GETTABLEKS R14 R15 K31 ["getMicDeeplinkDirections"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETIMPORT R19 K23 [script]
  GETTABLEKS R18 R19 K24 ["Parent"]
  GETTABLEKS R17 R18 K24 ["Parent"]
  GETTABLEKS R16 R17 K30 ["Helpers"]
  GETTABLEKS R15 R16 K32 ["getPrimingText"]
  CALL R14 1 1
  LOADK R17 K33 ["Feature.SettingsHub.Action.OpenSettings"]
  NAMECALL R15 R12 K34 ["FormatByKey"]
  CALL R15 2 1
  LOADK R18 K35 ["Feature.SettingsHub.Action.Ok"]
  NAMECALL R16 R12 K34 ["FormatByKey"]
  CALL R16 2 1
  LOADK R19 K36 ["Feature.SettingsHub.Action.NotNow"]
  NAMECALL R17 R12 K34 ["FormatByKey"]
  CALL R17 2 1
  GETTABLEKS R18 R10 K37 ["icons/controls/microphone"]
  GETTABLEKS R19 R6 K38 ["wrap"]
  GETTABLEKS R20 R5 K39 ["strictInterface"]
  DUPTABLE R21 K49 [{"titleText", "bodyText", "handlePrimaryActivated", "handleSecondaryActivated", "Analytics", "promptStyle", "showPrompt", "settingsAppAvailable", "UserInputService"}]
  GETTABLEKS R22 R5 K50 ["string"]
  SETTABLEKS R22 R21 K40 ["titleText"]
  GETTABLEKS R22 R5 K50 ["string"]
  SETTABLEKS R22 R21 K41 ["bodyText"]
  GETTABLEKS R22 R5 K51 ["callback"]
  SETTABLEKS R22 R21 K42 ["handlePrimaryActivated"]
  GETTABLEKS R22 R5 K51 ["callback"]
  SETTABLEKS R22 R21 K43 ["handleSecondaryActivated"]
  GETTABLEKS R22 R5 K52 ["table"]
  SETTABLEKS R22 R21 K44 ["Analytics"]
  GETTABLEKS R22 R5 K52 ["table"]
  SETTABLEKS R22 R21 K45 ["promptStyle"]
  GETTABLEKS R22 R5 K53 ["boolean"]
  SETTABLEKS R22 R21 K46 ["showPrompt"]
  GETTABLEKS R22 R5 K53 ["boolean"]
  SETTABLEKS R22 R21 K47 ["settingsAppAvailable"]
  GETTABLEKS R22 R5 K52 ["table"]
  SETTABLEKS R22 R21 K48 ["UserInputService"]
  CALL R20 1 -1
  CALL R19 -1 1
  DUPCLOSURE R20 K54 [PROTO_0]
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R16
  RETURN R20 1