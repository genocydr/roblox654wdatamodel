PROTO_0:
  NEWTABLE R2 4 0
  GETUPVAL R5 0
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K1 [setmetatable]
  CALL R3 2 0
  SETTABLEKS R0 R2 K2 ["_id"]
  SETTABLEKS R1 R2 K3 ["_parent"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["_children"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_value"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_label"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_children"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_id"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_parent"]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADN R1 0
  RETURN R1 1
  LOADN R2 1
  GETTABLEKS R3 R0 K0 ["_parent"]
  NAMECALL R3 R3 K1 ["getStackDepth"]
  CALL R3 1 1
  ADD R1 R2 R3
  RETURN R1 1

PROTO_6:
  SETTABLEKS R1 R0 K0 ["_label"]
  SETTABLEKS R2 R0 K1 ["_value"]
  RETURN R0 0

PROTO_7:
  GETIMPORT R2 K1 [ipairs]
  GETTABLEKS R3 R0 K2 ["_children"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  NAMECALL R7 R6 K3 ["getId"]
  CALL R7 1 1
  JUMPIFNOTEQ R7 R1 [+2]
  RETURN R6 1
  FORGLOOP R2 2 [inext] [-7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["new"]
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 1
  GETTABLEKS R4 R0 K2 ["_children"]
  FASTCALL2 TABLE_INSERT R4 R2 [+4]
  MOVE R5 R2
  GETIMPORT R3 K7 [table.insert]
  CALL R3 2 0
  RETURN R2 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_children"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K2 [ipairs]
  GETTABLEKS R2 R0 K0 ["_children"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K3 ["removeChildren"]
  CALL R6 1 0
  LOADNIL R5
  FORGLOOP R1 2 [inext] [-5]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_id"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_children"]
  RETURN R0 0

PROTO_9:
  GETIMPORT R2 K1 [ipairs]
  GETTABLEKS R3 R0 K2 ["_children"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  NAMECALL R7 R6 K3 ["getId"]
  CALL R7 1 1
  JUMPIFNOTEQ R7 R1 [+5]
  NAMECALL R7 R6 K4 ["removeChildren"]
  CALL R7 1 0
  RETURN R0 0
  FORGLOOP R2 2 [inext] [-10]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["getValue"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["getLabel"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["getChildren"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["getId"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["getStackDepth"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["setLabelAndValue"]
  DUPCLOSURE R1 K15 [PROTO_7]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["getOrMakeChildById"]
  DUPCLOSURE R1 K17 [PROTO_8]
  SETTABLEKS R1 R0 K18 ["removeChildren"]
  DUPCLOSURE R1 K19 [PROTO_9]
  SETTABLEKS R1 R0 K20 ["removeChild"]
  RETURN R0 1
