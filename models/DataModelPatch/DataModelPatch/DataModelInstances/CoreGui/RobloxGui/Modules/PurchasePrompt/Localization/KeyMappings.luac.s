MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Enums"]
  GETTABLEKS R2 R3 K6 ["PurchaseError"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  NEWTABLE R3 64 0
  LOADK R4 K7 ["CoreScripts.PurchasePrompt.ProductType.Product"]
  SETTABLEKS R4 R3 K8 ["0"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K10 ["TShirt"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K12 ["2"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K13 ["Audio"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["3"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K15 ["Mesh"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["4"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K17 ["Hat"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["8"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K19 ["Place"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K20 ["9"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K21 ["Model"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K22 ["10"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K23 ["Shirt"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K24 ["11"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K25 ["Pants"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K26 ["12"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K27 ["Decal"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K28 ["13"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K29 ["Head"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K30 ["17"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K31 ["Face"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K32 ["18"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K33 ["Gear"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K34 ["19"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K35 ["Badge"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K36 ["21"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K37 ["Animation"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K38 ["24"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K39 ["Torso"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K40 ["27"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K41 ["RightArm"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K42 ["28"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K43 ["LeftArm"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K44 ["29"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K45 ["LeftLeg"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K46 ["30"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K47 ["RightLeg"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K48 ["31"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K49 ["Package"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K50 ["32"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K51 ["GamePass"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K52 ["34"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K53 ["Plugin"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K54 ["38"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K55 ["MeshPart"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K56 ["40"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K57 ["Hair"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K58 ["41"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K31 ["Face"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K59 ["42"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K60 ["Neck"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K61 ["43"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K62 ["Shoulder"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K63 ["44"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K64 ["Front"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K65 ["45"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K66 ["Back"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K67 ["46"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K68 ["Waist"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K69 ["47"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K70 ["Climb"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K71 ["48"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K72 ["Death"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K73 ["49"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K74 ["Fall"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K75 ["50"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K76 ["Idle"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K77 ["51"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K78 ["Jump"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K79 ["52"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K80 ["Run"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K81 ["53"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K82 ["Swim"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K83 ["54"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K84 ["Walk"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K85 ["55"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K86 ["Pose"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K87 ["56"]
  LOADK R4 K9 ["Common.AssetTypes.Label.%s"]
  LOADK R6 K88 ["Emote"]
  NAMECALL R4 R4 K11 ["format"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K89 ["61"]
  SETTABLEKS R3 R2 K90 ["AssetTypeById"]
  NEWTABLE R3 32 0
  GETTABLEKS R4 R1 K91 ["CannotGetBalance"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K91 ["CannotGetBalance"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K93 ["CannotGetItemPrice"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K93 ["CannotGetItemPrice"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K94 ["NotForSale"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K94 ["NotForSale"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K95 ["NotForSaleHere"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K95 ["NotForSaleHere"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K96 ["AlreadyOwn"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K96 ["AlreadyOwn"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K97 ["Under13"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K97 ["Under13"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K98 ["Limited"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K98 ["Limited"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K99 ["Guest"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K100 ["PromptPurchaseOnGuest"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K101 ["ThirdPartyDisabled"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K101 ["ThirdPartyDisabled"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K102 ["NotEnoughRobux"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K102 ["NotEnoughRobux"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K103 ["NotEnoughRobuxXbox"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K103 ["NotEnoughRobuxXbox"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K104 ["NotEnoughRobuxNoUpsell"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K104 ["NotEnoughRobuxNoUpsell"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K105 ["TwoFactorNeeded"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K106 ["Enable2SV"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K107 ["TwoFactorNeededSettings"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K106 ["Enable2SV"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K108 ["UnknownFailure"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K108 ["UnknownFailure"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K109 ["UnknownFailureNoItemName"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K109 ["UnknownFailureNoItemName"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K110 ["PurchaseDisabled"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K110 ["PurchaseDisabled"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K111 ["InvalidFunds"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K111 ["InvalidFunds"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K112 ["InvalidFundsUnknown"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K111 ["InvalidFunds"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R1 K113 ["PremiumOnly"]
  LOADK R5 K92 ["CoreScripts.PurchasePrompt.PurchaseFailed.%s"]
  LOADK R7 K113 ["PremiumOnly"]
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R2 K114 ["PurchaseErrorKey"]
  RETURN R2 1
