PROTO_0:
  DUPTABLE R1 K2 [{"hovered", "pressed"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["hovered"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["pressed"]
  SETTABLEKS R1 R0 K3 ["state"]
  RETURN R0 0

PROTO_1:
  LOADNIL R1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["isMain"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["pressed"]
  JUMPIF R2 [+5]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K4 ["hovered"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["Hover"]
  JUMP [+21]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["Default"]
  JUMP [+17]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["pressed"]
  JUMPIF R2 [+5]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K4 ["hovered"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["Hover"]
  JUMP [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["Default"]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["isMain"]
  JUMPIFNOT R3 [+2]
  GETUPVAL R2 1
  JUMPIF R2 [+1]
  GETUPVAL R2 2
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["isMain"]
  JUMPIFNOT R3 [+2]
  GETUPVAL R2 1
  JUMPIF R2 [+1]
  GETUPVAL R2 2
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"hovered"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["hovered"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseMovement]
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"hovered", "pressed"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["hovered"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["pressed"]
  NAMECALL R2 R2 K7 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"pressed"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["pressed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"pressed"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["pressed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["ImageButton"]
  NEWTABLE R3 16 0
  LOADN R4 1
  SETTABLEKS R4 R3 K2 ["BackgroundTransparency"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["BUTTON_AVATAR_TYPE"]
  SETTABLEKS R4 R3 K4 ["Image"]
  GETIMPORT R4 K8 [Enum.ScaleType.Slice]
  SETTABLEKS R4 R3 K6 ["ScaleType"]
  GETTABLEKS R6 R0 K9 ["props"]
  GETTABLEKS R5 R6 K10 ["isLarge"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R4 K13 [UDim2.new]
  LOADN R5 0
  LOADN R6 192
  LOADN R7 0
  LOADN R8 34
  CALL R4 4 1
  JUMPIF R4 [+7]
  GETIMPORT R4 K13 [UDim2.new]
  LOADN R5 0
  LOADN R6 102
  LOADN R7 0
  LOADN R8 34
  CALL R4 4 1
  SETTABLEKS R4 R3 K14 ["Size"]
  GETIMPORT R4 K16 [Rect.new]
  LOADN R5 4
  LOADN R6 4
  LOADN R7 5
  LOADN R8 5
  CALL R4 4 1
  SETTABLEKS R4 R3 K17 ["SliceCenter"]
  NAMECALL R4 R0 K18 ["getButtonThemeConfig"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["ImageColor3"]
  GETTABLEKS R5 R0 K9 ["props"]
  GETTABLEKS R4 R5 K20 ["layoutOrder"]
  SETTABLEKS R4 R3 K21 ["LayoutOrder"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["Event"]
  GETTABLEKS R4 R5 K23 ["InputBegan"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["Event"]
  GETTABLEKS R4 R5 K24 ["InputEnded"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["Event"]
  GETTABLEKS R4 R5 K25 ["MouseButton1Down"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["Event"]
  GETTABLEKS R4 R5 K26 ["MouseButton1Up"]
  NEWCLOSURE R5 P3
  CAPTURE VAL R0
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K22 ["Event"]
  GETTABLEKS R4 R5 K27 ["MouseButton1Click"]
  GETTABLEKS R6 R0 K9 ["props"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K22 ["Event"]
  GETTABLEKS R7 R8 K27 ["MouseButton1Click"]
  GETTABLE R5 R6 R7
  SETTABLE R5 R3 R4
  DUPTABLE R4 K30 [{"border", "label"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K31 ["ImageLabel"]
  DUPTABLE R7 K32 [{"BackgroundTransparency", "Image", "ScaleType", "Size", "SliceCenter", "ImageColor3"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["BackgroundTransparency"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K33 ["BUTTON_AVATAR_TYPE_BORDER"]
  SETTABLEKS R8 R7 K4 ["Image"]
  GETIMPORT R8 K8 [Enum.ScaleType.Slice]
  SETTABLEKS R8 R7 K6 ["ScaleType"]
  GETIMPORT R8 K13 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Size"]
  GETIMPORT R8 K16 [Rect.new]
  LOADN R9 4
  LOADN R10 4
  LOADN R11 5
  LOADN R12 5
  CALL R8 4 1
  SETTABLEKS R8 R7 K17 ["SliceCenter"]
  NAMECALL R8 R0 K34 ["getBorderThemeConfig"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K19 ["ImageColor3"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K28 ["border"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K35 ["TextLabel"]
  DUPTABLE R7 K40 [{"BackgroundTransparency", "Font", "Size", "TextSize", "Text", "TextColor3"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K2 ["BackgroundTransparency"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K41 ["FONT"]
  SETTABLEKS R8 R7 K36 ["Font"]
  GETIMPORT R8 K13 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K42 ["FONT_SIZE_TITLE"]
  SETTABLEKS R8 R7 K37 ["TextSize"]
  GETTABLEKS R9 R0 K9 ["props"]
  GETTABLEKS R8 R9 K43 ["labelText"]
  SETTABLEKS R8 R7 K38 ["Text"]
  NAMECALL R8 R0 K44 ["getLabelThemeConfig"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K39 ["TextColor3"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K29 ["label"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["src"]
  GETTABLEKS R3 R4 K8 ["Assets"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["src"]
  GETTABLEKS R5 R6 K9 ["utils"]
  GETTABLEKS R4 R5 K10 ["themeConfig"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["src"]
  GETTABLEKS R5 R6 K11 ["Constants"]
  CALL R4 1 1
  DUPTABLE R5 K14 [{"Default", "Hover"}]
  DUPTABLE R6 K17 [{"Light", "Dark"}]
  GETIMPORT R7 K20 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["Light"]
  GETIMPORT R7 K20 [Color3.fromRGB]
  LOADN R8 60
  LOADN R9 60
  LOADN R10 60
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["Dark"]
  SETTABLEKS R6 R5 K12 ["Default"]
  DUPTABLE R6 K17 [{"Light", "Dark"}]
  GETIMPORT R7 K20 [Color3.fromRGB]
  LOADN R8 228
  LOADN R9 238
  LOADN R10 254
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["Light"]
  GETIMPORT R7 K20 [Color3.fromRGB]
  LOADN R8 66
  LOADN R9 66
  LOADN R10 66
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["Dark"]
  SETTABLEKS R6 R5 K13 ["Hover"]
  DUPTABLE R6 K14 [{"Default", "Hover"}]
  DUPTABLE R7 K17 [{"Light", "Dark"}]
  GETIMPORT R8 K20 [Color3.fromRGB]
  LOADN R9 0
  LOADN R10 162
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["Light"]
  GETIMPORT R8 K20 [Color3.fromRGB]
  LOADN R9 0
  LOADN R10 162
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["Dark"]
  SETTABLEKS R7 R6 K12 ["Default"]
  DUPTABLE R7 K17 [{"Light", "Dark"}]
  GETIMPORT R8 K20 [Color3.fromRGB]
  LOADN R9 50
  LOADN R10 181
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["Light"]
  GETIMPORT R8 K20 [Color3.fromRGB]
  LOADN R9 50
  LOADN R10 181
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["Dark"]
  SETTABLEKS R7 R6 K13 ["Hover"]
  DUPTABLE R7 K17 [{"Light", "Dark"}]
  GETIMPORT R8 K20 [Color3.fromRGB]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["Light"]
  GETIMPORT R8 K20 [Color3.fromRGB]
  LOADN R9 255
  LOADN R10 255
  LOADN R11 255
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["Dark"]
  DUPTABLE R8 K17 [{"Light", "Dark"}]
  GETIMPORT R9 K20 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 255
  LOADN R12 255
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Light"]
  GETIMPORT R9 K20 [Color3.fromRGB]
  LOADN R10 255
  LOADN R11 255
  LOADN R12 255
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["Dark"]
  DUPTABLE R9 K17 [{"Light", "Dark"}]
  GETIMPORT R10 K20 [Color3.fromRGB]
  LOADN R11 184
  LOADN R12 184
  LOADN R13 184
  CALL R10 3 1
  SETTABLEKS R10 R9 K15 ["Light"]
  GETIMPORT R10 K20 [Color3.fromRGB]
  LOADN R11 60
  LOADN R12 60
  LOADN R13 60
  CALL R10 3 1
  SETTABLEKS R10 R9 K16 ["Dark"]
  DUPTABLE R10 K17 [{"Light", "Dark"}]
  GETIMPORT R11 K20 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K15 ["Light"]
  GETIMPORT R11 K20 [Color3.fromRGB]
  LOADN R12 0
  LOADN R13 162
  LOADN R14 255
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["Dark"]
  GETTABLEKS R11 R1 K21 ["Component"]
  LOADK R13 K22 ["CustomTextButton"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K24 [PROTO_0]
  SETTABLEKS R12 R11 K25 ["init"]
  DUPCLOSURE R12 K26 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K27 ["getButtonThemeConfig"]
  DUPCLOSURE R12 K28 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K29 ["getLabelThemeConfig"]
  DUPCLOSURE R12 K30 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K31 ["getBorderThemeConfig"]
  DUPCLOSURE R12 K32 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K33 ["render"]
  RETURN R11 1