PROTO_0:
  GETUPVAL R1 0
  LOADK R2 K0 ["ImageLabel"]
  CALL R1 1 1
  DUPTABLE R2 K10 [{"Name", "Image", "ScaleType", "SliceCenter", "Visible", "BackgroundTransparency", "Size", "Position", "Parent"}]
  LOADK R3 K11 ["TabSelection"]
  SETTABLEKS R3 R2 K1 ["Name"]
  LOADK R3 K12 ["rbxasset://textures/ui/Settings/MenuBarAssets/MenuSelection.png"]
  SETTABLEKS R3 R2 K2 ["Image"]
  GETIMPORT R3 K15 [Enum.ScaleType.Slice]
  SETTABLEKS R3 R2 K3 ["ScaleType"]
  GETIMPORT R3 K18 [Rect.new]
  LOADN R4 3
  LOADN R5 1
  LOADN R6 4
  LOADN R7 5
  CALL R3 4 1
  SETTABLEKS R3 R2 K4 ["SliceCenter"]
  LOADB R3 0
  SETTABLEKS R3 R2 K5 ["Visible"]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["BackgroundTransparency"]
  GETIMPORT R3 K20 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K21 ["TabSelectionHeight"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K7 ["Size"]
  GETIMPORT R3 K20 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K21 ["TabSelectionHeight"]
  MINUS R7 R8
  CALL R3 4 1
  SETTABLEKS R3 R2 K8 ["Position"]
  SETTABLEKS R0 R2 K9 ["Parent"]
  CALL R1 1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["AppCommonLib"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Create"]
  NEWTABLE R4 2 0
  LOADN R5 6
  SETTABLEKS R5 R4 K13 ["TabSelectionHeight"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K15 ["MakeTabSelectionWidget"]
  RETURN R4 1
