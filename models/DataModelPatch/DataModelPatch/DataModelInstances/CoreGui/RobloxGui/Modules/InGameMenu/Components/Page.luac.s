PROTO_0:
  DUPTABLE R1 K2 [{"ExtraChildren", "BackButton"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["titleChildren"]
  SETTABLEKS R2 R1 K0 ["ExtraChildren"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 16 0
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["Images"]
  GETTABLEKS R5 R6 K7 ["NavigateBack"]
  SETTABLEKS R5 R4 K8 ["Image"]
  GETIMPORT R5 K11 [Vector2.new]
  LOADN R6 0
  LOADK R7 K12 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["AnchorPoint"]
  GETTABLEKS R7 R0 K14 ["Theme"]
  GETTABLEKS R6 R7 K15 ["IconEmphasis"]
  GETTABLEKS R5 R6 K16 ["Color"]
  SETTABLEKS R5 R4 K17 ["ImageColor3"]
  GETTABLEKS R7 R0 K14 ["Theme"]
  GETTABLEKS R6 R7 K15 ["IconEmphasis"]
  GETTABLEKS R5 R6 K18 ["Transparency"]
  SETTABLEKS R5 R4 K19 ["ImageTransparency"]
  GETIMPORT R5 K21 [UDim2.new]
  LOADN R6 0
  LOADN R7 4
  LOADK R8 K12 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K22 ["Position"]
  GETIMPORT R5 K21 [UDim2.new]
  LOADN R6 0
  LOADN R7 36
  LOADN R8 0
  LOADN R9 36
  CALL R5 4 1
  SETTABLEKS R5 R4 K23 ["Size"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K24 ["NextSelectionDown"]
  SETTABLEKS R5 R4 K24 ["NextSelectionDown"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K25 ["Event"]
  GETTABLEKS R5 R6 K26 ["Activated"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K27 ["navigateUp"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K28 ["Ref"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K29 ["buttonRef"]
  SETTABLE R6 R4 R5
  GETUPVAL R5 4
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K30 ["RoundedRect"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K31 ["SelectionImageObject"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["BackButton"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  LOADK R3 K32 ["TextButton"]
  DUPTABLE R4 K40 [{"AutoButtonColor", "Text", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "Visible", "ZIndex", "Selectable"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K33 ["AutoButtonColor"]
  LOADK R5 K41 [""]
  SETTABLEKS R5 R4 K34 ["Text"]
  GETTABLEKS R7 R0 K14 ["Theme"]
  GETTABLEKS R6 R7 K42 ["BackgroundContrast"]
  GETTABLEKS R5 R6 K16 ["Color"]
  SETTABLEKS R5 R4 K35 ["BackgroundColor3"]
  GETTABLEKS R7 R0 K14 ["Theme"]
  GETTABLEKS R6 R7 K42 ["BackgroundContrast"]
  GETTABLEKS R5 R6 K18 ["Transparency"]
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  LOADN R5 0
  SETTABLEKS R5 R4 K36 ["BorderSizePixel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K43 ["position"]
  SETTABLEKS R5 R4 K22 ["Position"]
  GETIMPORT R5 K21 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K23 ["Size"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K44 ["visible"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K45 ["pageIsModal"]
  NOT R5 R6
  SETTABLEKS R5 R4 K37 ["Visible"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K46 ["zIndex"]
  SETTABLEKS R5 R4 K38 ["ZIndex"]
  LOADB R5 0
  SETTABLEKS R5 R4 K39 ["Selectable"]
  DUPTABLE R5 K50 [{"PageTitle", "PageContainer", "ZonePortal"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K53 [{"fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text"}]
  LOADK R9 K54 ["Header1"]
  SETTABLEKS R9 R8 K51 ["fontKey"]
  LOADK R9 K55 ["TextEmphasis"]
  SETTABLEKS R9 R8 K52 ["themeKey"]
  GETIMPORT R9 K11 [Vector2.new]
  LOADK R10 K12 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["AnchorPoint"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADK R10 K12 [0.5]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 28
  CALL R9 4 1
  SETTABLEKS R9 R8 K22 ["Position"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 1
  LOADN R11 208
  LOADN R12 0
  LOADN R13 28
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Size"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K56 ["pageTitle"]
  SETTABLEKS R9 R8 K34 ["Text"]
  MOVE R9 R1
  CALL R6 3 1
  SETTABLEKS R6 R5 K47 ["PageTitle"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K57 ["Frame"]
  DUPTABLE R8 K58 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
  GETIMPORT R9 K11 [Vector2.new]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["BackgroundTransparency"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 0
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K59 ["Zone"]
  GETTABLEKS R11 R12 K60 ["ContentOffset"]
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K22 ["Position"]
  GETIMPORT R9 K21 [UDim2.new]
  LOADN R10 1
  GETUPVAL R14 7
  GETTABLEKS R13 R14 K59 ["Zone"]
  GETTABLEKS R12 R13 K60 ["ContentOffset"]
  MINUS R11 R12
  LOADN R12 1
  LOADN R13 188
  CALL R9 4 1
  SETTABLEKS R9 R8 K23 ["Size"]
  GETUPVAL R10 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K61 ["Children"]
  GETTABLE R9 R10 R11
  CALL R6 3 1
  SETTABLEKS R6 R5 K48 ["PageContainer"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K64 [{"targetZone", "direction"}]
  LOADN R9 0
  SETTABLEKS R9 R8 K62 ["targetZone"]
  GETUPVAL R10 9
  GETTABLEKS R9 R10 K65 ["Left"]
  SETTABLEKS R9 R8 K63 ["direction"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K49 ["ZonePortal"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"navigateUp"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["navigateUp"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["RoactRodux"]
  GETTABLEKS R4 R1 K10 ["UIBlox"]
  GETTABLEKS R7 R4 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETTABLEKS R8 R4 K14 ["App"]
  GETTABLEKS R7 R8 K15 ["SelectionImage"]
  GETTABLEKS R6 R7 K16 ["withSelectionCursorProvider"]
  GETTABLEKS R9 R4 K14 ["App"]
  GETTABLEKS R8 R9 K15 ["SelectionImage"]
  GETTABLEKS R7 R8 K17 ["CursorKind"]
  GETIMPORT R10 K19 [script]
  GETTABLEKS R9 R10 K20 ["Parent"]
  GETTABLEKS R8 R9 K20 ["Parent"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R8 K21 ["Thunks"]
  GETTABLEKS R10 R11 K22 ["NavigateUp"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R8 K23 ["Resources"]
  GETTABLEKS R11 R12 K24 ["Assets"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R8 K23 ["Resources"]
  GETTABLEKS R12 R13 K25 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R8 K26 ["Components"]
  GETTABLEKS R13 R14 K27 ["ZonePortal"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R8 K28 ["Enums"]
  GETTABLEKS R14 R15 K29 ["Direction"]
  CALL R13 1 1
  GETTABLEKS R16 R4 K11 ["Core"]
  GETTABLEKS R15 R16 K30 ["ImageSet"]
  GETTABLEKS R14 R15 K31 ["ImageSetButton"]
  GETIMPORT R15 K5 [require]
  GETIMPORT R18 K19 [script]
  GETTABLEKS R17 R18 K20 ["Parent"]
  GETTABLEKS R16 R17 K32 ["ThemedTextLabel"]
  CALL R15 1 1
  DUPCLOSURE R16 K33 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  DUPCLOSURE R17 K34 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R16
  GETTABLEKS R18 R3 K35 ["UNSTABLE_connect2"]
  LOADNIL R19
  DUPCLOSURE R20 K36 [PROTO_5]
  CAPTURE VAL R9
  CALL R18 2 1
  MOVE R19 R17
  CALL R18 1 -1
  RETURN R18 -1
