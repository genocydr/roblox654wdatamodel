PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETVARARGS R3 -1
  NAMECALL R0 R0 K0 ["Invoke"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  MOVE R4 R0
  NAMECALL R1 R1 K0 ["OnInvoke"]
  CALL R1 3 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_3:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["OnInvoke"]
  CALL R2 3 1
  NEWCLOSURE R0 P0
  CAPTURE VAL R2
  RETURN R0 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useEffect"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWTABLE R5 0 2
  GETUPVAL R6 1
  MOVE R7 R2
  SETLIST R5 R6 2 [1]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["useListenToGuest called from guest DM"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["Plugin"]
  NAMECALL R1 R1 K1 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  LOADB R3 0
  JUMPIFEQKNIL R1 [+5]
  LOADK R5 K0 ["Plugin"]
  NAMECALL R3 R1 K2 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Couldn't find plugin"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  DUPTABLE R4 K9 [{"fire", "listen", "useListenToGuest"}]
  SETTABLEKS R2 R4 K6 ["fire"]
  SETTABLEKS R3 R4 K7 ["listen"]
  GETTABLEKS R6 R1 K10 ["HostDataModelType"]
  GETIMPORT R7 K14 [Enum.StudioDataModelType.Standalone]
  JUMPIFNOTEQ R6 R7 [+6]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  JUMP [+1]
  DUPCLOSURE R5 K15 [PROTO_6]
  SETTABLEKS R5 R4 K8 ["useListenToGuest"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_7]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1