PROTO_0:
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Failed to load places"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  GETIMPORT R1 K2 [error]
  LOADK R2 K3 ["Failed to load packages"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R1 K3 ["data"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  DUPTABLE R7 K7 [{"reviewStatus", "isModerated", "moderationStatus"}]
  GETTABLEKS R8 R6 K4 ["reviewStatus"]
  SETTABLEKS R8 R7 K4 ["reviewStatus"]
  GETTABLEKS R8 R6 K5 ["isModerated"]
  SETTABLEKS R8 R7 K5 ["isModerated"]
  GETTABLEKS R8 R6 K6 ["moderationStatus"]
  SETTABLEKS R8 R7 K6 ["moderationStatus"]
  SETGLOBAL R7 K8 ["assetModerationData"]
  GETUPVAL R7 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["Dictionary"]
  GETTABLEKS R8 R9 K10 ["join"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["assetsModerationData"]
  NEWTABLE R10 1 0
  GETTABLEKS R11 R6 K12 ["id"]
  GETGLOBAL R12 K8 ["assetModerationData"]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["assetsModerationData"]
  FORGLOOP R2 2 [-35]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["assetsModerationData"]
  CALL R4 1 -1
  NAMECALL R2 R2 K13 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Failed to load asset information"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K1 ["NextPageToken"]
  SETTABLEKS R3 R2 K2 ["nextPageCursor"]
  GETIMPORT R2 K4 [pairs]
  GETTABLEKS R3 R1 K5 ["Aliases"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 1
  GETIMPORT R8 K9 [Enum.AssetType.Image]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K12 [string.find]
  GETTABLEKS R8 R6 K13 ["Name"]
  LOADK R9 K14 ["Images/"]
  CALL R7 2 1
  JUMPIF R7 [+54]
  GETUPVAL R7 1
  GETIMPORT R8 K16 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K12 [string.find]
  GETTABLEKS R8 R6 K13 ["Name"]
  LOADK R9 K17 ["Meshes/"]
  CALL R7 2 1
  JUMPIF R7 [+42]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 1
  GETIMPORT R8 K19 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K12 [string.find]
  GETTABLEKS R8 R6 K13 ["Name"]
  LOADK R9 K20 ["Audio/"]
  CALL R7 2 1
  JUMPIF R7 [+27]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 1
  GETIMPORT R8 K22 [Enum.AssetType.Video]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K12 [string.find]
  GETTABLEKS R8 R6 K13 ["Name"]
  LOADK R9 K23 ["Video/"]
  CALL R7 2 1
  JUMPIF R7 [+12]
  GETUPVAL R7 1
  GETIMPORT R8 K25 [Enum.AssetType.Model]
  JUMPIFNOTEQ R7 R8 [+171]
  GETIMPORT R7 K12 [string.find]
  GETTABLEKS R8 R6 K13 ["Name"]
  LOADK R9 K26 ["Models/"]
  CALL R7 2 1
  JUMPIFNOT R7 [+163]
  NEWTABLE R7 8 0
  GETTABLEKS R9 R6 K27 ["TargetId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K29 [tostring]
  CALL R8 1 1
  GETUPVAL R9 1
  SETTABLEKS R9 R7 K30 ["assetType"]
  GETTABLEKS R9 R6 K31 ["Asset"]
  SETTABLEKS R9 R7 K32 ["asset"]
  GETTABLEKS R9 R6 K27 ["TargetId"]
  SETTABLEKS R9 R7 K33 ["id"]
  GETUPVAL R9 1
  GETIMPORT R10 K9 [Enum.AssetType.Image]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K12 [string.find]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K14 ["Images/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K35 [string.gsub]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K14 ["Images/"]
  LOADK R12 K36 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K37 ["name"]
  JUMP [+93]
  GETUPVAL R9 1
  GETIMPORT R10 K16 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K12 [string.find]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K17 ["Meshes/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K35 [string.gsub]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K17 ["Meshes/"]
  LOADK R12 K36 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K37 ["name"]
  JUMP [+71]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 1
  GETIMPORT R10 K19 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K12 [string.find]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K20 ["Audio/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K35 [string.gsub]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K20 ["Audio/"]
  LOADK R12 K36 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K37 ["name"]
  JUMP [+46]
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 1
  GETIMPORT R10 K22 [Enum.AssetType.Video]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K12 [string.find]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K23 ["Video/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K35 [string.gsub]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K23 ["Video/"]
  LOADK R12 K36 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K37 ["name"]
  JUMP [+21]
  GETUPVAL R9 1
  GETIMPORT R10 K25 [Enum.AssetType.Model]
  JUMPIFNOTEQ R9 R10 [+17]
  GETIMPORT R9 K12 [string.find]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K26 ["Models/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETIMPORT R9 K35 [string.gsub]
  GETTABLEKS R10 R6 K13 ["Name"]
  LOADK R11 K26 ["Models/"]
  LOADK R12 K36 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K37 ["name"]
  GETUPVAL R9 4
  SETTABLEKS R9 R7 K38 ["layoutOrder"]
  GETUPVAL R9 0
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K39 ["Dictionary"]
  GETTABLEKS R10 R11 K40 ["join"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K41 ["assets"]
  NEWTABLE R12 1 0
  SETTABLE R7 R12 R8
  CALL R10 2 1
  SETTABLEKS R10 R9 K41 ["assets"]
  GETUPVAL R10 4
  ADDK R9 R10 K42 [1]
  SETUPVAL R9 4
  GETUPVAL R10 6
  GETTABLEKS R11 R7 K33 ["id"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K45 [table.insert]
  CALL R9 2 0
  FORGLOOP R2 2 [-230]
  GETUPVAL R2 7
  GETUPVAL R4 8
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K46 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 7
  GETUPVAL R4 9
  GETUPVAL R5 0
  GETUPVAL R6 4
  CALL R4 2 -1
  NAMECALL R2 R2 K46 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R6 11
  GETTABLEKS R5 R6 K47 ["Develop"]
  GETTABLEKS R4 R5 K48 ["V1"]
  GETTABLEKS R3 R4 K49 ["Assets"]
  GETTABLEKS R2 R3 K41 ["assets"]
  GETUPVAL R3 6
  CALL R2 1 1
  NAMECALL R2 R2 K50 ["makeRequest"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U12
  DUPCLOSURE R5 K51 [PROTO_5]
  NAMECALL R2 R2 K52 ["andThen"]
  CALL R2 3 1
  SETUPVAL R2 10
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Failed to load aliases"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R1 K3 ["data"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  DUPTABLE R7 K7 [{"reviewStatus", "isModerated", "moderationStatus"}]
  GETTABLEKS R8 R6 K4 ["reviewStatus"]
  SETTABLEKS R8 R7 K4 ["reviewStatus"]
  GETTABLEKS R8 R6 K5 ["isModerated"]
  SETTABLEKS R8 R7 K5 ["isModerated"]
  GETTABLEKS R8 R6 K6 ["moderationStatus"]
  SETTABLEKS R8 R7 K6 ["moderationStatus"]
  SETGLOBAL R7 K8 ["assetModerationData"]
  GETUPVAL R7 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["Dictionary"]
  GETTABLEKS R8 R9 K10 ["join"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["assetsModerationData"]
  NEWTABLE R10 1 0
  GETTABLEKS R11 R6 K12 ["id"]
  GETGLOBAL R12 K8 ["assetModerationData"]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["assetsModerationData"]
  FORGLOOP R2 2 [-35]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["assetsModerationData"]
  CALL R4 1 -1
  NAMECALL R2 R2 K13 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Failed to load asset information"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K1 ["FinalPage"]
  JUMPIF R2 [+6]
  GETUPVAL R2 0
  GETUPVAL R4 1
  ADDK R3 R4 K2 [1]
  SETTABLEKS R3 R2 K3 ["pageNumber"]
  JUMP [+4]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["pageNumber"]
  GETIMPORT R2 K5 [pairs]
  GETTABLEKS R3 R1 K6 ["Aliases"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 2
  GETIMPORT R8 K10 [Enum.AssetType.Image]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K13 [string.find]
  GETTABLEKS R8 R6 K14 ["Name"]
  LOADK R9 K15 ["Images/"]
  CALL R7 2 1
  JUMPIF R7 [+54]
  GETUPVAL R7 2
  GETIMPORT R8 K17 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K13 [string.find]
  GETTABLEKS R8 R6 K14 ["Name"]
  LOADK R9 K18 ["Meshes/"]
  CALL R7 2 1
  JUMPIF R7 [+42]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 2
  GETIMPORT R8 K20 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K13 [string.find]
  GETTABLEKS R8 R6 K14 ["Name"]
  LOADK R9 K21 ["Audio/"]
  CALL R7 2 1
  JUMPIF R7 [+27]
  GETUPVAL R7 4
  CALL R7 0 1
  JUMPIFNOT R7 [+12]
  GETUPVAL R7 2
  GETIMPORT R8 K23 [Enum.AssetType.Video]
  JUMPIFNOTEQ R7 R8 [+8]
  GETIMPORT R7 K13 [string.find]
  GETTABLEKS R8 R6 K14 ["Name"]
  LOADK R9 K24 ["Video/"]
  CALL R7 2 1
  JUMPIF R7 [+12]
  GETUPVAL R7 2
  GETIMPORT R8 K26 [Enum.AssetType.Model]
  JUMPIFNOTEQ R7 R8 [+171]
  GETIMPORT R7 K13 [string.find]
  GETTABLEKS R8 R6 K14 ["Name"]
  LOADK R9 K27 ["Models/"]
  CALL R7 2 1
  JUMPIFNOT R7 [+163]
  NEWTABLE R7 8 0
  GETTABLEKS R9 R6 K28 ["TargetId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K30 [tostring]
  CALL R8 1 1
  GETUPVAL R9 2
  SETTABLEKS R9 R7 K31 ["assetType"]
  GETTABLEKS R9 R6 K32 ["Asset"]
  SETTABLEKS R9 R7 K33 ["asset"]
  GETTABLEKS R9 R6 K28 ["TargetId"]
  SETTABLEKS R9 R7 K34 ["id"]
  GETUPVAL R9 2
  GETIMPORT R10 K10 [Enum.AssetType.Image]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K13 [string.find]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K15 ["Images/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K36 [string.gsub]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K15 ["Images/"]
  LOADK R12 K37 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K38 ["name"]
  JUMP [+93]
  GETUPVAL R9 2
  GETIMPORT R10 K17 [Enum.AssetType.MeshPart]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K13 [string.find]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K18 ["Meshes/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K36 [string.gsub]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K18 ["Meshes/"]
  LOADK R12 K37 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K38 ["name"]
  JUMP [+71]
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 2
  GETIMPORT R10 K20 [Enum.AssetType.Audio]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K13 [string.find]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K21 ["Audio/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K36 [string.gsub]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K21 ["Audio/"]
  LOADK R12 K37 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K38 ["name"]
  JUMP [+46]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+22]
  GETUPVAL R9 2
  GETIMPORT R10 K23 [Enum.AssetType.Video]
  JUMPIFNOTEQ R9 R10 [+18]
  GETIMPORT R9 K13 [string.find]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K24 ["Video/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+10]
  GETIMPORT R9 K36 [string.gsub]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K24 ["Video/"]
  LOADK R12 K37 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K38 ["name"]
  JUMP [+21]
  GETUPVAL R9 2
  GETIMPORT R10 K26 [Enum.AssetType.Model]
  JUMPIFNOTEQ R9 R10 [+17]
  GETIMPORT R9 K13 [string.find]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K27 ["Models/"]
  CALL R9 2 1
  JUMPIFNOT R9 [+9]
  GETIMPORT R9 K36 [string.gsub]
  GETTABLEKS R10 R6 K14 ["Name"]
  LOADK R11 K27 ["Models/"]
  LOADK R12 K37 [""]
  CALL R9 3 1
  SETTABLEKS R9 R7 K38 ["name"]
  GETUPVAL R9 5
  SETTABLEKS R9 R7 K39 ["layoutOrder"]
  GETUPVAL R9 0
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K40 ["Dictionary"]
  GETTABLEKS R10 R11 K41 ["join"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K42 ["assets"]
  NEWTABLE R12 1 0
  SETTABLE R7 R12 R8
  CALL R10 2 1
  SETTABLEKS R10 R9 K42 ["assets"]
  GETUPVAL R10 5
  ADDK R9 R10 K2 [1]
  SETUPVAL R9 5
  GETUPVAL R10 7
  GETTABLEKS R11 R7 K34 ["id"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K45 [table.insert]
  CALL R9 2 0
  FORGLOOP R2 2 [-230]
  GETUPVAL R2 8
  GETUPVAL R4 9
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K46 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 8
  GETUPVAL R4 10
  GETUPVAL R5 0
  GETUPVAL R6 5
  CALL R4 2 -1
  NAMECALL R2 R2 K46 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R6 12
  GETTABLEKS R5 R6 K47 ["Develop"]
  GETTABLEKS R4 R5 K48 ["V1"]
  GETTABLEKS R3 R4 K49 ["Assets"]
  GETTABLEKS R2 R3 K42 ["assets"]
  GETUPVAL R3 7
  CALL R2 1 1
  NAMECALL R2 R2 K50 ["makeRequest"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U8
  CAPTURE UPVAL U13
  DUPCLOSURE R5 K51 [PROTO_9]
  NAMECALL R2 R2 K52 ["andThen"]
  CALL R2 3 1
  SETUPVAL R2 11
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 -1
  NAMECALL R0 R0 K0 ["dispatch"]
  CALL R0 -1 0
  GETIMPORT R0 K2 [error]
  LOADK R1 K3 ["Failed to load aliases"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R1 K3 ["data"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  DUPTABLE R7 K7 [{"reviewStatus", "isModerated", "moderationStatus"}]
  GETTABLEKS R8 R6 K4 ["reviewStatus"]
  SETTABLEKS R8 R7 K4 ["reviewStatus"]
  GETTABLEKS R8 R6 K5 ["isModerated"]
  SETTABLEKS R8 R7 K5 ["isModerated"]
  GETTABLEKS R8 R6 K6 ["moderationStatus"]
  SETTABLEKS R8 R7 K6 ["moderationStatus"]
  SETGLOBAL R7 K8 ["assetModerationData"]
  GETUPVAL R7 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["Dictionary"]
  GETTABLEKS R8 R9 K10 ["join"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["assetsModerationData"]
  NEWTABLE R10 1 0
  GETTABLEKS R11 R6 K12 ["id"]
  GETGLOBAL R12 K8 ["assetModerationData"]
  SETTABLE R12 R10 R11
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["assetsModerationData"]
  FORGLOOP R2 2 [-35]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["assetsModerationData"]
  CALL R4 1 -1
  NAMECALL R2 R2 K13 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_13:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Failed to load asset information"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+3]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K1 ["previousPageCursor"]
  SETTABLEKS R3 R2 K1 ["previousPageCursor"]
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K2 ["nextPageCursor"]
  SETTABLEKS R3 R2 K2 ["nextPageCursor"]
  GETIMPORT R2 K4 [pairs]
  GETTABLEKS R3 R1 K5 ["data"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K6 ["assetType"]
  GETTABLEKS R8 R6 K7 ["id"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K9 [tostring]
  CALL R7 1 1
  GETUPVAL R8 4
  SETTABLEKS R8 R6 K10 ["layoutOrder"]
  GETUPVAL R8 2
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K11 ["Dictionary"]
  GETTABLEKS R9 R10 K12 ["join"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["assets"]
  NEWTABLE R11 1 0
  SETTABLE R6 R11 R7
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["assets"]
  GETUPVAL R9 4
  ADDK R8 R9 K14 [1]
  SETUPVAL R8 4
  GETUPVAL R9 6
  GETTABLEKS R10 R6 K7 ["id"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K17 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-39]
  GETUPVAL R2 7
  GETUPVAL R4 8
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K18 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 7
  GETUPVAL R4 9
  GETUPVAL R5 2
  GETUPVAL R6 4
  CALL R4 2 -1
  NAMECALL R2 R2 K18 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R6 11
  GETTABLEKS R5 R6 K19 ["Develop"]
  GETTABLEKS R4 R5 K20 ["V1"]
  GETTABLEKS R3 R4 K21 ["Assets"]
  GETTABLEKS R2 R3 K13 ["assets"]
  GETUPVAL R3 6
  CALL R2 1 1
  NAMECALL R2 R2 K22 ["makeRequest"]
  CALL R2 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  CAPTURE UPVAL U12
  DUPCLOSURE R5 K23 [PROTO_13]
  NAMECALL R2 R2 K24 ["andThen"]
  CALL R2 3 1
  SETUPVAL R2 10
  RETURN R0 0

PROTO_15:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  LOADNIL R2
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R3 [+3]
  LOADB R2 1
  JUMP [+1]
  GETUPVAL R2 0
  LOADNIL R3
  DUPTABLE R4 K2 [{"index"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K1 ["index"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["assets"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K4 ["assetsModerationData"]
  NEWTABLE R5 0 0
  LOADN R6 1
  GETUPVAL R7 1
  JUMPIF R7 [+5]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+10]
  GETUPVAL R7 2
  JUMPIFEQKN R7 K5 [1] [+8]
  GETTABLEKS R7 R1 K6 ["AssetManagerReducer"]
  GETTABLEKS R4 R7 K7 ["assetsTable"]
  GETTABLEKS R7 R4 K1 ["index"]
  ADDK R6 R7 K5 [1]
  JUMPIFNOT R2 [+6]
  GETUPVAL R9 3
  LOADB R10 1
  CALL R9 1 -1
  NAMECALL R7 R0 K8 ["dispatch"]
  CALL R7 -1 0
  GETUPVAL R7 4
  GETIMPORT R8 K12 [Enum.AssetType.Place]
  JUMPIFNOTEQ R7 R8 [+29]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K13 ["Develop"]
  GETTABLEKS R9 R10 K14 ["V2"]
  GETTABLEKS R8 R9 K15 ["Universes"]
  GETTABLEKS R7 R8 K16 ["places"]
  GETIMPORT R9 K18 [game]
  GETTABLEKS R8 R9 K19 ["GameId"]
  GETUPVAL R9 1
  GETUPVAL R10 6
  CALL R7 3 1
  NAMECALL R7 R7 K20 ["makeRequest"]
  CALL R7 1 1
  DUPCLOSURE R9 K21 [PROTO_0]
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R7 R7 K22 ["andThen"]
  CALL R7 3 1
  MOVE R3 R7
  JUMP [+152]
  GETUPVAL R7 4
  GETIMPORT R8 K24 [Enum.AssetType.Package]
  JUMPIFNOTEQ R7 R8 [+33]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K25 ["APIS"]
  GETTABLEKS R9 R10 K26 ["Packages"]
  GETTABLEKS R8 R9 K27 ["V1"]
  GETTABLEKS R7 R8 K28 ["packages"]
  GETIMPORT R9 K18 [game]
  GETTABLEKS R8 R9 K19 ["GameId"]
  GETUPVAL R9 1
  GETUPVAL R10 6
  CALL R7 3 1
  NAMECALL R7 R7 K20 ["makeRequest"]
  CALL R7 1 1
  DUPCLOSURE R9 K29 [PROTO_2]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  NEWCLOSURE R10 P3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R7 R7 K22 ["andThen"]
  CALL R7 3 1
  MOVE R3 R7
  JUMP [+115]
  GETUPVAL R7 4
  GETIMPORT R8 K31 [Enum.AssetType.Image]
  JUMPIFEQ R7 R8 [+27]
  GETUPVAL R7 4
  GETIMPORT R8 K33 [Enum.AssetType.MeshPart]
  JUMPIFEQ R7 R8 [+22]
  GETUPVAL R7 9
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R7 4
  GETIMPORT R8 K35 [Enum.AssetType.Audio]
  JUMPIFEQ R7 R8 [+14]
  GETUPVAL R7 10
  CALL R7 0 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R7 4
  GETIMPORT R8 K37 [Enum.AssetType.Video]
  JUMPIFEQ R7 R8 [+6]
  GETUPVAL R7 4
  GETIMPORT R8 K39 [Enum.AssetType.Model]
  JUMPIFNOTEQ R7 R8 [+85]
  GETUPVAL R7 11
  JUMPIFNOT R7 [+38]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K25 ["APIS"]
  GETTABLEKS R8 R9 K40 ["ContentAliasesApi"]
  GETTABLEKS R7 R8 K41 ["aliases"]
  GETIMPORT R9 K18 [game]
  GETTABLEKS R8 R9 K19 ["GameId"]
  GETUPVAL R9 6
  GETUPVAL R10 1
  CALL R7 3 1
  NAMECALL R7 R7 K20 ["makeRequest"]
  CALL R7 1 1
  NEWCLOSURE R9 P4
  CAPTURE REF R4
  CAPTURE UPVAL U4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE REF R6
  CAPTURE UPVAL U12
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U13
  CAPTURE REF R3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U14
  NEWCLOSURE R10 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R7 R7 K22 ["andThen"]
  CALL R7 3 0
  JUMP [+44]
  LOADNIL R7
  GETUPVAL R8 2
  JUMPIF R8 [+2]
  LOADN R7 1
  JUMP [+1]
  GETUPVAL R7 2
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K42 ["API"]
  GETTABLEKS R9 R10 K15 ["Universes"]
  GETTABLEKS R8 R9 K43 ["getAliases"]
  GETIMPORT R10 K18 [game]
  GETTABLEKS R9 R10 K19 ["GameId"]
  MOVE R10 R7
  CALL R8 2 1
  NAMECALL R8 R8 K20 ["makeRequest"]
  CALL R8 1 1
  NEWCLOSURE R10 P6
  CAPTURE REF R4
  CAPTURE REF R7
  CAPTURE UPVAL U4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE REF R6
  CAPTURE UPVAL U12
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U13
  CAPTURE REF R3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U14
  NEWCLOSURE R11 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R8 R8 K22 ["andThen"]
  CALL R8 3 0
  CLOSEUPVALS R7
  GETUPVAL R7 4
  GETIMPORT R8 K12 [Enum.AssetType.Place]
  JUMPIFEQ R7 R8 [+6]
  GETUPVAL R7 4
  GETIMPORT R8 K24 [Enum.AssetType.Package]
  JUMPIFNOTEQ R7 R8 [+18]
  NEWCLOSURE R9 P8
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE REF R4
  CAPTURE UPVAL U4
  CAPTURE REF R6
  CAPTURE UPVAL U12
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U13
  CAPTURE REF R3
  CAPTURE UPVAL U5
  CAPTURE UPVAL U14
  NAMECALL R7 R3 K22 ["andThen"]
  CALL R7 2 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_16:
  NEWCLOSURE R5 P0
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetAssets"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Actions"]
  GETTABLEKS R4 R5 K10 ["SetAssetsModerationData"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Actions"]
  GETTABLEKS R5 R6 K11 ["SetIsFetchingAssets"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K12 ["Thunks"]
  GETTABLEKS R6 R7 K13 ["GetAssetResponse"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Screens"]
  CALL R6 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K16 ["AssetManagerUtilities"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K17 ["enableAudioImport"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K16 ["AssetManagerUtilities"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K18 ["enableVideoImport"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K5 ["Packages"]
  GETTABLEKS R12 R13 K19 ["Framework"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K20 ["sendResultToKibana"]
  GETIMPORT R10 K22 [game]
  LOADK R12 K23 ["StudioAssetManagerAssetFetchNumber"]
  NAMECALL R10 R10 K24 ["GetFastInt"]
  CALL R10 2 1
  GETIMPORT R11 K22 [game]
  LOADK R13 K25 ["NewPackageAnalyticsWithRefactor2"]
  NAMECALL R11 R11 K26 ["GetFastFlag"]
  CALL R11 2 1
  GETIMPORT R12 K22 [game]
  LOADK R14 K27 ["AssetManagerMigrateAliasesEndpoint2"]
  NAMECALL R12 R12 K26 ["GetFastFlag"]
  CALL R12 2 1
  DUPCLOSURE R13 K28 [PROTO_16]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R13 1