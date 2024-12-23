PROTO_0:
  LENGTH R2 R0
  JUMPIFNOTLT R1 R2 [+13]
  LOADN R7 1
  SUBK R8 R1 K0 [3]
  FASTCALL3 STRING_SUB R0 R7 R8
  MOVE R6 R0
  GETIMPORT R5 K3 [string.sub]
  CALL R5 3 1
  MOVE R3 R5
  LOADK R4 K4 ["..."]
  CONCAT R2 R3 R4
  RETURN R2 1
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["Name"]
  LENGTH R3 R2
  LOADN R4 30
  JUMPIFNOTLT R4 R3 [+13]
  LOADN R7 1
  LOADN R8 27
  FASTCALL3 STRING_SUB R2 R7 R8
  MOVE R6 R2
  GETIMPORT R5 K3 [string.sub]
  CALL R5 3 1
  MOVE R3 R5
  LOADK R4 K4 ["..."]
  CONCAT R1 R3 R4
  JUMP [+2]
  MOVE R1 R2
  JUMP [0]
  SETUPVAL R1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+16]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 0
  CALL R1 2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K0 ["andThen"]
  CALL R1 2 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 0
  MOVE R1 R0
  CALL R1 0 0
  RETURN R0 0
  MOVE R1 R0
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+7]
  GETUPVAL R0 1
  LOADK R2 K0 ["InGame.CommonUI.Label.ReturnFallback"]
  NAMECALL R0 R0 K1 ["FormatByKey"]
  CALL R0 2 -1
  RETURN R0 -1
  GETUPVAL R0 1
  LOADK R2 K2 ["InGame.CommonUI.Label.ReturnTo"]
  DUPTABLE R3 K4 [{"placeName"}]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K3 ["placeName"]
  NAMECALL R0 R0 K1 ["FormatByKey"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+18]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["any"]
  NEWTABLE R1 0 2
  GETUPVAL R2 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["delay"]
  LOADN R4 1
  CALL R3 1 -1
  SETLIST R1 R2 -1 [1]
  CALL R0 1 1
  NAMECALL R0 R0 K2 ["await"]
  CALL R0 1 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K3 ["getTooltipText"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["getTooltipText"]
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K0 ["andThen"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createBinding"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["getTooltipText"]
  CALL R1 0 -1
  CALL R0 -1 2
  GETUPVAL R2 2
  JUMPIFNOTEQKNIL R2 [+8]
  GETIMPORT R2 K3 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CALL R2 1 0
  RETURN R0 1

PROTO_8:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 1
  LOADB R2 1
  NAMECALL R0 R0 K0 ["TeleportTrustedBackForth"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  LOADN R2 0
  JUMPIFLT R2 R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TeleportService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["HttpRbxApiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Promise"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Roact"]
  CALL R5 1 1
  LOADK R8 K12 ["RobloxGui"]
  NAMECALL R6 R2 K13 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R6 K14 ["Modules"]
  GETTABLEKS R9 R10 K15 ["Common"]
  GETTABLEKS R8 R9 K16 ["httpRequest"]
  CALL R7 1 1
  MOVE R8 R7
  MOVE R9 R3
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R10 R6 K14 ["Modules"]
  LOADK R12 K17 ["RobloxTranslator"]
  NAMECALL R10 R10 K13 ["WaitForChild"]
  CALL R10 2 -1
  CALL R9 -1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K18 ["Workspace"]
  GETTABLEKS R13 R14 K9 ["Packages"]
  GETTABLEKS R12 R13 K19 ["GameDetailRodux"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K20 ["GetGameNameAndDescription"]
  GETIMPORT R11 K1 [game]
  LOADK R13 K21 ["TeleportHistoryButtons"]
  NAMECALL R11 R11 K22 ["GetEngineFeature"]
  CALL R11 2 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  JUMPIFNOT R11 [+6]
  LOADB R17 1
  NAMECALL R15 R0 K23 ["GetThirdPartyTeleportInfo"]
  CALL R15 2 2
  MOVE R13 R15
  MOVE R14 R16
  JUMPIFNOT R11 [+4]
  LOADN R15 0
  JUMPIFNOTLT R15 R13 [+2]
  MOVE R12 R13
  DUPCLOSURE R15 K24 [PROTO_0]
  LOADNIL R16
  GETTABLEKS R17 R4 K25 ["defer"]
  NEWCLOSURE R18 P1
  CAPTURE REF R12
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE REF R16
  CALL R17 1 1
  NEWTABLE R18 8 0
  NEWCLOSURE R19 P2
  CAPTURE REF R16
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K26 ["getTooltipText"]
  NEWCLOSURE R19 P3
  CAPTURE REF R16
  CAPTURE VAL R4
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R19 R18 K27 ["getTooltipTextTimeout"]
  NEWCLOSURE R19 P4
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE REF R16
  CAPTURE VAL R17
  SETTABLEKS R19 R18 K28 ["getMenuText"]
  DUPCLOSURE R19 K29 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K30 ["initiateFrontButtonTeleport"]
  NEWCLOSURE R19 P6
  CAPTURE REF R12
  SETTABLEKS R19 R18 K31 ["hasReturnUniverse"]
  CLOSEUPVALS R12
  RETURN R18 1
