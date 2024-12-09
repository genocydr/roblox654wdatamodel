PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K2 ["name"]
  GETUPVAL R1 1
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["assetId"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K4 ["assetTypeId"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K5 ["creatorId"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K6 ["creatorName"]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["creatorHasVerifiedBadge"]
  LOADB R1 0
  SETTABLEKS R1 R0 K8 ["owned"]
  LOADB R1 0
  SETTABLEKS R1 R0 K9 ["isForSale"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K10 ["description"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K11 ["price"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K12 ["productId"]
  LOADB R1 0
  SETTABLEKS R1 R0 K13 ["isLimited"]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADB R1 0
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["isLimitedUnique"]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+2]
  LOADB R1 0
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["collectibleIsLimited"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K16 ["bundlesAssetIsIn"]
  LOADNIL R1
  SETTABLEKS R1 R0 K17 ["parentBundleId"]
  LOADN R1 0
  SETTABLEKS R1 R0 K18 ["numFavorites"]
  LOADN R1 0
  SETTABLEKS R1 R0 K19 ["minimumMembershipLevel"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K20 ["collectibleItemId"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K21 ["collectibleProductId"]
  LOADN R1 0
  SETTABLEKS R1 R0 K22 ["collectibleLowestResalePrice"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K23 ["collectibleLowestAvailableResaleProductId"]
  LOADK R1 K1 [""]
  SETTABLEKS R1 R0 K24 ["collectibleLowestAvailableResaleItemInstanceId"]
  LOADN R1 0
  SETTABLEKS R1 R0 K25 ["collectibleQuantityLimitPerUser"]
  LOADN R1 0
  SETTABLEKS R1 R0 K26 ["remaining"]
  LOADNIL R1
  SETTABLEKS R1 R0 K27 ["creatingUniverseId"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K1 ["Name"]
  SETTABLEKS R2 R1 K2 ["name"]
  GETTABLEKS R2 R0 K3 ["Description"]
  SETTABLEKS R2 R1 K4 ["description"]
  GETTABLEKS R2 R0 K5 ["PriceInRobux"]
  SETTABLEKS R2 R1 K6 ["price"]
  GETTABLEKS R2 R0 K7 ["ProductType"]
  SETTABLEKS R2 R1 K8 ["productType"]
  GETTABLEKS R2 R0 K9 ["Remaining"]
  SETTABLEKS R2 R1 K10 ["remaining"]
  GETTABLEKS R4 R0 K11 ["Creator"]
  GETTABLEKS R3 R4 K12 ["Id"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K14 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K15 ["creatorId"]
  GETTABLEKS R3 R0 K11 ["Creator"]
  GETTABLEKS R2 R3 K1 ["Name"]
  SETTABLEKS R2 R1 K16 ["creatorName"]
  GETTABLEKS R3 R0 K17 ["AssetId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K14 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K18 ["assetId"]
  GETTABLEKS R3 R0 K19 ["AssetTypeId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K14 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K20 ["assetTypeId"]
  GETTABLEKS R3 R0 K21 ["ProductId"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K14 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K22 ["productId"]
  GETTABLEKS R2 R0 K23 ["IsForSale"]
  SETTABLEKS R2 R1 K24 ["isForSale"]
  GETTABLEKS R2 R0 K25 ["CanBeSoldInThisGame"]
  SETTABLEKS R2 R1 K26 ["canBeSoldInThisGame"]
  GETTABLEKS R2 R0 K27 ["SaleLocation"]
  SETTABLEKS R2 R1 K28 ["saleLocation"]
  GETTABLEKS R3 R0 K9 ["Remaining"]
  ORK R2 R3 K29 [0]
  SETTABLEKS R2 R1 K10 ["remaining"]
  GETTABLEKS R2 R1 K8 ["productType"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["ProductType"]
  GETTABLEKS R3 R4 K30 ["CollectibleItem"]
  JUMPIFNOTEQ R2 R3 [+48]
  GETTABLEKS R3 R0 K32 ["CollectibleItemId"]
  ORK R2 R3 K31 [""]
  SETTABLEKS R2 R1 K33 ["collectibleItemId"]
  GETTABLEKS R3 R0 K34 ["CollectibleProductId"]
  ORK R2 R3 K31 [""]
  SETTABLEKS R2 R1 K35 ["collectibleProductId"]
  GETTABLEKS R2 R0 K36 ["CollectiblesItemDetails"]
  JUMPIFNOT R2 [+34]
  GETTABLEKS R4 R0 K36 ["CollectiblesItemDetails"]
  GETTABLEKS R3 R4 K37 ["CollectibleLowestResalePrice"]
  ORK R2 R3 K29 [0]
  SETTABLEKS R2 R1 K38 ["collectibleLowestResalePrice"]
  GETTABLEKS R4 R0 K36 ["CollectiblesItemDetails"]
  GETTABLEKS R3 R4 K39 ["CollectibleLowestAvailableResaleProductId"]
  ORK R2 R3 K31 [""]
  SETTABLEKS R2 R1 K40 ["collectibleLowestAvailableResaleProductId"]
  GETTABLEKS R4 R0 K36 ["CollectiblesItemDetails"]
  GETTABLEKS R3 R4 K41 ["CollectibleLowestAvailableResaleItemInstanceId"]
  ORK R2 R3 K31 [""]
  SETTABLEKS R2 R1 K42 ["collectibleLowestAvailableResaleItemInstanceId"]
  GETTABLEKS R4 R0 K36 ["CollectiblesItemDetails"]
  GETTABLEKS R3 R4 K43 ["CollectibleQuantityLimitPerUser"]
  ORK R2 R3 K29 [0]
  SETTABLEKS R2 R1 K44 ["collectibleQuantityLimitPerUser"]
  GETTABLEKS R3 R0 K36 ["CollectiblesItemDetails"]
  GETTABLEKS R2 R3 K45 ["IsLimited"]
  SETTABLEKS R2 R1 K46 ["collectibleIsLimited"]
  GETTABLEKS R3 R0 K11 ["Creator"]
  GETTABLEKS R2 R3 K47 ["HasVerifiedBadge"]
  SETTABLEKS R2 R1 K48 ["creatorHasVerifiedBadge"]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K45 ["IsLimited"]
  SETTABLEKS R2 R1 K49 ["isLimited"]
  GETTABLEKS R2 R0 K50 ["IsLimitedUnique"]
  SETTABLEKS R2 R1 K51 ["isLimitedUnique"]
  RETURN R1 1
  GETTABLEKS R2 R0 K45 ["IsLimited"]
  JUMPIF R2 [+2]
  GETTABLEKS R2 R0 K50 ["IsLimitedUnique"]
  SETTABLEKS R2 R1 K49 ["isLimited"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K2 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["assetId"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["assetId"]
  SETTABLEKS R1 R2 K4 ["bundlesAssetIsIn"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["assetId"]
  GETTABLEKS R3 R1 K4 ["bundleId"]
  SETTABLEKS R3 R2 K5 ["parentBundleId"]
  NEWTABLE R3 0 1
  GETTABLEKS R4 R1 K4 ["bundleId"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K6 ["bundlesAssetIsIn"]
  GETTABLEKS R3 R1 K7 ["collectibleItemId"]
  SETTABLEKS R3 R2 K7 ["collectibleItemId"]
  GETTABLEKS R3 R1 K8 ["collectibleProductId"]
  SETTABLEKS R3 R2 K8 ["collectibleProductId"]
  GETTABLEKS R3 R1 K9 ["collectibleLowestResalePrice"]
  SETTABLEKS R3 R2 K9 ["collectibleLowestResalePrice"]
  GETTABLEKS R3 R1 K10 ["collectibleLowestAvailableResaleProductId"]
  SETTABLEKS R3 R2 K10 ["collectibleLowestAvailableResaleProductId"]
  GETTABLEKS R3 R1 K11 ["collectibleLowestAvailableResaleItemInstanceId"]
  SETTABLEKS R3 R2 K11 ["collectibleLowestAvailableResaleItemInstanceId"]
  GETTABLEKS R3 R1 K12 ["collectibleQuantityLimitPerUser"]
  SETTABLEKS R3 R2 K12 ["collectibleQuantityLimitPerUser"]
  GETTABLEKS R3 R1 K13 ["collectibleIsLimited"]
  SETTABLEKS R3 R2 K13 ["collectibleIsLimited"]
  GETTABLEKS R3 R1 K14 ["isForSale"]
  SETTABLEKS R3 R2 K14 ["isForSale"]
  GETTABLEKS R3 R1 K15 ["remaining"]
  SETTABLEKS R3 R2 K15 ["remaining"]
  GETTABLEKS R3 R1 K16 ["owned"]
  SETTABLEKS R3 R2 K16 ["owned"]
  GETTABLEKS R3 R2 K13 ["collectibleIsLimited"]
  JUMPIF R3 [+8]
  GETTABLEKS R3 R2 K14 ["isForSale"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R2 K16 ["owned"]
  NOT R3 R4
  SETTABLEKS R3 R2 K14 ["isForSale"]
  GETTABLEKS R4 R1 K18 ["description"]
  ORK R3 R4 K17 [""]
  SETTABLEKS R3 R2 K18 ["description"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K19 ["ProductType"]
  GETTABLEKS R3 R4 K20 ["CollectibleItem"]
  SETTABLEKS R3 R2 K21 ["productType"]
  GETTABLEKS R3 R1 K22 ["price"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K22 ["price"]
  SETTABLEKS R3 R2 K22 ["price"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["assetId"]
  SETTABLEKS R1 R2 K4 ["numFavorites"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["new"]
  CALL R5 0 1
  GETTABLEKS R7 R0 K1 ["assetId"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K3 [tostring]
  CALL R6 1 1
  SETTABLEKS R6 R5 K1 ["assetId"]
  SETTABLEKS R1 R5 K4 ["owned"]
  JUMPIFNOT R2 [+2]
  SETTABLEKS R2 R5 K5 ["price"]
  SETTABLEKS R3 R5 K6 ["isForSale"]
  SETTABLEKS R4 R5 K7 ["premiumPricing"]
  RETURN R5 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETTABLEKS R3 R0 K1 ["Id"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K3 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["assetId"]
  GETTABLEKS R2 R0 K5 ["Owned"]
  SETTABLEKS R2 R1 K6 ["owned"]
  GETTABLEKS R2 R0 K7 ["IsPurchasable"]
  SETTABLEKS R2 R1 K8 ["isForSale"]
  GETTABLEKS R3 R0 K10 ["Price"]
  ORK R2 R3 K9 [0]
  SETTABLEKS R2 R1 K11 ["price"]
  GETTABLEKS R2 R0 K12 ["HasResellers"]
  SETTABLEKS R2 R1 K13 ["hasResellers"]
  GETTABLEKS R2 R0 K14 ["CollectibleItemId"]
  SETTABLEKS R2 R1 K15 ["collectibleItemId"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K2 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["assetId"]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["owned"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["assetId"]
  GETTABLEKS R4 R1 K4 ["creatingUniverseId"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R1 K4 ["creatingUniverseId"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["creatingUniverseId"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["joinDeep"]
  NEWTABLE R2 0 0
  MOVE R3 R0
  CALL R1 2 1
  GETTABLEKS R2 R0 K1 ["saleLocation"]
  GETTABLEKS R3 R0 K2 ["productType"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["ProductType"]
  GETTABLEKS R4 R5 K4 ["CollectibleItem"]
  JUMPIFNOTEQ R3 R4 [+100]
  MOVE R3 R2
  JUMPIFNOT R3 [+11]
  GETTABLEKS R4 R2 K5 ["SaleLocationType"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["SaleLocationType"]
  GETTABLEKS R5 R6 K6 ["ShopOnly"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  MOVE R4 R2
  JUMPIFNOT R4 [+11]
  GETTABLEKS R5 R2 K5 ["SaleLocationType"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["SaleLocationType"]
  GETTABLEKS R6 R7 K7 ["ShopAndExperiencesById"]
  JUMPIFNOTEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  MOVE R5 R2
  JUMPIFNOT R5 [+32]
  LOADB R5 0
  GETTABLEKS R6 R2 K5 ["SaleLocationType"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["SaleLocationType"]
  GETTABLEKS R7 R8 K7 ["ShopAndExperiencesById"]
  JUMPIFNOTEQ R6 R7 [+23]
  LOADB R5 0
  GETTABLEKS R7 R2 K8 ["UniverseIds"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K10 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K11 ["table"] [+14]
  GETIMPORT R6 K13 [table.find]
  GETTABLEKS R7 R2 K8 ["UniverseIds"]
  GETIMPORT R9 K15 [game]
  GETTABLEKS R8 R9 K16 ["GameId"]
  CALL R6 2 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  MOVE R6 R2
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R2 K5 ["SaleLocationType"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["SaleLocationType"]
  GETTABLEKS R8 R9 K17 ["ExperiencesDevApiOnly"]
  JUMPIFNOTEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R7 R0 K18 ["isForSale"]
  JUMPIFNOT R7 [+9]
  GETTABLEKS R7 R0 K19 ["canBeSoldInThisGame"]
  JUMPIFNOT R7 [+6]
  MOVE R7 R3
  JUMPIFNOT R7 [+4]
  JUMPIF R4 [+2]
  MOVE R7 R5
  JUMPIFNOT R7 [+1]
  MOVE R7 R6
  SETTABLEKS R7 R1 K18 ["isForSale"]
  GETTABLEKS R7 R0 K20 ["collectibleIsLimited"]
  JUMPIF R7 [+31]
  GETTABLEKS R7 R1 K18 ["isForSale"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R1 K21 ["owned"]
  NOT R7 R8
  SETTABLEKS R7 R1 K18 ["isForSale"]
  RETURN R1 1
  GETUPVAL R3 2
  JUMPIFNOT R3 [+16]
  GETTABLEKS R3 R0 K18 ["isForSale"]
  JUMPIFNOT R3 [+2]
  GETTABLEKS R3 R0 K19 ["canBeSoldInThisGame"]
  SETTABLEKS R3 R1 K18 ["isForSale"]
  GETTABLEKS R3 R0 K19 ["canBeSoldInThisGame"]
  JUMPIFNOTEQKNIL R3 [+10]
  GETTABLEKS R3 R0 K18 ["isForSale"]
  SETTABLEKS R3 R1 K18 ["isForSale"]
  RETURN R1 1
  GETTABLEKS R3 R0 K18 ["isForSale"]
  SETTABLEKS R3 R1 K18 ["isForSale"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CoreGui"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R5 K10 [script]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K11 ["Parent"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R3 K12 ["MockId"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R3 K13 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R10 R1 K14 ["RobloxGui"]
  GETTABLEKS R9 R10 K15 ["Modules"]
  GETTABLEKS R8 R9 K16 ["Flags"]
  GETTABLEKS R7 R8 K17 ["FFlagEnableRestrictedAssetSaleLocationInspectAndBuy"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R3 K16 ["Flags"]
  GETTABLEKS R8 R9 K18 ["GetFFlagIBEnableCollectiblesSystemSupport"]
  CALL R7 1 1
  NEWTABLE R8 16 0
  DUPCLOSURE R9 K19 [PROTO_0]
  SETTABLEKS R9 R8 K20 ["new"]
  DUPCLOSURE R9 K21 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K22 ["mock"]
  DUPCLOSURE R9 K23 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K24 ["fromGetProductInfo"]
  DUPCLOSURE R9 K25 [PROTO_3]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K26 ["fromHumanoidDescription"]
  DUPCLOSURE R9 K27 [PROTO_4]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K28 ["fromGetAssetBundles"]
  DUPCLOSURE R9 K29 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K30 ["fromBundleInfo"]
  DUPCLOSURE R9 K31 [PROTO_6]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K32 ["fromGetAssetFavoriteCount"]
  DUPCLOSURE R9 K33 [PROTO_7]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K34 ["fromGetEconomyProductInfo"]
  DUPCLOSURE R9 K35 [PROTO_8]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K36 ["fromGetItemDetails"]
  DUPCLOSURE R9 K37 [PROTO_9]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K38 ["fromPurchaseSuccess"]
  DUPCLOSURE R9 K39 [PROTO_10]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K40 ["fromGetVersionInfo"]
  DUPCLOSURE R9 K41 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K42 ["getSaleDetailsForCollectibles"]
  RETURN R8 1
