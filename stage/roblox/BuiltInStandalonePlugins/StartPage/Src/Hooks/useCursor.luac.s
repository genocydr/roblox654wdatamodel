PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  NAMECALL R0 R0 K1 ["__pushCursor"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K1 ["__popCursor"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K1 ["__popCursor"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R0 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R3 3
  LOADB R4 0
  CALL R3 1 1
  GETUPVAL R4 4
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R6 0 4
  MOVE R7 R3
  MOVE R8 R1
  MOVE R9 R0
  MOVE R10 R2
  SETLIST R6 R7 4 [1]
  CALL R4 2 1
  GETUPVAL R5 4
  NEWCLOSURE R6 P1
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R7 0 3
  MOVE R8 R3
  MOVE R9 R1
  MOVE R10 R2
  SETLIST R7 R8 3 [1]
  CALL R5 2 1
  GETUPVAL R6 5
  NEWCLOSURE R7 P2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  NEWTABLE R8 0 3
  MOVE R9 R3
  MOVE R10 R1
  MOVE R11 R2
  SETLIST R8 R9 3 [1]
  CALL R6 2 0
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["CursorPriority"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K12 ["ContextServices"]
  GETTABLEKS R4 R5 K13 ["Mouse"]
  GETTABLEKS R5 R2 K14 ["useCallback"]
  GETTABLEKS R6 R2 K15 ["useContext"]
  GETTABLEKS R7 R2 K16 ["useEffect"]
  GETTABLEKS R8 R2 K17 ["useRef"]
  DUPCLOSURE R9 K18 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  RETURN R9 1