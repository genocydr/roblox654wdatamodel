PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKN R1 K0 [1] [+6]
  GETUPVAL R2 0
  LOADB R4 0
  NAMECALL R2 R2 K1 ["ToggleTeamCreate"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
  SETTABLEKS R1 R6 K1 ["LayoutOrder"]
  SETTABLEKS R2 R6 K2 ["OnClick"]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 32
  CALL R7 4 1
  SETTABLEKS R7 R6 K3 ["Size"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["Hover"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K4 ["StyleModifier"]
  NEWTABLE R7 0 1
  MOVE R8 R0
  SETLIST R7 R8 1 [1]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollaboratorsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["use"]
  CALL R1 0 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K4 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R6 3
  LOADK R10 K6 ["Settings"]
  LOADK R11 K7 ["DisableTeamCreate"]
  NAMECALL R8 R1 K8 ["getText"]
  CALL R8 3 1
  LOADN R9 22
  GETIMPORT R10 K12 [Enum.Font.SourceSans]
  GETUPVAL R11 4
  NAMECALL R6 R6 K13 ["GetTextSize"]
  CALL R6 5 1
  GETTABLEKS R5 R6 K14 ["X"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["createElement"]
  LOADK R7 K16 ["Frame"]
  DUPTABLE R8 K22 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "ZIndex"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K17 ["BackgroundTransparency"]
  GETIMPORT R9 K25 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R2 K26 ["footer"]
  GETTABLEKS R13 R14 K27 ["height"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K18 ["Size"]
  GETIMPORT R9 K29 [Vector2.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["AnchorPoint"]
  GETIMPORT R9 K31 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["Position"]
  LOADN R9 2
  SETTABLEKS R9 R8 K21 ["ZIndex"]
  DUPTABLE R9 K35 [{"Border", "Button", "Menu"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K36 ["UIStroke"]
  DUPTABLE R12 K40 [{"ApplyStrokeMode", "Thickness", "Color"}]
  GETIMPORT R13 K41 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R13 R12 K37 ["ApplyStrokeMode"]
  LOADN R13 1
  SETTABLEKS R13 R12 K38 ["Thickness"]
  GETTABLEKS R14 R2 K26 ["footer"]
  GETTABLEKS R13 R14 K42 ["borderColor"]
  SETTABLEKS R13 R12 K39 ["Color"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["Border"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K47 [{"OnClick", "LeftIcon", "IconColor", "Size", "Style", "Position", "AnchorPoint"}]
  NEWCLOSURE R13 P0
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K43 ["OnClick"]
  GETTABLEKS R14 R2 K26 ["footer"]
  GETTABLEKS R13 R14 K48 ["moreIcon"]
  SETTABLEKS R13 R12 K44 ["LeftIcon"]
  GETTABLEKS R14 R2 K26 ["footer"]
  GETTABLEKS R13 R14 K49 ["iconColor"]
  SETTABLEKS R13 R12 K45 ["IconColor"]
  GETIMPORT R13 K51 [UDim2.fromOffset]
  LOADN R14 16
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["Size"]
  LOADK R13 K52 ["IconOnly"]
  SETTABLEKS R13 R12 K46 ["Style"]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADK R16 K53 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K20 ["Position"]
  GETIMPORT R13 K29 [Vector2.new]
  LOADN R14 1
  LOADK R15 K53 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["AnchorPoint"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K33 ["Button"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K16 ["Frame"]
  DUPTABLE R12 K54 [{"Position", "AnchorPoint", "BackgroundTransparency"}]
  GETUPVAL R14 6
  JUMPIFNOT R14 [+8]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 1
  LOADN R15 236
  LOADN R16 1
  LOADN R17 240
  CALL R13 4 1
  JUMPIF R13 [+7]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 1
  LOADN R15 252
  LOADK R16 K53 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K20 ["Position"]
  GETUPVAL R14 6
  JUMPIFNOT R14 [+6]
  GETIMPORT R13 K29 [Vector2.new]
  LOADN R14 1
  LOADN R15 0
  CALL R13 2 1
  JUMPIF R13 [+5]
  GETIMPORT R13 K29 [Vector2.new]
  LOADN R14 1
  LOADK R15 K53 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["AnchorPoint"]
  LOADN R13 1
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  NEWTABLE R13 0 1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K15 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K60 [{"Hide", "Items", "OnItemActivated", "OnRenderItem", "OnFocusLost", "Style"}]
  NOT R17 R3
  SETTABLEKS R17 R16 K55 ["Hide"]
  NEWTABLE R17 0 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K15 ["createElement"]
  GETUPVAL R19 8
  DUPTABLE R20 K64 [{"Text", "TextXAlignment", "TextColor"}]
  LOADK R23 K6 ["Settings"]
  LOADK R24 K7 ["DisableTeamCreate"]
  NAMECALL R21 R1 K8 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K61 ["Text"]
  GETIMPORT R21 K66 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K62 ["TextXAlignment"]
  GETTABLEKS R22 R2 K26 ["footer"]
  GETTABLEKS R21 R22 K67 ["disableTeamCreateColor"]
  SETTABLEKS R21 R20 K63 ["TextColor"]
  DUPTABLE R21 K69 [{"Padding"}]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K15 ["createElement"]
  LOADK R23 K70 ["UIPadding"]
  DUPTABLE R24 K72 [{"PaddingLeft"}]
  GETIMPORT R25 K74 [UDim.new]
  LOADN R26 0
  LOADN R27 10
  CALL R25 2 1
  SETTABLEKS R25 R24 K71 ["PaddingLeft"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K68 ["Padding"]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  SETTABLEKS R17 R16 K56 ["Items"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R0
  SETTABLEKS R17 R16 K57 ["OnItemActivated"]
  DUPCLOSURE R17 K75 [PROTO_2]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  SETTABLEKS R17 R16 K58 ["OnRenderItem"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R4
  SETTABLEKS R17 R16 K59 ["OnFocusLost"]
  DUPTABLE R17 K79 [{"Width", "MaxHeight", "Offset"}]
  SETTABLEKS R5 R17 K76 ["Width"]
  GETUPVAL R19 6
  JUMPIFNOT R19 [+2]
  LOADN R18 32
  JUMP [+1]
  LOADN R18 120
  SETTABLEKS R18 R17 K77 ["MaxHeight"]
  GETUPVAL R19 6
  JUMPIFNOT R19 [+3]
  GETIMPORT R18 K81 [Vector2.zero]
  JUMPIF R18 [+5]
  GETIMPORT R18 K29 [Vector2.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K78 ["Offset"]
  SETTABLEKS R17 R16 K46 ["Style"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K34 ["Menu"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["Localization"]
  GETTABLEKS R6 R2 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R7 R2 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["StyleModifier"]
  GETTABLEKS R7 R2 K14 ["UI"]
  GETTABLEKS R8 R7 K15 ["IconButton"]
  GETTABLEKS R9 R7 K16 ["DropdownMenu"]
  GETTABLEKS R10 R7 K17 ["TextLabel"]
  GETTABLEKS R11 R7 K18 ["Button"]
  GETIMPORT R12 K20 [game]
  LOADK R14 K21 ["TextService"]
  NAMECALL R12 R12 K22 ["GetService"]
  CALL R12 2 1
  GETIMPORT R13 K25 [Vector2.new]
  LOADN R14 232
  LOADN R15 1
  CALL R13 2 1
  GETIMPORT R14 K20 [game]
  LOADK R16 K26 ["FixSocialPresenceDropdown"]
  NAMECALL R14 R14 K27 ["GetFastFlag"]
  CALL R14 2 1
  DUPCLOSURE R15 K28 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R6
  RETURN R15 1
