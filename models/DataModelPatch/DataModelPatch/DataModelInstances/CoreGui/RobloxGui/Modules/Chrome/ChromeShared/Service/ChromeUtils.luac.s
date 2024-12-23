PROTO_0:
  DUPTABLE R1 K2 [{"_state", "_changeSignal"}]
  MOVE R2 R0
  JUMPIF R2 [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Unavailable"]
  SETTABLEKS R2 R1 K0 ["_state"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K1 ["_changeSignal"]
  GETUPVAL R4 2
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K6 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_changeSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["connect"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_state"]
  JUMPIFEQ R2 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_state"]
  GETTABLEKS R2 R0 K1 ["_changeSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_state"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Available"]
  NAMECALL R1 R0 K1 ["set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Loading"]
  NAMECALL R1 R0 K1 ["set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Unavailable"]
  NAMECALL R1 R0 K1 ["set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Pinned"]
  NAMECALL R1 R0 K1 ["set"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K3 [{"_value", "_changeSignal", "_excludeFromTotalCounts"}]
  DUPTABLE R2 K6 [{"type", "value"}]
  LOADK R3 K7 ["empty"]
  SETTABLEKS R3 R2 K4 ["type"]
  LOADNIL R3
  SETTABLEKS R3 R2 K5 ["value"]
  SETTABLEKS R2 R1 K0 ["_value"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K1 ["_changeSignal"]
  ORK R2 R0 K9 [False]
  SETTABLEKS R2 R1 K2 ["_excludeFromTotalCounts"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K11 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_9:
  SETTABLEKS R1 R0 K0 ["_excludeFromTotalCounts"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_excludeFromTotalCounts"]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["_changeSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["connect"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_value"]
  RETURN R1 1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_value"]
  JUMPIFNOT R1 [+22]
  GETTABLEKS R2 R0 K0 ["_value"]
  GETTABLEKS R1 R2 K1 ["type"]
  JUMPIFEQKS R1 K2 ["empty"] [+17]
  DUPTABLE R1 K4 [{"type", "value"}]
  LOADK R2 K2 ["empty"]
  SETTABLEKS R2 R1 K1 ["type"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["value"]
  SETTABLEKS R1 R0 K0 ["_value"]
  GETTABLEKS R1 R0 K5 ["_changeSignal"]
  GETTABLEKS R3 R0 K0 ["_value"]
  NAMECALL R1 R1 K6 ["fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R2 K2 [{"type", "value"}]
  LOADK R3 K3 ["count"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R1 R2 K1 ["value"]
  GETTABLEKS R3 R0 K4 ["_value"]
  JUMPIFEQ R3 R2 [+10]
  SETTABLEKS R2 R0 K4 ["_value"]
  GETTABLEKS R3 R0 K5 ["_changeSignal"]
  GETTABLEKS R5 R0 K4 ["_value"]
  NAMECALL R3 R3 K6 ["fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  NEWTABLE R1 2 0
  SETTABLEKS R0 R1 K0 ["_value"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["_changeSignal"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["_value"]
  RETURN R1 1

PROTO_17:
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_momentaryClearThread"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["set"]
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R4 R0 K0 ["_value"]
  JUMPIFEQ R4 R1 [+9]
  SETTABLEKS R1 R0 K0 ["_value"]
  GETTABLEKS R4 R0 K1 ["_changeSignal"]
  MOVE R6 R1
  NAMECALL R4 R4 K2 ["fire"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K3 ["_momentaryClearThread"]
  JUMPIFNOT R4 [+4]
  GETIMPORT R5 K6 [task.cancel]
  MOVE R6 R4
  CALL R5 1 0
  GETIMPORT R5 K8 [task.delay]
  MOVE R6 R2
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CALL R5 2 1
  SETTABLEKS R5 R0 K3 ["_momentaryClearThread"]
  RETURN R0 0

PROTO_19:
  GETTABLEKS R2 R0 K0 ["_momentaryClearThread"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R3 K3 [task.cancel]
  MOVE R4 R2
  CALL R3 1 0
  LOADNIL R3
  SETTABLEKS R3 R0 K0 ["_momentaryClearThread"]
  GETTABLEKS R3 R0 K4 ["_value"]
  JUMPIFEQ R3 R1 [+9]
  SETTABLEKS R1 R0 K4 ["_value"]
  GETTABLEKS R3 R0 K5 ["_changeSignal"]
  MOVE R5 R1
  NAMECALL R3 R3 K6 ["fire"]
  CALL R3 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["_changeSignal"]
  RETURN R1 1

PROTO_21:
  GETTABLEKS R3 R0 K0 ["_changeSignal"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["connect"]
  CALL R3 2 1
  JUMPIFNOTEQKB R2 TRUE [+5]
  MOVE R4 R1
  GETTABLEKS R5 R0 K2 ["_value"]
  CALL R4 1 0
  RETURN R3 1

PROTO_22:
  JUMPIF R0 [+4]
  GETIMPORT R3 K1 [error]
  LOADK R4 K2 ["No signal provided to MappedSignal"]
  CALL R3 1 0
  JUMPIF R1 [+4]
  GETIMPORT R3 K1 [error]
  LOADK R4 K3 ["No fetchMapFunction provided to MappedSignal"]
  CALL R3 1 0
  NEWTABLE R3 4 0
  SETTABLEKS R0 R3 K4 ["_signal"]
  SETTABLEKS R1 R3 K5 ["_fetchMapFunction"]
  SETTABLEKS R2 R3 K6 ["_eventReceiver"]
  GETUPVAL R6 0
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K8 [setmetatable]
  CALL R4 2 1
  RETURN R4 1

PROTO_23:
  RETURN R0 0

PROTO_24:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_eventReceiver"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_eventReceiver"]
  GETVARARGS R1 -1
  CALL R0 -1 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["_fetchMapFunction"]
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R2 R0 K0 ["_signal"]
  JUMPIF R2 [+6]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K3 ["MappedSignal: Missing signal"]
  CALL R2 1 0
  DUPCLOSURE R2 K4 [PROTO_23]
  RETURN R2 1
  GETTABLEKS R2 R0 K0 ["_signal"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K5 ["connect"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_26:
  GETTABLEKS R1 R0 K0 ["_fetchMapFunction"]
  CALL R1 0 -1
  RETURN R1 -1

PROTO_27:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetCoreGuiEnabled"]
  CALL R0 2 1
  GETUPVAL R1 2
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K1 ["availability"]
  NAMECALL R1 R1 K2 ["available"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K1 ["availability"]
  NAMECALL R1 R1 K3 ["unavailable"]
  CALL R1 1 0
  RETURN R0 0

PROTO_28:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["CoreGuiChangedSignal"]
  MOVE R6 R3
  NAMECALL R4 R4 K1 ["Connect"]
  CALL R4 2 1
  GETUPVAL R5 0
  MOVE R7 R1
  NAMECALL R5 R5 K2 ["GetCoreGuiEnabled"]
  CALL R5 2 1
  JUMPIFNOT R2 [+4]
  MOVE R6 R2
  MOVE R7 R5
  CALL R6 1 0
  RETURN R4 1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R0 K3 ["availability"]
  NAMECALL R6 R6 K4 ["available"]
  CALL R6 1 0
  RETURN R4 1
  GETTABLEKS R6 R0 K3 ["availability"]
  NAMECALL R6 R6 K5 ["unavailable"]
  CALL R6 1 0
  RETURN R4 1

PROTO_29:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  GETIMPORT R0 K2 [tick]
  CALL R0 0 1
  GETUPVAL R1 1
  JUMPIFNOTLT R0 R1 [+4]
  GETUPVAL R0 2
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K1 [require]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Modules"]
  GETTABLEKS R3 R4 K3 ["Settings"]
  GETTABLEKS R2 R3 K4 ["SettingsHub"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["MenuIsOpen"]
  JUMPIFNOT R2 [+22]
  GETIMPORT R3 K8 [tick]
  CALL R3 0 1
  ADDK R2 R3 K6 [3]
  LOADNIL R3
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["MenuClosed"]
  NEWCLOSURE R6 P0
  CAPTURE REF R3
  CAPTURE VAL R2
  CAPTURE VAL R0
  NAMECALL R4 R4 K10 ["Connect"]
  CALL R4 2 1
  MOVE R3 R4
  LOADB R6 0
  NAMECALL R4 R1 K11 ["SetVisibility"]
  CALL R4 2 0
  CLOSEUPVALS R3
  RETURN R0 0
  MOVE R2 R0
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StarterGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CoreGui"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  LOADK R6 K7 ["RobloxGui"]
  NAMECALL R4 R3 K8 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R0 K11 ["Workspace"]
  GETTABLEKS R7 R8 K12 ["Packages"]
  GETTABLEKS R6 R7 K13 ["SharedFlags"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R0 K11 ["Workspace"]
  GETTABLEKS R8 R9 K12 ["Packages"]
  GETTABLEKS R7 R8 K14 ["AppCommonLib"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["Signal"]
  GETTABLEKS R8 R5 K16 ["GetFFlagRemoveChromeRobloxGuiReferences"]
  DUPTABLE R9 K21 [{"Unavailable", "Loading", "Available", "Pinned"}]
  LOADN R10 0
  SETTABLEKS R10 R9 K17 ["Unavailable"]
  LOADN R10 1
  SETTABLEKS R10 R9 K18 ["Loading"]
  LOADN R10 2
  SETTABLEKS R10 R9 K19 ["Available"]
  LOADN R10 3
  SETTABLEKS R10 R9 K20 ["Pinned"]
  NEWTABLE R10 16 0
  SETTABLEKS R10 R10 K22 ["__index"]
  DUPCLOSURE R11 K23 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R11 R10 K24 ["new"]
  DUPCLOSURE R11 K25 [PROTO_1]
  SETTABLEKS R11 R10 K26 ["connect"]
  DUPCLOSURE R11 K27 [PROTO_2]
  SETTABLEKS R11 R10 K28 ["set"]
  DUPCLOSURE R11 K29 [PROTO_3]
  SETTABLEKS R11 R10 K30 ["get"]
  DUPCLOSURE R11 K31 [PROTO_4]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K32 ["available"]
  DUPCLOSURE R11 K33 [PROTO_5]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K34 ["loading"]
  DUPCLOSURE R11 K35 [PROTO_6]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K36 ["unavailable"]
  DUPCLOSURE R11 K37 [PROTO_7]
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K38 ["pinned"]
  NEWTABLE R11 8 0
  SETTABLEKS R11 R11 K22 ["__index"]
  DUPCLOSURE R12 K39 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K24 ["new"]
  DUPCLOSURE R12 K40 [PROTO_9]
  SETTABLEKS R12 R11 K41 ["setExcludeFromTotalCounts"]
  DUPCLOSURE R12 K42 [PROTO_10]
  SETTABLEKS R12 R11 K43 ["excludeFromTotalCounts"]
  DUPCLOSURE R12 K44 [PROTO_11]
  SETTABLEKS R12 R11 K26 ["connect"]
  DUPCLOSURE R12 K45 [PROTO_12]
  SETTABLEKS R12 R11 K30 ["get"]
  DUPCLOSURE R12 K46 [PROTO_13]
  SETTABLEKS R12 R11 K47 ["clear"]
  DUPCLOSURE R12 K48 [PROTO_14]
  SETTABLEKS R12 R11 K49 ["fireCount"]
  NEWTABLE R12 8 0
  SETTABLEKS R12 R12 K22 ["__index"]
  DUPCLOSURE R13 K50 [PROTO_15]
  CAPTURE VAL R7
  CAPTURE VAL R12
  SETTABLEKS R13 R12 K24 ["new"]
  DUPCLOSURE R13 K51 [PROTO_16]
  SETTABLEKS R13 R12 K30 ["get"]
  DUPCLOSURE R13 K52 [PROTO_18]
  SETTABLEKS R13 R12 K53 ["setMomentary"]
  DUPCLOSURE R13 K54 [PROTO_19]
  SETTABLEKS R13 R12 K28 ["set"]
  DUPCLOSURE R13 K55 [PROTO_20]
  SETTABLEKS R13 R12 K56 ["signal"]
  DUPCLOSURE R13 K57 [PROTO_21]
  SETTABLEKS R13 R12 K26 ["connect"]
  NEWTABLE R13 4 0
  SETTABLEKS R13 R13 K22 ["__index"]
  DUPCLOSURE R14 K58 [PROTO_22]
  CAPTURE VAL R13
  SETTABLEKS R14 R13 K24 ["new"]
  DUPCLOSURE R14 K59 [PROTO_25]
  SETTABLEKS R14 R13 K26 ["connect"]
  DUPCLOSURE R14 K60 [PROTO_26]
  SETTABLEKS R14 R13 K30 ["get"]
  DUPCLOSURE R14 K61 [PROTO_28]
  CAPTURE VAL R1
  SETGLOBAL R14 K62 ["setCoreGuiAvailability"]
  DUPCLOSURE R14 K63 [PROTO_30]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETGLOBAL R14 K64 ["dismissRobloxMenuAndRun"]
  DUPTABLE R14 K70 [{"MappedSignal", "AvailabilitySignal", "AvailabilitySignalState", "NotifySignal", "ObservableValue", "setCoreGuiAvailability", "dismissRobloxMenuAndRun"}]
  SETTABLEKS R13 R14 K65 ["MappedSignal"]
  SETTABLEKS R10 R14 K66 ["AvailabilitySignal"]
  SETTABLEKS R9 R14 K67 ["AvailabilitySignalState"]
  SETTABLEKS R11 R14 K68 ["NotifySignal"]
  SETTABLEKS R12 R14 K69 ["ObservableValue"]
  GETGLOBAL R15 K62 ["setCoreGuiAvailability"]
  SETTABLEKS R15 R14 K62 ["setCoreGuiAvailability"]
  GETGLOBAL R15 K64 ["dismissRobloxMenuAndRun"]
  SETTABLEKS R15 R14 K64 ["dismissRobloxMenuAndRun"]
  RETURN R14 1
