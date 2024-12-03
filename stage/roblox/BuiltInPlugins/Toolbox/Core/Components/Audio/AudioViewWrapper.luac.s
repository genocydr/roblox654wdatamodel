PROTO_0:
  GETTABLEKS R2 R0 K0 ["Section"]
  GETTABLEKS R1 R2 K1 ["subcategory"]
  JUMPIFNOT R1 [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["OnClickSeeAllSubcategories"]
  GETTABLEKS R3 R1 K3 ["children"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["CategoryName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["SortName"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["OnClickSeeAllAssets"]
  GETTABLEKS R4 R0 K0 ["Section"]
  GETTABLEKS R3 R4 K7 ["name"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["CategoryName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["SortName"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnClickSubcategory"]
  GETTABLEKS R2 R0 K1 ["name"]
  MOVE R3 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["CategoryName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["SortName"]
  GETTABLEKS R6 R0 K4 ["queryParams"]
  CALL R1 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["FREE_AUDIO"]
  GETTABLEKS R4 R1 K3 ["InitialPageSize"]
  CALL R2 2 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K4 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  NEWTABLE R5 0 4
  GETTABLEKS R6 R1 K5 ["OnClickSeeAllSubcategories"]
  GETTABLEKS R7 R1 K6 ["OnClickSeeAllAssets"]
  GETTABLEKS R8 R1 K7 ["CategoryName"]
  GETTABLEKS R9 R1 K8 ["SortName"]
  SETLIST R5 R6 4 [1]
  CALL R3 2 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K4 ["useCallback"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  NEWTABLE R6 0 2
  GETTABLEKS R7 R1 K7 ["CategoryName"]
  GETTABLEKS R8 R1 K8 ["SortName"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  JUMPIFNOT R2 [+44]
  LENGTH R5 R2
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+41]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K15 [{"Sections", "PageSize", "OnSeeAllActivated", "OnSwimlaneTileActivated", "AssetLogicWrapperProps"}]
  SETTABLEKS R2 R7 K10 ["Sections"]
  GETTABLEKS R8 R1 K3 ["InitialPageSize"]
  SETTABLEKS R8 R7 K11 ["PageSize"]
  SETTABLEKS R3 R7 K12 ["OnSeeAllActivated"]
  SETTABLEKS R4 R7 K13 ["OnSwimlaneTileActivated"]
  DUPTABLE R8 K21 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  GETTABLEKS R9 R1 K16 ["CanInsertAsset"]
  SETTABLEKS R9 R8 K16 ["CanInsertAsset"]
  GETTABLEKS R9 R1 K17 ["LogAssetImpression"]
  SETTABLEKS R9 R8 K17 ["LogAssetImpression"]
  GETTABLEKS R9 R1 K18 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R9 R8 K18 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R9 R1 K19 ["TryInsert"]
  SETTABLEKS R9 R8 K19 ["TryInsert"]
  GETTABLEKS R9 R1 K20 ["TryOpenAssetConfig"]
  SETTABLEKS R9 R8 K20 ["TryOpenAssetConfig"]
  SETTABLEKS R8 R7 K14 ["AssetLogicWrapperProps"]
  CALL R5 2 -1
  RETURN R5 -1
  LOADNIL R5
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["Audio"]
  GETTABLEKS R5 R6 K13 ["AudioView"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K14 ["Types"]
  GETTABLEKS R6 R7 K15 ["Category"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Core"]
  GETTABLEKS R8 R9 K16 ["Hooks"]
  GETTABLEKS R7 R8 K17 ["useCategorySections"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Core"]
  GETTABLEKS R9 R10 K14 ["Types"]
  GETTABLEKS R8 R9 K18 ["HomeTypes"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Core"]
  GETTABLEKS R10 R11 K14 ["Types"]
  GETTABLEKS R9 R10 K19 ["AudioTypes"]
  CALL R8 1 1
  DUPTABLE R9 K21 [{"InitialPageSize"}]
  LOADN R10 10
  SETTABLEKS R10 R9 K20 ["InitialPageSize"]
  DUPCLOSURE R10 K22 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R10 1