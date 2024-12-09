PROTO_0:
  GETUPVAL R1 0
  ADDK R0 R1 K0 [1]
  SETUPVAL R0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LayoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["ZIndex"]
  LOADN R3 0
  NEWCLOSURE R4 P0
  CAPTURE REF R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  LOADK R6 K4 ["Frame"]
  DUPTABLE R7 K7 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K5 ["BackgroundTransparency"]
  GETIMPORT R8 K10 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["Size"]
  SETTABLEKS R1 R7 K1 ["LayoutOrder"]
  SETTABLEKS R2 R7 K2 ["ZIndex"]
  DUPTABLE R8 K13 [{"listLayout", "loadingIndicator"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K14 ["UIListLayout"]
  DUPTABLE R11 K19 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R12 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K15 ["FillDirection"]
  GETIMPORT R12 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K16 ["HorizontalAlignment"]
  GETIMPORT R12 K25 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K17 ["VerticalAlignment"]
  GETIMPORT R12 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K18 ["SortOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["listLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K4 ["Frame"]
  DUPTABLE R11 K7 [{"BackgroundTransparency", "Size", "LayoutOrder", "ZIndex"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K5 ["BackgroundTransparency"]
  GETIMPORT R12 K10 [UDim2.new]
  LOADN R13 0
  LOADN R14 70
  LOADN R15 0
  LOADN R16 16
  CALL R12 4 1
  SETTABLEKS R12 R11 K6 ["Size"]
  ADDK R3 R3 K27 [1]
  MOVE R12 R3
  SETTABLEKS R12 R11 K1 ["LayoutOrder"]
  SETTABLEKS R2 R11 K2 ["ZIndex"]
  DUPTABLE R12 K29 [{"loadingBar"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K30 [{"ZIndex"}]
  SETTABLEKS R2 R15 K2 ["ZIndex"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K28 ["loadingBar"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["loadingIndicator"]
  CALL R5 3 -1
  CLOSEUPVALS R3
  RETURN R5 -1

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
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R1 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R0 K9 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["AppBlox"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["LoadingBar"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["PureComponent"]
  LOADK R7 K15 ["LoadingFriendsPage"]
  NAMECALL R5 R5 K16 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K18 ["render"]
  RETURN R5 1
