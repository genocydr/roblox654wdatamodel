PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  LOADB R1 0
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K16 [{"AssetId", "AssetTypeId", "ContentRatingTypeId", "Creator", "Description", "IconImageAssetId", "IsForSale", "IsLimited", "IsLimitedUnique", "IsNew", "IsPublicDomain", "MinimumMembershipLevel", "Name", "PriceInRobux", "ProductId"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K1 ["AssetId"]
  LOADN R4 2
  SETTABLEKS R4 R3 K2 ["AssetTypeId"]
  LOADN R4 0
  SETTABLEKS R4 R3 K3 ["ContentRatingTypeId"]
  DUPTABLE R4 K20 [{"CreatorType", "CreatorTargetId", "Name", "Id"}]
  LOADK R5 K21 ["Group"]
  SETTABLEKS R5 R4 K17 ["CreatorType"]
  LOADN R5 1
  SETTABLEKS R5 R4 K18 ["CreatorTargetId"]
  LOADK R5 K22 ["ROBLOX"]
  SETTABLEKS R5 R4 K13 ["Name"]
  LOADN R5 1
  SETTABLEKS R5 R4 K19 ["Id"]
  SETTABLEKS R4 R3 K4 ["Creator"]
  LOADK R4 K23 ["This item isn't real!"]
  SETTABLEKS R4 R3 K5 ["Description"]
  LOADN R4 1
  SETTABLEKS R4 R3 K6 ["IconImageAssetId"]
  LOADB R4 1
  SETTABLEKS R4 R3 K7 ["IsForSale"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["IsLimited"]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["IsLimitedUnique"]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["IsNew"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["IsPublicDomain"]
  LOADN R4 0
  SETTABLEKS R4 R3 K12 ["MinimumMembershipLevel"]
  LOADK R4 K24 ["Test Item"]
  SETTABLEKS R4 R3 K13 ["Name"]
  LOADN R4 100
  SETTABLEKS R4 R3 K14 ["PriceInRobux"]
  LOADN R4 1
  SETTABLEKS R4 R3 K15 ["ProductId"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  LOADB R4 0
  CALL R3 1 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["resolve"]
  DUPTABLE R5 K4 [{"success", "purchased", "receipt"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K1 ["success"]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["purchased"]
  LOADK R6 K5 ["fake-receipt-hash"]
  SETTABLEKS R6 R5 K3 ["receipt"]
  CALL R4 1 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  GETIMPORT R2 K3 [Instance.new]
  LOADK R3 K4 ["Tool"]
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  DUPTABLE R1 K2 [{"isPremium"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isPremium"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  DUPTABLE R1 K2 [{"robux"}]
  LOADK R2 K3 [2147483647]
  SETTABLEKS R2 R1 K1 ["robux"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  DUPTABLE R2 K7 [{"id", "name", "description", "items", "creator", "product"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["id"]
  LOADK R3 K8 ["mock-name"]
  SETTABLEKS R3 R2 K2 ["name"]
  LOADK R3 K9 ["mock-description"]
  SETTABLEKS R3 R2 K3 ["description"]
  NEWTABLE R3 0 1
  DUPTABLE R4 K11 [{"id", "name", "type"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K1 ["id"]
  LOADK R5 K12 ["outfit-name"]
  SETTABLEKS R5 R4 K2 ["name"]
  LOADK R5 K13 ["UserOutfit"]
  SETTABLEKS R5 R4 K10 ["type"]
  SETTABLEN R4 R3 1
  SETTABLEKS R3 R2 K4 ["items"]
  DUPTABLE R3 K11 [{"id", "name", "type"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K1 ["id"]
  LOADK R4 K14 ["ROBLOX"]
  SETTABLEKS R4 R3 K2 ["name"]
  LOADK R4 K15 ["User"]
  SETTABLEKS R4 R3 K10 ["type"]
  SETTABLEKS R3 R2 K5 ["creator"]
  DUPTABLE R3 K18 [{"id", "isForSale", "priceInRobux"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K1 ["id"]
  LOADB R4 1
  SETTABLEKS R4 R3 K16 ["isForSale"]
  LOADN R4 100
  SETTABLEKS R4 R3 K17 ["priceInRobux"]
  SETTABLEKS R3 R2 K6 ["product"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  DUPTABLE R2 K4 [{"purchasable", "reason", "price"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["purchasable"]
  LOADK R3 K5 ["mock-reason"]
  SETTABLEKS R3 R2 K2 ["reason"]
  LOADN R3 100
  SETTABLEKS R3 R2 K3 ["price"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["resolve"]
  DUPTABLE R3 K27 [{"bundleType", "bundledItems", "collectibleItemId", "creatorHasVerifiedBadge", "creatorName", "creatorTargetId", "creatorType", "description", "expectedSellerId", "favoriteCount", "hasReseller", "id", "isPurchasable", "itemRestrictions", "itemStatus", "itemType", "lowestPrice", "lowestResalePrice", "name", "owned", "price", "productId", "purchaseCount", "saleLocationType", "totalQuantity", "unitsAvailableForConsumption"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K1 ["bundleType"]
  NEWTABLE R4 0 9
  NEWTABLE R5 4 0
  LOADN R6 17
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K28 ["Mock bundle - Left Arm"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 1
  NEWTABLE R5 4 0
  LOADN R6 234
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K31 ["Mock bundle - Right Leg"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 2
  NEWTABLE R5 4 0
  LOADN R6 235
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K32 ["Mock bundle - Right Arm"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 3
  NEWTABLE R5 4 0
  LOADN R6 236
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K33 ["Mock bundle - Left Leg"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 4
  NEWTABLE R5 4 0
  LOADN R6 237
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K34 ["Mock bundle - Dynamic Head"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 5
  NEWTABLE R5 4 0
  LOADN R6 238
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K35 ["Default Mood"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 6
  NEWTABLE R5 4 0
  LOADN R6 239
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K36 ["Mock bundle - Torso"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K29 ["Asset"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 7
  NEWTABLE R5 4 0
  LOADN R6 240
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K37 ["Mock item"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K38 ["UserOutfit"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 8
  NEWTABLE R5 4 0
  LOADN R6 241
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K39 ["Mock bundle Head"]
  SETTABLEKS R6 R5 K19 ["name"]
  LOADB R6 1
  SETTABLEKS R6 R5 K20 ["owned"]
  LOADK R6 K38 ["UserOutfit"]
  SETTABLEKS R6 R5 K30 ["type"]
  SETTABLEN R5 R4 9
  SETTABLEKS R4 R3 K2 ["bundledItems"]
  LOADK R4 K40 ["random-collectible-item-id-123"]
  SETTABLEKS R4 R3 K3 ["collectibleItemId"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["creatorHasVerifiedBadge"]
  LOADK R4 K41 ["mockRobloxCreator"]
  SETTABLEKS R4 R3 K5 ["creatorName"]
  LOADN R4 123
  SETTABLEKS R4 R3 K6 ["creatorTargetId"]
  LOADK R4 K42 ["User"]
  SETTABLEKS R4 R3 K7 ["creatorType"]
  LOADK R4 K43 ["Mock bundle"]
  SETTABLEKS R4 R3 K8 ["description"]
  LOADN R4 123
  SETTABLEKS R4 R3 K9 ["expectedSellerId"]
  LOADN R4 140
  SETTABLEKS R4 R3 K10 ["favoriteCount"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["hasReseller"]
  LOADK R4 K44 [123456]
  SETTABLEKS R4 R3 K12 ["id"]
  LOADB R4 1
  SETTABLEKS R4 R3 K13 ["isPurchasable"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K14 ["itemRestrictions"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K15 ["itemStatus"]
  LOADK R4 K45 ["Bundle"]
  SETTABLEKS R4 R3 K16 ["itemType"]
  LOADN R4 175
  SETTABLEKS R4 R3 K17 ["lowestPrice"]
  LOADN R4 0
  SETTABLEKS R4 R3 K18 ["lowestResalePrice"]
  LOADK R4 K46 ["Roblox Collectible Bundle"]
  SETTABLEKS R4 R3 K19 ["name"]
  LOADB R4 0
  SETTABLEKS R4 R3 K20 ["owned"]
  LOADN R4 175
  SETTABLEKS R4 R3 K21 ["price"]
  LOADK R4 K47 [1.23456789012346E+15]
  SETTABLEKS R4 R3 K22 ["productId"]
  LOADN R4 0
  SETTABLEKS R4 R3 K23 ["purchaseCount"]
  LOADK R4 K48 ["ShopAndAllExperiences"]
  SETTABLEKS R4 R3 K24 ["saleLocationType"]
  LOADN R4 0
  SETTABLEKS R4 R3 K25 ["totalQuantity"]
  LOADN R4 0
  SETTABLEKS R4 R3 K26 ["unitsAvailableForConsumption"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["resolve"]
  DUPTABLE R4 K5 [{"roblox_product_id", "provider_product_id", "roblox_product_name", "robux_amount"}]
  LOADN R5 50
  SETTABLEKS R5 R4 K1 ["roblox_product_id"]
  LOADK R5 K6 ["robux50"]
  SETTABLEKS R5 R4 K2 ["provider_product_id"]
  LOADK R5 K7 ["providerRobux50"]
  SETTABLEKS R5 R4 K3 ["roblox_product_name"]
  LOADN R5 244
  SETTABLEKS R5 R4 K4 ["robux_amount"]
  CALL R3 1 -1
  RETURN R3 -1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  LOADB R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resolve"]
  DUPTABLE R2 K2 [{"action"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["NoAction"]
  SETTABLEKS R3 R2 K1 ["action"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resolve"]
  DUPTABLE R1 K3 [{"isEligible", "failureReason"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isEligible"]
  LOADK R2 K4 ["PurchaseNotEnabled"]
  SETTABLEKS R2 R1 K2 ["failureReason"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_16:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["resolve"]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["reject"]
  GETUPVAL R1 2
  CALL R0 1 -1
  RETURN R0 -1

PROTO_17:
  LOADK R0 K0 ["MockService(Network)"]
  RETURN R0 1

PROTO_18:
  LOADNIL R2
  JUMPIF R1 [+1]
  JUMPIFNOT R0 [+45]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  DUPTABLE R4 K16 [{"getABTestGroup", "getProductInfo", "getPlayerOwns", "performPurchase", "loadAssetForEquip", "getAccountInfo", "getBalanceInfo", "getBundleDetails", "getProductPurchasableDetails", "getCatalogItemDetails", "getRobuxUpsellProduct", "postPremiumImpression", "getPremiumUpsellPrecheck", "getPurchaseWarning", "postPurchaseWarningAcknowledge", "checkUserPurchaseSettings"}]
  SETTABLEKS R3 R4 K0 ["getABTestGroup"]
  SETTABLEKS R3 R4 K1 ["getProductInfo"]
  SETTABLEKS R3 R4 K2 ["getPlayerOwns"]
  SETTABLEKS R3 R4 K3 ["performPurchase"]
  SETTABLEKS R3 R4 K4 ["loadAssetForEquip"]
  SETTABLEKS R3 R4 K5 ["getAccountInfo"]
  SETTABLEKS R3 R4 K6 ["getBalanceInfo"]
  SETTABLEKS R3 R4 K7 ["getBundleDetails"]
  SETTABLEKS R3 R4 K8 ["getProductPurchasableDetails"]
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  MOVE R5 R3
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["getCatalogItemDetails"]
  SETTABLEKS R3 R4 K10 ["getRobuxUpsellProduct"]
  SETTABLEKS R3 R4 K11 ["postPremiumImpression"]
  SETTABLEKS R3 R4 K12 ["getPremiumUpsellPrecheck"]
  SETTABLEKS R3 R4 K13 ["getPurchaseWarning"]
  SETTABLEKS R3 R4 K14 ["postPurchaseWarningAcknowledge"]
  SETTABLEKS R3 R4 K15 ["checkUserPurchaseSettings"]
  MOVE R2 R4
  JUMP [+55]
  DUPTABLE R3 K16 [{"getABTestGroup", "getProductInfo", "getPlayerOwns", "performPurchase", "loadAssetForEquip", "getAccountInfo", "getBalanceInfo", "getBundleDetails", "getProductPurchasableDetails", "getCatalogItemDetails", "getRobuxUpsellProduct", "postPremiumImpression", "getPremiumUpsellPrecheck", "getPurchaseWarning", "postPurchaseWarningAcknowledge", "checkUserPurchaseSettings"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K0 ["getABTestGroup"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K1 ["getProductInfo"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K2 ["getPlayerOwns"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K3 ["performPurchase"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K4 ["loadAssetForEquip"]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K5 ["getAccountInfo"]
  GETUPVAL R4 8
  SETTABLEKS R4 R3 K6 ["getBalanceInfo"]
  GETUPVAL R4 9
  SETTABLEKS R4 R3 K7 ["getBundleDetails"]
  GETUPVAL R4 10
  SETTABLEKS R4 R3 K8 ["getProductPurchasableDetails"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  GETUPVAL R4 11
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["getCatalogItemDetails"]
  GETUPVAL R4 12
  SETTABLEKS R4 R3 K10 ["getRobuxUpsellProduct"]
  GETUPVAL R4 13
  SETTABLEKS R4 R3 K11 ["postPremiumImpression"]
  GETUPVAL R4 14
  SETTABLEKS R4 R3 K12 ["getPremiumUpsellPrecheck"]
  GETUPVAL R4 15
  SETTABLEKS R4 R3 K13 ["getPurchaseWarning"]
  GETUPVAL R4 16
  SETTABLEKS R4 R3 K14 ["postPurchaseWarningAcknowledge"]
  GETUPVAL R4 17
  SETTABLEKS R4 R3 K15 ["checkUserPurchaseSettings"]
  MOVE R2 R3
  DUPTABLE R5 K18 [{"__tostring"}]
  DUPCLOSURE R6 K19 [PROTO_17]
  SETTABLEKS R6 R5 K17 ["__tostring"]
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K21 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Promise"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["Enums"]
  GETTABLEKS R3 R4 K7 ["PurchaseWarning"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["Flags"]
  GETTABLEKS R4 R5 K9 ["GetFFlagUseCatalogItemDetailsToResolveBundlePurchase"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R5 K11 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R6 K12 [PROTO_2]
  CAPTURE VAL R1
  DUPCLOSURE R7 K13 [PROTO_3]
  CAPTURE VAL R1
  DUPCLOSURE R8 K14 [PROTO_4]
  CAPTURE VAL R1
  DUPCLOSURE R9 K15 [PROTO_5]
  CAPTURE VAL R1
  DUPCLOSURE R10 K16 [PROTO_6]
  CAPTURE VAL R1
  DUPCLOSURE R11 K17 [PROTO_7]
  CAPTURE VAL R1
  DUPCLOSURE R12 K18 [PROTO_8]
  CAPTURE VAL R1
  DUPCLOSURE R13 K19 [PROTO_9]
  CAPTURE VAL R1
  DUPCLOSURE R14 K20 [PROTO_10]
  CAPTURE VAL R1
  DUPCLOSURE R15 K21 [PROTO_11]
  CAPTURE VAL R1
  DUPCLOSURE R16 K22 [PROTO_12]
  CAPTURE VAL R1
  DUPCLOSURE R17 K23 [PROTO_13]
  CAPTURE VAL R1
  CAPTURE VAL R2
  DUPCLOSURE R18 K24 [PROTO_14]
  CAPTURE VAL R1
  DUPCLOSURE R19 K25 [PROTO_15]
  CAPTURE VAL R1
  NEWTABLE R20 2 0
  SETTABLEKS R20 R20 K26 ["__index"]
  DUPCLOSURE R21 K27 [PROTO_18]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R21 R20 K28 ["new"]
  RETURN R20 1
