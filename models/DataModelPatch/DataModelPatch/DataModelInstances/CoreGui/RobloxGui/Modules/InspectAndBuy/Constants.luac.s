MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K9 [{"NotificationKeys", "ItemType", "View", "AssetCategories", "AssetTypeIdStringToHumanoidDescriptionProp", "AnimationAssetTypes", "AssetTypeIdToAccessoryTypeEnum", "LayeredAssetTypes", "AssetCategory"}]
  DUPTABLE R1 K14 [{"MultipleBundleNoticeKey", "SingleBundleNoticeKey", "LimitedItemNoticeKey", "LayeredClothingOnR6Key"}]
  LOADK R2 K15 ["InGame.InspectMenu.Description.MultipleBundlesNotice"]
  SETTABLEKS R2 R1 K10 ["MultipleBundleNoticeKey"]
  LOADK R2 K16 ["InGame.InspectMenu.Description.SingleBundleNotice"]
  SETTABLEKS R2 R1 K11 ["SingleBundleNoticeKey"]
  LOADK R2 K17 ["InGame.InspectMenu.Description.LimitedNotice"]
  SETTABLEKS R2 R1 K12 ["LimitedItemNoticeKey"]
  LOADK R2 K18 ["InGame.InspectMenu.Description.LayeredClothingR6"]
  SETTABLEKS R2 R1 K13 ["LayeredClothingOnR6Key"]
  SETTABLEKS R1 R0 K0 ["NotificationKeys"]
  DUPTABLE R1 K21 [{"Asset", "Bundle"}]
  LOADK R2 K19 ["Asset"]
  SETTABLEKS R2 R1 K19 ["Asset"]
  LOADK R2 K20 ["Bundle"]
  SETTABLEKS R2 R1 K20 ["Bundle"]
  SETTABLEKS R1 R0 K1 ["ItemType"]
  DUPTABLE R1 K25 [{"Compact", "Wide", "WideLandscape"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K22 ["Compact"]
  LOADN R2 1
  SETTABLEKS R2 R1 K23 ["Wide"]
  LOADN R2 2
  SETTABLEKS R2 R1 K24 ["WideLandscape"]
  SETTABLEKS R1 R0 K2 ["View"]
  DUPTABLE R1 K31 [{"Animation", "Body", "Clothing", "Accessory", "Emotes"}]
  LOADK R2 K26 ["Animation"]
  SETTABLEKS R2 R1 K26 ["Animation"]
  LOADK R2 K27 ["Body"]
  SETTABLEKS R2 R1 K27 ["Body"]
  LOADK R2 K28 ["Clothing"]
  SETTABLEKS R2 R1 K28 ["Clothing"]
  LOADK R2 K29 ["Accessory"]
  SETTABLEKS R2 R1 K29 ["Accessory"]
  LOADK R2 K30 ["Emotes"]
  SETTABLEKS R2 R1 K30 ["Emotes"]
  SETTABLEKS R1 R0 K3 ["AssetCategories"]
  NEWTABLE R1 32 0
  GETIMPORT R4 K35 [Enum.AssetType.TShirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K39 ["GraphicTShirt"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K41 [Enum.AssetType.Hat]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K42 ["HatAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K44 [Enum.AssetType.Shirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K43 ["Shirt"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K46 [Enum.AssetType.Pants]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K45 ["Pants"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K48 [Enum.AssetType.Head]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K47 ["Head"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K50 [Enum.AssetType.Face]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K49 ["Face"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K52 [Enum.AssetType.Torso]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K51 ["Torso"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K54 [Enum.AssetType.RightArm]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K53 ["RightArm"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K56 [Enum.AssetType.LeftArm]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K55 ["LeftArm"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K58 [Enum.AssetType.LeftLeg]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K57 ["LeftLeg"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K60 [Enum.AssetType.RightLeg]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K59 ["RightLeg"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K62 [Enum.AssetType.HairAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K61 ["HairAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K64 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K63 ["FaceAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K66 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K65 ["NeckAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K68 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K69 ["ShouldersAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K71 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K70 ["FrontAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K73 [Enum.AssetType.BackAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K72 ["BackAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K75 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K74 ["WaistAccessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K77 [Enum.AssetType.ClimbAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K76 ["ClimbAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K79 [Enum.AssetType.FallAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K78 ["FallAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K81 [Enum.AssetType.IdleAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K80 ["IdleAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K83 [Enum.AssetType.JumpAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K82 ["JumpAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K85 [Enum.AssetType.RunAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K84 ["RunAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K87 [Enum.AssetType.SwimAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K86 ["SwimAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K89 [Enum.AssetType.WalkAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K88 ["WalkAnimation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K91 [Enum.AssetType.DynamicHead]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K47 ["Head"]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K4 ["AssetTypeIdStringToHumanoidDescriptionProp"]
  NEWTABLE R1 16 0
  LOADN R2 48
  SETTABLEKS R2 R1 K92 ["48"]
  LOADN R2 50
  SETTABLEKS R2 R1 K93 ["50"]
  LOADN R2 51
  SETTABLEKS R2 R1 K94 ["51"]
  LOADN R2 52
  SETTABLEKS R2 R1 K95 ["52"]
  LOADN R2 53
  SETTABLEKS R2 R1 K96 ["53"]
  LOADN R2 54
  SETTABLEKS R2 R1 K97 ["54"]
  LOADN R2 55
  SETTABLEKS R2 R1 K98 ["55"]
  LOADN R2 61
  SETTABLEKS R2 R1 K99 ["61"]
  LOADN R2 78
  SETTABLEKS R2 R1 K100 ["78"]
  SETTABLEKS R1 R0 K5 ["AnimationAssetTypes"]
  NEWTABLE R1 32 0
  GETIMPORT R4 K41 [Enum.AssetType.Hat]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K102 [Enum.AccessoryType.Hat]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K62 [Enum.AssetType.HairAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K104 [Enum.AccessoryType.Hair]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K64 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K105 [Enum.AccessoryType.Face]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K66 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K107 [Enum.AccessoryType.Neck]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K68 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K109 [Enum.AccessoryType.Shoulder]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K71 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K111 [Enum.AccessoryType.Front]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K73 [Enum.AssetType.BackAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K113 [Enum.AccessoryType.Back]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K75 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K115 [Enum.AccessoryType.Waist]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K117 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K118 [Enum.AccessoryType.TShirt]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K120 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K121 [Enum.AccessoryType.Shirt]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K123 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K124 [Enum.AccessoryType.Pants]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K126 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K128 [Enum.AccessoryType.Jacket]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K130 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K132 [Enum.AccessoryType.Sweater]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K134 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K136 [Enum.AccessoryType.Shorts]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K138 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K140 [Enum.AccessoryType.LeftShoe]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K142 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K144 [Enum.AccessoryType.RightShoe]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K146 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K148 [Enum.AccessoryType.DressSkirt]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K150 [Enum.AssetType.EyebrowAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K152 [Enum.AccessoryType.Eyebrow]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K154 [Enum.AssetType.EyelashAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K156 [Enum.AccessoryType.Eyelash]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K6 ["AssetTypeIdToAccessoryTypeEnum"]
  NEWTABLE R1 16 0
  GETIMPORT R4 K117 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K118 [Enum.AccessoryType.TShirt]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K120 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K121 [Enum.AccessoryType.Shirt]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K123 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K124 [Enum.AccessoryType.Pants]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K126 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K128 [Enum.AccessoryType.Jacket]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K130 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K132 [Enum.AccessoryType.Sweater]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K134 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K136 [Enum.AccessoryType.Shorts]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K138 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K140 [Enum.AccessoryType.LeftShoe]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K142 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K144 [Enum.AccessoryType.RightShoe]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K146 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K148 [Enum.AccessoryType.DressSkirt]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K62 [Enum.AssetType.HairAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K104 [Enum.AccessoryType.Hair]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K150 [Enum.AssetType.EyebrowAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K152 [Enum.AccessoryType.Eyebrow]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K154 [Enum.AssetType.EyelashAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETIMPORT R3 K156 [Enum.AccessoryType.Eyelash]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K7 ["LayeredAssetTypes"]
  DUPTABLE R1 K159 [{"Tops", "Bottoms"}]
  LOADK R2 K157 ["Tops"]
  SETTABLEKS R2 R1 K157 ["Tops"]
  LOADK R2 K158 ["Bottoms"]
  SETTABLEKS R2 R1 K158 ["Bottoms"]
  SETTABLEKS R1 R0 K8 ["AssetCategory"]
  NEWTABLE R1 64 0
  GETIMPORT R4 K35 [Enum.AssetType.TShirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K28 ["Clothing"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K41 [Enum.AssetType.Hat]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K62 [Enum.AssetType.HairAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K64 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K66 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K68 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K71 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K73 [Enum.AssetType.BackAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K75 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K44 [Enum.AssetType.Shirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K28 ["Clothing"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K46 [Enum.AssetType.Pants]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K28 ["Clothing"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K161 [Enum.AssetType.Gear]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K48 [Enum.AssetType.Head]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K50 [Enum.AssetType.Face]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K52 [Enum.AssetType.Torso]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K54 [Enum.AssetType.RightArm]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K56 [Enum.AssetType.LeftArm]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K58 [Enum.AssetType.LeftLeg]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K60 [Enum.AssetType.RightLeg]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K77 [Enum.AssetType.ClimbAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K79 [Enum.AssetType.FallAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K81 [Enum.AssetType.IdleAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K83 [Enum.AssetType.JumpAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K85 [Enum.AssetType.RunAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K87 [Enum.AssetType.SwimAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K89 [Enum.AssetType.WalkAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K163 [Enum.AssetType.EmoteAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K117 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K120 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K123 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K126 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K130 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K134 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K138 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K142 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K146 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K154 [Enum.AssetType.EyelashAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K150 [Enum.AssetType.EyebrowAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K29 ["Accessory"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K165 [Enum.AssetType.MoodAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K26 ["Animation"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K91 [Enum.AssetType.DynamicHead]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  GETTABLEKS R4 R0 K3 ["AssetCategories"]
  GETTABLEKS R3 R4 K27 ["Body"]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K166 ["AssetTypeIdToCategory"]
  NEWTABLE R1 8 0
  GETTABLEKS R3 R0 K3 ["AssetCategories"]
  GETTABLEKS R2 R3 K26 ["Animation"]
  LOADK R3 K167 ["Feature.Catalog.Label.Animation"]
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K3 ["AssetCategories"]
  GETTABLEKS R2 R3 K27 ["Body"]
  LOADK R3 K168 ["Feature.Catalog.Label.Body"]
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K3 ["AssetCategories"]
  GETTABLEKS R2 R3 K28 ["Clothing"]
  LOADK R3 K169 ["Feature.Avatar.Heading.Clothing"]
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K3 ["AssetCategories"]
  GETTABLEKS R2 R3 K29 ["Accessory"]
  LOADK R3 K170 ["Feature.Avatar.Label.Accessory"]
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K3 ["AssetCategories"]
  GETTABLEKS R2 R3 K30 ["Emotes"]
  LOADK R3 K171 ["Feature.Catalog.Label.Emotes"]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K172 ["AssetCategoriesLocalized"]
  NEWTABLE R1 64 0
  GETIMPORT R4 K35 [Enum.AssetType.TShirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K173 ["Feature.Avatar.Label.ClassicTShirts"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K41 [Enum.AssetType.Hat]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K174 ["Feature.Avatar.Label.Hat"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K62 [Enum.AssetType.HairAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K175 ["Feature.Avatar.Label.Hair"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K64 [Enum.AssetType.FaceAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K176 ["Feature.Avatar.Label.Face"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K66 [Enum.AssetType.NeckAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K177 ["Feature.Avatar.Label.Neck"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K68 [Enum.AssetType.ShoulderAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K178 ["Feature.Avatar.Label.Shoulder"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K71 [Enum.AssetType.FrontAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K179 ["Feature.Avatar.Label.Front"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K73 [Enum.AssetType.BackAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K180 ["Feature.Avatar.Label.Back"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K75 [Enum.AssetType.WaistAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K181 ["Feature.Avatar.Label.Waist"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K44 [Enum.AssetType.Shirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K182 ["Feature.Avatar.Label.ClassicShirts"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K46 [Enum.AssetType.Pants]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K183 ["Feature.Avatar.Label.ClassicPants"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K161 [Enum.AssetType.Gear]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K184 ["Feature.Avatar.Label.Gear"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K48 [Enum.AssetType.Head]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K185 ["Feature.Avatar.Label.Head"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K50 [Enum.AssetType.Face]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K176 ["Feature.Avatar.Label.Face"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K52 [Enum.AssetType.Torso]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K186 ["Feature.Avatar.Label.Torso"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K54 [Enum.AssetType.RightArm]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K187 ["Feature.Avatar.Label.RightArms"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K56 [Enum.AssetType.LeftArm]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K188 ["Feature.Avatar.Label.LeftArms"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K58 [Enum.AssetType.LeftLeg]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K189 ["Feature.Avatar.Label.LeftLegs"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K60 [Enum.AssetType.RightLeg]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K190 ["Feature.Avatar.Label.RightLegs"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K77 [Enum.AssetType.ClimbAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K191 ["Feature.Avatar.Label.Climb"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K79 [Enum.AssetType.FallAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K192 ["Feature.Avatar.Label.Fall"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K81 [Enum.AssetType.IdleAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K193 ["Feature.Avatar.Label.Idle"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K83 [Enum.AssetType.JumpAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K194 ["Feature.Avatar.Label.Jump"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K85 [Enum.AssetType.RunAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K195 ["Feature.Avatar.Label.Run"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K87 [Enum.AssetType.SwimAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K196 ["Feature.Avatar.Label.Swim"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K89 [Enum.AssetType.WalkAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K197 ["Feature.Avatar.Label.Walk"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K163 [Enum.AssetType.EmoteAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K198 ["Feature.Avatar.Label.Emote"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K117 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K199 ["Feature.Avatar.Label.TShirt"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K120 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K200 ["Feature.Avatar.Label.Shirt"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K123 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K201 ["Feature.Avatar.Label.Pants"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K126 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K202 ["Feature.Avatar.Label.Jacket"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K130 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K203 ["Feature.Avatar.Label.Sweater"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K134 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K204 ["Feature.Avatar.Label.Shorts"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K138 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K205 ["Feature.Avatar.Label.LeftShoe"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K142 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K206 ["Feature.Avatar.Label.RightShoe"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K146 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K207 ["Feature.Avatar.Label.DressesAndSkirts"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K154 [Enum.AssetType.EyelashAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K208 ["Feature.Catalog.Label.Eyelash"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K150 [Enum.AssetType.EyebrowAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K209 ["Feature.Catalog.Label.Eyebrow"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K165 [Enum.AssetType.MoodAnimation]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K210 ["Feature.Avatar.Label.Mood"]
  SETTABLE R3 R1 R2
  GETIMPORT R4 K91 [Enum.AssetType.DynamicHead]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADK R3 K211 ["Feature.Avatar.Label.DynamicHead"]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K212 ["AssetTypeIdToTypeLocalized"]
  LOADK R1 K100 ["78"]
  SETTABLEKS R1 R0 K213 ["MoodAnimationAssetTypeId"]
  LOADK R1 K214 ["79"]
  SETTABLEKS R1 R0 K215 ["DynamicHeadAssetTypeId"]
  LOADN R1 250
  SETTABLEKS R1 R0 K216 ["DetailsThumbnailFrameHeight"]
  LOADN R1 9
  SETTABLEKS R1 R0 K217 ["LimitedIconFrameSizeXOffset"]
  LOADN R1 4
  SETTABLEKS R1 R0 K218 ["LimitedIconFrameSizeYOffset"]
  NEWTABLE R1 4 0
  GETIMPORT R4 K150 [Enum.AssetType.EyebrowAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADB R3 1
  SETTABLE R3 R1 R2
  GETIMPORT R4 K154 [Enum.AssetType.EyelashAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADB R3 1
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K213 ["MoodAnimationAssetTypeId"]
  LOADB R3 1
  SETTABLE R3 R1 R2
  GETTABLEKS R2 R0 K215 ["DynamicHeadAssetTypeId"]
  LOADB R3 1
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K219 ["DynamicHeadAssetTypes"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K220 ["AccessoryTypeEnumToAssetTypeId"]
  GETIMPORT R1 K222 [pairs]
  GETTABLEKS R2 R0 K6 ["AssetTypeIdToAccessoryTypeEnum"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R0 K220 ["AccessoryTypeEnumToAssetTypeId"]
  SETTABLE R4 R6 R5
  FORGLOOP R1 2 [-4]
  NEWTABLE R1 2 0
  GETTABLEKS R3 R0 K8 ["AssetCategory"]
  GETTABLEKS R2 R3 K157 ["Tops"]
  NEWTABLE R3 0 3
  GETIMPORT R6 K120 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R5 R6 K36 ["Value"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K38 [tostring]
  CALL R4 1 1
  GETIMPORT R7 K117 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R6 R7 K36 ["Value"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K38 [tostring]
  CALL R5 1 1
  GETIMPORT R8 K130 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R7 R8 K36 ["Value"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K38 [tostring]
  CALL R6 1 1
  SETLIST R3 R4 3 [1]
  SETTABLE R3 R1 R2
  GETTABLEKS R3 R0 K8 ["AssetCategory"]
  GETTABLEKS R2 R3 K158 ["Bottoms"]
  NEWTABLE R3 0 3
  GETIMPORT R6 K123 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R5 R6 K36 ["Value"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K38 [tostring]
  CALL R4 1 1
  GETIMPORT R7 K134 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R6 R7 K36 ["Value"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K38 [tostring]
  CALL R5 1 1
  GETIMPORT R8 K146 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R7 R8 K36 ["Value"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K38 [tostring]
  CALL R6 1 1
  SETLIST R3 R4 3 [1]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K223 ["AssetCategoryToAssetType"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K224 ["AssetTypeToAssetCategory"]
  GETIMPORT R1 K222 [pairs]
  GETTABLEKS R2 R0 K223 ["AssetCategoryToAssetType"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETIMPORT R6 K226 [ipairs]
  MOVE R7 R5
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R0 K224 ["AssetTypeToAssetCategory"]
  SETTABLE R4 R11 R10
  FORGLOOP R6 2 [inext] [-4]
  FORGLOOP R1 2 [-11]
  NEWTABLE R1 16 0
  GETIMPORT R4 K46 [Enum.AssetType.Pants]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 0
  SETTABLE R3 R1 R2
  GETIMPORT R4 K44 [Enum.AssetType.Shirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 1
  SETTABLE R3 R1 R2
  GETIMPORT R4 K35 [Enum.AssetType.TShirt]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 2
  SETTABLE R3 R1 R2
  GETIMPORT R4 K138 [Enum.AssetType.LeftShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 3
  SETTABLE R3 R1 R2
  GETIMPORT R4 K142 [Enum.AssetType.RightShoeAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 3
  SETTABLE R3 R1 R2
  GETIMPORT R4 K123 [Enum.AssetType.PantsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 4
  SETTABLE R3 R1 R2
  GETIMPORT R4 K134 [Enum.AssetType.ShortsAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 5
  SETTABLE R3 R1 R2
  GETIMPORT R4 K146 [Enum.AssetType.DressSkirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 6
  SETTABLE R3 R1 R2
  GETIMPORT R4 K117 [Enum.AssetType.TShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 7
  SETTABLE R3 R1 R2
  GETIMPORT R4 K120 [Enum.AssetType.ShirtAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 8
  SETTABLE R3 R1 R2
  GETIMPORT R4 K130 [Enum.AssetType.SweaterAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 9
  SETTABLE R3 R1 R2
  GETIMPORT R4 K126 [Enum.AssetType.JacketAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 10
  SETTABLE R3 R1 R2
  GETIMPORT R4 K62 [Enum.AssetType.HairAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 11
  SETTABLE R3 R1 R2
  GETIMPORT R4 K150 [Enum.AssetType.EyebrowAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 3
  SETTABLE R3 R1 R2
  GETIMPORT R4 K154 [Enum.AssetType.EyelashAccessory]
  GETTABLEKS R3 R4 K36 ["Value"]
  FASTCALL1 TOSTRING R3 [+2]
  GETIMPORT R2 K38 [tostring]
  CALL R2 1 1
  LOADN R3 3
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K227 ["LayeredClothingOrder"]
  DUPTABLE R1 K229 [{"CollectibleItem"}]
  LOADK R2 K230 ["Collectible Item"]
  SETTABLEKS R2 R1 K228 ["CollectibleItem"]
  SETTABLEKS R1 R0 K231 ["ProductType"]
  DUPTABLE R1 K235 [{"Limited", "LimitedUnique", "Collectible"}]
  LOADK R2 K232 ["Limited"]
  SETTABLEKS R2 R1 K232 ["Limited"]
  LOADK R2 K233 ["LimitedUnique"]
  SETTABLEKS R2 R1 K233 ["LimitedUnique"]
  LOADK R2 K234 ["Collectible"]
  SETTABLEKS R2 R1 K234 ["Collectible"]
  SETTABLEKS R1 R0 K236 ["ItemRestrictions"]
  DUPTABLE R1 K238 [{"OnSale"}]
  LOADK R2 K237 ["OnSale"]
  SETTABLEKS R2 R1 K237 ["OnSale"]
  SETTABLEKS R1 R0 K239 ["SaleStatus"]
  DUPTABLE R1 K248 [{"Invalid", "ShopOnly", "MyExperiencesOnly", "ShopAndMyExperiences", "ExperiencesById", "ShopAndAllExperiences", "ExperiencesDevApiOnly", "ShopAndExperiencesById"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K240 ["Invalid"]
  LOADN R2 1
  SETTABLEKS R2 R1 K241 ["ShopOnly"]
  LOADN R2 2
  SETTABLEKS R2 R1 K242 ["MyExperiencesOnly"]
  LOADN R2 3
  SETTABLEKS R2 R1 K243 ["ShopAndMyExperiences"]
  LOADN R2 4
  SETTABLEKS R2 R1 K244 ["ExperiencesById"]
  LOADN R2 5
  SETTABLEKS R2 R1 K245 ["ShopAndAllExperiences"]
  LOADN R2 6
  SETTABLEKS R2 R1 K246 ["ExperiencesDevApiOnly"]
  LOADN R2 7
  SETTABLEKS R2 R1 K247 ["ShopAndExperiencesById"]
  SETTABLEKS R1 R0 K249 ["SaleLocationType"]
  DUPTABLE R1 K253 [{"RequestSucceeded", "RequestRejected", "RequestFailed"}]
  LOADK R2 K250 ["RequestSucceeded"]
  SETTABLEKS R2 R1 K250 ["RequestSucceeded"]
  LOADK R2 K251 ["RequestRejected"]
  SETTABLEKS R2 R1 K251 ["RequestRejected"]
  LOADK R2 K252 ["RequestFailed"]
  SETTABLEKS R2 R1 K252 ["RequestFailed"]
  SETTABLEKS R1 R0 K254 ["CounterSuffix"]
  DUPTABLE R1 K286 [{"CreateFavoriteForAsset", "CreateFavoriteForBundle", "DeleteFavoriteForAsset", "DeleteFavoriteForBundle", "GetAssetBundles", "GetAssetFavoriteCount", "GetBundleFavoriteCount", "GetCharacterModelFromUserId", "GetCollectibleResellableInstances", "GetCollectibleResellableInstancesRequestSucceededWithoutResult", "GetEconomyProductInfo", "GetExperienceInfo", "GetExperiencePlayability", "GetFavoriteForAsset", "GetFavoriteForBundle", "GetItemDetails", "GetItemDetailsRespondedWithUnknownItemType", "GetPlayerName", "GetProductInfo", "GetVersionInfo", "PromptLimitedCollectiblesPurchase", "PromptBundlePurchase", "PromptUnlimitedCollectiblePurchase", "PromptRobloxPurchase", "PromptPurchaseUnknownItemType", "PurchaseSucceededBundle", "PurchaseSucceededAsset", "PurchaseSucceededOther", "PurchaseFinished", "ItemDetailPageOpened", "TryOnButtonClicked"}]
  LOADK R2 K255 ["CreateFavoriteForAsset"]
  SETTABLEKS R2 R1 K255 ["CreateFavoriteForAsset"]
  LOADK R2 K0 ["NotificationKeys"]
  SETTABLEKS R2 R1 K256 ["CreateFavoriteForBundle"]
  LOADK R2 K1 ["ItemType"]
  SETTABLEKS R2 R1 K257 ["DeleteFavoriteForAsset"]
  LOADK R2 K2 ["View"]
  SETTABLEKS R2 R1 K258 ["DeleteFavoriteForBundle"]
  LOADK R2 K3 ["AssetCategories"]
  SETTABLEKS R2 R1 K259 ["GetAssetBundles"]
  LOADK R2 K4 ["AssetTypeIdStringToHumanoidDescriptionProp"]
  SETTABLEKS R2 R1 K260 ["GetAssetFavoriteCount"]
  LOADK R2 K5 ["AnimationAssetTypes"]
  SETTABLEKS R2 R1 K261 ["GetBundleFavoriteCount"]
  LOADK R2 K6 ["AssetTypeIdToAccessoryTypeEnum"]
  SETTABLEKS R2 R1 K262 ["GetCharacterModelFromUserId"]
  LOADK R2 K7 ["LayeredAssetTypes"]
  SETTABLEKS R2 R1 K263 ["GetCollectibleResellableInstances"]
  LOADK R2 K8 ["AssetCategory"]
  SETTABLEKS R2 R1 K264 ["GetCollectibleResellableInstancesRequestSucceededWithoutResult"]
  LOADK R2 K31 [{"Animation", "Body", "Clothing", "Accessory", "Emotes"}]
  SETTABLEKS R2 R1 K265 ["GetEconomyProductInfo"]
  LOADK R2 K10 ["MultipleBundleNoticeKey"]
  SETTABLEKS R2 R1 K266 ["GetExperienceInfo"]
  LOADK R2 K11 ["SingleBundleNoticeKey"]
  SETTABLEKS R2 R1 K267 ["GetExperiencePlayability"]
  LOADK R2 K12 ["LimitedItemNoticeKey"]
  SETTABLEKS R2 R1 K268 ["GetFavoriteForAsset"]
  LOADK R2 K13 ["LayeredClothingOnR6Key"]
  SETTABLEKS R2 R1 K269 ["GetFavoriteForBundle"]
  LOADK R2 K14 [{"MultipleBundleNoticeKey", "SingleBundleNoticeKey", "LimitedItemNoticeKey", "LayeredClothingOnR6Key"}]
  SETTABLEKS R2 R1 K270 ["GetItemDetails"]
  LOADK R2 K15 ["InGame.InspectMenu.Description.MultipleBundlesNotice"]
  SETTABLEKS R2 R1 K271 ["GetItemDetailsRespondedWithUnknownItemType"]
  LOADK R2 K16 ["InGame.InspectMenu.Description.SingleBundleNotice"]
  SETTABLEKS R2 R1 K272 ["GetPlayerName"]
  LOADK R2 K32 ["Enum"]
  SETTABLEKS R2 R1 K273 ["GetProductInfo"]
  LOADK R2 K18 ["InGame.InspectMenu.Description.LayeredClothingR6"]
  SETTABLEKS R2 R1 K274 ["GetVersionInfo"]
  LOADK R2 K19 ["Asset"]
  SETTABLEKS R2 R1 K275 ["PromptLimitedCollectiblesPurchase"]
  LOADK R2 K20 ["Bundle"]
  SETTABLEKS R2 R1 K276 ["PromptBundlePurchase"]
  LOADK R2 K21 [{"Asset", "Bundle"}]
  SETTABLEKS R2 R1 K277 ["PromptUnlimitedCollectiblePurchase"]
  LOADK R2 K22 ["Compact"]
  SETTABLEKS R2 R1 K278 ["PromptRobloxPurchase"]
  LOADK R2 K23 ["Wide"]
  SETTABLEKS R2 R1 K279 ["PromptPurchaseUnknownItemType"]
  LOADK R2 K24 ["WideLandscape"]
  SETTABLEKS R2 R1 K280 ["PurchaseSucceededBundle"]
  LOADK R2 K25 [{"Compact", "Wide", "WideLandscape"}]
  SETTABLEKS R2 R1 K281 ["PurchaseSucceededAsset"]
  LOADK R2 K26 ["Animation"]
  SETTABLEKS R2 R1 K282 ["PurchaseSucceededOther"]
  LOADK R2 K27 ["Body"]
  SETTABLEKS R2 R1 K283 ["PurchaseFinished"]
  LOADK R2 K28 ["Clothing"]
  SETTABLEKS R2 R1 K284 ["ItemDetailPageOpened"]
  LOADK R2 K29 ["Accessory"]
  SETTABLEKS R2 R1 K285 ["TryOnButtonClicked"]
  SETTABLEKS R1 R0 K289 ["Counters"]
  RETURN R0 1
