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
  LOADK R0 K0 ["Symbol(%s)"]
  GETUPVAL R2 0
  NAMECALL R0 R0 K1 ["format"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["createSymbol requires `name` to be a string."]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETIMPORT R1 K7 [newproxy]
  LOADB R2 1
  CALL R1 1 1
  FASTCALL1 GETMETATABLE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K9 [getmetatable]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K10 ["__tostring"]
  RETURN R1 1

PROTO_8:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_resolve"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_9:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_reject"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 8 0
  GETIMPORT R2 K2 [debug.traceback]
  CALL R2 0 1
  SETTABLEKS R2 R1 K3 ["_source"]
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLE R3 R1 R2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Status"]
  GETTABLEKS R2 R3 K5 ["Started"]
  SETTABLEKS R2 R1 K6 ["_status"]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["_values"]
  LOADN R2 255
  SETTABLEKS R2 R1 K8 ["_valuesLength"]
  LOADB R2 0
  SETTABLEKS R2 R1 K9 ["_unhandledRejection"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K10 ["_queuedResolve"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K11 ["_queuedReject"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K13 [setmetatable]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  GETUPVAL R4 2
  MOVE R5 R0
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 2
  GETTABLEN R6 R5 1
  GETTABLEN R7 R5 2
  JUMPIF R6 [+12]
  GETTABLEKS R8 R1 K6 ["_status"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["Status"]
  GETTABLEKS R9 R10 K5 ["Started"]
  JUMPIFNOTEQ R8 R9 [+4]
  MOVE R8 R3
  MOVE R9 R7
  CALL R8 1 0
  RETURN R1 1

PROTO_11:
  MOVE R1 R0
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  MOVE R2 R1
  GETUPVAL R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_15:
  PREPVARARGS 1
  GETUPVAL R1 0
  GETVARARGS R2 1
  SETTABLE R2 R1 R0
  GETUPVAL R2 1
  ADDK R1 R2 K0 [1]
  SETUPVAL R1 1
  GETUPVAL R1 1
  GETUPVAL R3 2
  LENGTH R2 R3
  JUMPIFNOTEQ R1 R2 [+4]
  GETUPVAL R1 3
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_17:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_18:
  NEWTABLE R2 0 0
  LOADN R3 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE REF R3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  LOADN R7 1
  GETUPVAL R8 0
  LENGTH R5 R8
  LOADN R6 1
  FORNPREP R5
  GETUPVAL R9 0
  GETTABLE R8 R9 R7
  NEWCLOSURE R10 P1
  CAPTURE VAL R4
  CAPTURE VAL R7
  NEWCLOSURE R11 P2
  CAPTURE VAL R1
  NAMECALL R8 R8 K0 ["andThen"]
  CALL R8 3 0
  FORNLOOP R5
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_19:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+6]
  GETIMPORT R1 K4 [error]
  LOADK R2 K5 ["Please pass a list of promises to Promise.all"]
  LOADN R3 2
  CALL R1 2 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K6 [0] [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K7 ["resolve"]
  NEWTABLE R2 0 0
  CALL R1 1 -1
  RETURN R1 -1
  LOADN R3 1
  LENGTH R1 R0
  LOADN R2 1
  FORNPREP R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["is"]
  GETTABLE R5 R0 R3
  CALL R4 1 1
  JUMPIF R4 [+9]
  GETIMPORT R4 K4 [error]
  LOADK R5 K9 ["Non-promise value passed into Promise.all at index #%d"]
  MOVE R7 R3
  NAMECALL R5 R5 K10 ["format"]
  CALL R5 2 1
  LOADN R6 2
  CALL R4 2 0
  FORNLOOP R1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_20:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+3]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R3 0
  GETTABLE R2 R0 R3
  JUMPIFEQKB R2 TRUE [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["_status"]
  RETURN R1 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R0 K0 ["andThen"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_25:
  PREPVARARGS 0
  GETUPVAL R0 2
  GETVARARGS R1 -1
  CALL R0 -1 2
  SETUPVAL R0 0
  SETUPVAL R1 1
  GETUPVAL R0 3
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_26:
  PREPVARARGS 0
  GETUPVAL R0 2
  GETVARARGS R1 -1
  CALL R0 -1 2
  SETUPVAL R0 0
  SETUPVAL R1 1
  GETUPVAL R0 3
  LOADB R2 0
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_27:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_unhandledRejection"]
  GETTABLEKS R1 R0 K1 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Status"]
  GETTABLEKS R2 R3 K3 ["Started"]
  JUMPIFNOTEQ R1 R2 [+40]
  LOADNIL R1
  LOADNIL R2
  GETIMPORT R3 K6 [Instance.new]
  LOADK R4 K7 ["BindableEvent"]
  CALL R3 1 1
  NEWCLOSURE R6 P0
  CAPTURE REF R2
  CAPTURE REF R1
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  NEWCLOSURE R7 P1
  CAPTURE REF R2
  CAPTURE REF R1
  CAPTURE UPVAL U1
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
  GETIMPORT R1 K19 [error]
  LOADK R2 K20 ["Promise had an invalid status."]
  CALL R1 1 0
  RETURN R0 0

PROTO_28:
  GETTABLEKS R1 R0 K0 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Started"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETIMPORT R1 K4 [error]
  LOADK R2 K5 ["Promise has not resolved or rejected."]
  LOADN R3 2
  CALL R1 2 0
  GETTABLEKS R2 R0 K0 ["_status"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Status"]
  GETTABLEKS R3 R4 K6 ["Resolved"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  MOVE R2 R1
  GETTABLEKS R4 R0 K7 ["_values"]
  LOADN R5 1
  GETTABLEKS R6 R0 K8 ["_valuesLength"]
  FASTCALL TABLE_UNPACK [+2]
  GETIMPORT R3 K10 [unpack]
  CALL R3 3 -1
  RETURN R2 -1

PROTO_29:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_resolve"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_30:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["_reject"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_31:
  PREPVARARGS 1
  GETTABLEKS R1 R0 K0 ["_status"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["Started"]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["is"]
  GETVARARGS R2 1
  CALL R1 1 1
  JUMPIFNOT R1 [+30]
  LOADK R2 K4 ["#"]
  FASTCALL1 SELECT_VARARG R2 [+3]
  GETIMPORT R1 K6 [select]
  GETVARARGS R3 -1
  CALL R1 -1 1
  LOADN R2 1
  JUMPIFNOTLT R2 R1 [+13]
  LOADK R2 K7 ["When returning a Promise from andThen, extra arguments are "]
  LOADK R3 K8 ["discarded! See:

%s"]
  CONCAT R1 R2 R3
  GETTABLEKS R3 R0 K9 ["_source"]
  NAMECALL R1 R1 K10 ["format"]
  CALL R1 2 1
  GETIMPORT R2 K12 [warn]
  MOVE R3 R1
  CALL R2 1 0
  GETVARARGS R1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K13 ["andThen"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Status"]
  GETTABLEKS R1 R2 K14 ["Resolved"]
  SETTABLEKS R1 R0 K0 ["_status"]
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K15 ["_valuesLength"]
  SETTABLEKS R2 R0 K16 ["_values"]
  GETIMPORT R1 K18 [ipairs]
  GETTABLEKS R2 R0 K19 ["_queuedResolve"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  MOVE R6 R5
  GETVARARGS R7 -1
  CALL R6 -1 0
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

PROTO_32:
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

PROTO_33:
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
  GETUPVAL R1 1
  GETVARARGS R2 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K4 ["_valuesLength"]
  SETTABLEKS R2 R0 K5 ["_values"]
  GETTABLEKS R2 R0 K6 ["_queuedReject"]
  GETIMPORT R3 K8 [next]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+12]
  GETIMPORT R1 K10 [ipairs]
  GETTABLEKS R2 R0 K6 ["_queuedReject"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  MOVE R6 R5
  GETVARARGS R7 -1
  CALL R6 -1 0
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K11 ["_unhandledRejection"]
  GETVARARGS R2 1
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K13 [tostring]
  CALL R1 1 1
  GETIMPORT R2 K15 [spawn]
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
  DUPCLOSURE R4 K4 [PROTO_7]
  LOADB R7 1
  FASTCALL2K ASSERT R7 K5 [+4]
  LOADK R8 K5 ["createSymbol requires `name` to be a string."]
  GETIMPORT R6 K7 [assert]
  CALL R6 2 0
  GETIMPORT R6 K9 [newproxy]
  LOADB R7 1
  CALL R6 1 1
  FASTCALL1 GETMETATABLE R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K11 [getmetatable]
  CALL R7 1 1
  LOADK R9 K12 ["PromiseMarker"]
  NEWCLOSURE R8 P5
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K13 ["__tostring"]
  MOVE R5 R6
  NEWTABLE R6 8 0
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K14 ["prototype"]
  GETTABLEKS R7 R6 K14 ["prototype"]
  SETTABLEKS R7 R6 K15 ["__index"]
  DUPTABLE R7 K19 [{"Started", "Resolved", "Rejected"}]
  LOADB R10 1
  FASTCALL2K ASSERT R10 K5 [+4]
  LOADK R11 K5 ["createSymbol requires `name` to be a string."]
  GETIMPORT R9 K7 [assert]
  CALL R9 2 0
  GETIMPORT R9 K9 [newproxy]
  LOADB R10 1
  CALL R9 1 1
  FASTCALL1 GETMETATABLE R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K11 [getmetatable]
  CALL R10 1 1
  LOADK R12 K16 ["Started"]
  NEWCLOSURE R11 P5
  CAPTURE VAL R12
  SETTABLEKS R11 R10 K13 ["__tostring"]
  MOVE R8 R9
  SETTABLEKS R8 R7 K16 ["Started"]
  LOADB R10 1
  FASTCALL2K ASSERT R10 K5 [+4]
  LOADK R11 K5 ["createSymbol requires `name` to be a string."]
  GETIMPORT R9 K7 [assert]
  CALL R9 2 0
  GETIMPORT R9 K9 [newproxy]
  LOADB R10 1
  CALL R9 1 1
  FASTCALL1 GETMETATABLE R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K11 [getmetatable]
  CALL R10 1 1
  LOADK R12 K17 ["Resolved"]
  NEWCLOSURE R11 P5
  CAPTURE VAL R12
  SETTABLEKS R11 R10 K13 ["__tostring"]
  MOVE R8 R9
  SETTABLEKS R8 R7 K17 ["Resolved"]
  LOADB R10 1
  FASTCALL2K ASSERT R10 K5 [+4]
  LOADK R11 K5 ["createSymbol requires `name` to be a string."]
  GETIMPORT R9 K7 [assert]
  CALL R9 2 0
  GETIMPORT R9 K9 [newproxy]
  LOADB R10 1
  CALL R9 1 1
  FASTCALL1 GETMETATABLE R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K11 [getmetatable]
  CALL R10 1 1
  LOADK R12 K18 ["Rejected"]
  NEWCLOSURE R11 P5
  CAPTURE VAL R12
  SETTABLEKS R11 R10 K13 ["__tostring"]
  MOVE R8 R9
  SETTABLEKS R8 R7 K18 ["Rejected"]
  SETTABLEKS R7 R6 K20 ["Status"]
  DUPCLOSURE R7 K21 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K22 ["new"]
  DUPCLOSURE R7 K23 [PROTO_12]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K24 ["resolve"]
  DUPCLOSURE R7 K25 [PROTO_14]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K26 ["reject"]
  DUPCLOSURE R7 K27 [PROTO_19]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K28 ["all"]
  DUPCLOSURE R7 K29 [PROTO_20]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K30 ["is"]
  DUPCLOSURE R7 K31 [PROTO_21]
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K32 ["getStatus"]
  DUPCLOSURE R7 K33 [PROTO_23]
  CAPTURE VAL R6
  CAPTURE VAL R1
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K34 ["andThen"]
  DUPCLOSURE R7 K35 [PROTO_24]
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K36 ["catch"]
  DUPCLOSURE R7 K37 [PROTO_27]
  CAPTURE VAL R6
  CAPTURE VAL R0
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K38 ["await"]
  DUPCLOSURE R7 K39 [PROTO_28]
  CAPTURE VAL R6
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K40 ["_unwrap"]
  DUPCLOSURE R7 K41 [PROTO_31]
  CAPTURE VAL R6
  CAPTURE VAL R0
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K42 ["_resolve"]
  DUPCLOSURE R7 K43 [PROTO_33]
  CAPTURE VAL R6
  CAPTURE VAL R0
  GETTABLEKS R8 R6 K14 ["prototype"]
  SETTABLEKS R7 R8 K44 ["_reject"]
  RETURN R6 1
