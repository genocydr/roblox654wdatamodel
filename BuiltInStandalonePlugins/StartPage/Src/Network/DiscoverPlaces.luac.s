PROTO_0:
  DUPTABLE R2 K4 [{"Name", "Id", "UniverseId", "Description"}]
  GETTABLEKS R3 R1 K5 ["name"]
  SETTABLEKS R3 R2 K0 ["Name"]
  GETTABLEKS R3 R1 K6 ["id"]
  SETTABLEKS R3 R2 K1 ["Id"]
  GETTABLEKS R3 R1 K7 ["universeId"]
  SETTABLEKS R3 R2 K2 ["UniverseId"]
  GETTABLEKS R3 R1 K8 ["description"]
  SETTABLEKS R3 R2 K3 ["Description"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETTABLEKS R2 R1 K0 ["data"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K0 ["data"]
  DUPCLOSURE R4 K1 [PROTO_0]
  CALL R2 2 1
  LENGTH R3 R2
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+11]
  GETUPVAL R3 2
  DUPTABLE R5 K4 [{"Id", "Children"}]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K2 ["Id"]
  SETTABLEKS R2 R5 K3 ["Children"]
  NAMECALL R3 R3 K5 ["upsertItem"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["DiscoverPlaces experienced an error: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K2 [{"limit", "SortOrder"}]
  LOADN R2 50
  SETTABLEKS R2 R1 K0 ["limit"]
  LOADK R2 K3 ["Asc"]
  SETTABLEKS R2 R1 K1 ["SortOrder"]
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["new"]
  CALL R7 0 1
  GETTABLEKS R8 R7 K5 ["composeUrl"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["PLACES_SEARCH_URL"]
  GETTABLEKS R9 R10 K7 ["Prefix"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["PLACES_SEARCH_URL"]
  GETTABLEKS R10 R11 K8 ["Url"]
  MOVE R11 R6
  CALL R10 1 1
  MOVE R11 R1
  CALL R8 3 1
  GETUPVAL R9 2
  GETUPVAL R11 2
  MOVE R13 R8
  NAMECALL R11 R11 K9 ["get"]
  CALL R11 2 -1
  NAMECALL R9 R9 K10 ["parseJson"]
  CALL R9 -1 1
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R6
  NAMECALL R9 R9 K11 ["andThen"]
  CALL R9 2 1
  DUPCLOSURE R11 K12 [PROTO_2]
  NAMECALL R9 R9 K13 ["catch"]
  CALL R9 2 0
  FORGLOOP R2 2 [-42]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFIntDebugLuaStartPageLogging"]
  CALL R1 1 1
  CALL R1 0 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Models"]
  GETTABLEKS R4 R5 K11 ["ApiArrayResponsePlaceModel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K14 ["Network"]
  GETTABLEKS R6 R7 K15 ["Urls"]
  CALL R5 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Services"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K18 ["Networking"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K19 ["createResponseValidator"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K14 ["Network"]
  GETTABLEKS R9 R10 K20 ["GameCache"]
  CALL R8 1 1
  GETTABLEKS R10 R4 K21 ["RobloxAPI"]
  GETTABLEKS R9 R10 K22 ["Url"]
  GETTABLEKS R10 R6 K23 ["new"]
  DUPTABLE R11 K26 [{"isInternal", "loggingLevel"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K24 ["isInternal"]
  SETTABLEKS R1 R11 K25 ["loggingLevel"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K12 ["Packages"]
  GETTABLEKS R12 R13 K27 ["Dash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K28 ["collectArray"]
  MOVE R13 R7
  GETTABLEKS R14 R3 K29 ["validate"]
  CALL R13 1 1
  DUPCLOSURE R14 K30 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R8
  RETURN R14 1
