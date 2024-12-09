PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["RobloxLocaleId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETIMPORT R1 K2 [pcall]
  GETTABLEKS R2 R0 K3 ["Format"]
  MOVE R3 R0
  LOADK R4 K4 ["CoreScripts.InGameMenu.VirtualCursorHintPreIcon"]
  CALL R1 3 2
  GETIMPORT R3 K2 [pcall]
  GETTABLEKS R4 R0 K3 ["Format"]
  MOVE R5 R0
  LOADK R6 K5 ["CoreScripts.InGameMenu.VirtualCursorHintPostIcon"]
  CALL R3 3 2
  JUMPIFNOT R1 [+2]
  MOVE R5 R2
  JUMP [+1]
  LOADK R5 K6 ["Some experiences require pressing"]
  JUMPIFNOT R3 [+2]
  MOVE R6 R4
  RETURN R5 2
  LOADK R6 K7 ["to toggle menu navigation"]
  RETURN R5 2

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["FontSize"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Font"]
  GETIMPORT R4 K4 [Vector2.new]
  LOADK R5 K5 [∞]
  LOADK R6 K5 [∞]
  CALL R4 2 -1
  CALL R0 -1 1
  GETUPVAL R1 0
  GETUPVAL R2 3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["FontSize"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Font"]
  GETIMPORT R5 K4 [Vector2.new]
  LOADK R6 K5 [∞]
  LOADK R7 K5 [∞]
  CALL R5 2 -1
  CALL R1 -1 1
  RETURN R0 2

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R4 R1 K0 ["Semantic"]
  GETTABLEKS R3 R4 K1 ["Typography"]
  GETTABLEKS R2 R3 K2 ["CaptionHeader"]
  GETTABLEKS R4 R1 K3 ["Global"]
  GETTABLEKS R3 R4 K4 ["Space_200"]
  GETTABLEKS R5 R1 K3 ["Global"]
  GETTABLEKS R4 R5 K5 ["Space_75"]
  GETTABLEKS R7 R1 K0 ["Semantic"]
  GETTABLEKS R6 R7 K6 ["Radius"]
  GETTABLEKS R5 R6 K7 ["Medium"]
  GETTABLEKS R7 R1 K3 ["Global"]
  GETTABLEKS R6 R7 K8 ["Size_300"]
  GETTABLEKS R10 R1 K0 ["Semantic"]
  GETTABLEKS R9 R10 K9 ["Color"]
  GETTABLEKS R8 R9 K10 ["BackgroundUi"]
  GETTABLEKS R7 R8 K11 ["Contrast"]
  GETTABLEKS R12 R1 K0 ["Semantic"]
  GETTABLEKS R11 R12 K9 ["Color"]
  GETTABLEKS R10 R11 K12 ["Text"]
  GETTABLEKS R9 R10 K13 ["Emphasis"]
  GETTABLEKS R8 R9 K14 ["Color3"]
  GETTABLEKS R10 R1 K3 ["Global"]
  GETTABLEKS R9 R10 K15 ["Space_50"]
  GETUPVAL R11 1
  JUMPIFNOT R11 [+14]
  GETIMPORT R11 K17 [game]
  LOADK R13 K18 ["GetImageForKeyCode"]
  NAMECALL R11 R11 K19 ["GetEngineFeature"]
  CALL R11 2 1
  JUMPIFNOT R11 [+7]
  GETUPVAL R10 2
  GETIMPORT R12 K23 [Enum.KeyCode.ButtonSelect]
  NAMECALL R10 R10 K18 ["GetImageForKeyCode"]
  CALL R10 2 1
  JUMP [+1]
  LOADK R10 K24 ["rbxasset://textures/ui/Controls/DesignSystem/ButtonSelect@2x.png"]
  LOADNIL R11
  LOADNIL R12
  GETUPVAL R13 1
  JUMPIFNOT R13 [+32]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K25 ["useState"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K26 ["RobloxLocaleId"]
  CALL R13 1 2
  GETUPVAL R15 5
  GETUPVAL R16 4
  LOADK R18 K26 ["RobloxLocaleId"]
  NAMECALL R16 R16 K27 ["GetPropertyChangedSignal"]
  CALL R16 2 1
  NEWCLOSURE R17 P0
  CAPTURE VAL R14
  CAPTURE UPVAL U4
  CALL R15 2 0
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K28 ["useMemo"]
  NEWCLOSURE R16 P1
  CAPTURE UPVAL U6
  CAPTURE VAL R13
  NEWTABLE R17 0 1
  MOVE R18 R13
  SETLIST R17 R18 1 [1]
  CALL R15 2 2
  MOVE R11 R15
  MOVE R12 R16
  JUMP [+11]
  DUPTABLE R13 K31 [{"VirtualCursorHintPreIcon", "VirtualCursorHintPostIcon"}]
  LOADK R14 K32 ["Some experiences require pressing "]
  SETTABLEKS R14 R13 K29 ["VirtualCursorHintPreIcon"]
  LOADK R14 K33 [" to toggle menu navigation"]
  SETTABLEKS R14 R13 K30 ["VirtualCursorHintPostIcon"]
  GETTABLEKS R11 R13 K29 ["VirtualCursorHintPreIcon"]
  GETTABLEKS R12 R13 K30 ["VirtualCursorHintPostIcon"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K28 ["useMemo"]
  NEWCLOSURE R14 P2
  CAPTURE UPVAL U7
  CAPTURE REF R11
  CAPTURE VAL R2
  CAPTURE REF R12
  NEWTABLE R15 0 4
  GETTABLEKS R16 R2 K34 ["FontSize"]
  GETTABLEKS R17 R2 K35 ["Font"]
  MOVE R18 R11
  MOVE R19 R12
  SETLIST R15 R16 4 [1]
  CALL R13 2 2
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K36 ["createElement"]
  LOADK R16 K37 ["Frame"]
  DUPTABLE R17 K43 [{"BackgroundColor3", "BackgroundTransparency", "AutomaticSize", "AnchorPoint", "Position"}]
  GETTABLEKS R18 R7 K14 ["Color3"]
  SETTABLEKS R18 R17 K38 ["BackgroundColor3"]
  GETTABLEKS R18 R7 K44 ["Transparency"]
  SETTABLEKS R18 R17 K39 ["BackgroundTransparency"]
  GETIMPORT R18 K46 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K40 ["AutomaticSize"]
  GETIMPORT R18 K49 [Vector2.new]
  LOADK R19 K50 [0.5]
  LOADK R20 K50 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["AnchorPoint"]
  GETTABLEKS R18 R0 K42 ["Position"]
  SETTABLEKS R18 R17 K42 ["Position"]
  DUPTABLE R18 K57 [{"Corner", "Layout", "LeftText", "Icon", "RightText", "Padding"}]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["createElement"]
  LOADK R20 K58 ["UICorner"]
  DUPTABLE R21 K60 [{"CornerRadius"}]
  GETIMPORT R22 K62 [UDim.new]
  LOADN R23 0
  MOVE R24 R5
  CALL R22 2 1
  SETTABLEKS R22 R21 K59 ["CornerRadius"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K51 ["Corner"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["createElement"]
  LOADK R20 K63 ["UIListLayout"]
  DUPTABLE R21 K68 [{"FillDirection", "SortOrder", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R22 K70 [Enum.FillDirection.Horizontal]
  SETTABLEKS R22 R21 K64 ["FillDirection"]
  GETIMPORT R22 K72 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R22 R21 K65 ["SortOrder"]
  GETIMPORT R22 K74 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R22 R21 K66 ["HorizontalAlignment"]
  GETIMPORT R22 K75 [Enum.VerticalAlignment.Center]
  SETTABLEKS R22 R21 K67 ["VerticalAlignment"]
  GETUPVAL R23 1
  JUMPIFNOT R23 [+6]
  GETIMPORT R22 K62 [UDim.new]
  LOADN R23 0
  MOVE R24 R9
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K56 ["Padding"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K52 ["Layout"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["createElement"]
  LOADK R20 K76 ["TextLabel"]
  DUPTABLE R21 K83 [{"Size", "Text", "TextXAlignment", "TextYAlignment", "TextColor3", "Font", "TextSize", "TextWrapped", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R22 K86 [UDim2.fromOffset]
  GETTABLEKS R23 R13 K87 ["X"]
  GETTABLEKS R24 R13 K88 ["Y"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K77 ["Size"]
  SETTABLEKS R11 R21 K12 ["Text"]
  GETIMPORT R22 K89 [Enum.TextXAlignment.Center]
  SETTABLEKS R22 R21 K78 ["TextXAlignment"]
  GETIMPORT R22 K90 [Enum.TextYAlignment.Center]
  SETTABLEKS R22 R21 K79 ["TextYAlignment"]
  SETTABLEKS R8 R21 K80 ["TextColor3"]
  GETTABLEKS R22 R2 K35 ["Font"]
  SETTABLEKS R22 R21 K35 ["Font"]
  GETTABLEKS R22 R2 K34 ["FontSize"]
  SETTABLEKS R22 R21 K81 ["TextSize"]
  LOADB R22 0
  SETTABLEKS R22 R21 K82 ["TextWrapped"]
  LOADN R22 1
  SETTABLEKS R22 R21 K39 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K71 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K53 ["LeftText"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["createElement"]
  LOADK R20 K91 ["ImageLabel"]
  DUPTABLE R21 K93 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image"}]
  GETIMPORT R22 K86 [UDim2.fromOffset]
  MOVE R23 R6
  MOVE R24 R6
  CALL R22 2 1
  SETTABLEKS R22 R21 K77 ["Size"]
  LOADN R22 1
  SETTABLEKS R22 R21 K39 ["BackgroundTransparency"]
  LOADN R22 100
  SETTABLEKS R22 R21 K71 ["LayoutOrder"]
  SETTABLEKS R10 R21 K92 ["Image"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K54 ["Icon"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["createElement"]
  LOADK R20 K76 ["TextLabel"]
  DUPTABLE R21 K83 [{"Size", "Text", "TextXAlignment", "TextYAlignment", "TextColor3", "Font", "TextSize", "TextWrapped", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R22 K86 [UDim2.fromOffset]
  GETTABLEKS R23 R14 K87 ["X"]
  GETTABLEKS R24 R14 K88 ["Y"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K77 ["Size"]
  SETTABLEKS R12 R21 K12 ["Text"]
  GETIMPORT R22 K89 [Enum.TextXAlignment.Center]
  SETTABLEKS R22 R21 K78 ["TextXAlignment"]
  GETIMPORT R22 K90 [Enum.TextYAlignment.Center]
  SETTABLEKS R22 R21 K79 ["TextYAlignment"]
  SETTABLEKS R8 R21 K80 ["TextColor3"]
  GETTABLEKS R22 R2 K35 ["Font"]
  SETTABLEKS R22 R21 K35 ["Font"]
  GETTABLEKS R22 R2 K34 ["FontSize"]
  SETTABLEKS R22 R21 K81 ["TextSize"]
  LOADB R22 0
  SETTABLEKS R22 R21 K82 ["TextWrapped"]
  LOADN R22 1
  SETTABLEKS R22 R21 K39 ["BackgroundTransparency"]
  LOADN R22 200
  SETTABLEKS R22 R21 K71 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K55 ["RightText"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K36 ["createElement"]
  LOADK R20 K94 ["UIPadding"]
  DUPTABLE R21 K99 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R22 K62 [UDim.new]
  LOADN R23 0
  MOVE R24 R4
  CALL R22 2 1
  SETTABLEKS R22 R21 K95 ["PaddingTop"]
  GETIMPORT R22 K62 [UDim.new]
  LOADN R23 0
  MOVE R24 R4
  CALL R22 2 1
  SETTABLEKS R22 R21 K96 ["PaddingBottom"]
  GETIMPORT R22 K62 [UDim.new]
  LOADN R23 0
  MOVE R24 R3
  CALL R22 2 1
  SETTABLEKS R22 R21 K97 ["PaddingLeft"]
  GETIMPORT R22 K62 [UDim.new]
  LOADN R23 0
  MOVE R24 R3
  CALL R22 2 1
  SETTABLEKS R22 R21 K98 ["PaddingRight"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K56 ["Padding"]
  CALL R15 3 -1
  CLOSEUPVALS R11
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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["LocalizationService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["UserInputService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R1 K8 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K12 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K13 ["UIBlox"]
  CALL R6 1 1
  GETTABLEKS R9 R6 K14 ["Core"]
  GETTABLEKS R8 R9 K15 ["Hooks"]
  GETTABLEKS R7 R8 K16 ["useExternalEvent"]
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R0 K17 ["Workspace"]
  GETTABLEKS R11 R12 K11 ["Packages"]
  GETTABLEKS R10 R11 K18 ["Style"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K19 ["GetTextSize"]
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R0 K17 ["Workspace"]
  GETTABLEKS R12 R13 K11 ["Packages"]
  GETTABLEKS R11 R12 K18 ["Style"]
  CALL R10 1 1
  GETTABLEKS R9 R10 K20 ["useDesignTokens"]
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R0 K17 ["Workspace"]
  GETTABLEKS R13 R14 K11 ["Packages"]
  GETTABLEKS R12 R13 K21 ["InExperienceLocales"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K22 ["Localization"]
  GETIMPORT R11 K10 [require]
  GETTABLEKS R16 R1 K7 ["RobloxGui"]
  GETTABLEKS R15 R16 K23 ["Modules"]
  GETTABLEKS R14 R15 K24 ["TopBar"]
  GETTABLEKS R13 R14 K25 ["Flags"]
  GETTABLEKS R12 R13 K26 ["FFlagLocalizeMenuNavigationToggleDialog"]
  CALL R11 1 1
  DUPCLOSURE R12 K27 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  RETURN R12 1
