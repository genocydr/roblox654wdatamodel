PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["ImageButton"]
  DUPTABLE R3 K9 [{"LayoutOrder", "Image", "ImageTransparency", "BackgroundTransparency", "ScaleType", "SliceCenter", "Size"}]
  GETTABLEKS R5 R0 K10 ["props"]
  GETTABLEKS R4 R5 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R6 R0 K10 ["props"]
  GETTABLEKS R5 R6 K11 ["useNewMenuTheme"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K12 ["rbxasset://textures/ui/TopBar/iconBase.png"]
  JUMP [+1]
  LOADK R4 K13 ["rbxasset://textures/ui/dialog_white.png"]
  SETTABLEKS R4 R3 K3 ["Image"]
  GETTABLEKS R6 R0 K10 ["props"]
  GETTABLEKS R5 R6 K11 ["useNewMenuTheme"]
  JUMPIFNOT R5 [+2]
  LOADN R4 0
  JUMP [+1]
  LOADK R4 K14 [0.85]
  SETTABLEKS R4 R3 K4 ["ImageTransparency"]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["BackgroundTransparency"]
  GETIMPORT R4 K17 [Enum.ScaleType.Slice]
  SETTABLEKS R4 R3 K6 ["ScaleType"]
  GETIMPORT R4 K20 [Rect.new]
  LOADN R5 10
  LOADN R6 10
  LOADN R7 10
  LOADN R8 10
  CALL R4 4 1
  SETTABLEKS R4 R3 K7 ["SliceCenter"]
  GETIMPORT R4 K22 [UDim2.new]
  LOADN R5 0
  LOADN R6 32
  LOADN R7 0
  LOADN R8 32
  CALL R4 4 1
  SETTABLEKS R4 R3 K8 ["Size"]
  DUPTABLE R4 K24 [{"ImageLabel"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 8 0
  LOADN R8 2
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  GETTABLEKS R9 R0 K10 ["props"]
  GETTABLEKS R8 R9 K25 ["image"]
  SETTABLEKS R8 R7 K3 ["Image"]
  LOADN R8 1
  SETTABLEKS R8 R7 K5 ["BackgroundTransparency"]
  GETTABLEKS R10 R0 K10 ["props"]
  GETTABLEKS R9 R10 K26 ["imageLabelProps"]
  JUMPIFNOT R9 [+7]
  GETTABLEKS R10 R0 K10 ["props"]
  GETTABLEKS R9 R10 K26 ["imageLabelProps"]
  GETTABLEKS R8 R9 K8 ["Size"]
  JUMPIF R8 [+7]
  GETIMPORT R8 K22 [UDim2.new]
  LOADN R9 0
  LOADN R10 32
  LOADN R11 0
  LOADN R12 32
  CALL R8 4 1
  SETTABLEKS R8 R7 K8 ["Size"]
  GETTABLEKS R9 R0 K10 ["props"]
  GETTABLEKS R8 R9 K26 ["imageLabelProps"]
  JUMPIFNOT R8 [+6]
  GETTABLEKS R10 R0 K10 ["props"]
  GETTABLEKS R9 R10 K26 ["imageLabelProps"]
  GETTABLEKS R8 R9 K27 ["Position"]
  SETTABLEKS R8 R7 K27 ["Position"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K28 ["Event"]
  GETTABLEKS R8 R9 K29 ["Activated"]
  GETTABLEKS R10 R0 K10 ["props"]
  GETTABLEKS R9 R10 K30 ["callback"]
  SETTABLE R9 R7 R8
  CALL R5 2 1
  SETTABLEKS R5 R4 K23 ["ImageLabel"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["ImageSet"]
  GETTABLEKS R4 R5 K12 ["ImageSetButton"]
  GETTABLEKS R5 R1 K13 ["PureComponent"]
  LOADK R7 K14 ["PermissionButton"]
  NAMECALL R5 R5 K15 ["extend"]
  CALL R5 2 1
  GETTABLEKS R6 R2 K16 ["strictInterface"]
  DUPTABLE R7 K22 [{"callback", "image", "LayoutOrder", "useNewMenuTheme", "imageLabelProps"}]
  GETTABLEKS R8 R2 K17 ["callback"]
  SETTABLEKS R8 R7 K17 ["callback"]
  GETTABLEKS R8 R2 K23 ["table"]
  SETTABLEKS R8 R7 K18 ["image"]
  GETTABLEKS R8 R2 K24 ["number"]
  SETTABLEKS R8 R7 K19 ["LayoutOrder"]
  GETTABLEKS R8 R2 K25 ["boolean"]
  SETTABLEKS R8 R7 K20 ["useNewMenuTheme"]
  GETTABLEKS R8 R2 K26 ["optional"]
  GETTABLEKS R9 R2 K23 ["table"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K21 ["imageLabelProps"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K27 ["validateProps"]
  DUPCLOSURE R6 K28 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K29 ["render"]
  RETURN R5 1
