PROTO_0:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+4]
  GETUPVAL R0 1
  JUMPIFNOTEQKNIL R0 [+3]
  GETUPVAL R0 2
  RETURN R0 1
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLE R1 R0 R2
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  GETUPVAL R4 2
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R1 1
  GETUPVAL R2 2
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+4]
  GETUPVAL R0 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R0 2
  CALL R0 0 1
  GETUPVAL R1 3
  JUMPIFEQ R0 R1 [+4]
  GETUPVAL R1 4
  GETUPVAL R2 3
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETTABLE R1 R2 R3
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+4]
  GETUPVAL R0 1
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R0 0
  GETUPVAL R3 1
  NAMECALL R1 R0 K0 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  RETURN R2 1

PROTO_5:
  GETUPVAL R0 0
  JUMPIFEQKNIL R0 [+4]
  GETUPVAL R0 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R1 0
  GETUPVAL R2 2
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R5 0 3
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  SETLIST R5 R6 3 [1]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useState"]
  MOVE R5 R3
  CALL R4 1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useEffect"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R8 0 1
  MOVE R9 R3
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useEffect"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R5
  NEWTABLE R8 0 2
  MOVE R9 R0
  MOVE R10 R1
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useEffect"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R8 0 2
  MOVE R9 R4
  MOVE R10 R1
  SETLIST R8 R9 2 [1]
  CALL R6 2 0
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_6]
  CAPTURE VAL R1
  RETURN R2 1