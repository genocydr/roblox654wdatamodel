PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["visible"]
  JUMPIFNOT R0 [+9]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["fireEvent"]
  LOADK R1 K2 ["badgeImpression"]
  DUPTABLE R2 K4 [{"badgeType"}]
  LOADK R3 K5 ["13Plus"]
  SETTABLEKS R3 R2 K3 ["badgeType"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K2 ["visible"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 0
  GETUPVAL R4 2
  LOADK R5 K3 ["Frame"]
  DUPTABLE R6 K9 [{"BackgroundTransparency", "AutomaticSize", "Size", "LayoutOrder", "Visible"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K4 ["BackgroundTransparency"]
  GETIMPORT R7 K12 [Enum.AutomaticSize.X]
  SETTABLEKS R7 R6 K5 ["AutomaticSize"]
  GETIMPORT R7 K15 [UDim2.fromOffset]
  LOADN R8 0
  LOADN R9 32
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Size"]
  GETTABLEKS R7 R0 K16 ["layoutOrder"]
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  GETTABLEKS R7 R0 K2 ["visible"]
  SETTABLEKS R7 R6 K8 ["Visible"]
  DUPTABLE R7 K20 [{"layout", "badge", "popup"}]
  GETUPVAL R8 2
  LOADK R9 K21 ["UIListLayout"]
  DUPTABLE R10 K25 [{"Padding", "FillDirection", "SortOrder"}]
  GETIMPORT R11 K28 [UDim.new]
  LOADN R12 0
  LOADN R13 14
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["Padding"]
  GETIMPORT R11 K30 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K23 ["FillDirection"]
  GETIMPORT R11 K31 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R11 R10 K24 ["SortOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["layout"]
  GETUPVAL R8 2
  GETUPVAL R9 3
  DUPTABLE R10 K34 [{"isPopupVisible", "setIsPopupVisible", "layoutOrder"}]
  SETTABLEKS R1 R10 K32 ["isPopupVisible"]
  SETTABLEKS R2 R10 K33 ["setIsPopupVisible"]
  LOADN R11 1
  SETTABLEKS R11 R10 K16 ["layoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["badge"]
  GETUPVAL R8 2
  GETUPVAL R9 4
  DUPTABLE R10 K39 [{"bodyText", "linkText", "openWebview", "visible", "analyticsCopyType", "layoutOrder"}]
  GETTABLEKS R11 R0 K35 ["bodyText"]
  SETTABLEKS R11 R10 K35 ["bodyText"]
  GETTABLEKS R11 R0 K36 ["linkText"]
  SETTABLEKS R11 R10 K36 ["linkText"]
  GETTABLEKS R11 R0 K37 ["openWebview"]
  SETTABLEKS R11 R10 K37 ["openWebview"]
  SETTABLEKS R1 R10 K2 ["visible"]
  GETTABLEKS R11 R0 K38 ["analyticsCopyType"]
  SETTABLEKS R11 R10 K38 ["analyticsCopyType"]
  LOADN R11 2
  SETTABLEKS R11 R10 K16 ["layoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K19 ["popup"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R2 R1 K8 ["createElement"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETTABLEKS R6 R3 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["useStyle"]
  GETTABLEKS R7 R3 K13 ["App"]
  GETTABLEKS R6 R7 K14 ["Button"]
  GETTABLEKS R5 R6 K15 ["LinkButton"]
  GETTABLEKS R8 R3 K10 ["Core"]
  GETTABLEKS R7 R8 K16 ["Control"]
  GETTABLEKS R6 R7 K17 ["Interactable"]
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K19 [script]
  GETTABLEKS R9 R10 K20 ["Parent"]
  GETTABLEKS R8 R9 K21 ["Badge"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K19 [script]
  GETTABLEKS R10 R11 K20 ["Parent"]
  GETTABLEKS R9 R10 K22 ["Popup"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K19 [script]
  GETTABLEKS R11 R12 K20 ["Parent"]
  GETTABLEKS R10 R11 K23 ["useAnalytics"]
  CALL R9 1 1
  DUPCLOSURE R10 K24 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R10 1
