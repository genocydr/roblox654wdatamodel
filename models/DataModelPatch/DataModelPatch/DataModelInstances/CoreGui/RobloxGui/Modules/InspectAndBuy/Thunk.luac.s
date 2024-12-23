PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIFNOTEQKB R1 TRUE [+29]
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["requiredServices"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R8 1
  GETTABLE R7 R8 R6
  JUMPIFNOTEQKNIL R7 [+9]
  GETIMPORT R8 K4 [error]
  LOADK R9 K5 ["Service with key %s is a dependency but was not provided"]
  MOVE R11 R6
  NAMECALL R9 R9 K6 ["format"]
  CALL R9 2 -1
  CALL R8 -1 0
  SETTABLE R7 R1 R6
  FORGLOOP R2 2 [-14]
  MOVE R2 R0
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R2 1

PROTO_2:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE REF R0
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_3:
  PREPVARARGS 1
  GETUPVAL R1 0
  GETVARARGS R2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K2 ["string"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Bad arg #1: name must be a string"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  LOADB R4 1
  JUMPIFEQKNIL R1 [+10]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K6 ["table"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["Bad arg #2: requiredServices must be a table or nil"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K8 ["function"] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K9 [+4]
  LOADK R5 K9 ["Bad arg #3: onInvoke must be a function"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R1 R3
  NEWTABLE R4 4 0
  GETUPVAL R5 0
  LOADB R6 1
  SETTABLE R6 R4 R5
  SETTABLEKS R0 R4 K10 ["type"]
  SETTABLEKS R1 R4 K11 ["requiredServices"]
  DUPTABLE R5 K13 [{"__call"}]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K12 ["__call"]
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K15 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_5:
  LOADB R4 0
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K1 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K2 ["table"] [+7]
  GETUPVAL R6 0
  GETTABLE R5 R0 R6
  JUMPIFEQKB R5 TRUE [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Test Error - Bad arg #1: Must provide a valid thunk"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K6 ["requiredServices"]
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+26]
  GETIMPORT R3 K8 [ipairs]
  GETTABLEKS R4 R0 K6 ["requiredServices"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETTABLE R10 R2 R7
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  LOADK R11 K9 ["Test Error - Bad arg #3: Missing required service "]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R13 R7
  GETIMPORT R12 K11 [tostring]
  CALL R12 1 1
  CONCAT R10 R11 R12
  FASTCALL2 ASSERT R9 R10 [+3]
  GETIMPORT R8 K5 [assert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-18]
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Symbol"]
  CALL R0 1 1
  NEWTABLE R1 4 0
  GETTABLEKS R2 R0 K6 ["named"]
  LOADK R3 K7 ["ThunkTag"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K9 ["middleware"]
  DUPCLOSURE R3 K10 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K11 ["new"]
  DUPCLOSURE R3 K12 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K13 ["test"]
  RETURN R1 1
