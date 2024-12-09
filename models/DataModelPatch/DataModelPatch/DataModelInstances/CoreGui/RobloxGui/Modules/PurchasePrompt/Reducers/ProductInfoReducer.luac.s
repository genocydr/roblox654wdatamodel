PROTO_0:
  GETTABLEKS R2 R1 K0 ["productInfo"]
  LOADK R3 K1 [""]
  LOADK R4 K1 [""]
  GETTABLEKS R5 R2 K2 ["ProductType"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["ProductType"]
  GETTABLEKS R6 R7 K3 ["CollectibleItem"]
  JUMPIFNOTEQ R5 R6 [+5]
  GETTABLEKS R3 R2 K4 ["CollectibleItemId"]
  GETTABLEKS R4 R2 K5 ["CollectibleProductId"]
  DUPTABLE R5 K18 [{"name", "description", "price", "premiumPrice", "imageUrl", "assetTypeId", "productId", "productType", "membershipTypeRequired", "itemType", "collectibleItemId", "collectibleProductId"}]
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R2 K19 ["DisplayName"]
  JUMPIF R6 [+5]
  GETTABLEKS R6 R2 K20 ["Name"]
  JUMPIF R6 [+2]
  GETTABLEKS R6 R2 K20 ["Name"]
  SETTABLEKS R6 R5 K6 ["name"]
  GETUPVAL R7 2
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R2 K21 ["Description"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K7 ["description"]
  GETTABLEKS R7 R2 K23 ["PriceInRobux"]
  ORK R6 R7 K22 [0]
  SETTABLEKS R6 R5 K8 ["price"]
  GETTABLEKS R6 R2 K24 ["PremiumPriceInRobux"]
  SETTABLEKS R6 R5 K9 ["premiumPrice"]
  GETUPVAL R6 3
  MOVE R7 R2
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["imageUrl"]
  GETTABLEKS R6 R2 K25 ["AssetTypeId"]
  SETTABLEKS R6 R5 K11 ["assetTypeId"]
  GETTABLEKS R6 R2 K26 ["ProductId"]
  SETTABLEKS R6 R5 K12 ["productId"]
  GETTABLEKS R6 R2 K2 ["ProductType"]
  SETTABLEKS R6 R5 K13 ["productType"]
  GETTABLEKS R6 R2 K27 ["MinimumMembershipLevel"]
  SETTABLEKS R6 R5 K14 ["membershipTypeRequired"]
  GETTABLEKS R6 R2 K25 ["AssetTypeId"]
  SETTABLEKS R6 R5 K15 ["itemType"]
  SETTABLEKS R3 R5 K16 ["collectibleItemId"]
  SETTABLEKS R4 R5 K17 ["collectibleProductId"]
  RETURN R5 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["bundleProductInfo"]
  LOADNIL R3
  GETIMPORT R4 K2 [ipairs]
  GETTABLEKS R5 R2 K3 ["items"]
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R8 K4 ["type"]
  JUMPIFNOTEQKS R9 K5 ["UserOutfit"] [+6]
  GETTABLEKS R3 R8 K6 ["id"]
  GETUPVAL R9 0
  CALL R9 0 1
  JUMPIF R9 [+2]
  FORGLOOP R4 2 [inext] [-10]
  SETTABLEKS R3 R2 K7 ["costumeId"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["Bundle"]
  SETTABLEKS R4 R2 K9 ["itemType"]
  DUPTABLE R4 K16 [{"name", "price", "imageUrl", "assetTypeId", "productId", "membershipTypeRequired", "itemType"}]
  GETTABLEKS R5 R2 K10 ["name"]
  SETTABLEKS R5 R4 K10 ["name"]
  GETTABLEKS R7 R2 K18 ["product"]
  GETTABLEKS R6 R7 K19 ["priceInRobux"]
  ORK R5 R6 K17 [0]
  SETTABLEKS R5 R4 K11 ["price"]
  GETUPVAL R5 2
  MOVE R6 R2
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["imageUrl"]
  LOADNIL R5
  SETTABLEKS R5 R4 K13 ["assetTypeId"]
  GETTABLEKS R6 R2 K18 ["product"]
  GETTABLEKS R5 R6 K6 ["id"]
  SETTABLEKS R5 R4 K14 ["productId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K15 ["membershipTypeRequired"]
  GETTABLEKS R5 R2 K9 ["itemType"]
  SETTABLEKS R5 R4 K9 ["itemType"]
  RETURN R4 1

PROTO_2:
  NEWTABLE R2 0 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["CoreGui"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["CorePackages"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R2 K10 ["Workspace"]
  GETTABLEKS R5 R6 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["PurchasePromptDeps"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["Rodux"]
  LOADK R7 K14 ["RobloxGui"]
  NAMECALL R5 R1 K15 ["WaitForChild"]
  CALL R5 2 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K16 ["Misc"]
  GETTABLEKS R7 R8 K17 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K18 ["Actions"]
  GETTABLEKS R8 R9 K19 ["CompleteRequest"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K18 ["Actions"]
  GETTABLEKS R9 R10 K20 ["ProductInfoReceived"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K18 ["Actions"]
  GETTABLEKS R10 R11 K21 ["BundleProductInfoReceived"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K22 ["Enums"]
  GETTABLEKS R11 R12 K23 ["ItemType"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R12 R0 K24 ["getPreviewImageUrl"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R0 K25 ["Flags"]
  GETTABLEKS R13 R14 K26 ["GetFFlagTranslateDevProducts"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R5 K27 ["Modules"]
  GETTABLEKS R15 R16 K28 ["PublishAssetPrompt"]
  GETTABLEKS R14 R15 K29 ["FFlagPublishAvatarPromptEnabled"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K25 ["Flags"]
  GETTABLEKS R15 R16 K30 ["GetFFlagFixBundlePromptThumbnail"]
  CALL R14 1 1
  GETTABLEKS R15 R4 K31 ["createReducer"]
  NEWTABLE R16 0 0
  NEWTABLE R17 4 0
  GETTABLEKS R18 R8 K32 ["name"]
  DUPCLOSURE R19 K33 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R9 K32 ["name"]
  DUPCLOSURE R19 K34 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R7 K32 ["name"]
  DUPCLOSURE R19 K35 [PROTO_2]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  RETURN R15 1
