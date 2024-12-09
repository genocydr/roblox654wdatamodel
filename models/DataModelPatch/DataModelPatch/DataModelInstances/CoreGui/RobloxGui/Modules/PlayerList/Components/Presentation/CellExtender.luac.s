PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K7 [{"LayoutOrder", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K9 ["layoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R5 R0 K8 ["props"]
  GETTABLEKS R4 R5 K10 ["size"]
  SETTABLEKS R4 R3 K3 ["Size"]
  GETTABLEKS R6 R0 K8 ["props"]
  GETTABLEKS R5 R6 K11 ["backgroundStyle"]
  GETTABLEKS R4 R5 K12 ["Transparency"]
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETTABLEKS R6 R0 K8 ["props"]
  GETTABLEKS R5 R6 K11 ["backgroundStyle"]
  GETTABLEKS R4 R5 K13 ["Color"]
  SETTABLEKS R4 R3 K5 ["BackgroundColor3"]
  LOADN R4 0
  SETTABLEKS R4 R3 K6 ["BorderSizePixel"]
  DUPTABLE R4 K16 [{"DoubleOverLay", "OverlayFrame"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K19 [{"ZIndex", "Visible", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K17 ["ZIndex"]
  GETTABLEKS R9 R0 K8 ["props"]
  GETTABLEKS R8 R9 K20 ["doubleOverlay"]
  SETTABLEKS R8 R7 K18 ["Visible"]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  GETTABLEKS R10 R0 K8 ["props"]
  GETTABLEKS R9 R10 K24 ["overlayStyle"]
  GETTABLEKS R8 R9 K12 ["Transparency"]
  SETTABLEKS R8 R7 K4 ["BackgroundTransparency"]
  GETTABLEKS R10 R0 K8 ["props"]
  GETTABLEKS R9 R10 K24 ["overlayStyle"]
  GETTABLEKS R8 R9 K13 ["Color"]
  SETTABLEKS R8 R7 K5 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K6 ["BorderSizePixel"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["DoubleOverLay"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K1 ["Frame"]
  DUPTABLE R7 K25 [{"ZIndex", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K17 ["ZIndex"]
  GETIMPORT R8 K23 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  GETTABLEKS R10 R0 K8 ["props"]
  GETTABLEKS R9 R10 K24 ["overlayStyle"]
  GETTABLEKS R8 R9 K12 ["Transparency"]
  SETTABLEKS R8 R7 K4 ["BackgroundTransparency"]
  GETTABLEKS R10 R0 K8 ["props"]
  GETTABLEKS R9 R10 K24 ["overlayStyle"]
  GETTABLEKS R8 R9 K13 ["Color"]
  SETTABLEKS R8 R7 K5 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K6 ["BorderSizePixel"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K15 ["OverlayFrame"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["t"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["PureComponent"]
  LOADK R5 K10 ["CellExtender"]
  NAMECALL R3 R3 K11 ["extend"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K12 ["strictInterface"]
  DUPTABLE R5 K18 [{"layoutOrder", "size", "backgroundStyle", "overlayStyle", "doubleOverlay"}]
  GETTABLEKS R6 R2 K19 ["integer"]
  SETTABLEKS R6 R5 K13 ["layoutOrder"]
  GETTABLEKS R6 R2 K20 ["UDim2"]
  SETTABLEKS R6 R5 K14 ["size"]
  GETTABLEKS R6 R2 K12 ["strictInterface"]
  DUPTABLE R7 K23 [{"Color", "Transparency"}]
  GETTABLEKS R8 R2 K24 ["Color3"]
  SETTABLEKS R8 R7 K21 ["Color"]
  GETTABLEKS R8 R2 K25 ["number"]
  SETTABLEKS R8 R7 K22 ["Transparency"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["backgroundStyle"]
  GETTABLEKS R6 R2 K12 ["strictInterface"]
  DUPTABLE R7 K23 [{"Color", "Transparency"}]
  GETTABLEKS R8 R2 K24 ["Color3"]
  SETTABLEKS R8 R7 K21 ["Color"]
  GETTABLEKS R8 R2 K25 ["number"]
  SETTABLEKS R8 R7 K22 ["Transparency"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["overlayStyle"]
  GETTABLEKS R6 R2 K26 ["boolean"]
  SETTABLEKS R6 R5 K17 ["doubleOverlay"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K27 ["validateProps"]
  DUPCLOSURE R4 K28 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K29 ["render"]
  RETURN R3 1
