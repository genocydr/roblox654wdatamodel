PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  NEWTABLE R2 0 0
  GETTABLEKS R3 R0 K0 ["integrations"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K1 ["integration"]
  GETTABLEKS R10 R8 K2 ["components"]
  GETTABLEKS R9 R10 K3 ["Container"]
  JUMPIFNOT R9 [+27]
  GETTABLEKS R10 R8 K4 ["containerWidthSlots"]
  JUMPIFNOT R10 [+6]
  GETTABLEKS R9 R8 K4 ["containerWidthSlots"]
  NAMECALL R9 R9 K5 ["get"]
  CALL R9 1 1
  JUMP [+1]
  LOADN R9 0
  GETTABLEKS R10 R8 K6 ["id"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K9 [{"visible", "integration", "containerWidthSlots"}]
  LOADB R14 1
  SETTABLEKS R14 R13 K8 ["visible"]
  SETTABLEKS R7 R13 K1 ["integration"]
  SETTABLEKS R9 R13 K4 ["containerWidthSlots"]
  CALL R11 2 1
  SETTABLE R11 R2 R10
  JUMP [+14]
  GETTABLEKS R9 R8 K6 ["id"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K10 [{"visible", "integration"}]
  LOADB R13 1
  SETTABLEKS R13 R12 K8 ["visible"]
  SETTABLEKS R7 R12 K1 ["integration"]
  CALL R10 2 1
  SETTABLE R10 R2 R9
  FORGLOOP R3 2 [-49]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["createElement"]
  LOADK R4 K11 ["Frame"]
  DUPTABLE R5 K14 [{"AutomaticSize", "BackgroundTransparency"}]
  GETIMPORT R6 K17 [Enum.AutomaticSize.XY]
  SETTABLEKS R6 R5 K12 ["AutomaticSize"]
  LOADN R6 1
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  DUPTABLE R6 K19 [{"Layout"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  LOADK R8 K20 ["UIListLayout"]
  DUPTABLE R9 K26 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
  GETIMPORT R10 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R10 R9 K21 ["SortOrder"]
  GETIMPORT R10 K30 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K22 ["FillDirection"]
  GETIMPORT R10 K32 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K23 ["HorizontalAlignment"]
  GETIMPORT R10 K33 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K24 ["VerticalAlignment"]
  GETIMPORT R10 K36 [UDim.new]
  LOADN R11 0
  GETTABLEKS R14 R1 K37 ["Tokens"]
  GETTABLEKS R13 R14 K38 ["Global"]
  GETTABLEKS R12 R13 K39 ["Space_25"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["Padding"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Layout"]
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ChromeShared"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CorePackages"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K13 ["Unibar"]
  GETTABLEKS R6 R7 K14 ["ComponentHosts"]
  GETTABLEKS R5 R6 K15 ["ContainerHost"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K13 ["Unibar"]
  GETTABLEKS R7 R8 K14 ["ComponentHosts"]
  GETTABLEKS R6 R7 K16 ["IconHost"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K17 ["Service"]
  GETTABLEKS R7 R8 K18 ["Types"]
  CALL R6 1 1
  GETTABLEKS R9 R3 K19 ["Core"]
  GETTABLEKS R8 R9 K20 ["Style"]
  GETTABLEKS R7 R8 K21 ["useStyle"]
  DUPCLOSURE R8 K22 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R8 1
