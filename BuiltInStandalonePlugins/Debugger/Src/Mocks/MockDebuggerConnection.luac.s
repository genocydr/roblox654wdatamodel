PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["MockThreadMap"]
  SETTABLE R1 R2 R0
  RETURN R0 0

PROTO_1:
  FASTCALL1 ASSERT R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  LOADN R4 0
  GETTABLE R3 R1 R4
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["MockThreadIdToCallstackMap"]
  SETTABLE R1 R2 R0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["MockCallstackFrameToDebuggerVariables"]
  SETTABLE R1 R2 R0
  RETURN R0 0

PROTO_3:
  NEWTABLE R1 16 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  LOADN R3 1
  LOADK R4 K1 ["Alex"]
  LOADK R5 K2 ["Instance"]
  LOADK R6 K3 ["Map"]
  CALL R2 4 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  LOADN R4 3
  LOADK R5 K4 ["Alex2"]
  LOADK R6 K5 ["somePreview"]
  LOADK R7 K6 ["map"]
  CALL R3 4 1
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  NAMECALL R4 R2 K7 ["MockSetChildren"]
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  LOADN R5 2
  LOADK R6 K8 ["UnitedStates"]
  LOADK R7 K2 ["Instance"]
  LOADK R8 K3 ["Map"]
  CALL R4 4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["new"]
  LOADN R6 4
  LOADK R7 K9 ["Wisconsin"]
  LOADK R8 K2 ["Instance"]
  LOADK R9 K3 ["Map"]
  CALL R5 4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["new"]
  LOADN R7 5
  LOADK R8 K10 ["Madison"]
  LOADK R9 K5 ["somePreview"]
  LOADK R10 K6 ["map"]
  CALL R6 4 1
  NEWTABLE R9 0 1
  MOVE R10 R6
  SETLIST R9 R10 1 [1]
  NAMECALL R7 R5 K7 ["MockSetChildren"]
  CALL R7 2 0
  NEWTABLE R9 0 1
  MOVE R10 R5
  SETLIST R9 R10 1 [1]
  NAMECALL R7 R4 K7 ["MockSetChildren"]
  CALL R7 2 0
  NEWTABLE R7 0 5
  SETTABLEN R2 R7 1
  SETTABLEN R4 R7 2
  SETTABLEN R3 R7 3
  SETTABLEN R5 R7 4
  SETTABLEN R6 R7 5
  SETTABLEKS R7 R1 K11 ["VariableMap"]
  NEWTABLE R7 2 0
  SETTABLEKS R2 R7 K1 ["Alex"]
  SETTABLEKS R4 R7 K12 ["UnitedStatesMockDebugger"]
  SETTABLEKS R7 R1 K13 ["watchMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R1 K14 ["MockThreadMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R1 K15 ["MockThreadIdToCallstackMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R1 K16 ["MockCallstackFrameToDebuggerVariables"]
  SETTABLEKS R0 R1 K17 ["Id"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["new"]
  CALL R7 0 1
  SETTABLEKS R7 R1 K18 ["Paused"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["new"]
  CALL R7 0 1
  SETTABLEKS R7 R1 K19 ["Resumed"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  SETTABLEKS R7 R1 K20 ["MockSetThreadStateById"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  SETTABLEKS R7 R1 K21 ["MockSetCallstackByThreadId"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R1
  SETTABLEKS R7 R1 K22 ["MockSetDebuggerVariablesByCallstackFrame"]
  GETUPVAL R9 2
  FASTCALL2 SETMETATABLE R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K24 [setmetatable]
  CALL R7 2 0
  RETURN R1 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["MockThreadMap"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_5:
  MOVE R3 R0
  GETUPVAL R4 0
  CALL R3 1 0
  RETURN R0 0

PROTO_6:
  LOADNIL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["watchMap"]
  GETUPVAL R4 1
  GETTABLE R2 R3 R4
  JUMPIFEQKNIL R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["watchMap"]
  GETUPVAL R3 1
  GETTABLE R1 R2 R3
  JUMP [+5]
  DUPTABLE R2 K2 [{"VariableId"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["VariableId"]
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["new"]
  MOVE R3 R1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["DebuggerStatus"]
  GETTABLEKS R4 R5 K5 ["Success"]
  CALL R2 2 1
  MOVE R3 R0
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["new"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CALL R4 1 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R5 R4 K1 ["andThen"]
  CALL R5 2 0
  LOADN R5 0
  RETURN R5 1

PROTO_8:
  MOVE R3 R0
  GETUPVAL R4 0
  CALL R3 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["MockThreadMap"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["DebuggerStatus"]
  GETTABLEKS R3 R4 K3 ["Success"]
  CALL R1 2 1
  MOVE R2 R0
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CALL R2 1 1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R3 R2 K1 ["andThen"]
  CALL R3 2 0
  LOADN R3 0
  RETURN R3 1

PROTO_11:
  MOVE R3 R0
  GETUPVAL R4 0
  CALL R3 1 0
  RETURN R0 0

PROTO_12:
  NEWTABLE R1 0 0
  MOVE R2 R0
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R3 R1 K0 ["Populated"]
  JUMPIF R3 [+23]
  GETTABLEKS R3 R1 K1 ["PopulatableType"]
  JUMPIFNOTEQKS R3 K2 ["ThreadState"] [+10]
  GETTABLEKS R6 R0 K3 ["MockThreadIdToCallstackMap"]
  GETTABLEKS R7 R1 K4 ["ThreadId"]
  GETTABLE R5 R6 R7
  NAMECALL R3 R1 K5 ["MockSetChildren"]
  CALL R3 2 0
  JUMP [+10]
  GETTABLEKS R3 R1 K1 ["PopulatableType"]
  JUMPIFNOTEQKS R3 K6 ["StackFrame"] [+7]
  GETTABLEKS R6 R0 K7 ["MockCallstackFrameToDebuggerVariables"]
  GETTABLE R5 R6 R1
  NAMECALL R3 R1 K5 ["MockSetChildren"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["new"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CALL R3 1 1
  DUPCLOSURE R6 K9 [PROTO_12]
  NAMECALL R4 R3 K10 ["andThen"]
  CALL R4 2 0
  LOADN R4 0
  RETURN R4 1

PROTO_14:
  GETTABLEKS R3 R0 K0 ["VariableMap"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_15:
  SETTABLEKS R1 R0 K0 ["selectedThreadId"]
  SETTABLEKS R2 R0 K1 ["selectedFrameNumber"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Signal"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K9 ["ThreadState"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K10 ["StackFrame"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K11 ["DebuggerVariable"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K12 ["MockDebuggerLuaResponse"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K7 ["Util"]
  GETTABLEKS R8 R9 K13 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R9 R1 K7 ["Util"]
  GETTABLEKS R8 R9 K14 ["Promise"]
  NEWTABLE R9 8 0
  SETTABLEKS R9 R9 K15 ["__index"]
  DUPCLOSURE R10 K16 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K17 ["new"]
  DUPCLOSURE R10 K18 [PROTO_4]
  SETTABLEKS R10 R9 K19 ["GetThreadById"]
  DUPCLOSURE R10 K20 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K21 ["EvaluateWatch"]
  DUPCLOSURE R10 K22 [PROTO_10]
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K23 ["GetThreads"]
  DUPCLOSURE R10 K24 [PROTO_13]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K25 ["Populate"]
  DUPCLOSURE R10 K26 [PROTO_14]
  SETTABLEKS R10 R9 K27 ["GetVariableById"]
  DUPCLOSURE R10 K28 [PROTO_15]
  SETTABLEKS R10 R9 K29 ["UpdateSelectedFrame"]
  RETURN R9 1
