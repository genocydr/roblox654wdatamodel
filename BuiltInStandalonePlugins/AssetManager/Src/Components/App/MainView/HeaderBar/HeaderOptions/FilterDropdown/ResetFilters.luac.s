PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["clearFilters"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnHover"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnHover"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETTABLEKS R4 R0 K2 ["Item"]
  GETUPVAL R5 3
  LOADK R7 K3 ["BaseWidth"]
  NAMECALL R5 R5 K4 ["GetAttribute"]
  CALL R5 2 1
  GETUPVAL R6 3
  LOADK R8 K5 ["OffsetWidth"]
  NAMECALL R6 R6 K4 ["GetAttribute"]
  CALL R6 2 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 5
  NEWTABLE R9 8 0
  GETTABLEKS R10 R0 K7 ["LayoutOrder"]
  SETTABLEKS R10 R9 K7 ["LayoutOrder"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K8 ["OnClick"]
  GETIMPORT R10 K10 [UDim2.new]
  LOADN R11 0
  GETTABLEKS R14 R4 K11 ["Width"]
  FASTCALL2 MATH_MAX R14 R5 [+4]
  MOVE R15 R5
  GETIMPORT R13 K14 [math.max]
  CALL R13 2 1
  ADD R12 R13 R6
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K15 ["Size"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K16 ["Event"]
  GETTABLEKS R10 R11 K17 ["MouseEnter"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R0
  SETTABLE R11 R9 R10
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["Tag"]
  LOADK R11 K19 ["FlyoutItem Secondary"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K21 [{"Contents"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 5
  NEWTABLE R13 1 0
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K18 ["Tag"]
  LOADK R15 K20 ["Contents"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K23 [{"LabelContainer"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K6 ["createElement"]
  GETUPVAL R16 5
  NEWTABLE R17 2 0
  NAMECALL R18 R1 K24 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K7 ["LayoutOrder"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K18 ["Tag"]
  LOADK R19 K25 ["Label X-Fit"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K27 [{"Label"}]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K6 ["createElement"]
  GETUPVAL R20 6
  NEWTABLE R21 2 0
  LOADK R24 K28 ["Filters"]
  LOADK R25 K29 ["ResetFilters"]
  NAMECALL R22 R3 K30 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K31 ["Text"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K18 ["Tag"]
  LOADK R23 K32 ["Left"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["Label"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["LabelContainer"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K20 ["Contents"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Controllers"]
  GETTABLEKS R9 R10 K16 ["ItemsController"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K17 ["Types"]
  CALL R9 1 1
  GETTABLEKS R11 R2 K18 ["Util"]
  GETTABLEKS R10 R11 K19 ["LayoutOrderIterator"]
  GETIMPORT R11 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K20 ["Parent"]
  GETTABLEKS R13 R14 K21 ["DropdownExpandItem"]
  GETTABLEKS R12 R13 K22 ["styles"]
  CALL R11 1 1
  DUPCLOSURE R12 K23 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R12 1
