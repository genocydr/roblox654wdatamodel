PROTO_0:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K0 ["id"]
  JUMPIFNOTEQ R7 R1 [+2]
  RETURN R5 1
  FORGLOOP R2 2 [-6]
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIFEQKNIL R1 [+20]
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  GETUPVAL R3 1
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K0 ["id"]
  JUMPIFNOTEQ R9 R3 [+3]
  MOVE R1 R7
  JUMP [+3]
  FORGLOOP R4 2 [-7]
  LOADNIL R1
  JUMPIFEQKNIL R1 [+2]
  RETURN R0 1
  GETIMPORT R1 K3 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  JUMPIFNOT R3 [+6]
  GETIMPORT R2 K3 [table.clone]
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  CALL R2 1 1
  JUMP [+2]
  NEWTABLE R2 0 0
  SETTABLE R2 R0 R1
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  GETIMPORT R3 K5 [table.freeze]
  DUPTABLE R4 K9 [{"id", "message", "title", "errorType"}]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["id"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K6 ["message"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K7 ["title"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K8 ["errorType"]
  CALL R3 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K11 [table.insert]
  CALL R1 -1 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CALL R5 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIF R1 [+1]
  RETURN R0 1
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  GETUPVAL R3 1
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K0 ["id"]
  JUMPIFNOTEQ R9 R3 [+3]
  MOVE R1 R7
  JUMP [+3]
  FORGLOOP R4 2 [-7]
  LOADNIL R1
  JUMPIF R1 [+1]
  RETURN R0 1
  GETIMPORT R2 K3 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R0 R2
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K4 [1] [+5]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R0 R2
  RETURN R0 1
  GETUPVAL R2 0
  GETIMPORT R3 K3 [table.clone]
  GETUPVAL R5 0
  GETTABLE R4 R0 R5
  CALL R3 1 1
  SETTABLE R3 R0 R2
  GETIMPORT R2 K6 [table.remove]
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 1

PROTO_4:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Popping error from mesh that doesn't have one"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETIMPORT R1 K5 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K6 [1] [+5]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLE R2 R0 R1
  RETURN R0 1
  GETUPVAL R1 0
  GETIMPORT R2 K5 [table.clone]
  GETUPVAL R4 0
  GETTABLE R3 R0 R4
  CALL R2 1 1
  SETTABLE R2 R0 R1
  GETIMPORT R1 K8 [table.remove]
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  LOADN R3 1
  CALL R1 2 0
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+3]
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  GETTABLEN R1 R2 1
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  NEWTABLE R1 0 0
  CALL R0 1 2
  DUPCLOSURE R2 K1 [PROTO_0]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useCallback"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R1
  NEWTABLE R6 0 0
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["useCallback"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R1
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useCallback"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R0
  NEWTABLE R8 0 1
  MOVE R9 R0
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  DUPTABLE R7 K7 [{"addError", "popError", "removeErrorById", "getTopError"}]
  SETTABLEKS R3 R7 K3 ["addError"]
  SETTABLEKS R5 R7 K4 ["popError"]
  SETTABLEKS R4 R7 K5 ["removeErrorById"]
  SETTABLEKS R6 R7 K6 ["getTopError"]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_8]
  CAPTURE VAL R1
  RETURN R3 1