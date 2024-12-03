PROTO_0:
  DUPTABLE R2 K9 [{"_changeHistoryService", "_insertService", "_selection", "_assetManagerService", "_materialService", "_studioService", "_marketplaceService", "_loadedFiles", "_mock"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K11 ["ChangeHistoryService"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["_changeHistoryService"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K12 ["InsertService"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["_insertService"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K13 ["Selection"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["_selection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K14 ["AssetManagerService"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["_assetManagerService"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K15 ["MaterialService"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["_materialService"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K16 ["StudioService"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["_studioService"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["new"]
  LOADK R4 K17 ["MarketplaceService"]
  MOVE R5 R0
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["_marketplaceService"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["_loadedFiles"]
  SETTABLEKS R0 R2 K8 ["_mock"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K19 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADB R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_changeHistoryService"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_insertService"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_assetManagerService"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["Parent"]
  GETTABLEKS R2 R0 K1 ["_changeHistoryService"]
  NAMECALL R2 R2 K2 ["asService"]
  CALL R2 1 1
  LOADK R5 K3 ["Deleted "]
  GETTABLEKS R6 R1 K4 ["Name"]
  CONCAT R4 R5 R6
  NAMECALL R2 R2 K5 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["_mock"]
  JUMPIFNOT R2 [+11]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["Model"]
  CALL R2 1 1
  GETIMPORT R3 K3 [Instance.new]
  LOADK R4 K5 ["MeshPart"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K6 ["Parent"]
  RETURN R2 1
  GETTABLEKS R3 R0 K7 ["_loadedFiles"]
  GETTABLE R2 R3 R1
  JUMPIF R2 [+12]
  GETTABLEKS R2 R0 K7 ["_loadedFiles"]
  GETTABLEKS R3 R0 K8 ["_insertService"]
  NAMECALL R3 R3 K9 ["asService"]
  CALL R3 1 1
  MOVE R5 R1
  NAMECALL R3 R3 K10 ["LoadLocalAsset"]
  CALL R3 2 1
  SETTABLE R3 R2 R1
  GETTABLEKS R3 R0 K7 ["_loadedFiles"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_selection"]
  NAMECALL R2 R2 K1 ["asService"]
  CALL R2 1 1
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Set"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  GETTABLEKS R4 R0 K0 ["_changeHistoryService"]
  NAMECALL R4 R4 K1 ["asService"]
  CALL R4 1 1
  LOADK R6 K2 ["Applied Material to BasePart"]
  NAMECALL R4 R4 K3 ["SetWaypoint"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_selection"]
  NAMECALL R3 R3 K1 ["asService"]
  CALL R3 1 1
  NAMECALL R3 R3 K2 ["Get"]
  CALL R3 1 1
  GETUPVAL R4 0
  MOVE R5 R3
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 0
  GETTABLEKS R4 R0 K3 ["_changeHistoryService"]
  NAMECALL R4 R4 K1 ["asService"]
  CALL R4 1 1
  LOADK R6 K4 ["Applied Material to Selection"]
  NAMECALL R4 R4 K5 ["SetWaypoint"]
  CALL R4 2 0
  RETURN R0 0

PROTO_8:
  SETTABLEKS R2 R1 K0 ["Name"]
  GETTABLEKS R3 R0 K1 ["_changeHistoryService"]
  NAMECALL R3 R3 K2 ["asService"]
  CALL R3 1 1
  LOADK R6 K3 ["Set Name for Material Variant to"]
  MOVE R7 R2
  CONCAT R5 R6 R7
  NAMECALL R3 R3 K4 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  SETTABLEKS R2 R1 K0 ["BaseMaterial"]
  GETTABLEKS R3 R0 K1 ["_changeHistoryService"]
  NAMECALL R3 R3 K2 ["asService"]
  CALL R3 1 1
  LOADK R6 K3 ["Set BaseMaterial for Material Variant to"]
  GETUPVAL R7 0
  MOVE R8 R2
  CALL R7 1 1
  CONCAT R5 R6 R7
  NAMECALL R3 R3 K4 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_10:
  SETTABLE R3 R1 R2
  GETTABLEKS R4 R0 K0 ["_changeHistoryService"]
  NAMECALL R4 R4 K1 ["asService"]
  CALL R4 1 1
  LOADK R7 K2 ["Set"]
  MOVE R8 R2
  LOADK R9 K3 ["for Material Variant to"]
  MOVE R10 R3
  CONCAT R6 R7 R10
  NAMECALL R4 R4 K4 ["SetWaypoint"]
  CALL R4 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["_studioService"]
  NAMECALL R0 R0 K1 ["asService"]
  CALL R0 1 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K2 ["PromptImportFile"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_12:
  NEWTABLE R1 0 3
  LOADK R2 K0 ["png"]
  LOADK R3 K1 ["jpg"]
  LOADK R4 K2 ["jpeg"]
  SETLIST R1 R2 3 [1]
  LOADNIL R2
  GETIMPORT R3 K4 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R3 1 2
  MOVE R5 R3
  MOVE R6 R2
  CLOSEUPVALS R2
  RETURN R5 2

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_assetManagerService"]
  NAMECALL R0 R0 K1 ["asService"]
  CALL R0 1 1
  GETUPVAL R2 1
  NAMECALL R0 R0 K2 ["DeleteAlias"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_assetManagerService"]
  NAMECALL R0 R0 K1 ["asService"]
  CALL R0 1 1
  GETIMPORT R3 K5 [Enum.AssetType.Image]
  GETTABLEKS R2 R3 K6 ["Value"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  NAMECALL R0 R0 K7 ["CreateAlias"]
  CALL R0 4 0
  RETURN R0 0

PROTO_15:
  LOADK R6 K0 ["://(%d+)"]
  NAMECALL R4 R1 K1 ["match"]
  CALL R4 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R3 K3 [tonumber]
  CALL R3 -1 1
  JUMPIFNOT R3 [+30]
  LOADK R6 K4 ["[^.]+"]
  NAMECALL R4 R2 K1 ["match"]
  CALL R4 2 1
  MOVE R2 R4
  LOADN R6 1
  LOADN R7 7
  NAMECALL R4 R2 K5 ["sub"]
  CALL R4 3 1
  JUMPIFEQKS R4 K6 ["Images/"] [+4]
  LOADK R4 K6 ["Images/"]
  MOVE R5 R2
  CONCAT R2 R4 R5
  GETIMPORT R4 K8 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE REF R2
  CALL R4 1 0
  GETIMPORT R4 K8 [pcall]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE REF R2
  CALL R4 1 1
  CLOSEUPVALS R2
  RETURN R4 1
  LOADB R4 0
  CLOSEUPVALS R2
  RETURN R4 1

PROTO_16:
  GETUPVAL R1 0
  MOVE R3 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Name"]
  NAMECALL R1 R1 K1 ["insertAssetId"]
  CALL R1 3 1
  LOADNIL R2
  JUMPIF R1 [+3]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["FailedToInsertAssetManager"]
  GETUPVAL R3 3
  MOVE R4 R0
  LOADK R5 K3 ["uploadTextureMapSuccess"]
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_17:
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["Error uploading asset, responseCode "]
  GETTABLEKS R5 R0 K3 ["responseCode"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K5 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  JUMPIFNOT R0 [+7]
  GETTABLEKS R1 R0 K3 ["responseCode"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K3 ["responseCode"]
  JUMPIFNOTEQKN R1 K6 [-1] [+9]
  GETUPVAL R1 0
  LOADK R2 K7 [""]
  LOADK R3 K8 ["uploadTextureMapFromFileError"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["FailedToUploadTooLarge"]
  CALL R1 3 0
  RETURN R0 0
  GETUPVAL R1 0
  LOADK R2 K7 [""]
  LOADK R3 K10 ["uploadTextureMapGeneralError"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["FailedToUploadFromFileMap"]
  CALL R1 3 0
  RETURN R0 0

PROTO_18:
  MOVE R9 R4
  MOVE R10 R5
  NAMECALL R7 R3 K0 ["handleAsset"]
  CALL R7 3 1
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE VAL R6
  NAMECALL R7 R7 K1 ["andThen"]
  CALL R7 2 1
  NEWCLOSURE R9 P1
  CAPTURE VAL R6
  CAPTURE UPVAL U0
  NAMECALL R7 R7 K2 ["catch"]
  CALL R7 2 1
  RETURN R0 0

PROTO_19:
  MOVE R7 R6
  LOADK R8 K0 [""]
  LOADK R9 K1 ["importTextureMap"]
  LOADNIL R10
  CALL R7 3 0
  NAMECALL R7 R0 K2 ["importFile"]
  CALL R7 1 2
  JUMPIFNOT R7 [+18]
  JUMPIFNOT R8 [+24]
  NAMECALL R9 R8 K3 ["GetTemporaryId"]
  CALL R9 1 1
  MOVE R12 R1
  MOVE R13 R2
  MOVE R14 R3
  MOVE R15 R8
  MOVE R16 R4
  MOVE R17 R6
  NAMECALL R10 R0 K4 ["uploadTextureMap"]
  CALL R10 7 0
  MOVE R10 R5
  MOVE R11 R8
  MOVE R12 R9
  CALL R10 2 0
  RETURN R0 0
  MOVE R9 R6
  LOADK R10 K0 [""]
  LOADK R11 K5 ["importTextureMapError"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["FailedToImportMap"]
  CALL R9 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["_marketplaceService"]
  NAMECALL R0 R0 K1 ["asService"]
  CALL R0 1 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K2 ["GetProductInfo"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 2
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  JUMPIFNOT R0 [+11]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["AssetTypeId"]
  GETIMPORT R4 K6 [Enum.AssetType.Image]
  GETTABLEKS R3 R4 K7 ["Value"]
  JUMPIFEQ R2 R3 [+9]
  GETUPVAL R2 4
  LOADK R3 K8 [""]
  LOADK R4 K9 ["uploadFromURLTextureMapError"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K10 ["FailedUrl"]
  CALL R2 3 0
  RETURN R0 0
  LOADK R3 K11 ["rbxassetid://"]
  GETUPVAL R5 3
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K13 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  GETUPVAL R3 2
  GETUPVAL R5 6
  GETUPVAL R6 7
  MOVE R7 R2
  NAMECALL R3 R3 K14 ["setTextureMap"]
  CALL R3 4 0
  RETURN R0 0

PROTO_22:
  MOVE R6 R5
  LOADK R7 K0 [""]
  LOADK R8 K1 ["uploadAssetIdTextureMap"]
  LOADNIL R9
  CALL R6 3 0
  GETUPVAL R6 0
  MOVE R7 R3
  CALL R6 1 1
  JUMPIF R6 [+8]
  MOVE R7 R5
  LOADK R8 K0 [""]
  LOADK R9 K2 ["uploadFromURLTextureMapError"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["FailedUrl"]
  CALL R7 3 0
  RETURN R0 0
  LOADNIL R7
  GETIMPORT R8 K5 [spawn]
  NEWCLOSURE R9 P0
  CAPTURE VAL R4
  CAPTURE REF R7
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CALL R8 1 0
  CLOSEUPVALS R7
  RETURN R0 0

PROTO_23:
  SETTABLEKS R2 R1 K0 ["StudsPerTile"]
  GETTABLEKS R3 R0 K1 ["_changeHistoryService"]
  NAMECALL R3 R3 K2 ["asService"]
  CALL R3 1 1
  LOADK R6 K3 ["Set StudsPerTile for Material Variant to"]
  MOVE R7 R2
  CONCAT R5 R6 R7
  NAMECALL R3 R3 K4 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_24:
  SETTABLEKS R2 R1 K0 ["MaterialPattern"]
  GETTABLEKS R3 R0 K1 ["_changeHistoryService"]
  NAMECALL R3 R3 K2 ["asService"]
  CALL R3 1 1
  LOADK R6 K3 ["Set MaterialPattern for Material Variant to"]
  GETUPVAL R7 0
  MOVE R8 R2
  CALL R7 1 1
  CONCAT R5 R6 R7
  NAMECALL R3 R3 K4 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_25:
  SETTABLEKS R2 R1 K0 ["Name"]
  GETTABLEKS R3 R0 K1 ["_changeHistoryService"]
  NAMECALL R3 R3 K2 ["asService"]
  CALL R3 1 1
  LOADK R6 K3 ["Set Name for Terrain Detail to"]
  MOVE R7 R2
  CONCAT R5 R6 R7
  NAMECALL R3 R3 K4 ["SetWaypoint"]
  CALL R3 2 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R3 R0 K0 ["_changeHistoryService"]
  NAMECALL R3 R3 K1 ["asService"]
  CALL R3 1 1
  LOADK R5 K2 ["Create new Material Variant"]
  NAMECALL R3 R3 K3 ["SetWaypoint"]
  CALL R3 2 0
  GETIMPORT R3 K6 [Instance.new]
  LOADK R4 K7 ["MaterialVariant"]
  CALL R3 1 1
  JUMPIFNOT R2 [+4]
  JUMPIFEQKS R2 K8 [""] [+3]
  MOVE R4 R2
  JUMP [+1]
  LOADK R4 K7 ["MaterialVariant"]
  MOVE R5 R1
  JUMPIF R5 [+2]
  GETIMPORT R5 K12 [Enum.Material.Plastic]
  GETUPVAL R6 0
  GETTABLEKS R7 R0 K13 ["_materialService"]
  NAMECALL R7 R7 K14 ["asInstance"]
  CALL R7 1 1
  MOVE R8 R5
  MOVE R9 R4
  CALL R6 3 1
  JUMPIFNOT R6 [+4]
  MOVE R8 R4
  MOVE R9 R6
  CONCAT R7 R8 R9
  JUMP [+1]
  MOVE R7 R4
  SETTABLEKS R7 R3 K15 ["Name"]
  SETTABLEKS R5 R3 K16 ["BaseMaterial"]
  LOADN R7 10
  SETTABLEKS R7 R3 K17 ["StudsPerTile"]
  GETIMPORT R7 K19 [game]
  LOADK R9 K20 ["MaterialService"]
  NAMECALL R7 R7 K21 ["GetService"]
  CALL R7 2 1
  SETTABLEKS R7 R3 K22 ["Parent"]
  RETURN R3 1

PROTO_27:
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["TerrainDetail"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K4 ["Face"]
  LOADK R5 K3 ["TerrainDetail"]
  GETUPVAL R6 0
  MOVE R7 R1
  LOADK R8 K3 ["TerrainDetail"]
  CALL R6 2 1
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K5 ["Name"]
  SETTABLEKS R1 R3 K6 ["Parent"]
  GETTABLEKS R4 R0 K7 ["_changeHistoryService"]
  NAMECALL R4 R4 K8 ["asService"]
  CALL R4 1 1
  LOADK R7 K9 ["Create new Terrain Detail to"]
  GETTABLEKS R8 R3 K5 ["Name"]
  CONCAT R6 R7 R8
  NAMECALL R4 R4 K10 ["SetWaypoint"]
  CALL R4 2 0
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["TestHelpers"]
  GETTABLEKS R3 R4 K10 ["ServiceWrapper"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["ContextItem"]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K14 ["ApplyToBasePart"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K15 ["ApplyToInstances"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K16 ["GenerateMaterialName"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R5 K17 ["GenerateTerrainDetailName"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R5 K18 ["getNumberIdFromURL"]
  CALL R10 1 1
  GETTABLEKS R13 R0 K5 ["Src"]
  GETTABLEKS R12 R13 K19 ["Resources"]
  GETTABLEKS R11 R12 K20 ["Constants"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R11 K21 ["getMaterialName"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R11 K22 ["getMaterialPatternName"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R11 K23 ["getErrorTypes"]
  CALL R14 1 1
  MOVE R15 R14
  CALL R15 0 1
  LOADK R18 K24 ["GeneralServiceController"]
  NAMECALL R16 R4 K25 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K26 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R16
  SETTABLEKS R17 R16 K27 ["new"]
  DUPCLOSURE R17 K28 [PROTO_1]
  CAPTURE VAL R16
  SETTABLEKS R17 R16 K29 ["mock"]
  DUPCLOSURE R17 K30 [PROTO_2]
  SETTABLEKS R17 R16 K31 ["destroy"]
  DUPCLOSURE R17 K32 [PROTO_3]
  SETTABLEKS R17 R16 K33 ["destroyWithUndo"]
  DUPCLOSURE R17 K34 [PROTO_4]
  SETTABLEKS R17 R16 K35 ["LoadLocalAsset"]
  DUPCLOSURE R17 K36 [PROTO_5]
  SETTABLEKS R17 R16 K37 ["SetSelection"]
  DUPCLOSURE R17 K38 [PROTO_6]
  CAPTURE VAL R6
  SETTABLEKS R17 R16 K14 ["ApplyToBasePart"]
  DUPCLOSURE R17 K39 [PROTO_7]
  CAPTURE VAL R7
  SETTABLEKS R17 R16 K40 ["ApplyToSelection"]
  DUPCLOSURE R17 K41 [PROTO_8]
  SETTABLEKS R17 R16 K42 ["setName"]
  DUPCLOSURE R17 K43 [PROTO_9]
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K44 ["setBaseMaterial"]
  DUPCLOSURE R17 K45 [PROTO_10]
  SETTABLEKS R17 R16 K46 ["setTextureMap"]
  DUPCLOSURE R17 K47 [PROTO_12]
  SETTABLEKS R17 R16 K48 ["importFile"]
  DUPCLOSURE R17 K49 [PROTO_15]
  SETTABLEKS R17 R16 K50 ["insertAssetId"]
  DUPCLOSURE R17 K51 [PROTO_18]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K52 ["uploadTextureMap"]
  DUPCLOSURE R17 K53 [PROTO_19]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K54 ["setTextureMapFromFile"]
  DUPCLOSURE R17 K55 [PROTO_22]
  CAPTURE VAL R10
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K56 ["setTextureMapFromURL"]
  DUPCLOSURE R17 K57 [PROTO_23]
  SETTABLEKS R17 R16 K58 ["setStudsPerTile"]
  DUPCLOSURE R17 K59 [PROTO_24]
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K60 ["setMaterialPattern"]
  DUPCLOSURE R17 K61 [PROTO_25]
  SETTABLEKS R17 R16 K62 ["setTerrainDetailName"]
  DUPCLOSURE R17 K63 [PROTO_26]
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K64 ["createMaterialVariant"]
  DUPCLOSURE R17 K65 [PROTO_27]
  CAPTURE VAL R9
  SETTABLEKS R17 R16 K66 ["createTerrainDetail"]
  RETURN R16 1