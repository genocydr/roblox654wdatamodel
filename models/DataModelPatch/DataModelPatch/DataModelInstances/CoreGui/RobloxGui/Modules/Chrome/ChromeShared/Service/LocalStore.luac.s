PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  JUMPIFNOTEQKNIL R0 [+6]
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["LocalPlayer"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LocalPlayer"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  JUMPIFNOTEQKNIL R0 [+8]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  SETTABLE R2 R0 R1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["AnyPlayer"]
  JUMPIFNOTEQKNIL R0 [+6]
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["AnyPlayer"]
  RETURN R0 0

PROTO_1:
  JUMPIFNOT R0 [+13]
  GETTABLEKS R1 R0 K0 ["LocalPlayer"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K0 ["LocalPlayer"]
  GETUPVAL R3 0
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K0 ["LocalPlayer"]
  GETUPVAL R3 0
  GETTABLE R1 R2 R3
  RETURN R1 1
  RETURN R0 1

PROTO_2:
  JUMPIFNOT R0 [+6]
  GETTABLEKS R1 R0 K0 ["AnyPlayer"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K0 ["AnyPlayer"]
  RETURN R1 1
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["InGameMenuState"]
  NAMECALL R0 R0 K1 ["GetItem"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONDecode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_3]
  CAPTURE UPVAL U1
  CALL R0 1 2
  JUMPIFNOT R0 [+24]
  LOADB R2 1
  SETUPVAL R2 2
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+14]
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+2]
  SETUPVAL R3 4
  JUMP [+7]
  NEWTABLE R4 0 0
  SETUPVAL R4 4
  JUMP [+3]
  NEWTABLE R2 0 0
  SETUPVAL R2 4
  GETUPVAL R2 5
  CALL R2 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONEncode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["InGameMenuState"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K1 ["SetItem"]
  CALL R0 3 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["Flush"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+29]
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 2
  JUMPIFNOT R0 [+17]
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIF R2 [+15]
  GETIMPORT R4 K3 [print]
  MOVE R5 R3
  CALL R4 1 0
  GETIMPORT R4 K5 [error]
  LOADK R5 K6 ["Failed to write JSON to AppStorageService"]
  LOADN R6 0
  CALL R4 2 0
  RETURN R0 0
  GETIMPORT R2 K5 [error]
  LOADK R3 K7 ["Failed to encode JSON"]
  LOADN R4 0
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["table"] [+2]
  RETURN R0 1
  NEWTABLE R1 0 0
  GETIMPORT R2 K4 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  CALL R7 1 1
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-5]
  RETURN R1 1

PROTO_10:
  GETUPVAL R3 0
  JUMPIF R3 [+2]
  GETUPVAL R3 1
  CALL R3 0 0
  GETUPVAL R3 0
  JUMPIFNOT R3 [+16]
  JUMPIFNOT R2 [+4]
  MOVE R3 R2
  GETUPVAL R4 2
  CALL R3 1 1
  JUMPIF R3 [+1]
  GETUPVAL R3 2
  GETTABLE R4 R3 R0
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R5 1 1
  SETTABLE R5 R3 R0
  GETTABLE R5 R3 R0
  JUMPIFEQ R4 R5 [+3]
  GETUPVAL R5 4
  CALL R5 0 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  JUMPIF R2 [+2]
  GETUPVAL R2 1
  CALL R2 0 0
  GETUPVAL R2 0
  JUMPIFNOT R2 [+11]
  JUMPIFNOT R1 [+4]
  MOVE R2 R1
  GETUPVAL R3 2
  CALL R2 1 1
  JUMPIF R2 [+1]
  GETUPVAL R2 2
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 3
  GETTABLE R4 R2 R0
  CALL R3 1 1
  RETURN R3 1
  LOADNIL R2
  RETURN R2 1

PROTO_12:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+21]
  GETUPVAL R2 1
  GETUPVAL R3 2
  JUMPIF R3 [+2]
  GETUPVAL R3 3
  CALL R3 0 0
  GETUPVAL R3 2
  JUMPIFNOT R3 [+12]
  JUMPIFNOT R2 [+4]
  MOVE R3 R2
  GETUPVAL R4 4
  CALL R3 1 1
  JUMPIF R3 [+1]
  GETUPVAL R3 4
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 5
  GETTABLE R5 R3 R0
  CALL R4 1 1
  MOVE R1 R4
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_13:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_14:
  GETUPVAL R2 0
  GETUPVAL R3 1
  JUMPIF R3 [+2]
  GETUPVAL R3 2
  CALL R3 0 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+16]
  JUMPIFNOT R2 [+4]
  MOVE R3 R2
  GETUPVAL R4 3
  CALL R3 1 1
  JUMPIF R3 [+1]
  GETUPVAL R3 3
  GETTABLE R4 R3 R0
  GETUPVAL R5 4
  MOVE R6 R1
  CALL R5 1 1
  SETTABLE R5 R3 R0
  GETTABLE R5 R3 R0
  JUMPIFEQ R4 R5 [+3]
  GETUPVAL R5 5
  CALL R5 0 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETUPVAL R3 1
  JUMPIF R3 [+2]
  GETUPVAL R3 2
  CALL R3 0 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+12]
  JUMPIFNOT R2 [+4]
  MOVE R3 R2
  GETUPVAL R4 3
  CALL R3 1 1
  JUMPIF R3 [+1]
  GETUPVAL R3 3
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 4
  GETTABLE R5 R3 R0
  CALL R4 1 1
  MOVE R1 R4
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_16:
  GETUPVAL R2 0
  GETUPVAL R3 1
  JUMPIF R3 [+2]
  GETUPVAL R3 2
  CALL R3 0 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+16]
  JUMPIFNOT R2 [+4]
  MOVE R3 R2
  GETUPVAL R4 3
  CALL R3 1 1
  JUMPIF R3 [+1]
  GETUPVAL R3 3
  GETTABLE R4 R3 R0
  GETUPVAL R5 4
  MOVE R6 R1
  CALL R5 1 1
  SETTABLE R5 R3 R0
  GETTABLE R5 R3 R0
  JUMPIFEQ R4 R5 [+3]
  GETUPVAL R5 5
  CALL R5 0 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  JUMPIF R3 [+2]
  GETUPVAL R3 2
  CALL R3 0 0
  GETUPVAL R3 1
  JUMPIFNOT R3 [+12]
  JUMPIFNOT R2 [+4]
  MOVE R3 R2
  GETUPVAL R4 3
  CALL R3 1 1
  JUMPIF R3 [+1]
  GETUPVAL R3 3
  JUMPIFNOT R3 [+5]
  GETUPVAL R4 4
  GETTABLE R5 R3 R0
  CALL R4 1 1
  MOVE R1 R4
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_18:
  LOADB R0 0
  SETUPVAL R0 0
  LOADNIL R0
  SETUPVAL R0 1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AppStorageService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Players"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["InGameMenuStateStorageKey"]
  NAMECALL R4 R4 K8 ["GetEngineFeature"]
  CALL R4 2 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R3 K11 ["Workspace"]
  GETTABLEKS R8 R9 K12 ["Packages"]
  GETTABLEKS R7 R8 K13 ["SharedFlags"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K14 ["FFlagEnableUnibarFtuxTooltips"]
  LOADNIL R6
  LOADB R7 0
  GETTABLEKS R8 R2 K15 ["LocalPlayer"]
  JUMPIF R8 [+10]
  LOADK R11 K15 ["LocalPlayer"]
  NAMECALL R9 R2 K16 ["GetPropertyChangedSignal"]
  CALL R9 2 1
  NAMECALL R9 R9 K17 ["Wait"]
  CALL R9 1 0
  GETTABLEKS R8 R2 K15 ["LocalPlayer"]
  JUMPBACK [-11]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R9 R8 K18 ["UserId"]
  JUMP [+1]
  LOADN R9 0
  LOADK R11 K19 ["player_"]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R13 R9
  GETIMPORT R12 K21 [tostring]
  CALL R12 1 1
  CONCAT R10 R11 R12
  NEWCLOSURE R11 P0
  CAPTURE REF R6
  CAPTURE VAL R10
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R10
  DUPCLOSURE R13 K23 [PROTO_2]
  NEWCLOSURE R14 P3
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE REF R7
  CAPTURE VAL R1
  CAPTURE REF R6
  CAPTURE VAL R11
  NEWCLOSURE R15 P4
  CAPTURE VAL R4
  CAPTURE REF R7
  CAPTURE VAL R1
  CAPTURE REF R6
  CAPTURE VAL R0
  DUPCLOSURE R16 K24 [PROTO_9]
  CAPTURE VAL R16
  NEWCLOSURE R17 P6
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  CAPTURE VAL R15
  NEWCLOSURE R18 P7
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  NEWCLOSURE R19 P8
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  DUPTABLE R20 K32 [{"isEnabled", "storeForLocalPlayer", "loadForLocalPlayer", "storeForAnyPlayer", "loadForAnyPlayer", "clearCache", "getValue"}]
  DUPCLOSURE R21 K33 [PROTO_13]
  CAPTURE VAL R4
  SETTABLEKS R21 R20 K25 ["isEnabled"]
  NEWCLOSURE R21 P10
  CAPTURE VAL R12
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  CAPTURE VAL R15
  SETTABLEKS R21 R20 K26 ["storeForLocalPlayer"]
  NEWCLOSURE R21 P11
  CAPTURE VAL R12
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K27 ["loadForLocalPlayer"]
  NEWCLOSURE R21 P12
  CAPTURE VAL R13
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  CAPTURE VAL R15
  SETTABLEKS R21 R20 K28 ["storeForAnyPlayer"]
  NEWCLOSURE R21 P13
  CAPTURE VAL R13
  CAPTURE REF R7
  CAPTURE VAL R14
  CAPTURE REF R6
  CAPTURE VAL R16
  SETTABLEKS R21 R20 K29 ["loadForAnyPlayer"]
  NEWCLOSURE R21 P14
  CAPTURE REF R7
  CAPTURE REF R6
  SETTABLEKS R21 R20 K30 ["clearCache"]
  SETTABLEKS R19 R20 K31 ["getValue"]
  CLOSEUPVALS R6
  RETURN R20 1