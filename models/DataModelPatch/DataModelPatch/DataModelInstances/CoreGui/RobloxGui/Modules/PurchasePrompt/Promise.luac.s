PROTO_0:
  PREPVARARGS 0
  LOADK R1 K0 ["#"]
  FASTCALL1 SELECT_VARARG R1 [+3]
  GETIMPORT R0 K2 [select]
  GETVARARGS R2 -1
  CALL R0 -1 1
  MOVE R1 R0
  NEWTABLE R2 0 0
  GETVARARGS R3 -1
  SETLIST R2 R3 -1 [1]
  RETURN R1 2

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADN R3 1
  GETUPVAL R4 2
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R1 K1 [unpack]
  CALL R1 3 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  PREPVARARGS 1
  GETUPVAL R1 0
  GETVARARGS R2 -1
  CALL R1 -1 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  GETUPVAL R4 0
  GETIMPORT R5 K1 [xpcall]
  MOVE R6 R3
  GETIMPORT R7 K4 [debug.traceback]
  CALL R5 2 -1
  CALL R4 -1 2
  RETURN R4 2

PROTO_3:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R0 -1 2
  GETTABLEN R2 R1 1
  JUMPIFNOT R2 [+11]
  GETUPVAL R3 2
  LOADN R6 2
  FASTCALL3 TABLE_UNPACK R1 R6 R0
  MOVE R5 R1
  MOVE R7 R0
  GETIMPORT R4 K1 [unpack]
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0
  GETUPVAL R3 3
  LOADN R6 2
  FASTCALL3 TABLE_UNPACK R1 R6 R0
  MOVE R5 R1
  MOVE R7 R0
  GETIMPORT R4 K1 [unpack]
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1

