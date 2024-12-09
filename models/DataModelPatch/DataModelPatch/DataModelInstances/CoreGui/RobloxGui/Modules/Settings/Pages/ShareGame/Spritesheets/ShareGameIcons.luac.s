PROTO_0:
  DUPTABLE R2 K2 [{"offset", "size"}]
  SETTABLEKS R0 R2 K0 ["offset"]
  SETTABLEKS R1 R2 K1 ["size"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["frames"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_2:
  LOADK R1 K0 ["rbxasset://textures/ui/Settings/ShareGame/icons.png"]
  RETURN R1 1

PROTO_3:
  MOVE R5 R2
  NAMECALL R3 R0 K0 ["GetFrame"]
  CALL R3 2 1
  LOADK R4 K1 ["rbxasset://textures/ui/Settings/ShareGame/icons.png"]
  SETTABLEKS R4 R1 K2 ["Image"]
  GETTABLEKS R4 R3 K3 ["offset"]
  SETTABLEKS R4 R1 K4 ["ImageRectOffset"]
  GETTABLEKS R4 R3 K5 ["size"]
  SETTABLEKS R4 R1 K6 ["ImageRectSize"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPTABLE R1 K2 [{"frames"}]
  DUPTABLE R2 K12 [{"back", "clear", "invite", "search_border", "search_large", "search_small", "friends", "cross", "modal_border"}]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 2
  LOADN R6 19
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K3 ["back"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 6
  LOADN R6 51
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 16
  LOADN R7 16
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K4 ["clear"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 2
  LOADN R6 75
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K5 ["invite"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 11
  LOADN R6 1
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 7
  LOADN R7 7
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K6 ["search_border"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 3
  LOADN R6 132
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 22
  LOADN R7 22
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K7 ["search_large"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 6
  LOADN R6 106
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 16
  LOADN R7 16
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K8 ["search_small"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 0
  LOADN R6 159
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 72
  LOADN R7 72
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K9 ["friends"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 4
  LOADN R6 231
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 24
  LOADN R7 24
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K10 ["cross"]
  GETIMPORT R4 K15 [Vector2.new]
  LOADN R5 0
  LOADN R6 255
  CALL R4 2 1
  GETIMPORT R5 K15 [Vector2.new]
  LOADN R6 7
  LOADN R7 7
  CALL R5 2 1
  DUPTABLE R3 K18 [{"offset", "size"}]
  SETTABLEKS R4 R3 K16 ["offset"]
  SETTABLEKS R5 R3 K17 ["size"]
  SETTABLEKS R3 R2 K11 ["modal_border"]
  SETTABLEKS R2 R1 K1 ["frames"]
  NEWTABLE R2 4 0
  DUPCLOSURE R3 K19 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K20 ["GetFrame"]
  DUPCLOSURE R3 K21 [PROTO_2]
  SETTABLEKS R3 R2 K22 ["GetImagePath"]
  DUPCLOSURE R3 K23 [PROTO_3]
  SETTABLEKS R3 R2 K24 ["ApplyImage"]
  RETURN R2 1
