PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R1 K0 ["LuaApps"]
  GETTABLEKS R2 R3 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R3 R2 K2 ["Color"]
  GETTABLEKS R4 R2 K3 ["Size"]
  GETTABLEKS R5 R2 K4 ["Space"]
  GETTABLEKS R6 R2 K5 ["Radius"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["createElement"]
  LOADK R8 K7 ["Frame"]
  DUPTABLE R9 K14 [{"BackgroundColor3", "BackgroundTransparency", "Visible", "AutomaticSize", "Size", "Position", "AnchorPoint"}]
  GETTABLEKS R11 R3 K15 ["backgroundUiColor"]
  GETTABLEKS R10 R11 K16 ["Color3"]
  SETTABLEKS R10 R9 K8 ["BackgroundColor3"]
  GETTABLEKS R11 R3 K15 ["backgroundUiColor"]
  GETTABLEKS R10 R11 K17 ["Transparency"]
  SETTABLEKS R10 R9 K9 ["BackgroundTransparency"]
  GETTABLEKS R10 R0 K10 ["Visible"]
  SETTABLEKS R10 R9 K10 ["Visible"]
  GETIMPORT R10 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K11 ["AutomaticSize"]
  GETIMPORT R10 K23 [UDim2.fromScale]
  GETTABLEKS R12 R4 K24 ["promptWidth"]
  GETTABLEKS R13 R4 K25 ["displayWidth"]
  DIV R11 R12 R13
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K3 ["Size"]
  GETTABLEKS R10 R0 K12 ["Position"]
  SETTABLEKS R10 R9 K12 ["Position"]
  GETIMPORT R10 K28 [Vector2.new]
  LOADK R11 K29 [0.5]
  LOADK R12 K29 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["AnchorPoint"]
  DUPTABLE R10 K36 [{"Corner", "Layout", "HeaderArea", "Separator", "Body", "UISizeConstraint"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K37 ["UICorner"]
  DUPTABLE R13 K39 [{"CornerRadius"}]
  GETIMPORT R14 K41 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R6 K42 ["cornerRadius"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["CornerRadius"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["Corner"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K43 ["UIListLayout"]
  DUPTABLE R13 K48 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R14 K50 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K44 ["FillDirection"]
  GETIMPORT R14 K52 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K45 ["SortOrder"]
  GETIMPORT R14 K54 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K46 ["HorizontalAlignment"]
  GETIMPORT R14 K55 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K47 ["VerticalAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Layout"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["HeaderArea"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K7 ["Frame"]
  DUPTABLE R13 K57 [{"LayoutOrder", "Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel"}]
  LOADN R14 100
  SETTABLEKS R14 R13 K51 ["LayoutOrder"]
  GETIMPORT R14 K58 [UDim2.new]
  LOADN R15 1
  LOADN R17 254
  GETTABLEKS R18 R5 K59 ["bodyPadding"]
  MUL R16 R17 R18
  LOADN R17 0
  LOADN R18 1
  CALL R14 4 1
  SETTABLEKS R14 R13 K3 ["Size"]
  GETTABLEKS R15 R3 K60 ["separatorColor"]
  GETTABLEKS R14 R15 K16 ["Color3"]
  SETTABLEKS R14 R13 K8 ["BackgroundColor3"]
  GETTABLEKS R15 R3 K60 ["separatorColor"]
  GETTABLEKS R14 R15 K17 ["Transparency"]
  SETTABLEKS R14 R13 K9 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K56 ["BorderSizePixel"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["Separator"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 3
  CALL R11 1 1
  SETTABLEKS R11 R10 K34 ["Body"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  LOADK R12 K35 ["UISizeConstraint"]
  DUPTABLE R13 K63 [{"MaxSize", "MinSize"}]
  GETIMPORT R14 K28 [Vector2.new]
  LOADK R15 K64 [∞]
  LOADK R16 K64 [∞]
  CALL R14 2 1
  SETTABLEKS R14 R13 K61 ["MaxSize"]
  GETIMPORT R14 K28 [Vector2.new]
  GETTABLEKS R16 R4 K65 ["imageWidth"]
  LOADN R18 2
  GETTABLEKS R19 R5 K59 ["bodyPadding"]
  MUL R17 R18 R19
  ADD R15 R16 R17
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K62 ["MinSize"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["UISizeConstraint"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  GETTABLEKS R2 R0 K0 ["LuaApps"]
  GETTABLEKS R1 R2 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R2 R1 K2 ["Typography"]
  GETTABLEKS R3 R1 K3 ["Color"]
  GETTABLEKS R4 R1 K4 ["Size"]
  GETTABLEKS R5 R1 K5 ["Space"]
  GETUPVAL R6 1
  GETIMPORT R8 K9 [Enum.KeyCode.ButtonSelect]
  NAMECALL R6 R6 K10 ["GetStringForKeyCode"]
  CALL R6 2 1
  GETUPVAL R9 2
  GETTABLE R8 R9 R6
  ORK R7 R8 K11 ["CoreScripts.InGameMenu.Label.ViewButton"]
  GETUPVAL R8 3
  DUPTABLE R9 K13 [{"ButtonLabelText"}]
  SETTABLEKS R7 R9 K12 ["ButtonLabelText"]
  CALL R8 1 1
  GETIMPORT R10 K15 [game]
  LOADK R12 K16 ["GetImageForKeyCode"]
  NAMECALL R10 R10 K17 ["GetEngineFeature"]
  CALL R10 2 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R9 1
  GETIMPORT R11 K9 [Enum.KeyCode.ButtonSelect]
  NAMECALL R9 R9 K16 ["GetImageForKeyCode"]
  CALL R9 2 1
  JUMP [+1]
  LOADK R9 K18 ["rbxasset://textures/ui/Controls/DesignSystem/ButtonSelect@2x.png"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K19 ["createElement"]
  LOADK R11 K20 ["Frame"]
  DUPTABLE R12 K24 [{"BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K22 ["LayoutOrder"]
  GETIMPORT R13 K26 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K23 ["AutomaticSize"]
  DUPTABLE R13 K30 [{"Layout", "ButtonLabelGroup", "ControllerImage"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K19 ["createElement"]
  LOADK R15 K31 ["UIListLayout"]
  DUPTABLE R16 K37 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R17 K39 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K32 ["FillDirection"]
  GETIMPORT R17 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K33 ["SortOrder"]
  GETIMPORT R17 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K34 ["HorizontalAlignment"]
  GETIMPORT R17 K43 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K35 ["VerticalAlignment"]
  GETIMPORT R17 K46 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R5 K47 ["iconPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K27 ["Layout"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K19 ["createElement"]
  LOADK R15 K20 ["Frame"]
  DUPTABLE R16 K48 [{"BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  GETIMPORT R17 K26 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K23 ["AutomaticSize"]
  LOADN R17 0
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  DUPTABLE R17 K51 [{"Layout", "Icon", "ControllerButtonLabel"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K19 ["createElement"]
  LOADK R19 K31 ["UIListLayout"]
  DUPTABLE R20 K37 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R21 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K32 ["FillDirection"]
  GETIMPORT R21 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K33 ["SortOrder"]
  GETIMPORT R21 K42 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R21 R20 K34 ["HorizontalAlignment"]
  GETIMPORT R21 K43 [Enum.VerticalAlignment.Center]
  SETTABLEKS R21 R20 K35 ["VerticalAlignment"]
  GETIMPORT R21 K46 [UDim.new]
  LOADN R22 0
  GETTABLEKS R23 R5 K47 ["iconPadding"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Padding"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Layout"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K19 ["createElement"]
  LOADK R19 K54 ["ImageLabel"]
  DUPTABLE R20 K56 [{"LayoutOrder", "BackgroundTransparency", "Image", "Size"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADN R21 1
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  SETTABLEKS R9 R20 K55 ["Image"]
  GETIMPORT R21 K59 [UDim2.fromOffset]
  GETTABLEKS R22 R4 K60 ["iconSize"]
  GETTABLEKS R23 R4 K60 ["iconSize"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K4 ["Size"]
  DUPTABLE R21 K61 [{"Padding"}]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K19 ["createElement"]
  LOADK R23 K62 ["UIPadding"]
  DUPTABLE R24 K67 [{"PaddingTop", "PaddingBottom", "PaddingRight", "PaddingLeft"}]
  GETIMPORT R25 K46 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R5 K47 ["iconPadding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K63 ["PaddingTop"]
  GETIMPORT R25 K46 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R5 K47 ["iconPadding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K64 ["PaddingBottom"]
  GETIMPORT R25 K46 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R5 K47 ["iconPadding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K65 ["PaddingRight"]
  GETIMPORT R25 K46 [UDim.new]
  LOADN R26 0
  GETTABLEKS R27 R5 K47 ["iconPadding"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K66 ["PaddingLeft"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K36 ["Padding"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K49 ["Icon"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K19 ["createElement"]
  LOADK R19 K68 ["TextLabel"]
  DUPTABLE R20 K75 [{"Text", "LayoutOrder", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R21 R8 K12 ["ButtonLabelText"]
  SETTABLEKS R21 R20 K69 ["Text"]
  LOADN R21 100
  SETTABLEKS R21 R20 K22 ["LayoutOrder"]
  LOADN R21 1
  SETTABLEKS R21 R20 K21 ["BackgroundTransparency"]
  GETTABLEKS R22 R2 K76 ["label"]
  GETTABLEKS R21 R22 K70 ["Font"]
  SETTABLEKS R21 R20 K70 ["Font"]
  GETTABLEKS R22 R2 K76 ["label"]
  GETTABLEKS R21 R22 K77 ["FontSize"]
  SETTABLEKS R21 R20 K71 ["TextSize"]
  GETTABLEKS R22 R3 K78 ["textColor"]
  GETTABLEKS R21 R22 K79 ["Color3"]
  SETTABLEKS R21 R20 K72 ["TextColor3"]
  GETIMPORT R21 K59 [UDim2.fromOffset]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K4 ["Size"]
  GETIMPORT R21 K26 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K23 ["AutomaticSize"]
  GETIMPORT R21 K80 [Enum.TextXAlignment.Center]
  SETTABLEKS R21 R20 K73 ["TextXAlignment"]
  GETIMPORT R21 K81 [Enum.TextYAlignment.Center]
  SETTABLEKS R21 R20 K74 ["TextYAlignment"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K50 ["ControllerButtonLabel"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K28 ["ButtonLabelGroup"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K19 ["createElement"]
  LOADK R15 K54 ["ImageLabel"]
  DUPTABLE R16 K82 [{"Image", "Size", "LayoutOrder", "BackgroundTransparency"}]
  LOADK R17 K83 ["rbxasset://textures/ui/Gamepad/ControllerSelect@2x.png"]
  SETTABLEKS R17 R16 K55 ["Image"]
  GETIMPORT R17 K85 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K4 ["Size"]
  LOADN R17 100
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADN R17 1
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  DUPTABLE R17 K88 [{"UIAspectRatioConstraint", "UISizeConstraint"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K19 ["createElement"]
  LOADK R19 K86 ["UIAspectRatioConstraint"]
  DUPTABLE R20 K90 [{"AspectRatio"}]
  GETTABLEKS R22 R4 K91 ["imageWidth"]
  GETTABLEKS R23 R4 K92 ["imageHeight"]
  DIV R21 R22 R23
  SETTABLEKS R21 R20 K89 ["AspectRatio"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K86 ["UIAspectRatioConstraint"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K19 ["createElement"]
  LOADK R19 K87 ["UISizeConstraint"]
  DUPTABLE R20 K95 [{"MaxSize", "MinSize"}]
  GETIMPORT R21 K97 [Vector2.new]
  GETTABLEKS R22 R4 K91 ["imageWidth"]
  GETTABLEKS R23 R4 K92 ["imageHeight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K93 ["MaxSize"]
  GETIMPORT R21 K97 [Vector2.new]
  GETTABLEKS R23 R4 K91 ["imageWidth"]
  MULK R22 R23 K98 [0.5]
  GETTABLEKS R24 R4 K92 ["imageHeight"]
  MULK R23 R24 K98 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K94 ["MinSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K87 ["UISizeConstraint"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K29 ["ControllerImage"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 1
  GETTABLEKS R2 R0 K0 ["LuaApps"]
  GETTABLEKS R1 R2 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R2 R1 K2 ["Typography"]
  GETTABLEKS R3 R1 K3 ["Color"]
  GETTABLEKS R4 R1 K4 ["Space"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"HeaderText"}]
  LOADK R7 K7 ["CoreScripts.InGameMenu.PageTitle.ToggleMenuNavigation"]
  SETTABLEKS R7 R6 K5 ["HeaderText"]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["createElement"]
  LOADK R7 K9 ["Frame"]
  DUPTABLE R8 K13 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency"}]
  GETIMPORT R9 K16 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K10 ["AutomaticSize"]
  LOADN R9 0
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  LOADN R9 1
  SETTABLEKS R9 R8 K12 ["BackgroundTransparency"]
  DUPTABLE R9 K20 [{"Header", "Layout", "Padding"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K21 ["TextLabel"]
  DUPTABLE R12 K29 [{"LayoutOrder", "Text", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  GETTABLEKS R13 R5 K5 ["HeaderText"]
  SETTABLEKS R13 R12 K22 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K30 ["header"]
  GETTABLEKS R13 R14 K23 ["Font"]
  SETTABLEKS R13 R12 K23 ["Font"]
  GETTABLEKS R14 R2 K30 ["header"]
  GETTABLEKS R13 R14 K31 ["FontSize"]
  SETTABLEKS R13 R12 K24 ["TextSize"]
  GETTABLEKS R14 R3 K32 ["textColor"]
  GETTABLEKS R13 R14 K33 ["Color3"]
  SETTABLEKS R13 R12 K25 ["TextColor3"]
  GETIMPORT R13 K36 [UDim2.fromOffset]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["Size"]
  GETIMPORT R13 K16 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K10 ["AutomaticSize"]
  GETIMPORT R13 K38 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K27 ["TextXAlignment"]
  GETIMPORT R13 K39 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K28 ["TextYAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["Header"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K40 ["UIListLayout"]
  DUPTABLE R12 K45 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment"}]
  GETIMPORT R13 K46 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K41 ["SortOrder"]
  GETIMPORT R13 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K42 ["FillDirection"]
  GETIMPORT R13 K49 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K43 ["VerticalAlignment"]
  GETIMPORT R13 K50 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K44 ["HorizontalAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Layout"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K51 ["UIPadding"]
  DUPTABLE R12 K56 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K59 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K60 ["titlePadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K52 ["PaddingTop"]
  GETIMPORT R13 K59 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K60 ["titlePadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K53 ["PaddingBottom"]
  GETIMPORT R13 K59 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K61 ["bodyPadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K54 ["PaddingLeft"]
  GETIMPORT R13 K59 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K61 ["bodyPadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["PaddingRight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Padding"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  CALL R0 0 1
  GETTABLEKS R2 R0 K0 ["LuaApps"]
  GETTABLEKS R1 R2 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R2 R1 K2 ["Typography"]
  GETTABLEKS R3 R1 K3 ["Color"]
  GETTABLEKS R4 R1 K4 ["Size"]
  GETTABLEKS R5 R1 K5 ["Space"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"CaptionText", "OkText"}]
  LOADK R8 K9 ["CoreScripts.InGameMenu.EducationalPopup.MenuNavigationToggleText"]
  SETTABLEKS R8 R7 K6 ["CaptionText"]
  LOADK R8 K10 ["CoreScripts.InGameMenu.Ok"]
  SETTABLEKS R8 R7 K7 ["OkText"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["createElement"]
  LOADK R8 K12 ["Frame"]
  DUPTABLE R9 K16 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency"}]
  LOADN R10 200
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  GETIMPORT R10 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K14 ["AutomaticSize"]
  LOADN R10 1
  SETTABLEKS R10 R9 K15 ["BackgroundTransparency"]
  DUPTABLE R10 K25 [{"Layout", "Padding", "ControllerArea", "ImageDescription", "ConfirmationButton"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  LOADK R12 K26 ["UIListLayout"]
  DUPTABLE R13 K31 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R14 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K27 ["FillDirection"]
  GETIMPORT R14 K34 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K28 ["SortOrder"]
  GETIMPORT R14 K36 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K29 ["HorizontalAlignment"]
  GETIMPORT R14 K37 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K30 ["VerticalAlignment"]
  GETIMPORT R14 K40 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R5 K41 ["bodyPadding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["Layout"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  LOADK R12 K42 ["UIPadding"]
  DUPTABLE R13 K47 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R14 K40 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R5 K41 ["bodyPadding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K43 ["PaddingLeft"]
  GETIMPORT R14 K40 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R5 K41 ["bodyPadding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K44 ["PaddingRight"]
  GETIMPORT R14 K40 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R5 K41 ["bodyPadding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K45 ["PaddingTop"]
  GETIMPORT R14 K40 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R5 K41 ["bodyPadding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K46 ["PaddingBottom"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["Padding"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 3
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["ControllerArea"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  LOADK R12 K48 ["TextLabel"]
  DUPTABLE R13 K57 [{"Text", "LayoutOrder", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "TextWrapped", "LineHeight", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R14 R6 K6 ["CaptionText"]
  SETTABLEKS R14 R13 K49 ["Text"]
  LOADN R14 100
  SETTABLEKS R14 R13 K13 ["LayoutOrder"]
  LOADN R14 1
  SETTABLEKS R14 R13 K15 ["BackgroundTransparency"]
  GETTABLEKS R15 R2 K58 ["caption"]
  GETTABLEKS R14 R15 K50 ["Font"]
  SETTABLEKS R14 R13 K50 ["Font"]
  GETTABLEKS R15 R2 K58 ["caption"]
  GETTABLEKS R14 R15 K59 ["FontSize"]
  SETTABLEKS R14 R13 K51 ["TextSize"]
  GETTABLEKS R15 R3 K60 ["textColor"]
  GETTABLEKS R14 R15 K61 ["Color3"]
  SETTABLEKS R14 R13 K52 ["TextColor3"]
  LOADB R14 1
  SETTABLEKS R14 R13 K53 ["TextWrapped"]
  GETTABLEKS R15 R2 K58 ["caption"]
  GETTABLEKS R14 R15 K54 ["LineHeight"]
  SETTABLEKS R14 R13 K54 ["LineHeight"]
  GETIMPORT R14 K63 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K65 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K14 ["AutomaticSize"]
  GETIMPORT R14 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K55 ["TextXAlignment"]
  GETIMPORT R14 K68 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K56 ["TextYAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["ImageDescription"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K74 [{"buttonType", "layoutOrder", "size", "text", "onActivated"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K75 ["PrimarySystem"]
  SETTABLEKS R14 R13 K69 ["buttonType"]
  LOADN R14 200
  SETTABLEKS R14 R13 K70 ["layoutOrder"]
  GETIMPORT R14 K63 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R18 R4 K76 ["buttonHeight"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K71 ["size"]
  GETTABLEKS R14 R6 K7 ["OkText"]
  SETTABLEKS R14 R13 K72 ["text"]
  DUPCLOSURE R14 K77 [PROTO_3]
  SETTABLEKS R14 R13 K73 ["onActivated"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["ConfirmationButton"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UserInputService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Workspace"]
  GETTABLEKS R7 R8 K7 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Style"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K12 ["useDesignTokens"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K10 ["Workspace"]
  GETTABLEKS R9 R10 K7 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Localization"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["Hooks"]
  GETTABLEKS R5 R6 K15 ["useLocalization"]
  GETIMPORT R6 K17 [script]
  LOADK R8 K18 ["TopBar"]
  NAMECALL R6 R6 K19 ["FindFirstAncestor"]
  CALL R6 2 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K20 ["TokenMappers"]
  GETTABLEKS R8 R9 K21 ["MenuNavigationPromptTokenMapper"]
  CALL R7 1 1
  GETTABLEKS R10 R3 K22 ["App"]
  GETTABLEKS R9 R10 K23 ["Button"]
  GETTABLEKS R8 R9 K23 ["Button"]
  GETTABLEKS R12 R3 K22 ["App"]
  GETTABLEKS R11 R12 K23 ["Button"]
  GETTABLEKS R10 R11 K24 ["Enum"]
  GETTABLEKS R9 R10 K25 ["ButtonType"]
  DUPTABLE R10 K29 [{"ButtonSelect", "ButtonTouchpad", "ButtonShare"}]
  LOADK R11 K30 ["CoreScripts.InGameMenu.Label.ViewButton"]
  SETTABLEKS R11 R10 K26 ["ButtonSelect"]
  LOADK R11 K31 ["CoreScripts.InGameMenu.Label.TouchpadButton"]
  SETTABLEKS R11 R10 K27 ["ButtonTouchpad"]
  LOADK R11 K31 ["CoreScripts.InGameMenu.Label.TouchpadButton"]
  SETTABLEKS R11 R10 K28 ["ButtonShare"]
  LOADNIL R11
  LOADNIL R12
  LOADNIL R13
  NEWCLOSURE R14 P0
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE REF R12
  CAPTURE REF R13
  DUPCLOSURE R11 K32 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R2
  DUPCLOSURE R12 K33 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  NEWCLOSURE R13 P3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE REF R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  CLOSEUPVALS R11
  RETURN R14 1
