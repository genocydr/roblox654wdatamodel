PROTO_0:
  GETTABLEKS R1 R0 K0 ["Scope"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Scope"]
  GETTABLEKS R2 R3 K1 ["Group"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADK R1 K2 ["GroupDefaultIcon"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["Scope"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Scope"]
  GETTABLEKS R2 R3 K3 ["User"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADK R1 K4 ["UserDefaultIcon"]
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["Scope"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Scope"]
  GETTABLEKS R2 R3 K5 ["Universe"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADK R1 K6 ["UniverseDefaultIcon"]
  RETURN R1 1
  LOADK R1 K7 ["PlaceholderIcon"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Item"]
  NAMECALL R0 R0 K1 ["setSelection"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Item"]
  GETTABLEKS R2 R3 K1 ["Id"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K2 ["handleRowRightClick"]
  CALL R0 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["use"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["use"]
  CALL R4 0 1
  GETTABLEKS R6 R0 K2 ["Item"]
  GETTABLEKS R7 R6 K3 ["Scope"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["Scope"]
  GETTABLEKS R8 R9 K4 ["Group"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R5 K5 ["GroupDefaultIcon"]
  JUMP [+24]
  GETTABLEKS R7 R6 K3 ["Scope"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["Scope"]
  GETTABLEKS R8 R9 K6 ["User"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R5 K7 ["UserDefaultIcon"]
  JUMP [+13]
  GETTABLEKS R7 R6 K3 ["Scope"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K3 ["Scope"]
  GETTABLEKS R8 R9 K8 ["Universe"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R5 K9 ["UniverseDefaultIcon"]
  JUMP [+2]
  LOADK R5 K10 ["PlaceholderIcon"]
  JUMP [0]
  GETUPVAL R6 5
  MOVE R7 R3
  MOVE R8 R4
  CALL R6 2 1
  GETTABLEKS R9 R6 K11 ["Selection"]
  GETTABLEKS R8 R9 K12 ["Id"]
  GETTABLEKS R10 R0 K2 ["Item"]
  GETTABLEKS R9 R10 K12 ["Id"]
  JUMPIFNOTEQ R8 R9 [+3]
  LOADK R7 K13 ["Selected"]
  JUMP [+1]
  LOADK R7 K14 [""]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K15 ["createElement"]
  GETUPVAL R9 7
  NEWTABLE R10 8 0
  GETTABLEKS R11 R0 K16 ["Index"]
  SETTABLEKS R11 R10 K17 ["LayoutOrder"]
  GETTABLEKS R11 R0 K18 ["Position"]
  SETTABLEKS R11 R10 K18 ["Position"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K19 ["OnPress"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K20 ["OnRightClick"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K21 ["Tag"]
  LOADK R13 K22 ["Element X-RowS X-Left X-Middle X-PadS %*"]
  MOVE R15 R7
  NAMECALL R13 R13 K23 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLE R12 R10 R11
  DUPTABLE R11 K26 [{"Thumbnail", "Name"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 8
  NEWTABLE R14 2 0
  NAMECALL R15 R2 K27 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K17 ["LayoutOrder"]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K21 ["Tag"]
  LOADK R17 K28 ["ScopeIcon %* Icon16"]
  MOVE R19 R5
  NAMECALL R17 R17 K23 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["Thumbnail"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 9
  NEWTABLE R14 4 0
  NAMECALL R15 R2 K27 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K17 ["LayoutOrder"]
  GETTABLEKS R16 R0 K2 ["Item"]
  GETTABLEKS R15 R16 K25 ["Name"]
  SETTABLEKS R15 R14 K29 ["Text"]
  GETUPVAL R16 6
  GETTABLEKS R15 R16 K21 ["Tag"]
  LOADK R16 K30 ["ScopeName X-Fit Left"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Name"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R8 R5 K14 ["Image"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Controllers"]
  GETTABLEKS R10 R11 K17 ["ExplorerController"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Controllers"]
  GETTABLEKS R11 R12 K18 ["PluginController"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K19 ["Hooks"]
  GETTABLEKS R12 R13 K20 ["useExplorerInfo"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K21 ["Types"]
  CALL R12 1 1
  GETTABLEKS R14 R2 K22 ["Util"]
  GETTABLEKS R13 R14 K23 ["LayoutOrderIterator"]
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R12
  DUPCLOSURE R15 K25 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  RETURN R15 1