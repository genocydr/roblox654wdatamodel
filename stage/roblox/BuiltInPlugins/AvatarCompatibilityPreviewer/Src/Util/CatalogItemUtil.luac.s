PROTO_0:
  LOADNIL R0
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [error]
  LOADK R1 K2 ["Attempting to wear an instance from something that has no custom instance implementation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K2 [Enum.AssetType]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["AssetType"]
  GETTABLE R0 R1 R2
  RETURN R0 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["Archivable"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R4 K1 ["Accessory"]
  NAMECALL R2 R0 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R5 K1 ["Accessory"]
  NAMECALL R3 R0 K2 ["IsA"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["AccessoryType"]
  GETIMPORT R3 K9 [Enum.AccessoryType.Unknown]
  JUMPIFEQ R2 R3 [+11]
  GETTABLEKS R2 R0 K6 ["AccessoryType"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  GETTABLE R3 R4 R1
  JUMPIFEQ R2 R3 [+3]
  LOADNIL R2
  RETURN R2 1
  LOADK R4 K11 ["Handle"]
  NAMECALL R2 R0 K12 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+4]
  GETTABLEKS R3 R2 K0 ["Archivable"]
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K13 ["Dictionary"]
  GETTABLEKS R3 R4 K14 ["join"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Accessory"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K15 ["Clothing"]
  CALL R3 2 3
  FORGPREP R3
  GETIMPORT R8 K17 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE VAL R7
  CALL R8 1 2
  JUMPIFNOT R8 [+27]
  JUMPIFNOTEQ R9 R1 [+26]
  GETTABLEKS R10 R7 K18 ["Attachments"]
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R17 R14 K19 ["Name"]
  NAMECALL R15 R2 K12 ["FindFirstChild"]
  CALL R15 2 1
  JUMPIFNOT R15 [+12]
  NAMECALL R15 R0 K20 ["Clone"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K11 ["Handle"]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K23 [Vector3.new]
  CALL R17 0 1
  SETTABLEKS R17 R16 K24 ["Position"]
  RETURN R15 1
  FORGLOOP R10 2 [-19]
  FORGLOOP R3 2 [-34]
  LOADNIL R3
  RETURN R3 1

PROTO_4:
  NAMECALL R3 R0 K0 ["Clone"]
  CALL R3 1 1
  LOADK R6 K1 ["Handle"]
  NAMECALL R4 R3 K2 ["FindFirstChild"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R4 R3 K1 ["Handle"]
  LOADK R6 K3 ["WrapLayer"]
  NAMECALL R4 R4 K4 ["FindFirstChildWhichIsA"]
  CALL R4 2 1
  JUMPIFEQKNIL R4 [+3]
  SETTABLEKS R2 R4 K5 ["Order"]
  GETTABLEKS R5 R1 K6 ["Humanoid"]
  MOVE R7 R3
  NAMECALL R5 R5 K7 ["AddAccessory"]
  CALL R5 2 0
  NEWTABLE R5 0 1
  MOVE R6 R3
  SETLIST R5 R6 1 [1]
  RETURN R5 1

PROTO_5:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["Order"]
  ADDK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["Order"]
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["Order"]
  SUBK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["Order"]
  RETURN R0 0

PROTO_6:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R9 K0 ["WrapLayer"]
  LOADB R10 1
  NAMECALL R7 R6 K1 ["FindFirstChildWhichIsA"]
  CALL R7 3 1
  JUMPIFEQKNIL R7 [+8]
  SETTABLEKS R1 R7 K2 ["Order"]
  GETIMPORT R8 K5 [task.defer]
  NEWCLOSURE R9 P0
  CAPTURE VAL R7
  CALL R8 1 0
  FORGLOOP R2 2 [-15]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["id"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["allItems"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+10]
  GETIMPORT R2 K2 [error]
  LOADK R4 K3 ["Couldn't getBuiltinItemDataFromId: %*"]
  MOVE R6 R0
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  RETURN R1 1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["accessories"]
  GETUPVAL R3 0
  SETTABLE R0 R2 R3
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  RETURN R1 1

PROTO_11:
  DUPTABLE R3 K9 [{"Key", "Items", "PreviewComponent", "PublishAssetType", "WearBuiltin", "WearInstance", "CreateCustomInstanceFromSelection", "GetBuiltinItemData", "UpdateInstances"}]
  SETTABLEKS R0 R3 K0 ["Key"]
  SETTABLEKS R2 R3 K1 ["Items"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K2 ["PreviewComponent"]
  SETTABLEKS R1 R3 K3 ["PublishAssetType"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K4 ["WearBuiltin"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K5 ["WearInstance"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K6 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K7 ["GetBuiltinItemData"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K8 ["UpdateInstances"]
  RETURN R3 1

PROTO_12:
  GETTABLEKS R3 R1 K0 ["clothing"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K1 ["AssetType"]
  GETUPVAL R9 0
  JUMPIFNOTEQ R8 R9 [+11]
  GETTABLEKS R8 R1 K0 ["clothing"]
  DUPTABLE R9 K3 [{"AssetId", "AssetType"}]
  SETTABLEKS R0 R9 K2 ["AssetId"]
  GETUPVAL R10 0
  SETTABLEKS R10 R9 K1 ["AssetType"]
  SETTABLE R9 R8 R6
  RETURN R0 0
  FORGLOOP R3 2 [-16]
  GETTABLEKS R4 R1 K0 ["clothing"]
  DUPTABLE R5 K5 [{"AssetId", "AssetType", "Order"}]
  SETTABLEKS R0 R5 K2 ["AssetId"]
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K1 ["AssetType"]
  SETTABLEKS R2 R5 K4 ["Order"]
  FASTCALL2 TABLE_INSERT R4 R5 [+3]
  GETIMPORT R3 K8 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 1
  RETURN R1 1

PROTO_14:
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  DUPTABLE R5 K10 [{"Key", "Items", "PreviewComponent", "PublishAssetType", "WearBuiltin", "CreateCustomInstanceFromSelection", "WearInstance", "UpdateInstances", "GetBuiltinItemData", "PreferredLayer"}]
  SETTABLEKS R0 R5 K0 ["Key"]
  SETTABLEKS R2 R5 K1 ["Items"]
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K2 ["PreviewComponent"]
  SETTABLEKS R1 R5 K3 ["PublishAssetType"]
  SETTABLEKS R4 R5 K4 ["WearBuiltin"]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K5 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K6 ["WearInstance"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K7 ["UpdateInstances"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K8 ["GetBuiltinItemData"]
  SETTABLEKS R3 R5 K9 ["PreferredLayer"]
  RETURN R5 1

PROTO_15:
  GETTABLEKS R2 R1 K0 ["patches"]
  GETUPVAL R3 0
  SETTABLE R0 R2 R3
  RETURN R0 0

PROTO_16:
  LOADNIL R0
  RETURN R0 1

PROTO_17:
  DUPTABLE R4 K7 [{"Key", "PreviewComponent", "Items", "WearBuiltin", "CreateCustomInstanceFromSelection", "GetBuiltinItemData", "WearInstance"}]
  SETTABLEKS R0 R4 K0 ["Key"]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K1 ["PreviewComponent"]
  SETTABLEKS R2 R4 K2 ["Items"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K3 ["WearBuiltin"]
  GETTABLEKS R5 R3 K4 ["CreateCustomInstanceFromSelection"]
  SETTABLEKS R5 R4 K4 ["CreateCustomInstanceFromSelection"]
  DUPCLOSURE R5 K8 [PROTO_16]
  SETTABLEKS R5 R4 K5 ["GetBuiltinItemData"]
  GETTABLEKS R5 R3 K6 ["WearInstance"]
  SETTABLEKS R5 R4 K6 ["WearInstance"]
  RETURN R4 1

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBodyPalette"]
  MOVE R2 R0
  GETIMPORT R4 K3 [Enum.AssetType]
  GETTABLE R3 R4 R0
  GETUPVAL R5 1
  GETTABLE R4 R5 R0
  DUPTABLE R5 K6 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K4 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K5 ["WearInstance"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_19:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETTABLE R12 R1 R10
  JUMPIFNOTEQKNIL R12 [+8]
  NEWTABLE R12 0 1
  MOVE R13 R11
  SETLIST R12 R13 1 [1]
  SETTABLE R12 R1 R10
  JUMP [+7]
  GETTABLE R13 R1 R10
  FASTCALL2 TABLE_INSERT R13 R11 [+4]
  MOVE R14 R11
  GETIMPORT R12 K2 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-18]
  FORGLOOP R2 2 [-24]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWTABLE R3 0 5
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createBodyPalette"]
  LOADK R5 K4 ["Torso"]
  GETIMPORT R7 K7 [Enum.AssetType]
  GETTABLEKS R6 R7 K4 ["Torso"]
  GETTABLEKS R7 R1 K4 ["Torso"]
  DUPTABLE R8 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
  GETUPVAL R9 1
  SETTABLEKS R9 R8 K8 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R9 2
  SETTABLEKS R9 R8 K9 ["WearInstance"]
  CALL R4 4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createBodyPalette"]
  LOADK R6 K11 ["LeftArm"]
  GETIMPORT R8 K7 [Enum.AssetType]
  GETTABLEKS R7 R8 K11 ["LeftArm"]
  GETTABLEKS R8 R1 K11 ["LeftArm"]
  DUPTABLE R9 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
  GETUPVAL R10 1
  SETTABLEKS R10 R9 K8 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R10 2
  SETTABLEKS R10 R9 K9 ["WearInstance"]
  CALL R5 4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createBodyPalette"]
  LOADK R7 K12 ["RightArm"]
  GETIMPORT R9 K7 [Enum.AssetType]
  GETTABLEKS R8 R9 K12 ["RightArm"]
  GETTABLEKS R9 R1 K12 ["RightArm"]
  DUPTABLE R10 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
  GETUPVAL R11 1
  SETTABLEKS R11 R10 K8 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R11 2
  SETTABLEKS R11 R10 K9 ["WearInstance"]
  CALL R6 4 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createBodyPalette"]
  LOADK R8 K13 ["LeftLeg"]
  GETIMPORT R10 K7 [Enum.AssetType]
  GETTABLEKS R9 R10 K13 ["LeftLeg"]
  GETTABLEKS R10 R1 K13 ["LeftLeg"]
  DUPTABLE R11 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
  GETUPVAL R12 1
  SETTABLEKS R12 R11 K8 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R12 2
  SETTABLEKS R12 R11 K9 ["WearInstance"]
  CALL R7 4 1
  MOVE R8 R2
  LOADK R9 K14 ["RightLeg"]
  CALL R8 1 -1
  SETLIST R3 R4 -1 [1]
  RETURN R3 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["Name"]
  JUMPIFNOTEQKS R1 K1 ["Head"] [+6]
  LOADK R3 K2 ["MeshPart"]
  NAMECALL R1 R0 K3 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  NAMECALL R1 R0 K4 ["Clone"]
  CALL R1 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K7 [Vector3.new]
  CALL R2 0 1
  SETTABLEKS R2 R1 K8 ["Position"]
  RETURN R1 1

PROTO_21:
  NAMECALL R2 R0 K0 ["Clone"]
  CALL R2 1 1
  LOADK R3 K1 ["Head"]
  SETTABLEKS R3 R2 K2 ["Name"]
  GETTABLEKS R3 R1 K3 ["Humanoid"]
  GETIMPORT R5 K6 [Enum.BodyPartR15.Head]
  MOVE R6 R2
  NAMECALL R3 R3 K7 ["ReplaceBodyPartR15"]
  CALL R3 3 0
  NEWTABLE R3 0 0
  RETURN R3 1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBodyPalette"]
  LOADK R2 K1 ["HeadBodyPart"]
  GETIMPORT R3 K5 [Enum.AssetType.Head]
  MOVE R4 R0
  DUPTABLE R5 K8 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
  DUPCLOSURE R6 K9 [PROTO_20]
  SETTABLEKS R6 R5 K6 ["CreateCustomInstanceFromSelection"]
  DUPCLOSURE R6 K10 [PROTO_21]
  SETTABLEKS R6 R5 K7 ["WearInstance"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_23:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"AnimationId", "AnimateTargetAsset", "Style", "Transparency"}]
  GETTABLEKS R4 R0 K6 ["Item"]
  SETTABLEKS R4 R3 K1 ["AnimationId"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["BODY_PREVIEW_PATH"]
  SETTABLEKS R4 R3 K2 ["AnimateTargetAsset"]
  LOADK R4 K8 ["BodyPreview"]
  SETTABLEKS R4 R3 K3 ["Style"]
  GETTABLEKS R4 R0 K4 ["Transparency"]
  SETTABLEKS R4 R3 K4 ["Transparency"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_24:
  SETTABLEKS R0 R1 K0 ["animation"]
  RETURN R0 0

PROTO_25:
  LOADNIL R0
  RETURN R0 1

PROTO_26:
  DUPTABLE R2 K8 [{"Key", "OverrideEquipKey", "Items", "PreviewComponent", "WearBuiltin", "CreateCustomInstanceFromSelection", "GetBuiltinItemData", "WearInstance"}]
  SETTABLEKS R0 R2 K0 ["Key"]
  LOADK R3 K9 ["animations"]
  SETTABLEKS R3 R2 K1 ["OverrideEquipKey"]
  SETTABLEKS R1 R2 K2 ["Items"]
  DUPCLOSURE R3 K10 [PROTO_23]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K3 ["PreviewComponent"]
  DUPCLOSURE R3 K11 [PROTO_24]
  SETTABLEKS R3 R2 K4 ["WearBuiltin"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K5 ["CreateCustomInstanceFromSelection"]
  DUPCLOSURE R3 K12 [PROTO_25]
  SETTABLEKS R3 R2 K6 ["GetBuiltinItemData"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K7 ["WearInstance"]
  RETURN R2 1

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"Item", "Transparency"}]
  GETTABLEKS R5 R0 K1 ["Item"]
  GETTABLEKS R4 R5 K4 ["right"]
  SETTABLEKS R4 R3 K1 ["Item"]
  GETTABLEKS R4 R0 K2 ["Transparency"]
  SETTABLEKS R4 R3 K2 ["Transparency"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_28:
  GETTABLEKS R4 R1 K0 ["clothing"]
  DUPTABLE R5 K4 [{"AssetId", "AssetType", "Order"}]
  GETTABLEKS R6 R0 K5 ["left"]
  SETTABLEKS R6 R5 K1 ["AssetId"]
  GETIMPORT R6 K8 [Enum.AssetType.LeftShoeAccessory]
  SETTABLEKS R6 R5 K2 ["AssetType"]
  SETTABLEKS R2 R5 K3 ["Order"]
  FASTCALL2 TABLE_INSERT R4 R5 [+3]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R1 K0 ["clothing"]
  DUPTABLE R5 K4 [{"AssetId", "AssetType", "Order"}]
  GETTABLEKS R6 R0 K12 ["right"]
  SETTABLEKS R6 R5 K1 ["AssetId"]
  GETIMPORT R6 K14 [Enum.AssetType.RightShoeAccessory]
  SETTABLEKS R6 R5 K2 ["AssetType"]
  SETTABLEKS R2 R5 K3 ["Order"]
  FASTCALL2 TABLE_INSERT R4 R5 [+3]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_29:
  LOADK R3 K0 ["Folder"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+89]
  NAMECALL R1 R0 K2 ["GetChildren"]
  CALL R1 1 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K3 [2] [+35]
  LOADNIL R2
  LOADNIL R3
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R9 R2
  JUMPIF R9 [+5]
  GETUPVAL R9 0
  MOVE R10 R8
  GETIMPORT R11 K7 [Enum.AssetType.LeftShoeAccessory]
  CALL R9 2 1
  MOVE R2 R9
  MOVE R9 R3
  JUMPIF R9 [+5]
  GETUPVAL R9 0
  MOVE R10 R8
  GETIMPORT R11 K9 [Enum.AssetType.RightShoeAccessory]
  CALL R9 2 1
  MOVE R3 R9
  FORGLOOP R4 2 [-17]
  JUMPIFEQKNIL R2 [+7]
  JUMPIFEQKNIL R3 [+5]
  NAMECALL R4 R0 K10 ["Clone"]
  CALL R4 1 1
  RETURN R4 1
  LOADK R4 K11 ["InvalidPair"]
  RETURN R4 1
  LENGTH R2 R1
  LOADN R3 2
  JUMPIFNOTLT R3 R2 [+29]
  LENGTH R2 R1
  LOADN R3 10
  JUMPIFNOTLT R2 R3 [+25]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 0
  MOVE R8 R6
  GETIMPORT R9 K7 [Enum.AssetType.LeftShoeAccessory]
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+10]
  GETUPVAL R7 0
  MOVE R8 R6
  GETIMPORT R9 K9 [Enum.AssetType.RightShoeAccessory]
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+3]
  LOADNIL R7
  RETURN R7 1
  FORGLOOP R2 2 [-17]
  LOADK R2 K12 ["NeedTwoShoes"]
  RETURN R2 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K13 [1] [+13]
  GETUPVAL R2 0
  GETTABLEN R3 R1 1
  GETIMPORT R4 K7 [Enum.AssetType.LeftShoeAccessory]
  CALL R2 2 1
  JUMPIF R2 [+5]
  GETUPVAL R2 0
  GETTABLEN R3 R1 1
  GETIMPORT R4 K9 [Enum.AssetType.RightShoeAccessory]
  CALL R2 2 1
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R1 0
  MOVE R2 R0
  GETIMPORT R3 K7 [Enum.AssetType.LeftShoeAccessory]
  CALL R1 2 1
  JUMPIF R1 [+5]
  GETUPVAL R1 0
  MOVE R2 R0
  GETIMPORT R3 K9 [Enum.AssetType.RightShoeAccessory]
  CALL R1 2 1
  RETURN R1 1

PROTO_30:
  LOADK R5 K0 ["Folder"]
  NAMECALL R3 R0 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+26]
  NEWTABLE R3 0 0
  NAMECALL R4 R0 K2 ["GetChildren"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K3 ["Accessory"]
  NAMECALL R9 R8 K1 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+12]
  GETUPVAL R12 0
  MOVE R13 R8
  MOVE R14 R1
  MOVE R15 R2
  CALL R12 3 1
  GETTABLEN R11 R12 1
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K6 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-18]
  RETURN R3 1
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  RETURN R3 1

PROTO_31:
  GETTABLEKS R2 R0 K0 ["left"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["allItems"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+10]
  GETIMPORT R4 K3 [error]
  LOADK R6 K4 ["Couldn't getBuiltinItemDataFromId: %*"]
  MOVE R8 R2
  NAMECALL R6 R6 K5 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K8 [assert]
  CALL R4 2 0
  MOVE R1 R3
  RETURN R1 1

PROTO_32:
  GETTABLEKS R1 R0 K0 ["left"]
  RETURN R1 1

PROTO_33:
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K0 ["left"]
  JUMPIFNOTEQ R6 R0 [+2]
  RETURN R5 1
  FORGLOOP R1 2 [-6]
  GETIMPORT R1 K2 [error]
  LOADK R3 K3 ["Invalid pair of shoes for %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_34:
  DUPTABLE R1 K10 [{"Key", "Items", "PreviewComponent", "WearBuiltin", "CreateCustomInstanceFromSelection", "WearInstance", "UpdateInstances", "GetBuiltinItemData", "Serializer", "PreferredLayer"}]
  LOADK R2 K11 ["Shoes"]
  SETTABLEKS R2 R1 K0 ["Key"]
  SETTABLEKS R0 R1 K1 ["Items"]
  DUPCLOSURE R2 K12 [PROTO_27]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K2 ["PreviewComponent"]
  DUPCLOSURE R2 K13 [PROTO_28]
  SETTABLEKS R2 R1 K3 ["WearBuiltin"]
  DUPCLOSURE R2 K14 [PROTO_29]
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K4 ["CreateCustomInstanceFromSelection"]
  DUPCLOSURE R2 K15 [PROTO_30]
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K5 ["WearInstance"]
  GETUPVAL R2 4
  SETTABLEKS R2 R1 K6 ["UpdateInstances"]
  DUPCLOSURE R2 K16 [PROTO_31]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K7 ["GetBuiltinItemData"]
  DUPTABLE R2 K19 [{"serialize", "deserialize"}]
  DUPCLOSURE R3 K20 [PROTO_32]
  SETTABLEKS R3 R2 K17 ["serialize"]
  NEWCLOSURE R3 P6
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K18 ["deserialize"]
  SETTABLEKS R2 R1 K8 ["Serializer"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K21 ["PREFERRED_LAYERS"]
  GETTABLEKS R2 R3 K11 ["Shoes"]
  SETTABLEKS R2 R1 K9 ["PreferredLayer"]
  RETURN R1 1

PROTO_35:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"AnimationId", "AnimateTargetAsset", "Style", "Transparency"}]
  GETTABLEKS R4 R0 K6 ["Item"]
  SETTABLEKS R4 R3 K1 ["AnimationId"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["HEAD_PREVIEW_PATH"]
  SETTABLEKS R4 R3 K2 ["AnimateTargetAsset"]
  LOADK R4 K8 ["FacePreview"]
  SETTABLEKS R4 R3 K3 ["Style"]
  GETTABLEKS R4 R0 K4 ["Transparency"]
  SETTABLEKS R4 R3 K4 ["Transparency"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_36:
  SETTABLEKS R0 R1 K0 ["emotion"]
  RETURN R0 0

PROTO_37:
  LOADNIL R0
  RETURN R0 1

PROTO_38:
  DUPTABLE R1 K7 [{"Key", "Items", "PreviewComponent", "WearBuiltin", "GetBuiltinItemData", "CreateCustomInstanceFromSelection", "WearInstance"}]
  LOADK R2 K8 ["Emotions"]
  SETTABLEKS R2 R1 K0 ["Key"]
  SETTABLEKS R0 R1 K1 ["Items"]
  DUPCLOSURE R2 K9 [PROTO_35]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["PreviewComponent"]
  DUPCLOSURE R2 K10 [PROTO_36]
  SETTABLEKS R2 R1 K3 ["WearBuiltin"]
  DUPCLOSURE R2 K11 [PROTO_37]
  SETTABLEKS R2 R1 K4 ["GetBuiltinItemData"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K5 ["CreateCustomInstanceFromSelection"]
  GETUPVAL R2 4
  SETTABLEKS R2 R1 K6 ["WearInstance"]
  RETURN R1 1

PROTO_39:
  SETTABLEKS R0 R1 K0 ["skinTone"]
  RETURN R0 0

PROTO_40:
  LOADNIL R0
  RETURN R0 1

PROTO_41:
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K0 ["R"]
  GETTABLEKS R3 R0 K1 ["G"]
  GETTABLEKS R4 R0 K2 ["B"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1

PROTO_42:
  GETIMPORT R1 K2 [Color3.new]
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  CALL R1 3 -1
  RETURN R1 -1

PROTO_43:
  DUPTABLE R1 K9 [{"Key", "Items", "PreviewAspectRatio", "PreviewComponent", "CreateCustomInstanceFromSelection", "WearBuiltin", "WearInstance", "GetBuiltinItemData", "Serializer"}]
  LOADK R2 K10 ["Skin"]
  SETTABLEKS R2 R1 K0 ["Key"]
  SETTABLEKS R0 R1 K1 ["Items"]
  LOADN R2 2
  SETTABLEKS R2 R1 K2 ["PreviewAspectRatio"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K3 ["PreviewComponent"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K4 ["CreateCustomInstanceFromSelection"]
  DUPCLOSURE R2 K11 [PROTO_39]
  SETTABLEKS R2 R1 K5 ["WearBuiltin"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K6 ["WearInstance"]
  DUPCLOSURE R2 K12 [PROTO_40]
  SETTABLEKS R2 R1 K7 ["GetBuiltinItemData"]
  DUPTABLE R2 K15 [{"serialize", "deserialize"}]
  DUPCLOSURE R3 K16 [PROTO_41]
  SETTABLEKS R3 R2 K13 ["serialize"]
  DUPCLOSURE R3 K17 [PROTO_42]
  SETTABLEKS R3 R2 K14 ["deserialize"]
  SETTABLEKS R2 R1 K8 ["Serializer"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["AnimationPreview"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Resources"]
  GETTABLEKS R7 R8 K15 ["BuiltinItems"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K12 ["Components"]
  GETTABLEKS R8 R9 K16 ["CatalogPreviewBasic"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K12 ["Components"]
  GETTABLEKS R10 R11 K19 ["SkinPreview"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K17 ["Util"]
  GETTABLEKS R11 R12 K20 ["find"]
  CALL R10 1 1
  GETTABLEKS R13 R1 K17 ["Util"]
  GETTABLEKS R12 R13 K21 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R11 R12 K22 ["AssetTypeAttachmentInfo"]
  NEWTABLE R12 16 0
  DUPCLOSURE R13 K23 [PROTO_0]
  DUPCLOSURE R14 K24 [PROTO_1]
  DUPCLOSURE R15 K25 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R11
  DUPCLOSURE R16 K26 [PROTO_4]
  DUPCLOSURE R17 K27 [PROTO_6]
  DUPCLOSURE R18 K28 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPCLOSURE R19 K29 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R17
  SETTABLEKS R19 R12 K30 ["basicAccessoryPalette"]
  DUPCLOSURE R19 K31 [PROTO_14]
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R19 R12 K32 ["layeredClothingPalette"]
  DUPCLOSURE R19 K33 [PROTO_17]
  CAPTURE VAL R7
  SETTABLEKS R19 R12 K34 ["createBodyPalette"]
  DUPCLOSURE R19 K35 [PROTO_19]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R19 R12 K36 ["createBodyCategory"]
  DUPCLOSURE R19 K37 [PROTO_22]
  CAPTURE VAL R12
  SETTABLEKS R19 R12 K38 ["createHeadPalette"]
  DUPCLOSURE R19 K39 [PROTO_26]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R19 R12 K40 ["createBodyAnimationPalette"]
  DUPCLOSURE R19 K41 [PROTO_34]
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R19 R12 K42 ["shoesPalette"]
  DUPCLOSURE R19 K43 [PROTO_38]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R19 R12 K44 ["emotionPalette"]
  DUPCLOSURE R19 K45 [PROTO_43]
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R19 R12 K46 ["skinPalette"]
  RETURN R12 1