PROTO_0:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETTABLEKS R3 R2 K1 ["ClassName"]
  JUMPIFEQ R3 R1 [+8]
  GETTABLEKS R3 R0 K2 ["ChildAdded"]
  NAMECALL R3 R3 K3 ["Wait"]
  CALL R3 1 1
  MOVE R2 R3
  JUMPBACK [-12]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K0 ["PlayerGui"]
  CALL R1 2 1
  GETIMPORT R3 K2 [script]
  GETTABLEKS R2 R3 K3 ["Parent"]
  LOADK R4 K4 ["FreeCamera"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K8 [Instance.new]
  LOADK R4 K9 ["ScreenGui"]
  CALL R3 1 1
  LOADK R4 K10 ["Freecam"]
  SETTABLEKS R4 R3 K11 ["Name"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["ResetOnSpawn"]
  GETIMPORT R4 K8 [Instance.new]
  LOADK R5 K13 ["LocalScript"]
  CALL R4 1 1
  LOADK R5 K14 ["FreecamScript"]
  SETTABLEKS R5 R4 K11 ["Name"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["getFFlagServerCoreScriptSourceCode"]
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K16 ["getSourceForServerScript"]
  MOVE R6 R2
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["Source"]
  JUMP [+4]
  GETTABLEKS R5 R2 K17 ["Source"]
  SETTABLEKS R5 R4 K17 ["Source"]
  SETTABLEKS R3 R4 K3 ["Parent"]
  SETTABLEKS R1 R3 K3 ["Parent"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K2 [string.format]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K3 ["APIS_URL"]
  LOADK R3 K4 ["asset-permissions-api/v1/rcc/assets/check-permissions"]
  CONCAT R1 R2 R3
  CALL R0 1 1
  GETUPVAL R1 1
  DUPTABLE R3 K6 [{"requests"}]
  NEWTABLE R4 0 1
  DUPTABLE R5 K10 [{"subject", "action", "assetId"}]
  DUPTABLE R6 K13 [{"subjectType", "subjectId"}]
  LOADK R7 K14 ["User"]
  SETTABLEKS R7 R6 K11 ["subjectType"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["UserId"]
  SETTABLEKS R7 R6 K12 ["subjectId"]
  SETTABLEKS R6 R5 K7 ["subject"]
  LOADK R6 K16 ["Edit"]
  SETTABLEKS R6 R5 K8 ["action"]
  GETIMPORT R7 K18 [game]
  GETTABLEKS R6 R7 K19 ["PlaceId"]
  SETTABLEKS R6 R5 K9 ["assetId"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K5 ["requests"]
  NAMECALL R1 R1 K20 ["JSONEncode"]
  CALL R1 2 1
  GETUPVAL R2 3
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K21 ["PostAsyncFullUrl"]
  CALL R2 3 1
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K22 ["JSONDecode"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["IsStudio"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["UserId"]
  LOADN R2 0
  JUMPIFNOTLE R1 R2 [+3]
  LOADB R1 0
  RETURN R1 1
  GETIMPORT R1 K3 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CALL R1 1 2
  JUMPIFNOT R1 [+14]
  GETTABLEKS R3 R2 K4 ["results"]
  GETTABLEN R2 R3 1
  GETTABLEKS R3 R2 K5 ["value"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R2 K5 ["value"]
  GETTABLEKS R3 R4 K6 ["status"]
  JUMPIFNOTEQKS R3 K7 ["HasPermission"] [+3]
  LOADB R3 1
  RETURN R3 1
  GETIMPORT R3 K9 [ipairs]
  GETUPVAL R4 4
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETIMPORT R8 K3 [pcall]
  GETTABLEKS R9 R0 K10 ["IsInGroup"]
  MOVE R10 R0
  MOVE R11 R7
  CALL R8 3 2
  JUMPIFNOT R8 [+3]
  JUMPIFNOT R9 [+2]
  LOADB R10 1
  RETURN R10 1
  FORGLOOP R3 2 [inext] [-12]
  GETUPVAL R3 5
  JUMPIFNOT R3 [+32]
  GETIMPORT R3 K12 [game]
  LOADK R5 K13 ["LuobuModerationStatus"]
  NAMECALL R3 R3 K14 ["GetEngineFeature"]
  CALL R3 2 1
  JUMPIFNOT R3 [+25]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K15 ["IsLuobuServer"]
  GETIMPORT R4 K19 [Enum.TriStateBoolean.True]
  JUMPIFNOTEQ R3 R4 [+19]
  GETIMPORT R3 K9 [ipairs]
  GETUPVAL R4 7
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETIMPORT R8 K3 [pcall]
  GETTABLEKS R9 R0 K10 ["IsInGroup"]
  MOVE R10 R0
  MOVE R11 R7
  CALL R8 3 2
  JUMPIFNOT R8 [+3]
  JUMPIFNOT R9 [+2]
  LOADB R10 1
  RETURN R10 1
  FORGLOOP R3 2 [inext] [-12]
  LOADB R3 0
  RETURN R3 1

PROTO_4:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  DUPCLOSURE R2 K2 [PROTO_3]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  DUPCLOSURE R3 K3 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R1
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K4 ["PlayerAdded"]
  MOVE R6 R3
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 0
  GETIMPORT R4 K7 [ipairs]
  GETUPVAL R5 9
  NAMECALL R5 R5 K8 ["GetPlayers"]
  CALL R5 1 -1
  CALL R4 -1 3
  FORGPREP_INEXT R4
  GETIMPORT R9 K11 [coroutine.wrap]
  MOVE R10 R3
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 0
  FORGLOOP R4 2 [inext] [-7]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AllowLuobuFreecamGroup"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 1
  NEWTABLE R1 0 1
  LOADK R2 K4 [4358041]
  SETLIST R1 R2 1 [1]
  NEWTABLE R2 0 1
  LOADK R3 K5 [7842878]
  SETLIST R2 R3 1 [1]
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["HttpRbxApiService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["HttpService"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["Players"]
  NAMECALL R5 R5 K7 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K10 ["PolicyService"]
  NAMECALL R6 R6 K7 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K11 ["RunService"]
  NAMECALL R7 R7 K7 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K12 ["CoreGui"]
  NAMECALL R8 R8 K7 ["GetService"]
  CALL R8 2 1
  LOADK R11 K13 ["RobloxGui"]
  NAMECALL R9 R8 K14 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K16 [require]
  GETTABLEKS R13 R9 K17 ["Modules"]
  GETTABLEKS R12 R13 K18 ["Common"]
  GETTABLEKS R11 R12 K19 ["Url"]
  CALL R10 1 1
  GETIMPORT R11 K16 [require]
  GETTABLEKS R14 R9 K17 ["Modules"]
  GETTABLEKS R13 R14 K20 ["Server"]
  GETTABLEKS R12 R13 K21 ["ServerUtil"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_5]
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R12 1
