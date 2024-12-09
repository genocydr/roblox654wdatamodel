PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["Frame"]
  DUPTABLE R4 K7 [{"LayoutOrder", "BackgroundTransparency", "Size", "Position", "BackgroundColor3"}]
  SETTABLEKS R1 R4 K2 ["LayoutOrder"]
  GETUPVAL R6 1
  JUMPIFNOTLE R1 R6 [+3]
  LOADN R5 0
  JUMP [+1]
  LOADK R5 K8 [0.7]
  SETTABLEKS R5 R4 K3 ["BackgroundTransparency"]
  GETIMPORT R5 K11 [UDim2.new]
  GETUPVAL R7 2
  DIVRK R6 R12 K7 [{"LayoutOrder", "BackgroundTransparency", "Size", "Position", "BackgroundColor3"}]
  LOADN R7 0
  LOADK R8 K13 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETIMPORT R5 K11 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K5 ["Position"]
  GETIMPORT R5 K16 [Color3.fromRGB]
  LOADN R6 255
  LOADN R7 255
  LOADN R8 255
  CALL R5 3 1
  SETTABLEKS R5 R4 K6 ["BackgroundColor3"]
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K17 ["UICorner"]
  DUPTABLE R8 K19 [{"CornerRadius"}]
  GETIMPORT R9 K21 [UDim.new]
  LOADK R10 K13 [0.5]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["CornerRadius"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["numberOfSteps"]
  GETTABLEKS R2 R0 K1 ["layoutOrder"]
  GETTABLEKS R3 R0 K2 ["numberActivated"]
  NEWTABLE R4 0 0
  LOADN R7 1
  MOVE R5 R1
  LOADN R6 1
  FORNPREP R5
  SETTABLE R7 R4 R7
  FORNLOOP R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["Frame"]
  DUPTABLE R7 K9 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K5 ["BackgroundTransparency"]
  GETIMPORT R8 K12 [UDim2.new]
  LOADK R9 K13 [0.9]
  LOADN R10 0
  LOADK R11 K14 [0.12]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["Size"]
  GETIMPORT R8 K12 [UDim2.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Position"]
  SETTABLEKS R2 R7 K8 ["LayoutOrder"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K15 ["UIListLayout"]
  DUPTABLE R10 K21 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R11 K23 [UDim.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["Padding"]
  GETIMPORT R11 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K17 ["FillDirection"]
  GETIMPORT R11 K28 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K18 ["HorizontalAlignment"]
  GETIMPORT R11 K29 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K19 ["VerticalAlignment"]
  GETIMPORT R11 K30 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K20 ["SortOrder"]
  CALL R8 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K31 ["Array"]
  GETTABLEKS R9 R10 K32 ["map"]
  MOVE R10 R4
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CALL R9 2 1
  CALL R5 4 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["LuauPolyfill"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
