PROTO_0:
  GETTABLEKS R2 R1 K0 ["idempotencyKey"]
  JUMPIFEQKNIL R2 [+3]
  JUMPIFNOTEQKS R2 K1 [""] [+7]
  GETUPVAL R3 0
  LOADB R5 0
  NAMECALL R3 R3 K2 ["GenerateGUID"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K13 [{"id", "infoType", "requestType", "equipIfPurchased", "isRobloxPurchase", "idempotencyKey", "purchaseAuthToken", "collectibleItemId", "collectibleItemInstanceId", "collectibleProductId", "expectedPrice"}]
  GETTABLEKS R4 R1 K3 ["id"]
  SETTABLEKS R4 R3 K3 ["id"]
  GETIMPORT R4 K17 [Enum.InfoType.Asset]
  SETTABLEKS R4 R3 K4 ["infoType"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["Asset"]
  SETTABLEKS R4 R3 K5 ["requestType"]
  GETTABLEKS R4 R1 K6 ["equipIfPurchased"]
  SETTABLEKS R4 R3 K6 ["equipIfPurchased"]
  GETTABLEKS R4 R1 K7 ["isRobloxPurchase"]
  SETTABLEKS R4 R3 K7 ["isRobloxPurchase"]
  SETTABLEKS R2 R3 K0 ["idempotencyKey"]
  GETTABLEKS R5 R1 K8 ["purchaseAuthToken"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K8 ["purchaseAuthToken"]
  GETTABLEKS R5 R1 K9 ["collectibleItemId"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K9 ["collectibleItemId"]
  GETTABLEKS R5 R1 K10 ["collectibleItemInstanceId"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K10 ["collectibleItemInstanceId"]
  GETTABLEKS R5 R1 K11 ["collectibleProductId"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K11 ["collectibleProductId"]
  GETTABLEKS R5 R1 K12 ["expectedPrice"]
  ORK R4 R5 K18 [0]
  SETTABLEKS R4 R3 K12 ["expectedPrice"]
  RETURN R3 1

PROTO_1:
  DUPTABLE R2 K4 [{"id", "infoType", "requestType", "isRobloxPurchase"}]
  GETTABLEKS R3 R1 K0 ["id"]
  SETTABLEKS R3 R2 K0 ["id"]
  GETIMPORT R3 K8 [Enum.InfoType.GamePass]
  SETTABLEKS R3 R2 K1 ["infoType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["GamePass"]
  SETTABLEKS R3 R2 K2 ["requestType"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isRobloxPurchase"]
  RETURN R2 1

PROTO_2:
  DUPTABLE R2 K4 [{"id", "infoType", "requestType", "isRobloxPurchase"}]
  GETTABLEKS R3 R1 K0 ["id"]
  SETTABLEKS R3 R2 K0 ["id"]
  GETIMPORT R3 K8 [Enum.InfoType.Product]
  SETTABLEKS R3 R2 K1 ["infoType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Product"]
  SETTABLEKS R3 R2 K2 ["requestType"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isRobloxPurchase"]
  RETURN R2 1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["idempotencyKey"]
  JUMPIFEQKNIL R2 [+3]
  JUMPIFNOTEQKS R2 K1 [""] [+7]
  GETUPVAL R3 0
  LOADB R5 0
  NAMECALL R3 R3 K2 ["GenerateGUID"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K12 [{"id", "infoType", "requestType", "isRobloxPurchase", "idempotencyKey", "purchaseAuthToken", "collectibleItemId", "collectibleItemInstanceId", "collectibleProductId", "expectedPrice"}]
  GETTABLEKS R4 R1 K3 ["id"]
  SETTABLEKS R4 R3 K3 ["id"]
  GETIMPORT R4 K16 [Enum.InfoType.Bundle]
  SETTABLEKS R4 R3 K4 ["infoType"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["Bundle"]
  SETTABLEKS R4 R3 K5 ["requestType"]
  LOADB R4 1
  SETTABLEKS R4 R3 K6 ["isRobloxPurchase"]
  SETTABLEKS R2 R3 K0 ["idempotencyKey"]
  GETTABLEKS R5 R1 K7 ["purchaseAuthToken"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K7 ["purchaseAuthToken"]
  GETTABLEKS R5 R1 K8 ["collectibleItemId"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K8 ["collectibleItemId"]
  GETTABLEKS R5 R1 K9 ["collectibleItemInstanceId"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K9 ["collectibleItemInstanceId"]
  GETTABLEKS R5 R1 K10 ["collectibleProductId"]
  ORK R4 R5 K1 [""]
  SETTABLEKS R4 R3 K10 ["collectibleProductId"]
  GETTABLEKS R5 R1 K11 ["expectedPrice"]
  ORK R4 R5 K17 [0]
  SETTABLEKS R4 R3 K11 ["expectedPrice"]
  RETURN R3 1

PROTO_4:
  DUPTABLE R2 K1 [{"requestType"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Premium"]
  SETTABLEKS R3 R2 K0 ["requestType"]
  RETURN R2 1

PROTO_5:
  DUPTABLE R2 K2 [{"id", "requestType"}]
  GETTABLEKS R3 R1 K0 ["id"]
  SETTABLEKS R3 R2 K0 ["id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Subscription"]
  SETTABLEKS R3 R2 K1 ["requestType"]
  RETURN R2 1

PROTO_6:
  DUPTABLE R2 K3 [{"requestType", "humanoidModel", "id"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["AvatarCreationFee"]
  SETTABLEKS R3 R2 K0 ["requestType"]
  GETTABLEKS R3 R1 K1 ["humanoidModel"]
  SETTABLEKS R3 R2 K1 ["humanoidModel"]
  GETTABLEKS R3 R1 K5 ["guid"]
  SETTABLEKS R3 R2 K2 ["id"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["CorePackages"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["HttpService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Workspace"]
  GETTABLEKS R5 R6 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["PurchasePromptDeps"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["Rodux"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K14 ["Actions"]
  GETTABLEKS R6 R7 K15 ["RequestAssetPurchase"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K14 ["Actions"]
  GETTABLEKS R7 R8 K16 ["RequestBundlePurchase"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K14 ["Actions"]
  GETTABLEKS R8 R9 K17 ["RequestGamepassPurchase"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K14 ["Actions"]
  GETTABLEKS R9 R10 K18 ["RequestProductPurchase"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K14 ["Actions"]
  GETTABLEKS R10 R11 K19 ["RequestPremiumPurchase"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K14 ["Actions"]
  GETTABLEKS R11 R12 K20 ["RequestSubscriptionPurchase"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R0 K14 ["Actions"]
  GETTABLEKS R12 R13 K21 ["RequestAvatarCreationFeePurchase"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R0 K14 ["Actions"]
  GETTABLEKS R13 R14 K22 ["CompleteRequest"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K23 ["Enums"]
  GETTABLEKS R14 R15 K24 ["RequestType"]
  CALL R13 1 1
  DUPTABLE R14 K26 [{"requestType"}]
  GETTABLEKS R15 R13 K27 ["None"]
  SETTABLEKS R15 R14 K25 ["requestType"]
  GETTABLEKS R15 R4 K28 ["createReducer"]
  MOVE R16 R14
  NEWTABLE R17 8 0
  GETTABLEKS R18 R5 K29 ["name"]
  DUPCLOSURE R19 K30 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R7 K29 ["name"]
  DUPCLOSURE R19 K31 [PROTO_1]
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R8 K29 ["name"]
  DUPCLOSURE R19 K32 [PROTO_2]
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K29 ["name"]
  DUPCLOSURE R19 K33 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R9 K29 ["name"]
  DUPCLOSURE R19 K34 [PROTO_4]
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R10 K29 ["name"]
  DUPCLOSURE R19 K35 [PROTO_5]
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R11 K29 ["name"]
  DUPCLOSURE R19 K36 [PROTO_6]
  CAPTURE VAL R13
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R12 K29 ["name"]
  DUPCLOSURE R19 K37 [PROTO_7]
  CAPTURE VAL R14
  SETTABLE R19 R17 R18
  CALL R15 2 1
  RETURN R15 1
