PROTO_0:
  LOADN R2 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  DIVK R8 R7 K2 [1048576]
  ADD R2 R2 R8
  MOVE R11 R6
  NAMECALL R9 R0 K3 ["getOrMakeChildById"]
  CALL R9 2 1
  MOVE R12 R6
  MOVE R13 R8
  NAMECALL R10 R9 K4 ["setLabelAndValue"]
  CALL R10 3 0
  FORGLOOP R3 2 [-12]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 0
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["_cachedRootTreeViewItem"]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["_coreTreeViewItem"]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["_placeTreeViewItem"]
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["_untrackedTreeViewItem"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["_isVisible"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["ServerMemoryTree"]
  JUMPIFNOTEQKNIL R2 [+4]
  NEWTABLE R2 0 0
  RETURN R2 1
  GETTABLEKS R2 R1 K0 ["ServerMemoryTree"]
  RETURN R2 1

PROTO_3:
  LOADN R2 0
  GETTABLEKS R3 R0 K0 ["_cachedRootTreeViewItem"]
  JUMPIFNOTEQKNIL R3 [+33]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["new"]
  LOADK R4 K2 ["root"]
  LOADNIL R5
  CALL R3 2 1
  SETTABLEKS R3 R0 K0 ["_cachedRootTreeViewItem"]
  GETTABLEKS R3 R0 K0 ["_cachedRootTreeViewItem"]
  LOADK R5 K3 ["CoreMemory"]
  NAMECALL R3 R3 K4 ["getOrMakeChildById"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_coreTreeViewItem"]
  GETTABLEKS R3 R0 K0 ["_cachedRootTreeViewItem"]
  LOADK R5 K6 ["PlaceMemory"]
  NAMECALL R3 R3 K4 ["getOrMakeChildById"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["_placeTreeViewItem"]
  GETTABLEKS R3 R0 K0 ["_cachedRootTreeViewItem"]
  LOADK R5 K8 ["UntrackedMemory"]
  NAMECALL R3 R3 K4 ["getOrMakeChildById"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_untrackedTreeViewItem"]
  GETIMPORT R3 K11 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFNOTEQKS R6 K12 ["totalServerMemory"] [+3]
  DIVK R2 R7 K13 [1048576]
  JUMP [+29]
  JUMPIFNOTEQKS R6 K14 ["developerTags"] [+14]
  GETUPVAL R8 1
  GETTABLEKS R9 R0 K7 ["_placeTreeViewItem"]
  MOVE R10 R7
  CALL R8 2 1
  GETTABLEKS R9 R0 K7 ["_placeTreeViewItem"]
  LOADK R11 K6 ["PlaceMemory"]
  MOVE R12 R8
  NAMECALL R9 R9 K15 ["setLabelAndValue"]
  CALL R9 3 0
  JUMP [+14]
  JUMPIFNOTEQKS R6 K16 ["internalCategories"] [+13]
  GETUPVAL R8 1
  GETTABLEKS R9 R0 K5 ["_coreTreeViewItem"]
  MOVE R10 R7
  CALL R8 2 1
  GETTABLEKS R9 R0 K5 ["_coreTreeViewItem"]
  LOADK R11 K3 ["CoreMemory"]
  MOVE R12 R8
  NAMECALL R9 R9 K15 ["setLabelAndValue"]
  CALL R9 3 0
  FORGLOOP R3 2 [-34]
  GETTABLEKS R3 R0 K0 ["_cachedRootTreeViewItem"]
  LOADK R5 K17 ["Memory"]
  MOVE R6 R2
  NAMECALL R3 R3 K15 ["setLabelAndValue"]
  CALL R3 3 0
  GETTABLEKS R5 R0 K5 ["_coreTreeViewItem"]
  NAMECALL R5 R5 K18 ["getValue"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K7 ["_placeTreeViewItem"]
  NAMECALL R6 R6 K18 ["getValue"]
  CALL R6 1 1
  ADD R4 R5 R6
  SUB R3 R2 R4
  GETTABLEKS R4 R0 K9 ["_untrackedTreeViewItem"]
  LOADK R6 K8 ["UntrackedMemory"]
  MOVE R7 R3
  NAMECALL R4 R4 K15 ["setLabelAndValue"]
  CALL R4 3 0
  NAMECALL R4 R0 K19 ["renderUpdates"]
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_cachedRootTreeViewItem"]
  RETURN R1 1

PROTO_5:
  SETTABLEKS R1 R0 K0 ["_isVisible"]
  GETTABLEKS R2 R0 K0 ["_isVisible"]
  JUMPIFNOT R2 [+3]
  NAMECALL R2 R0 K1 ["renderUpdates"]
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["RobloxGui"]
  GETTABLEKS R4 R5 K7 ["Modules"]
  GETTABLEKS R3 R4 K8 ["Stats"]
  GETTABLEKS R2 R3 K9 ["BaseMemoryAnalyzer"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["RobloxGui"]
  GETTABLEKS R5 R6 K7 ["Modules"]
  GETTABLEKS R4 R5 K8 ["Stats"]
  GETTABLEKS R3 R4 K10 ["TreeViewItem"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["RobloxGui"]
  GETTABLEKS R6 R7 K7 ["Modules"]
  GETTABLEKS R5 R6 K11 ["Common"]
  GETTABLEKS R4 R5 K12 ["CommonUtil"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_0]
  NEWTABLE R5 8 0
  FASTCALL2 SETMETATABLE R5 R1 [+5]
  MOVE R7 R5
  MOVE R8 R1
  GETIMPORT R6 K15 [setmetatable]
  CALL R6 2 0
  SETTABLEKS R5 R5 K16 ["__index"]
  DUPCLOSURE R6 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K18 ["new"]
  DUPCLOSURE R6 K19 [PROTO_2]
  SETTABLEKS R6 R5 K20 ["filterServerMemoryTreeStats"]
  DUPCLOSURE R6 K21 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K22 ["updateWithTreeStats"]
  DUPCLOSURE R6 K23 [PROTO_4]
  SETTABLEKS R6 R5 K24 ["getMemoryUsageTree"]
  DUPCLOSURE R6 K25 [PROTO_5]
  SETTABLEKS R6 R5 K26 ["setVisible"]
  RETURN R5 1
