PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["ScreenGui"]
  CALL R1 1 1
  LOADK R2 K4 ["SelfViewTooltipOnOpenGui"]
  SETTABLEKS R2 R1 K5 ["Name"]
  LOADN R2 255
  SETTABLEKS R2 R1 K6 ["DisplayOrder"]
  GETIMPORT R2 K10 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R2 R1 K8 ["ZIndexBehavior"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K11 ["Parent"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K14 [{"style"}]
  DUPTABLE R5 K16 [{"themeName"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K15 ["themeName"]
  SETTABLEKS R5 R4 K13 ["style"]
  DUPTABLE R5 K18 [{"frame"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["createElement"]
  LOADK R7 K19 ["Frame"]
  DUPTABLE R8 K25 [{"Position", "Size", "BackgroundTransparency", "AnchorPoint", "Visible"}]
  GETTABLEKS R9 R0 K26 ["position"]
  SETTABLEKS R9 R8 K20 ["Position"]
  GETTABLEKS R9 R0 K27 ["size"]
  SETTABLEKS R9 R8 K21 ["Size"]
  LOADN R9 0
  SETTABLEKS R9 R8 K22 ["BackgroundTransparency"]
  GETTABLEKS R9 R0 K28 ["anchorPoint"]
  SETTABLEKS R9 R8 K23 ["AnchorPoint"]
  LOADB R9 0
  SETTABLEKS R9 R8 K24 ["Visible"]
  DUPTABLE R9 K32 [{"aspectRatioConstraint", "sizeConstraint", "bottomButtonsMock"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K33 ["UIAspectRatioConstraint"]
  DUPTABLE R12 K37 [{"AspectRatio", "AspectType", "DominantAxis"}]
  GETTABLEKS R13 R0 K38 ["aspectRatio"]
  SETTABLEKS R13 R12 K34 ["AspectRatio"]
  LOADK R13 K39 ["ScaleWithParentSize"]
  SETTABLEKS R13 R12 K35 ["AspectType"]
  LOADK R13 K40 ["Width"]
  SETTABLEKS R13 R12 K36 ["DominantAxis"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K29 ["aspectRatioConstraint"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K41 ["UISizeConstraint"]
  DUPTABLE R12 K44 [{"MaxSize", "MinSize"}]
  GETTABLEKS R13 R0 K45 ["maxSize"]
  SETTABLEKS R13 R12 K42 ["MaxSize"]
  GETTABLEKS R13 R0 K46 ["minSize"]
  SETTABLEKS R13 R12 K43 ["MinSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K30 ["sizeConstraint"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K19 ["Frame"]
  DUPTABLE R12 K47 [{"Position", "Size", "Visible", "BackgroundTransparency"}]
  GETTABLEKS R13 R0 K48 ["bottomButtonsFramePosition"]
  SETTABLEKS R13 R12 K20 ["Position"]
  GETTABLEKS R13 R0 K49 ["bottomButtonsFrameSize"]
  SETTABLEKS R13 R12 K21 ["Size"]
  LOADB R13 0
  SETTABLEKS R13 R12 K24 ["Visible"]
  LOADN R13 0
  SETTABLEKS R13 R12 K22 ["BackgroundTransparency"]
  DUPTABLE R13 K51 [{"tooltip"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K55 [{"fallbackText", "translationKey", "tooltipLifetime"}]
  GETTABLEKS R17 R0 K52 ["fallbackText"]
  SETTABLEKS R17 R16 K52 ["fallbackText"]
  GETTABLEKS R17 R0 K53 ["translationKey"]
  SETTABLEKS R17 R16 K53 ["translationKey"]
  GETTABLEKS R17 R0 K54 ["tooltipLifetime"]
  SETTABLEKS R17 R16 K54 ["tooltipLifetime"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K50 ["tooltip"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K31 ["bottomButtonsMock"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K17 ["frame"]
  CALL R2 3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K56 ["mount"]
  MOVE R4 R2
  MOVE R5 R1
  LOADK R6 K4 ["SelfViewTooltipOnOpenGui"]
  CALL R3 3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K57 ["delay"]
  GETTABLEKS R7 R0 K54 ["tooltipLifetime"]
  ADDK R6 R7 K58 [5]
  CALL R5 1 1
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  NAMECALL R5 R5 K59 ["andThen"]
  CALL R5 2 0
  DUPTABLE R5 K62 [{"instance", "unmount"}]
  SETTABLEKS R3 R5 K60 ["instance"]
  SETTABLEKS R4 R5 K61 ["unmount"]
  RETURN R5 1

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
  GETIMPORT R2 K1 [game]
  LOADK R4 K8 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K10 ["App"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["AppStyleProvider"]
  GETTABLEKS R9 R3 K10 ["App"]
  GETTABLEKS R8 R9 K11 ["Style"]
  GETTABLEKS R7 R8 K13 ["Constants"]
  GETTABLEKS R6 R7 K14 ["ThemeName"]
  GETTABLEKS R5 R6 K15 ["Dark"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K16 ["Promise"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K18 [script]
  GETTABLEKS R9 R10 K19 ["Parent"]
  GETTABLEKS R8 R9 K20 ["SelfViewTooltipFTUX"]
  CALL R7 1 1
  DUPCLOSURE R8 K21 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R8 1
