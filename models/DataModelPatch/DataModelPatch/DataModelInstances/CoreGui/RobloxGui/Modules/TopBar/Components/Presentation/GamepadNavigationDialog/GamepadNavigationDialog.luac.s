PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  GETTABLEKS R2 R0 K0 ["LuaApps"]
  GETTABLEKS R1 R2 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R2 R1 K2 ["Typography"]
  GETTABLEKS R3 R1 K3 ["Color"]
  GETTABLEKS R4 R1 K4 ["Space"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"HeaderText"}]
  LOADK R7 K7 ["CoreScripts.InGameMenu.EducationalPopup.UINavigation.Title"]
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
  DUPTABLE R9 K19 [{"Header", "Padding"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K20 ["TextLabel"]
  DUPTABLE R12 K28 [{"Text", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R13 R5 K5 ["HeaderText"]
  SETTABLEKS R13 R12 K21 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  GETTABLEKS R14 R2 K29 ["header"]
  GETTABLEKS R13 R14 K22 ["Font"]
  SETTABLEKS R13 R12 K22 ["Font"]
  GETTABLEKS R14 R2 K29 ["header"]
  GETTABLEKS R13 R14 K30 ["FontSize"]
  SETTABLEKS R13 R12 K23 ["TextSize"]
  GETTABLEKS R14 R3 K31 ["textColor"]
  GETTABLEKS R13 R14 K32 ["Color3"]
  SETTABLEKS R13 R12 K24 ["TextColor3"]
  GETIMPORT R13 K35 [UDim2.fromOffset]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["Size"]
  GETIMPORT R13 K16 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K10 ["AutomaticSize"]
  GETIMPORT R13 K37 [Enum.TextXAlignment.Center]
  SETTABLEKS R13 R12 K26 ["TextXAlignment"]
  GETIMPORT R13 K38 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K27 ["TextYAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["Header"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K39 ["UIPadding"]
  DUPTABLE R12 K44 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K47 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K48 ["titlePadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K40 ["PaddingTop"]
  GETIMPORT R13 K47 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K48 ["titlePadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["PaddingBottom"]
  GETIMPORT R13 K47 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K49 ["bodyPadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K42 ["PaddingLeft"]
  GETIMPORT R13 K47 [UDim.new]
  LOADN R14 0
  GETTABLEKS R15 R4 K49 ["bodyPadding"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K43 ["PaddingRight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Padding"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETUPVAL R9 1
  GETIMPORT R11 K9 [Enum.KeyCode.ButtonSelect]
  NAMECALL R9 R9 K14 ["GetImageForKeyCode"]
  CALL R9 2 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K16 ["Frame"]
  DUPTABLE R12 K20 [{"BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  LOADN R13 0
  SETTABLEKS R13 R12 K18 ["LayoutOrder"]
  GETIMPORT R13 K22 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K19 ["AutomaticSize"]
  DUPTABLE R13 K26 [{"Layout", "ButtonLabelGroup", "ControllerImage"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K15 ["createElement"]
  LOADK R15 K27 ["UIListLayout"]
  DUPTABLE R16 K33 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R17 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K28 ["FillDirection"]
  GETIMPORT R17 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K29 ["SortOrder"]
  GETIMPORT R17 K38 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K30 ["HorizontalAlignment"]
  GETIMPORT R17 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K31 ["VerticalAlignment"]
  GETIMPORT R17 K42 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R5 K43 ["iconPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["Layout"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K15 ["createElement"]
  LOADK R15 K16 ["Frame"]
  DUPTABLE R16 K44 [{"BackgroundTransparency", "AutomaticSize", "LayoutOrder"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  GETIMPORT R17 K22 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K19 ["AutomaticSize"]
  LOADN R17 0
  SETTABLEKS R17 R16 K18 ["LayoutOrder"]
  DUPTABLE R17 K47 [{"Layout", "Icon", "ControllerButtonLabel"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["createElement"]
  LOADK R19 K27 ["UIListLayout"]
  DUPTABLE R20 K33 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R21 K49 [Enum.FillDirection.Horizontal]
  SETTABLEKS R21 R20 K28 ["FillDirection"]
  GETIMPORT R21 K36 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K29 ["SortOrder"]
  GETIMPORT R21 K38 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R21 R20 K30 ["HorizontalAlignment"]
  GETIMPORT R21 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R21 R20 K31 ["VerticalAlignment"]
  GETIMPORT R21 K42 [UDim.new]
  LOADN R22 0
  GETTABLEKS R23 R5 K43 ["iconPadding"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K32 ["Padding"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K23 ["Layout"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["createElement"]
  LOADK R19 K50 ["ImageLabel"]
  DUPTABLE R20 K52 [{"LayoutOrder", "BackgroundTransparency", "Image", "Size"}]
  LOADN R21 0
  SETTABLEKS R21 R20 K18 ["LayoutOrder"]
  LOADN R21 1
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  SETTABLEKS R9 R20 K51 ["Image"]
  GETIMPORT R21 K55 [UDim2.fromOffset]
  GETTABLEKS R22 R4 K56 ["iconSize"]
  GETTABLEKS R23 R4 K56 ["iconSize"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K4 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K45 ["Icon"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["createElement"]
  LOADK R19 K57 ["TextLabel"]
  DUPTABLE R20 K64 [{"Text", "LayoutOrder", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R21 R8 K12 ["ButtonLabelText"]
  SETTABLEKS R21 R20 K58 ["Text"]
  LOADN R21 100
  SETTABLEKS R21 R20 K18 ["LayoutOrder"]
  LOADN R21 1
  SETTABLEKS R21 R20 K17 ["BackgroundTransparency"]
  GETTABLEKS R22 R2 K65 ["label"]
  GETTABLEKS R21 R22 K59 ["Font"]
  SETTABLEKS R21 R20 K59 ["Font"]
  GETTABLEKS R22 R2 K65 ["label"]
  GETTABLEKS R21 R22 K66 ["FontSize"]
  SETTABLEKS R21 R20 K60 ["TextSize"]
  GETTABLEKS R22 R3 K67 ["textColor"]
  GETTABLEKS R21 R22 K68 ["Color3"]
  SETTABLEKS R21 R20 K61 ["TextColor3"]
  GETIMPORT R21 K55 [UDim2.fromOffset]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K4 ["Size"]
  GETIMPORT R21 K22 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K19 ["AutomaticSize"]
  GETIMPORT R21 K69 [Enum.TextXAlignment.Center]
  SETTABLEKS R21 R20 K62 ["TextXAlignment"]
  GETIMPORT R21 K70 [Enum.TextYAlignment.Center]
  SETTABLEKS R21 R20 K63 ["TextYAlignment"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K46 ["ControllerButtonLabel"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K24 ["ButtonLabelGroup"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K15 ["createElement"]
  LOADK R15 K50 ["ImageLabel"]
  DUPTABLE R16 K71 [{"Image", "Size", "LayoutOrder", "BackgroundTransparency"}]
  LOADK R17 K72 ["rbxasset://textures/ui/Gamepad/ControllerSelect.png"]
  SETTABLEKS R17 R16 K51 ["Image"]
  GETIMPORT R17 K74 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K4 ["Size"]
  LOADN R17 100
  SETTABLEKS R17 R16 K18 ["LayoutOrder"]
  LOADN R17 1
  SETTABLEKS R17 R16 K17 ["BackgroundTransparency"]
  DUPTABLE R17 K77 [{"UIAspectRatioConstraint", "UISizeConstraint"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["createElement"]
  LOADK R19 K75 ["UIAspectRatioConstraint"]
  DUPTABLE R20 K79 [{"AspectRatio"}]
  GETTABLEKS R22 R4 K80 ["imageWidth"]
  GETTABLEKS R23 R4 K81 ["imageHeight"]
  DIV R21 R22 R23
  SETTABLEKS R21 R20 K78 ["AspectRatio"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K75 ["UIAspectRatioConstraint"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K15 ["createElement"]
  LOADK R19 K76 ["UISizeConstraint"]
  DUPTABLE R20 K84 [{"MaxSize", "MinSize"}]
  GETIMPORT R21 K86 [Vector2.new]
  GETTABLEKS R22 R4 K80 ["imageWidth"]
  GETTABLEKS R23 R4 K81 ["imageHeight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K82 ["MaxSize"]
  GETIMPORT R21 K86 [Vector2.new]
  GETTABLEKS R23 R4 K80 ["imageWidth"]
  MULK R22 R23 K87 [0.5]
  GETTABLEKS R24 R4 K81 ["imageHeight"]
  MULK R23 R24 K87 [0.5]
  CALL R21 2 1
  SETTABLEKS R21 R20 K83 ["MinSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K76 ["UISizeConstraint"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K25 ["ControllerImage"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R1 K0 ["LuaApps"]
  GETTABLEKS R2 R3 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R3 R2 K2 ["Typography"]
  GETTABLEKS R4 R2 K3 ["Color"]
  GETTABLEKS R5 R2 K4 ["Size"]
  GETTABLEKS R6 R2 K5 ["Space"]
  GETUPVAL R7 1
  GETIMPORT R9 K9 [Enum.KeyCode.ButtonSelect]
  NAMECALL R7 R7 K10 ["GetStringForKeyCode"]
  CALL R7 2 1
  GETUPVAL R10 2
  GETTABLE R9 R10 R7
  ORK R8 R9 K11 ["CoreScripts.InGameMenu.Label.ViewButton"]
  GETUPVAL R9 3
  DUPTABLE R10 K14 [{"OkText", "Description"}]
  LOADK R11 K15 ["CoreScripts.InGameMenu.Ok"]
  SETTABLEKS R11 R10 K12 ["OkText"]
  LOADK R11 K16 ["CoreScripts.InGameMenu.EducationalPopup.UINavigation.Description"]
  SETTABLEKS R11 R10 K13 ["Description"]
  CALL R9 1 1
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K17 ["createElement"]
  LOADK R11 K18 ["Frame"]
  DUPTABLE R12 K22 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency"}]
  LOADN R13 200
  SETTABLEKS R13 R12 K19 ["LayoutOrder"]
  GETIMPORT R13 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K20 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K21 ["BackgroundTransparency"]
  DUPTABLE R13 K30 [{"Layout", "Padding", "GamepadImageArea", "ImageDescription", "ConfirmationButton"}]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["createElement"]
  LOADK R15 K31 ["UIListLayout"]
  DUPTABLE R16 K36 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R17 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K32 ["FillDirection"]
  GETIMPORT R17 K39 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R17 R16 K33 ["SortOrder"]
  GETIMPORT R17 K41 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K34 ["HorizontalAlignment"]
  GETIMPORT R17 K42 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K35 ["VerticalAlignment"]
  GETIMPORT R17 K45 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R6 K46 ["bodyPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["Padding"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["Layout"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["createElement"]
  LOADK R15 K47 ["UIPadding"]
  DUPTABLE R16 K52 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R17 K45 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R6 K46 ["bodyPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K48 ["PaddingLeft"]
  GETIMPORT R17 K45 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R6 K46 ["bodyPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K49 ["PaddingRight"]
  GETIMPORT R17 K45 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R6 K46 ["bodyPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K50 ["PaddingTop"]
  GETIMPORT R17 K45 [UDim.new]
  LOADN R18 0
  GETTABLEKS R19 R6 K46 ["bodyPadding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["PaddingBottom"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["Padding"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 5
  CALL R14 1 1
  SETTABLEKS R14 R13 K27 ["GamepadImageArea"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["createElement"]
  LOADK R15 K53 ["TextLabel"]
  DUPTABLE R16 K62 [{"Text", "LayoutOrder", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "TextWrapped", "LineHeight", "Size", "AutomaticSize", "TextXAlignment", "TextYAlignment"}]
  GETTABLEKS R17 R9 K13 ["Description"]
  SETTABLEKS R17 R16 K54 ["Text"]
  LOADN R17 100
  SETTABLEKS R17 R16 K19 ["LayoutOrder"]
  LOADN R17 1
  SETTABLEKS R17 R16 K21 ["BackgroundTransparency"]
  GETTABLEKS R18 R3 K63 ["caption"]
  GETTABLEKS R17 R18 K55 ["Font"]
  SETTABLEKS R17 R16 K55 ["Font"]
  GETTABLEKS R18 R3 K63 ["caption"]
  GETTABLEKS R17 R18 K64 ["FontSize"]
  SETTABLEKS R17 R16 K56 ["TextSize"]
  GETTABLEKS R18 R4 K65 ["textColor"]
  GETTABLEKS R17 R18 K66 ["Color3"]
  SETTABLEKS R17 R16 K57 ["TextColor3"]
  LOADB R17 1
  SETTABLEKS R17 R16 K58 ["TextWrapped"]
  GETTABLEKS R18 R3 K63 ["caption"]
  GETTABLEKS R17 R18 K59 ["LineHeight"]
  SETTABLEKS R17 R16 K59 ["LineHeight"]
  GETIMPORT R17 K68 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K4 ["Size"]
  GETIMPORT R17 K70 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K20 ["AutomaticSize"]
  GETIMPORT R17 K72 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K60 ["TextXAlignment"]
  GETIMPORT R17 K73 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K61 ["TextYAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["ImageDescription"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K80 [{"buttonType", "layoutOrder", "size", "text", "onActivated", "icon"}]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K81 ["PrimarySystem"]
  SETTABLEKS R17 R16 K74 ["buttonType"]
  LOADN R17 200
  SETTABLEKS R17 R16 K75 ["layoutOrder"]
  GETIMPORT R17 K68 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETTABLEKS R21 R5 K82 ["buttonHeight"]
  CALL R17 4 1
  SETTABLEKS R17 R16 K76 ["size"]
  GETTABLEKS R17 R9 K12 ["OkText"]
  SETTABLEKS R17 R16 K77 ["text"]
  GETTABLEKS R17 R0 K83 ["onDismissed"]
  SETTABLEKS R17 R16 K78 ["onActivated"]
  GETTABLEKS R18 R0 K84 ["selectButtonDismissesGamepadNavigationDialog"]
  JUMPIFNOT R18 [+7]
  GETUPVAL R17 1
  GETIMPORT R19 K9 [Enum.KeyCode.ButtonSelect]
  NAMECALL R17 R17 K85 ["GetImageForKeyCode"]
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K79 ["icon"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K29 ["ConfirmationButton"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_3:
  GETIMPORT R3 K3 [Enum.UserInputState.End]
  JUMPIFNOTEQ R1 R3 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["onDismissed"]
  CALL R3 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onDismissGamepadNavigationDialog"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["ConfirmBindComponentMapperTokenModule"]
  NAMECALL R0 R0 K2 ["UnbindCoreAction"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onShowGamepadNavigationDialog"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["ConfirmBindComponentMapperTokenModule"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  LOADB R4 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["selectButtonDismissesGamepadNavigationDialog"]
  JUMPIFNOT R6 [+3]
  GETIMPORT R5 K6 [Enum.KeyCode.ButtonSelect]
  JUMP [+2]
  GETIMPORT R5 K8 [Enum.KeyCode.ButtonA]
  NAMECALL R0 R0 K9 ["BindCoreAction"]
  CALL R0 5 0
  DUPCLOSURE R0 K10 [PROTO_4]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R1 K0 ["LuaApps"]
  GETTABLEKS R2 R3 K1 ["MenuNavigationPrompt"]
  GETTABLEKS R3 R2 K2 ["Color"]
  GETTABLEKS R4 R2 K3 ["Size"]
  GETTABLEKS R5 R2 K4 ["Space"]
  GETTABLEKS R6 R2 K5 ["Radius"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["useEffect"]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R7 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  LOADK R8 K8 ["Frame"]
  DUPTABLE R9 K14 [{"BackgroundColor3", "BackgroundTransparency", "AutomaticSize", "Size", "Position", "AnchorPoint"}]
  GETTABLEKS R11 R3 K15 ["backgroundUiColor"]
  GETTABLEKS R10 R11 K16 ["Color3"]
  SETTABLEKS R10 R9 K9 ["BackgroundColor3"]
  GETTABLEKS R11 R3 K15 ["backgroundUiColor"]
  GETTABLEKS R10 R11 K17 ["Transparency"]
  SETTABLEKS R10 R9 K10 ["BackgroundTransparency"]
  GETIMPORT R10 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K11 ["AutomaticSize"]
  GETIMPORT R10 K23 [UDim2.fromScale]
  GETTABLEKS R12 R4 K24 ["promptWidth"]
  GETTABLEKS R13 R4 K25 ["displayWidth"]
  DIV R11 R12 R13
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K3 ["Size"]
  GETIMPORT R10 K23 [UDim2.fromScale]
  LOADK R11 K26 [0.5]
  LOADK R12 K26 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Position"]
  GETIMPORT R10 K29 [Vector2.new]
  LOADK R11 K26 [0.5]
  LOADK R12 K26 [0.5]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["AnchorPoint"]
  DUPTABLE R10 K36 [{"Corner", "Layout", "HeaderArea", "Separator", "Body", "UISizeConstraint"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
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
  GETTABLEKS R11 R12 K7 ["createElement"]
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
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 4
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["HeaderArea"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  LOADK R12 K8 ["Frame"]
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
  SETTABLEKS R14 R13 K9 ["BackgroundColor3"]
  GETTABLEKS R15 R3 K60 ["separatorColor"]
  GETTABLEKS R14 R15 K17 ["Transparency"]
  SETTABLEKS R14 R13 K10 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K56 ["BorderSizePixel"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["Separator"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 5
  MOVE R13 R0
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["Body"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  LOADK R12 K35 ["UISizeConstraint"]
  DUPTABLE R13 K63 [{"MaxSize", "MinSize"}]
  GETIMPORT R14 K29 [Vector2.new]
  LOADK R15 K64 [∞]
  LOADK R16 K64 [∞]
  CALL R14 2 1
  SETTABLEKS R14 R13 K61 ["MaxSize"]
  GETIMPORT R14 K29 [Vector2.new]
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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["LocalizationService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R3 K8 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["ContextActionService"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R8 R0 K12 ["Packages"]
  GETTABLEKS R7 R8 K13 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R9 R0 K12 ["Packages"]
  GETTABLEKS R8 R9 K14 ["UIBlox"]
  CALL R7 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R12 R0 K15 ["Workspace"]
  GETTABLEKS R11 R12 K12 ["Packages"]
  GETTABLEKS R10 R11 K16 ["Style"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K17 ["GetTextSize"]
  GETIMPORT R10 K11 [require]
  GETTABLEKS R13 R0 K15 ["Workspace"]
  GETTABLEKS R12 R13 K12 ["Packages"]
  GETTABLEKS R11 R12 K16 ["Style"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K18 ["useDesignTokens"]
  GETIMPORT R12 K11 [require]
  GETTABLEKS R15 R0 K15 ["Workspace"]
  GETTABLEKS R14 R15 K12 ["Packages"]
  GETTABLEKS R13 R14 K19 ["Localization"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K20 ["Hooks"]
  GETTABLEKS R10 R11 K21 ["useLocalization"]
  GETIMPORT R11 K11 [require]
  GETTABLEKS R14 R4 K22 ["Modules"]
  GETTABLEKS R13 R14 K23 ["Common"]
  GETTABLEKS R12 R13 K24 ["FocusNavigationEffectsWrapper"]
  CALL R11 1 1
  GETIMPORT R13 K11 [require]
  GETTABLEKS R16 R0 K15 ["Workspace"]
  GETTABLEKS R15 R16 K12 ["Packages"]
  GETTABLEKS R14 R15 K25 ["FocusNavigationUtils"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K26 ["FocusNavigableSurfaceIdentifierEnum"]
  GETIMPORT R14 K11 [require]
  GETTABLEKS R17 R0 K15 ["Workspace"]
  GETTABLEKS R16 R17 K12 ["Packages"]
  GETTABLEKS R15 R16 K27 ["CoreScriptsRoactCommon"]
  CALL R14 1 1
  GETTABLEKS R13 R14 K28 ["CoreScriptsRootProvider"]
  GETIMPORT R14 K30 [script]
  LOADK R16 K31 ["TopBar"]
  NAMECALL R14 R14 K32 ["FindFirstAncestor"]
  CALL R14 2 1
  GETIMPORT R16 K11 [require]
  GETTABLEKS R17 R14 K33 ["Analytics"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K34 ["default"]
  GETIMPORT R16 K11 [require]
  GETTABLEKS R18 R14 K35 ["TokenMappers"]
  GETTABLEKS R17 R18 K36 ["MenuNavigationPromptTokenMapper"]
  CALL R16 1 1
  GETTABLEKS R19 R7 K37 ["App"]
  GETTABLEKS R18 R19 K38 ["Button"]
  GETTABLEKS R17 R18 K38 ["Button"]
  GETTABLEKS R21 R7 K37 ["App"]
  GETTABLEKS R20 R21 K38 ["Button"]
  GETTABLEKS R19 R20 K39 ["Enum"]
  GETTABLEKS R18 R19 K40 ["ButtonType"]
  DUPTABLE R19 K44 [{"ButtonSelect", "ButtonTouchpad", "ButtonShare"}]
  LOADK R20 K45 ["CoreScripts.InGameMenu.Label.ViewButton"]
  SETTABLEKS R20 R19 K41 ["ButtonSelect"]
  LOADK R20 K46 ["CoreScripts.InGameMenu.Label.TouchpadButton"]
  SETTABLEKS R20 R19 K42 ["ButtonTouchpad"]
  LOADK R20 K47 ["CoreScripts.InGameMenu.Label.ShareButton"]
  SETTABLEKS R20 R19 K43 ["ButtonShare"]
  DUPCLOSURE R20 K48 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  DUPCLOSURE R21 K49 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R6
  DUPCLOSURE R22 K50 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R21
  CAPTURE VAL R17
  CAPTURE VAL R18
  DUPCLOSURE R23 K51 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R22
  RETURN R23 1
