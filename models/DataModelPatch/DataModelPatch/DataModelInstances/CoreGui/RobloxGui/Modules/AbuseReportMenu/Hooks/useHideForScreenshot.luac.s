PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOTEQKN R0 K0 [1] [+8]
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 0
  ADDK R0 R0 K0 [1]
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+20]
  GETIMPORT R1 K2 [os.clock]
  CALL R1 0 1
  GETUPVAL R2 1
  SUB R0 R1 R2
  LOADK R1 K3 [0.166666666666667]
  JUMPIFNOTLE R1 R0 [+23]
  GETUPVAL R0 2
  LOADN R1 10
  JUMPIFNOTLE R1 R0 [+19]
  GETUPVAL R0 3
  NAMECALL R0 R0 K4 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 4
  CALL R0 0 0
  RETURN R0 0
  JUMP [+10]
  GETUPVAL R0 2
  JUMPIFNOTEQKN R0 K5 [10] [+8]
  GETUPVAL R0 4
  CALL R0 0 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K4 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 2
  ADDK R0 R0 K6 [1]
  SETUPVAL R0 2
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+51]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 3
  JUMPIFNOT R0 [+47]
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 4
  CALL R0 0 0
  LOADNIL R0
  LOADN R1 0
  LOADN R2 0
  LOADNIL R3
  LOADNIL R4
  GETUPVAL R5 5
  CALL R5 0 1
  JUMPIFNOT R5 [+4]
  GETIMPORT R5 K2 [os.clock]
  CALL R5 0 1
  MOVE R4 R5
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K3 ["Heartbeat"]
  NEWCLOSURE R7 P0
  CAPTURE REF R1
  CAPTURE UPVAL U7
  CAPTURE REF R0
  NAMECALL R5 R5 K4 ["Connect"]
  CALL R5 2 1
  MOVE R0 R5
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K3 ["Heartbeat"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U5
  CAPTURE REF R4
  CAPTURE REF R2
  CAPTURE REF R3
  CAPTURE UPVAL U8
  NAMECALL R5 R5 K4 ["Connect"]
  CALL R5 2 1
  MOVE R3 R5
  CLOSEUPVALS R0
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIF R0 [+2]
  GETUPVAL R0 9
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["useState"]
  LOADB R7 0
  CALL R6 1 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["useEffect"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R10 0 1
  MOVE R11 R1
  SETLIST R10 R11 1 [1]
  CALL R8 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["RunService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CorePackages"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K13 ["Flags"]
  GETTABLEKS R5 R6 K14 ["GetFFlagAbuseReportTabHideShowRetimingEnabled"]
  CALL R4 1 1
  DUPCLOSURE R5 K15 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
