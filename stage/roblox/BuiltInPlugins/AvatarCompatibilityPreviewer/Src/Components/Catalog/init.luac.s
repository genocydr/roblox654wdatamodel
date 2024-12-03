PROTO_0:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["Items"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K3 [{"item", "palette"}]
  DUPTABLE R10 K6 [{"source", "builtinItem"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["SOURCE_BUILTIN"]
  SETTABLEKS R11 R10 K4 ["source"]
  SETTABLEKS R6 R10 K5 ["builtinItem"]
  SETTABLEKS R10 R9 K1 ["item"]
  SETTABLEKS R0 R9 K2 ["palette"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K10 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-20]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["palette"]
  GETTABLEKS R2 R3 K1 ["Key"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["filter"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["append"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["equippableItems"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Key"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["filter"]
  MOVE R5 R2
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CALL R4 2 1
  MOVE R1 R4
  GETUPVAL R2 3
  GETUPVAL R3 2
  CALL R2 1 1
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeItem"]
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["item"]
  GETTABLEKS R2 R3 K2 ["instance"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["equippableItems"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Key"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["filter"]
  MOVE R6 R3
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CALL R5 2 3
  MOVE R0 R5
  MOVE R1 R6
  MOVE R2 R7
  FORGPREP R0
  GETTABLEKS R6 R4 K3 ["item"]
  GETTABLEKS R5 R6 K4 ["source"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["SOURCE_INSTANCE"]
  JUMPIFNOTEQ R5 R6 [+29]
  GETTABLEKS R8 R4 K3 ["item"]
  GETTABLEKS R7 R8 K4 ["source"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["SOURCE_INSTANCE"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R6 R7 [+3]
  GETIMPORT R5 K8 [assert]
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["removeItem"]
  GETUPVAL R6 1
  GETTABLEKS R8 R4 K3 ["item"]
  GETTABLEKS R7 R8 K10 ["instance"]
  CALL R5 2 0
  FORGLOOP R0 2 [-38]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R4 R1 K0 ["item"]
  GETTABLEKS R3 R4 K1 ["source"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["SOURCE_INSTANCE"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K11 [{"key", "ItemData", "IsUserProvided", "LayoutOrder", "Size", "Delete", "DeleteAll"}]
  LOADK R7 K12 ["item_%*_%*"]
  GETTABLEKS R10 R1 K0 ["item"]
  GETTABLEKS R9 R10 K1 ["source"]
  MOVE R10 R0
  NAMECALL R7 R7 K13 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K4 ["key"]
  SETTABLEKS R1 R5 K5 ["ItemData"]
  SETTABLEKS R2 R5 K6 ["IsUserProvided"]
  JUMPIFNOT R2 [+2]
  MOVE R6 R0
  JUMP [+3]
  GETUPVAL R8 3
  LENGTH R7 R8
  ADD R6 R7 R0
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K14 ["CellSize"]
  SETTABLEKS R6 R5 K8 ["Size"]
  GETTABLEKS R8 R1 K0 ["item"]
  GETTABLEKS R7 R8 K1 ["source"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["SOURCE_BUILTIN"]
  JUMPIFEQ R7 R8 [+6]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["Delete"]
  GETTABLEKS R8 R1 K0 ["item"]
  GETTABLEKS R7 R8 K1 ["source"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["SOURCE_BUILTIN"]
  JUMPIFEQ R7 R8 [+7]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["DeleteAll"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["Catalog"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["new"]
  CALL R3 0 1
  GETTABLEKS R4 R0 K4 ["Palette"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  NEWTABLE R7 0 2
  MOVE R8 R4
  GETTABLEKS R9 R2 K6 ["equippableItems"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["collectArray"]
  MOVE R7 R5
  NEWCLOSURE R8 P1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE UPVAL U4
  CALL R6 2 1
  GETTABLEKS R9 R0 K4 ["Palette"]
  GETTABLEKS R8 R9 K9 ["PreviewAspectRatio"]
  ORK R7 R8 K8 [1]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K12 [{"Layout"}]
  GETIMPORT R11 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K11 ["Layout"]
  DUPTABLE R11 K19 [{"ScrollingFrame", "AddItemButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K24 [{"AutomaticCanvasSize", "LayoutOrder", "Size", "Style"}]
  GETIMPORT R15 K27 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K20 ["AutomaticCanvasSize"]
  NAMECALL R15 R3 K28 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K21 ["LayoutOrder"]
  GETIMPORT R15 K30 [UDim2.new]
  GETIMPORT R16 K32 [UDim.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  GETTABLEKS R17 R1 K33 ["ScrollingFrameHeight"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["Size"]
  GETTABLEKS R15 R1 K17 ["ScrollingFrame"]
  SETTABLEKS R15 R14 K23 ["Style"]
  DUPTABLE R15 K35 [{"UIGridLayout"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["createElement"]
  LOADK R17 K34 ["UIGridLayout"]
  DUPTABLE R18 K40 [{"CellPadding", "CellSize", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R19 K42 [UDim2.fromOffset]
  LOADN R20 5
  LOADN R21 5
  CALL R19 2 1
  SETTABLEKS R19 R18 K36 ["CellPadding"]
  GETIMPORT R19 K30 [UDim2.new]
  GETTABLEKS R21 R1 K37 ["CellSize"]
  GETTABLEKS R20 R21 K43 ["X"]
  GETIMPORT R21 K32 [UDim.new]
  GETTABLEKS R25 R1 K37 ["CellSize"]
  GETTABLEKS R24 R25 K26 ["Y"]
  GETTABLEKS R23 R24 K44 ["Scale"]
  DIV R22 R23 R7
  GETTABLEKS R26 R1 K37 ["CellSize"]
  GETTABLEKS R25 R26 K26 ["Y"]
  GETTABLEKS R24 R25 K45 ["Offset"]
  DIV R23 R24 R7
  CALL R21 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K37 ["CellSize"]
  GETIMPORT R19 K47 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R19 R18 K38 ["HorizontalAlignment"]
  GETIMPORT R19 K48 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R19 R18 K39 ["SortOrder"]
  DUPTABLE R19 K50 [{"UIAspectRatioConstraint"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K10 ["createElement"]
  LOADK R21 K49 ["UIAspectRatioConstraint"]
  DUPTABLE R22 K52 [{"AspectRatio"}]
  SETTABLEKS R7 R22 K51 ["AspectRatio"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["UIAspectRatioConstraint"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K34 ["UIGridLayout"]
  MOVE R16 R6
  CALL R12 4 1
  SETTABLEKS R12 R11 K17 ["ScrollingFrame"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 10
  DUPTABLE R14 K53 [{"LayoutOrder", "Palette"}]
  NAMECALL R15 R3 K28 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K21 ["LayoutOrder"]
  SETTABLEKS R4 R14 K4 ["Palette"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K18 ["AddItemButton"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["AddItemButton"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["CatalogItemButton"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["UserCatalogContext"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["Theme"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K19 ["UI"]
  GETTABLEKS R11 R10 K20 ["Pane"]
  GETTABLEKS R12 R10 K21 ["ScrollingFrame"]
  GETTABLEKS R14 R2 K13 ["Util"]
  GETTABLEKS R13 R14 K22 ["LayoutOrderIterator"]
  GETTABLEKS R15 R2 K23 ["ContextServices"]
  GETTABLEKS R14 R15 K24 ["Stylizer"]
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R16 K26 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R17 K27 [PROTO_7]
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R4
  RETURN R17 1