PROTO_5:
  GETIMPORT R2 K1 [next]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_6:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_resolve"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_7:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_reject"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K8 [{"_source", "_type", "_status", "_values", "_valuesLength", "_unhandledRejection", "_queuedResolve", "_queuedReject"}]
  GETIMPORT R2 K11 [debug.traceback]
  CALL R2 0 1
  SETTABLEKS R2 R1 K0 ["_source"]
  LOADK R2 K12 ["Promise"]
  SETTABLEKS R2 R1 K1 ["_type"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K13 ["Status"]
  GETTABLEKS R2 R3 K14 ["Started"]
  SETTABLEKS R2 R1 K2 ["_status"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["_values"]
  LOADN R2 255
  SETTABLEKS R2 R1 K4 ["_valuesLength"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["_unhandledRejection"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K6 ["_queuedResolve"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K7 ["_queuedReject"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K16 [setmetatable]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 2
  GETTABLEN R6 R5 1
  GETTABLEN R7 R5 2
  JUMPIF R6 [+12]
  GETTABLEKS R8 R1 K2 ["_status"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K13 ["Status"]
  GETTABLEKS R9 R10 K14 ["Started"]
  JUMPIFNOTEQ R8 R9 [+4]
  MOVE R8 R3
  MOVE R9 R7
  CALL R8 1 0
  RETURN R1 1

PROTO_9:
  MOVE R1 R0
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_11:
  MOVE R2 R1
  GETUPVAL R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  SETTABLE R1 R2 R0
  GETUPVAL R3 2
  ADDK R2 R3 K0 [1]
  SETUPVAL R2 2
  GETUPVAL R2 2
  GETUPVAL R3 3
  JUMPIFNOTEQ R2 R3 [+6]
  GETUPVAL R2 4
  GETUPVAL R3 1
  CALL R2 1 0
  LOADB R2 1
  SETUPVAL R2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  SETTABLE R0 R2 R1
  GETUPVAL R3 3
  ADDK R2 R3 K0 [1]
  SETUPVAL R2 3
  GETUPVAL R2 3
  GETUPVAL R3 4
  JUMPIFNOTEQ R2 R3 [+6]
  GETUPVAL R2 5
  GETUPVAL R3 2
  CALL R2 1 0
  LOADB R2 1
  SETUPVAL R2 1
  RETURN R0 0

PROTO_15:
  LOADB R1 1
  SETUPVAL R1 0
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  LOADB R1 1
  SETUPVAL R1 0
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["_values"]
  FASTCALL1 TABLE_UNPACK R3 [+2]
  GETIMPORT R2 K2 [unpack]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  LOADB R2 0
  NEWTABLE R3 0 0
  LOADN R4 0
  LOADN R5 0
  GETIMPORT R6 K1 [pairs]
  GETUPVAL R7 0
  CALL R6 1 3
  FORGPREP_NEXT R6
  ADDK R5 R5 K2 [1]
  FORGLOOP R6 1 [-2]
  NEWCLOSURE R6 P0
  CAPTURE REF R2
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE VAL R0
  JUMPIFNOTEQKN R5 K3 [0] [+7]
  MOVE R7 R0
  MOVE R8 R3
  CALL R7 1 0
  LOADB R2 1
  CLOSEUPVALS R2
  RETURN R0 0
  GETIMPORT R7 K1 [pairs]
  GETUPVAL R8 0
  CALL R7 1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R11 K4 ["_status"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["Status"]
  GETTABLEKS R13 R14 K6 ["Started"]
  JUMPIFNOTEQ R12 R13 [+18]
  NEWCLOSURE R14 P1
  CAPTURE VAL R10
  CAPTURE REF R2
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE VAL R0
  NAMECALL R12 R11 K7 ["andThen"]
  CALL R12 2 1
  NEWCLOSURE R14 P2
  CAPTURE REF R2
  CAPTURE VAL R1
  NAMECALL R12 R12 K8 ["catch"]
  CALL R12 2 0
  JUMP [+33]
  GETTABLEKS R12 R11 K4 ["_status"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["Status"]
  GETTABLEKS R13 R14 K9 ["Resolved"]
  JUMPIFNOTEQ R12 R13 [+18]
  GETTABLEKS R13 R11 K10 ["_values"]
  FASTCALL1 TABLE_UNPACK R13 [+2]
  GETIMPORT R12 K12 [unpack]
  CALL R12 1 1
  JUMPIFNOT R2 [+1]
  JUMP [+16]
  SETTABLE R12 R3 R10
  ADDK R4 R4 K2 [1]
  JUMPIFNOTEQ R4 R5 [+13]
  MOVE R13 R0
  MOVE R14 R3
  CALL R13 1 0
  LOADB R2 1
  JUMP [+7]
  NEWCLOSURE R14 P3
  CAPTURE REF R2
  CAPTURE VAL R1
  CAPTURE VAL R11
  NAMECALL R12 R11 K8 ["catch"]
  CALL R12 2 0
  FORGLOOP R7 2 [-60]
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_18:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  GETTABLEN R2 R0 1
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+7]
  GETTABLEN R2 R0 1
  GETTABLEKS R1 R2 K3 ["_type"]
  JUMPIFEQKS R1 K4 ["Promise"] [+2]
  GETTABLEN R0 R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 -1
  CLOSEUPVALS R0
  RETURN R1 -1

PROTO_19:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R2 R0 K3 ["_type"]
  JUMPIFEQKS R2 K4 ["Promise"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_20:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  GETUPVAL R3 1
  LOADN R4 1
  GETUPVAL R5 2
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R2 K3 [unpack]
  CALL R2 3 -1
  CALL R0 -1 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_21:
  GETIMPORT R2 K1 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_22:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  LOADK R2 K0 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K2 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_23:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_24:
  GETTABLEKS R1 R0 K0 ["_status"]
  RETURN R1 1

PROTO_25:
  MOVE R2 R0
  GETUPVAL R3 0
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R1
  MOVE R3 R1
  GETUPVAL R4 2
  JUMPIFNOT R4 [+6]
  GETUPVAL R4 2
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["_status"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K1 ["Status"]
  GETTABLEKS R5 R6 K2 ["Started"]
  JUMPIFNOTEQ R4 R5 [+20]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["_queuedResolve"]
  FASTCALL2 TABLE_INSERT R5 R2 [+4]
  MOVE R6 R2
  GETIMPORT R4 K6 [table.insert]
  CALL R4 2 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["_queuedReject"]
  FASTCALL2 TABLE_INSERT R5 R3 [+4]
  MOVE R6 R3
  GETIMPORT R4 K6 [table.insert]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["_status"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K1 ["Status"]
  GETTABLEKS R5 R6 K8 ["Resolved"]
  JUMPIFNOTEQ R4 R5 [+15]
  MOVE R4 R2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["_values"]
  LOADN R7 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["_valuesLength"]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R5 K12 [unpack]
  CALL R5 3 -1
  CALL R4 -1 0
  RETURN R0 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["_status"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K1 ["Status"]
  GETTABLEKS R5 R6 K13 ["Rejected"]
  JUMPIFNOTEQ R4 R5 [+14]
  MOVE R4 R3
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["_values"]
  LOADN R7 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K10 ["_valuesLength"]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R5 K12 [unpack]
  CALL R5 3 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_26:
  LOADB R3 0
  SETTABLEKS R3 R0 K0 ["_unhandledRejection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["new"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_27:
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_28:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  SETUPVAL R0 0
  LOADK R1 K0 ["#"]
  FASTCALL1 SELECT_VARARG R1 [+3]
  GETIMPORT R0 K2 [select]
  GETVARARGS R2 -1
  CALL R0 -1 1
  SETUPVAL R0 1
  GETUPVAL R0 2
  LOADB R2 1
  NAMECALL R0 R0 K3 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_29:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  GETVARARGS R1 -1
  SETLIST R0 R1 -1 [1]
  SETUPVAL R0 0
  LOADK R1 K0 ["#"]
  FASTCALL1 SELECT_VARARG R1 [+3]
  GETIMPORT R0 K2 [select]
  GETVARARGS R2 -1
  CALL R0 -1 1
  SETUPVAL R0 1
  GETUPVAL R0 2
  LOADB R2 0
  NAMECALL R0 R0 K3 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_30:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_unhandledRejection"]
  GETTABLEKS R1 R0 K1 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Status"]
  GETTABLEKS R2 R3 K3 ["Started"]
  JUMPIFNOTEQ R1 R2 [+38]
  LOADNIL R1
  LOADNIL R2
  GETIMPORT R3 K6 [Instance.new]
  LOADK R4 K7 ["BindableEvent"]
  CALL R3 1 1
  NEWCLOSURE R6 P0
  CAPTURE REF R1
  CAPTURE REF R2
  CAPTURE VAL R3
  NEWCLOSURE R7 P1
  CAPTURE REF R1
  CAPTURE REF R2
  CAPTURE VAL R3
  NAMECALL R4 R0 K8 ["andThen"]
  CALL R4 3 0
  GETTABLEKS R4 R3 K9 ["Event"]
  NAMECALL R4 R4 K10 ["Wait"]
  CALL R4 1 1
  NAMECALL R5 R3 K11 ["Destroy"]
  CALL R5 1 0
  MOVE R5 R4
  LOADN R8 1
  FASTCALL3 TABLE_UNPACK R1 R8 R2
  MOVE R7 R1
  MOVE R9 R2
  GETIMPORT R6 K13 [unpack]
  CALL R6 3 -1
  CLOSEUPVALS R1
  RETURN R5 -1
  CLOSEUPVALS R1
  GETTABLEKS R1 R0 K1 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Status"]
  GETTABLEKS R2 R3 K14 ["Resolved"]
  JUMPIFNOTEQ R1 R2 [+12]
  LOADB R1 1
  GETTABLEKS R3 R0 K15 ["_values"]
  LOADN R4 1
  GETTABLEKS R5 R0 K16 ["_valuesLength"]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R2 K13 [unpack]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R1 R0 K1 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Status"]
  GETTABLEKS R2 R3 K17 ["Rejected"]
  JUMPIFNOTEQ R1 R2 [+12]
  LOADB R1 0
  GETTABLEKS R3 R0 K15 ["_values"]
  LOADN R4 1
  GETTABLEKS R5 R0 K16 ["_valuesLength"]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R2 K13 [unpack]
  CALL R2 3 -1
  RETURN R1 -1
  RETURN R0 0

PROTO_31:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_resolve"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_32:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_reject"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_33:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Started"]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  LOADK R2 K3 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K5 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["is"]
  GETVARARGS R3 1
  CALL R2 1 1
  JUMPIFNOT R2 [+24]
  LOADN R2 1
  JUMPIFNOTLT R2 R1 [+13]
  LOADK R3 K7 ["When returning a Promise from andThen, extra arguments are "]
  LOADK R4 K8 ["discarded! See:

%s"]
  CONCAT R2 R3 R4
  GETTABLEKS R4 R0 K9 ["_source"]
  NAMECALL R2 R2 K10 ["format"]
  CALL R2 2 1
  GETIMPORT R3 K12 [warn]
  MOVE R4 R2
  CALL R3 1 0
  GETVARARGS R2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K13 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K14 ["Resolved"]
  SETTABLEKS R2 R0 K0 ["_status"]
  NEWTABLE R2 0 0
  GETVARARGS R3 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R0 K15 ["_values"]
  SETTABLEKS R1 R0 K16 ["_valuesLength"]
  GETIMPORT R2 K18 [ipairs]
  GETTABLEKS R3 R0 K19 ["_queuedResolve"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  MOVE R7 R6
  GETVARARGS R8 -1
  CALL R7 -1 0
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_34:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_unhandledRejection"]
  JUMPIF R0 [+1]
  RETURN R0 0
  LOADK R0 K1 ["Unhandled promise rejection:

%s

%s"]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["_source"]
  NAMECALL R0 R0 K3 ["format"]
  CALL R0 3 1
  GETIMPORT R1 K5 [warn]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_35:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Started"]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Status"]
  GETTABLEKS R1 R2 K3 ["Rejected"]
  SETTABLEKS R1 R0 K0 ["_status"]
  NEWTABLE R1 0 0
  GETVARARGS R2 -1
  SETLIST R1 R2 -1 [1]
  SETTABLEKS R1 R0 K4 ["_values"]
  LOADK R2 K5 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K7 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K8 ["_valuesLength"]
  GETTABLEKS R2 R0 K9 ["_queuedReject"]
  GETIMPORT R3 K11 [next]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+12]
  GETIMPORT R1 K13 [ipairs]
  GETTABLEKS R2 R0 K9 ["_queuedReject"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  MOVE R6 R5
  GETVARARGS R7 -1
  CALL R6 -1 0
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K14 ["_unhandledRejection"]
  GETVARARGS R2 1
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K16 [tostring]
  CALL R1 1 1
  GETIMPORT R2 K18 [spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_2]
  CAPTURE VAL R0
  DUPCLOSURE R2 K2 [PROTO_4]
  CAPTURE VAL R1
  DUPCLOSURE R3 K3 [PROTO_5]
  NEWTABLE R4 16 0
  SETTABLEKS R4 R4 K4 ["__index"]
  DUPTABLE R5 K8 [{"Started", "Resolved", "Rejected"}]
  LOADK R6 K5 ["Started"]
  SETTABLEKS R6 R5 K5 ["Started"]
  LOADK R6 K6 ["Resolved"]
  SETTABLEKS R6 R5 K6 ["Resolved"]
  LOADK R6 K7 ["Rejected"]
  SETTABLEKS R6 R5 K7 ["Rejected"]
  SETTABLEKS R5 R4 K9 ["Status"]
  DUPCLOSURE R5 K10 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K11 ["new"]
  DUPCLOSURE R5 K12 [PROTO_10]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K13 ["resolve"]
  DUPCLOSURE R5 K14 [PROTO_12]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K15 ["reject"]
  DUPCLOSURE R5 K16 [PROTO_18]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K17 ["all"]
  DUPCLOSURE R5 K18 [PROTO_19]
  SETTABLEKS R5 R4 K19 ["is"]
  DUPCLOSURE R5 K20 [PROTO_23]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K21 ["promisify"]
  DUPCLOSURE R5 K22 [PROTO_24]
  SETTABLEKS R5 R4 K23 ["getStatus"]
  DUPCLOSURE R5 K24 [PROTO_26]
  CAPTURE VAL R4
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K25 ["andThen"]
  DUPCLOSURE R5 K26 [PROTO_27]
  SETTABLEKS R5 R4 K27 ["catch"]
  DUPCLOSURE R5 K28 [PROTO_30]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K29 ["await"]
  DUPCLOSURE R5 K30 [PROTO_33]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K31 ["_resolve"]
  DUPCLOSURE R5 K32 [PROTO_35]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K33 ["_reject"]
  RETURN R4 1
