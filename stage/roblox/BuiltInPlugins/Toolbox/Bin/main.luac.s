PROTO_0:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["Theme"]
  RETURN R0 1

PROTO_1:
  GETIMPORT R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
  NAMECALL R1 R0 K4 ["GetColor"]
  CALL R1 2 1
  GETTABLEKS R6 R1 K6 ["r"]
  GETTABLEKS R7 R1 K7 ["g"]
  ADD R5 R6 R7
  GETTABLEKS R6 R1 K8 ["b"]
  ADD R4 R5 R6
  DIVK R3 R4 K5 [3]
  LOADK R4 K9 [0.5]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K4 [{"getTheme", "isDarkerTheme", "themeChanged"}]
  DUPCLOSURE R2 K5 [PROTO_0]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  DUPCLOSURE R2 K6 [PROTO_1]
  SETTABLEKS R2 R1 K2 ["isDarkerTheme"]
  GETIMPORT R4 K8 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K9 ["Studio"]
  GETTABLEKS R2 R3 K10 ["ThemeChanged"]
  SETTABLEKS R2 R1 K3 ["themeChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["Theme"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K3 [{"getTheme", "themeChanged"}]
  DUPCLOSURE R2 K4 [PROTO_3]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  GETIMPORT R4 K6 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K7 ["Studio"]
  GETTABLEKS R2 R3 K8 ["ThemeChanged"]
  SETTABLEKS R2 R1 K2 ["themeChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R3 0
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["Toolbox"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  MOVE R1 R0
  JUMPIFNOT R1 [+4]
  LOADK R3 K2 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K3 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+29]
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U1
  GETUPVAL R1 1
  LOADK R3 K0 ["Toolbox"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  MOVE R2 R1
  JUMPIFNOT R2 [+4]
  LOADK R4 K2 ["tabRefresh"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K3 ["Fire"]
  CALL R3 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["unmount"]
  GETUPVAL R2 0
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 3
  LOADN R3 0
  NAMECALL R1 R1 K5 ["AnimationIdSelected"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R6 0
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  NEWTABLE R8 0 0
  NEWTABLE R9 0 0
  NEWTABLE R10 0 0
  LOADB R11 0
  NEWTABLE R12 0 0
  LOADN R13 0
  GETUPVAL R14 1
  JUMPIFNOT R14 [+64]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R6 R14 K2 ["allowedAssetTypesForRelease"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R7 R14 K3 ["allowedAssetTypesForUpload"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R8 R14 K4 ["allowedAssetTypesForFree"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R9 R14 K5 ["allowedBundleTypeSettings"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K6 ["packages"]
  GETTABLEKS R10 R14 K7 ["permissionsTable"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R11 R14 K9 ["isItemTagsFeatureEnabled"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R12 R14 K10 ["enabledAssetTypesForItemTags"]
  GETUPVAL R15 1
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R13 R14 K11 ["maximumItemTagsPerItem"]
  LOADNIL R14
  GETUPVAL R16 1
  NAMECALL R16 R16 K0 ["getState"]
  CALL R16 1 1
  JUMPIFNOT R16 [+16]
  GETUPVAL R17 1
  NAMECALL R17 R17 K0 ["getState"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K12 ["assets"]
  JUMPIFNOT R16 [+9]
  GETUPVAL R17 1
  NAMECALL R17 R17 K0 ["getState"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K12 ["assets"]
  GETTABLEKS R15 R16 K13 ["idToAssetMap"]
  JUMP [+1]
  LOADNIL R15
  JUMPIFNOT R15 [+15]
  GETUPVAL R16 2
  MOVE R17 R15
  NEWCLOSURE R18 P0
  CAPTURE VAL R0
  CALL R16 2 1
  JUMPIFNOT R16 [+8]
  GETTABLEKS R17 R16 K14 ["Asset"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R17 R16 K14 ["Asset"]
  GETTABLEKS R14 R17 K15 ["AssetMediaIds"]
  JUMP [+1]
  LOADNIL R14
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K16 ["getFlowStartScreen"]
  MOVE R17 R1
  MOVE R18 R6
  CALL R16 2 1
  GETUPVAL R17 4
  NAMECALL R17 R17 K17 ["getDefualtTab"]
  CALL R17 1 1
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K18 ["FLOW_TYPE"]
  GETTABLEKS R18 R19 K19 ["DOWNLOAD_FLOW"]
  JUMPIFNOTEQ R1 R18 [+6]
  GETUPVAL R18 4
  NAMECALL R18 R18 K20 ["getOverrideTab"]
  CALL R18 1 1
  MOVE R17 R18
  NEWTABLE R18 0 1
  GETUPVAL R19 6
  DUPTABLE R20 K22 [{"StudioAssetService"}]
  GETUPVAL R21 7
  SETTABLEKS R21 R20 K21 ["StudioAssetService"]
  CALL R19 1 -1
  SETLIST R18 R19 -1 [1]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K23 ["Store"]
  GETTABLEKS R19 R20 K24 ["new"]
  GETUPVAL R20 9
  DUPTABLE R21 K40 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent", "sellerStatusData"}]
  SETTABLEKS R0 R21 K25 ["assetId"]
  SETTABLEKS R14 R21 K26 ["assetMediaIds"]
  SETTABLEKS R1 R21 K27 ["screenFlowType"]
  SETTABLEKS R16 R21 K28 ["currentScreen"]
  SETTABLEKS R2 R21 K29 ["instances"]
  GETUPVAL R23 10
  JUMPIF R23 [+4]
  GETUPVAL R23 11
  JUMPIF R23 [+2]
  GETUPVAL R23 12
  JUMPIFNOT R23 [+2]
  MOVE R22 R4
  JUMPIF R22 [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K30 ["sourceInstances"]
  SETTABLEKS R6 R21 K2 ["allowedAssetTypesForRelease"]
  SETTABLEKS R7 R21 K3 ["allowedAssetTypesForUpload"]
  SETTABLEKS R8 R21 K4 ["allowedAssetTypesForFree"]
  SETTABLEKS R9 R21 K5 ["allowedBundleTypeSettings"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K31 ["idToFiatProductMap"]
  SETTABLEKS R11 R21 K9 ["isItemTagsFeatureEnabled"]
  SETTABLEKS R12 R21 K10 ["enabledAssetTypesForItemTags"]
  SETTABLEKS R13 R21 K11 ["maximumItemTagsPerItem"]
  GETUPVAL R23 13
  CALL R23 0 1
  JUMPIFNOT R23 [+10]
  DUPTABLE R22 K43 [{"inProgress", "queued"}]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K41 ["inProgress"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K42 ["queued"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K32 ["rollingAssetPermissionRequests"]
  SETTABLEKS R3 R21 K33 ["assetTypeEnum"]
  SETTABLEKS R17 R21 K34 ["currentTab"]
  SETTABLEKS R10 R21 K35 ["packagePermissions"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K36 ["overrideCursor"]
  LOADB R22 0
  SETTABLEKS R22 R21 K37 ["deleteLocal"]
  SETTABLEKS R5 R21 K38 ["hasSubsequent"]
  GETUPVAL R23 14
  CALL R23 0 1
  JUMPIFNOT R23 [+3]
  NEWTABLE R22 0 0
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K39 ["sellerStatusData"]
  MOVE R22 R18
  CALL R19 3 1
  GETUPVAL R20 15
  CALL R20 0 1
  GETUPVAL R22 16
  GETTABLEKS R21 R22 K24 ["new"]
  CALL R21 0 1
  NEWCLOSURE R22 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  GETUPVAL R24 12
  JUMPIFNOT R24 [+5]
  GETUPVAL R24 20
  GETTABLEKS R23 R24 K24 ["new"]
  CALL R23 0 1
  JUMP [+1]
  LOADNIL R23
  GETUPVAL R25 18
  GETTABLEKS R24 R25 K44 ["createElement"]
  GETUPVAL R25 21
  DUPTABLE R26 K50 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
  SETTABLEKS R0 R26 K25 ["assetId"]
  SETTABLEKS R3 R26 K33 ["assetTypeEnum"]
  GETUPVAL R27 22
  SETTABLEKS R27 R26 K45 ["plugin"]
  SETTABLEKS R19 R26 K46 ["store"]
  SETTABLEKS R20 R26 K47 ["theme"]
  SETTABLEKS R21 R26 K48 ["networkInterface"]
  SETTABLEKS R22 R26 K49 ["onAssetConfigDestroy"]
  CALL R24 2 1
  GETUPVAL R26 18
  GETTABLEKS R25 R26 K44 ["createElement"]
  GETUPVAL R26 23
  DUPTABLE R27 K54 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
  GETUPVAL R29 12
  JUMPIFNOT R29 [+2]
  MOVE R28 R23
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K51 ["ixp"]
  GETUPVAL R28 24
  SETTABLEKS R28 R27 K52 ["localization"]
  GETUPVAL R28 22
  SETTABLEKS R28 R27 K45 ["plugin"]
  SETTABLEKS R20 R27 K47 ["theme"]
  SETTABLEKS R19 R27 K46 ["store"]
  GETIMPORT R28 K55 [settings]
  SETTABLEKS R28 R27 K53 ["settings"]
  NEWTABLE R28 0 1
  MOVE R29 R24
  SETLIST R28 R29 1 [1]
  CALL R25 3 1
  GETUPVAL R27 18
  GETTABLEKS R26 R27 K56 ["mount"]
  MOVE R27 R25
  CALL R26 1 1
  SETUPVAL R26 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R0 4 0
  RETURN R0 0

PROTO_11:
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R5 1
  JUMPIFNOT R5 [+13]
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETUPVAL R8 4
  CALL R7 1 -1
  NAMECALL R5 R5 K0 ["dispatch"]
  CALL R5 -1 1
  MOVE R7 R4
  MOVE R8 R4
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 3 0
  RETURN R0 0
  GETUPVAL R5 2
  GETUPVAL R7 5
  GETUPVAL R8 4
  CALL R7 1 -1
  NAMECALL R5 R5 K0 ["dispatch"]
  CALL R5 -1 1
  MOVE R7 R4
  MOVE R8 R4
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getClonedInstances"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R3 2
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETUPVAL R1 3
  JUMPIFEQKNIL R1 [+36]
  GETUPVAL R1 4
  LOADNIL R2
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETUPVAL R7 3
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K6 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K7 ["EnumItem"] [+3]
  GETUPVAL R5 3
  JUMP [+14]
  GETUPVAL R7 3
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K6 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["string"] [+7]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K9 ["UGCBundleTypes"]
  GETUPVAL R7 3
  GETTABLE R5 R6 R7
  JUMP [+1]
  LOADNIL R5
  GETUPVAL R6 1
  GETUPVAL R7 2
  CALL R1 6 0
  RETURN R0 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K10 [1] [+21]
  GETTABLEN R1 R0 1
  LOADK R3 K11 ["AnimationClip"]
  NAMECALL R1 R1 K12 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R1 4
  LOADNIL R2
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETIMPORT R5 K16 [Enum.AssetType.Animation]
  LOADNIL R6
  GETUPVAL R7 2
  CALL R1 6 0
  RETURN R0 0
  GETUPVAL R1 4
  LOADNIL R2
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  LOADNIL R5
  GETUPVAL R6 1
  GETUPVAL R7 2
  CALL R1 6 0
  RETURN R0 0

PROTO_13:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R4 3
  JUMPIFNOT R4 [+13]
  GETUPVAL R4 4
  GETUPVAL R6 5
  GETUPVAL R7 6
  CALL R6 1 -1
  NAMECALL R4 R4 K0 ["dispatch"]
  CALL R4 -1 1
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R4 K1 ["andThen"]
  CALL R4 3 0
  RETURN R0 0
  GETUPVAL R4 4
  GETUPVAL R6 7
  GETUPVAL R7 6
  CALL R6 1 -1
  NAMECALL R4 R4 K0 ["dispatch"]
  CALL R4 -1 1
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R4 K1 ["andThen"]
  CALL R4 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getClonedInstances"]
  GETUPVAL R1 1
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K1 [1] [+19]
  GETTABLEN R1 R0 1
  LOADK R3 K2 ["AnimationClip"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  LOADNIL R2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K5 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETIMPORT R5 K9 [Enum.AssetType.Animation]
  CALL R1 4 0
  RETURN R0 0
  GETUPVAL R1 2
  LOADNIL R2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K5 ["UPLOAD_FLOW"]
  MOVE R4 R0
  LOADNIL R5
  GETUPVAL R6 1
  CALL R1 5 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 4
  GETUPVAL R4 5
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R2 4
  GETUPVAL R4 7
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  LOADNIL R2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K1 ["DOWNLOAD_FLOW"]
  LOADNIL R4
  GETIMPORT R5 K5 [Enum.AssetType.Animation]
  CALL R1 4 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  MOVE R3 R1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K1 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K5 [Enum.AssetType.Model]
  CALL R2 4 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  LOADNIL R1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FLOW_TYPE"]
  GETTABLEKS R2 R3 K1 ["UPLOAD_FLOW"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["getClonedInstances"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETIMPORT R4 K6 [Enum.AssetType.Plugin]
  CALL R0 4 0
  RETURN R0 0

PROTO_19:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 4
  GETUPVAL R4 5
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R2 4
  GETUPVAL R4 7
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K1 ["assetType"]
  GETIMPORT R3 K5 [Enum.AssetType.Image]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["id"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K8 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K5 [Enum.AssetType.Image]
  CALL R2 4 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["id"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K8 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K10 [Enum.AssetType.MeshPart]
  CALL R2 4 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Store"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R1 2
  LOADNIL R2
  NEWTABLE R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["thunkMiddleware"]
  SETLIST R3 R4 1 [1]
  CALL R0 3 1
  SETUPVAL R0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["new"]
  CALL R0 0 1
  GETUPVAL R1 4
  CALL R1 0 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 6
  CALL R2 1 1
  GETUPVAL R3 7
  CALL R3 0 1
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K1 ["new"]
  CALL R4 0 1
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K3 ["BACKGROUNDS"]
  GETUPVAL R7 10
  GETTABLEKS R6 R7 K4 ["SUGGESTIONS"]
  LOADNIL R7
  LOADNIL R8
  GETUPVAL R9 11
  JUMPIFNOT R9 [+7]
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K5 ["forPlugin"]
  LOADK R10 K6 ["Toolbox"]
  GETUPVAL R11 6
  CALL R9 2 1
  MOVE R8 R9
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U13
  CAPTURE REF R8
  GETUPVAL R10 14
  GETUPVAL R12 0
  NAMECALL R10 R10 K7 ["setup"]
  CALL R10 2 0
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 15
  DUPTABLE R12 K19 [{"plugin", "store", "settings", "theme", "networkInterface", "pluginLoaderContext", "backgrounds", "suggestions", "onPluginWillDestroy", "tryOpenAssetConfig"}]
  GETUPVAL R13 6
  SETTABLEKS R13 R12 K9 ["plugin"]
  GETUPVAL R13 0
  SETTABLEKS R13 R12 K10 ["store"]
  SETTABLEKS R2 R12 K11 ["settings"]
  SETTABLEKS R3 R12 K12 ["theme"]
  SETTABLEKS R4 R12 K13 ["networkInterface"]
  GETUPVAL R13 16
  SETTABLEKS R13 R12 K14 ["pluginLoaderContext"]
  SETTABLEKS R5 R12 K15 ["backgrounds"]
  SETTABLEKS R6 R12 K16 ["suggestions"]
  SETTABLEKS R9 R12 K17 ["onPluginWillDestroy"]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  SETTABLEKS R13 R12 K18 ["tryOpenAssetConfig"]
  CALL R10 2 1
  GETUPVAL R12 21
  GETTABLEKS R11 R12 K1 ["new"]
  CALL R11 0 1
  LOADNIL R12
  GETUPVAL R14 13
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 22
  DUPTABLE R15 K24 [{"localization", "plugin", "theme", "store", "settings", "assetAnalytics", "analytics", "ixp"}]
  GETUPVAL R16 23
  SETTABLEKS R16 R15 K20 ["localization"]
  GETUPVAL R16 6
  SETTABLEKS R16 R15 K9 ["plugin"]
  SETTABLEKS R3 R15 K12 ["theme"]
  GETUPVAL R16 0
  SETTABLEKS R16 R15 K10 ["store"]
  SETTABLEKS R2 R15 K11 ["settings"]
  SETTABLEKS R0 R15 K21 ["assetAnalytics"]
  SETTABLEKS R1 R15 K22 ["analytics"]
  SETTABLEKS R11 R15 K23 ["ixp"]
  NEWTABLE R16 0 1
  MOVE R17 R10
  SETLIST R16 R17 1 [1]
  CALL R13 3 1
  MOVE R12 R13
  GETUPVAL R14 13
  GETTABLEKS R13 R14 K25 ["mount"]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R7 R13
  JUMPIFNOT R8 [+6]
  LOADK R15 K26 ["Roact tree"]
  MOVE R16 R7
  GETUPVAL R17 13
  NAMECALL R13 R8 K27 ["addRoactTree"]
  CALL R13 4 0
  GETUPVAL R13 24
  JUMPIF R13 [+2]
  GETUPVAL R13 25
  JUMPIFNOT R13 [+18]
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K28 ["StudioAssetService.OnSaveToRoblox"]
  NEWCLOSURE R15 P2
  CAPTURE UPVAL U26
  CAPTURE UPVAL U17
  CAPTURE UPVAL U27
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  JUMP [+17]
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K31 ["StudioService.OnSaveToRoblox"]
  NEWCLOSURE R15 P3
  CAPTURE UPVAL U26
  CAPTURE UPVAL U17
  CAPTURE UPVAL U27
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K32 ["StudioService.OnImportFromRoblox"]
  NEWCLOSURE R15 P4
  CAPTURE UPVAL U17
  CAPTURE UPVAL U27
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K33 ["StudioService.OnOpenManagePackagePlugin"]
  NEWCLOSURE R15 P5
  CAPTURE UPVAL U17
  CAPTURE UPVAL U27
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K34 ["StudioService.OnPublishAsPlugin"]
  NEWCLOSURE R15 P6
  CAPTURE UPVAL U17
  CAPTURE UPVAL U27
  CAPTURE UPVAL U26
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K35 ["MemStorageService.OpenAssetConfiguration"]
  NEWCLOSURE R15 P7
  CAPTURE UPVAL U28
  CAPTURE UPVAL U17
  CAPTURE UPVAL U27
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R14 29
  GETTABLEKS R13 R14 K36 ["registerLocalization"]
  GETUPVAL R14 23
  CALL R13 1 0
  GETUPVAL R14 29
  GETTABLEKS R13 R14 K37 ["registerProcessDragHandler"]
  GETUPVAL R14 6
  CALL R13 1 0
  CLOSEUPVALS R7
  RETURN R0 0

PROTO_22:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R4 R2 K3 ["Core"]
  GETTABLEKS R3 R4 K4 ["Util"]
  GETIMPORT R4 K6 [game]
  LOADK R6 K7 ["DebugToolboxEnableRoactChecks"]
  NAMECALL R4 R4 K8 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K6 [game]
  LOADK R7 K9 ["DebugToolboxGetRolesRequest"]
  NAMECALL R5 R5 K8 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K6 [game]
  LOADK R8 K10 ["UnifyModelPackagePublish3"]
  NAMECALL R6 R6 K8 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K6 [game]
  LOADK R9 K11 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
  NAMECALL R7 R7 K8 ["GetFastFlag"]
  CALL R7 2 1
  GETIMPORT R8 K6 [game]
  LOADK R10 K12 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R8 R8 K8 ["GetFastFlag"]
  CALL R8 2 1
  GETIMPORT R9 K6 [game]
  LOADK R11 K13 ["ShowSaveToRobloxOnStudioAssetService"]
  NAMECALL R9 R9 K8 ["GetFastFlag"]
  CALL R9 2 1
  GETIMPORT R10 K15 [require]
  GETTABLEKS R14 R2 K3 ["Core"]
  GETTABLEKS R13 R14 K4 ["Util"]
  GETTABLEKS R12 R13 K16 ["SharedFlags"]
  GETTABLEKS R11 R12 K17 ["getFFlagToolboxAssetConfigOnboardingLink"]
  CALL R10 1 1
  GETIMPORT R11 K15 [require]
  GETTABLEKS R12 R3 K18 ["isCli"]
  CALL R11 1 1
  MOVE R12 R11
  CALL R12 0 1
  JUMPIFNOT R12 [+1]
  RETURN R0 0
  GETIMPORT R12 K6 [game]
  LOADK R14 K19 ["StudioService"]
  NAMECALL R12 R12 K20 ["GetService"]
  CALL R12 2 1
  NAMECALL R13 R12 K21 ["HasInternalPermission"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K22 ["Packages"]
  GETIMPORT R15 K15 [require]
  GETTABLEKS R16 R14 K23 ["Roact"]
  CALL R15 1 1
  GETIMPORT R16 K15 [require]
  GETTABLEKS R17 R14 K24 ["Framework"]
  CALL R16 1 1
  GETIMPORT R17 K15 [require]
  GETTABLEKS R19 R14 K25 ["Dev"]
  GETTABLEKS R18 R19 K26 ["DeveloperTools"]
  CALL R17 1 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R18 R15 K27 ["setGlobalConfig"]
  DUPTABLE R19 K31 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R20 1
  SETTABLEKS R20 R19 K28 ["elementTracing"]
  LOADB R20 1
  SETTABLEKS R20 R19 K29 ["propValidation"]
  LOADB R20 1
  SETTABLEKS R20 R19 K30 ["typeChecks"]
  CALL R18 1 0
  GETIMPORT R18 K15 [require]
  GETTABLEKS R19 R14 K32 ["Rodux"]
  CALL R18 1 1
  GETIMPORT R19 K15 [require]
  GETTABLEKS R20 R3 K33 ["InsertAsset"]
  CALL R19 1 1
  GETIMPORT R20 K15 [require]
  GETTABLEKS R22 R3 K34 ["Analytics"]
  GETTABLEKS R21 R22 K35 ["AssetAnalyticsContextItem"]
  CALL R20 1 1
  GETIMPORT R21 K15 [require]
  GETTABLEKS R22 R3 K36 ["DebugFlags"]
  CALL R21 1 1
  GETIMPORT R22 K15 [require]
  GETTABLEKS R23 R3 K37 ["Settings"]
  CALL R22 1 1
  GETIMPORT R23 K15 [require]
  GETTABLEKS R24 R3 K38 ["ToolboxTheme"]
  CALL R23 1 1
  GETIMPORT R24 K15 [require]
  GETTABLEKS R25 R3 K39 ["AssetConfigTheme"]
  CALL R24 1 1
  GETIMPORT R25 K15 [require]
  GETTABLEKS R26 R3 K40 ["AssetConfigConstants"]
  CALL R25 1 1
  GETIMPORT R26 K15 [require]
  GETTABLEKS R27 R3 K41 ["AssetConfigUtil"]
  CALL R26 1 1
  GETIMPORT R27 K15 [require]
  GETTABLEKS R29 R3 K34 ["Analytics"]
  GETTABLEKS R28 R29 K42 ["makeToolboxAnalyticsContext"]
  CALL R27 1 1
  GETIMPORT R28 K15 [require]
  GETTABLEKS R31 R2 K3 ["Core"]
  GETTABLEKS R30 R31 K43 ["ContextServices"]
  GETTABLEKS R29 R30 K44 ["IXPContext"]
  CALL R28 1 1
  GETTABLEKS R29 R21 K45 ["shouldDebugWarnings"]
  CALL R29 0 1
  JUMPIFNOT R29 [+13]
  GETIMPORT R31 K15 [require]
  GETTABLEKS R32 R14 K24 ["Framework"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K4 ["Util"]
  GETTABLEKS R29 R30 K46 ["Promise"]
  GETIMPORT R30 K48 [warn]
  SETTABLEKS R30 R29 K49 ["onUnhandledRejection"]
  GETIMPORT R29 K15 [require]
  GETTABLEKS R32 R2 K3 ["Core"]
  GETTABLEKS R31 R32 K50 ["Types"]
  GETTABLEKS R30 R31 K51 ["Background"]
  CALL R29 1 1
  GETIMPORT R30 K15 [require]
  GETTABLEKS R33 R2 K3 ["Core"]
  GETTABLEKS R32 R33 K50 ["Types"]
  GETTABLEKS R31 R32 K52 ["Suggestion"]
  CALL R30 1 1
  GETIMPORT R31 K15 [require]
  GETTABLEKS R34 R2 K3 ["Core"]
  GETTABLEKS R33 R34 K50 ["Types"]
  GETTABLEKS R32 R33 K53 ["ConfigTypes"]
  CALL R31 1 1
  GETIMPORT R32 K15 [require]
  GETTABLEKS R35 R2 K3 ["Core"]
  GETTABLEKS R34 R35 K54 ["Components"]
  GETTABLEKS R33 R34 K55 ["ToolboxPlugin"]
  CALL R32 1 1
  GETIMPORT R34 K15 [require]
  GETTABLEKS R37 R2 K3 ["Core"]
  GETTABLEKS R36 R37 K4 ["Util"]
  GETTABLEKS R35 R36 K56 ["ToolboxUtilities"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K57 ["getToolboxEnabled"]
  GETIMPORT R34 K15 [require]
  GETTABLEKS R37 R2 K3 ["Core"]
  GETTABLEKS R36 R37 K4 ["Util"]
  GETTABLEKS R35 R36 K58 ["ToolboxCommunication"]
  CALL R34 1 1
  GETIMPORT R35 K15 [require]
  GETTABLEKS R38 R2 K3 ["Core"]
  GETTABLEKS R37 R38 K59 ["Reducers"]
  GETTABLEKS R36 R37 K60 ["ToolboxReducer"]
  CALL R35 1 1
  GETIMPORT R36 K15 [require]
  GETTABLEKS R39 R2 K3 ["Core"]
  GETTABLEKS R38 R39 K59 ["Reducers"]
  GETTABLEKS R37 R38 K61 ["AssetConfigReducer"]
  CALL R36 1 1
  GETIMPORT R37 K15 [require]
  GETTABLEKS R40 R2 K3 ["Core"]
  GETTABLEKS R39 R40 K62 ["Networking"]
  GETTABLEKS R38 R39 K63 ["NetworkInterface"]
  CALL R37 1 1
  GETIMPORT R38 K15 [require]
  GETTABLEKS R42 R2 K3 ["Core"]
  GETTABLEKS R41 R42 K54 ["Components"]
  GETTABLEKS R40 R41 K64 ["AssetConfiguration"]
  GETTABLEKS R39 R40 K65 ["AssetConfigWrapper"]
  CALL R38 1 1
  GETIMPORT R39 K15 [require]
  GETTABLEKS R42 R2 K3 ["Core"]
  GETTABLEKS R41 R42 K54 ["Components"]
  GETTABLEKS R40 R41 K66 ["ToolboxServiceWrapper"]
  CALL R39 1 1
  GETIMPORT R40 K15 [require]
  GETTABLEKS R44 R2 K3 ["Core"]
  GETTABLEKS R43 R44 K62 ["Networking"]
  GETTABLEKS R42 R43 K67 ["Requests"]
  GETTABLEKS R41 R42 K68 ["GetRolesRequest"]
  CALL R40 1 1
  GETIMPORT R41 K15 [require]
  GETTABLEKS R45 R2 K3 ["Core"]
  GETTABLEKS R44 R45 K62 ["Networking"]
  GETTABLEKS R43 R44 K67 ["Requests"]
  GETTABLEKS R42 R43 K69 ["GetRolesDebugRequest"]
  CALL R41 1 1
  GETIMPORT R42 K15 [require]
  GETTABLEKS R45 R2 K3 ["Core"]
  GETTABLEKS R44 R45 K70 ["Flags"]
  GETTABLEKS R43 R44 K71 ["getFFlagToolboxRollingAssetPermissionRequests"]
  CALL R42 1 1
  GETTABLEKS R43 R16 K43 ["ContextServices"]
  GETTABLEKS R45 R16 K4 ["Util"]
  GETTABLEKS R44 R45 K72 ["ThunkWithArgsMiddleware"]
  GETIMPORT R45 K15 [require]
  GETTABLEKS R46 R14 K73 ["Dash"]
  CALL R45 1 1
  GETTABLEKS R46 R45 K74 ["find"]
  GETTABLEKS R48 R2 K75 ["LocalizationSource"]
  GETTABLEKS R47 R48 K76 ["SourceStrings"]
  GETTABLEKS R49 R2 K75 ["LocalizationSource"]
  GETTABLEKS R48 R49 K77 ["LocalizedStrings"]
  GETIMPORT R49 K6 [game]
  LOADK R51 K78 ["HttpService"]
  NAMECALL R49 R49 K20 ["GetService"]
  CALL R49 2 1
  GETIMPORT R50 K6 [game]
  LOADK R52 K79 ["RobloxPluginGuiService"]
  NAMECALL R50 R50 K20 ["GetService"]
  CALL R50 2 1
  GETIMPORT R51 K6 [game]
  LOADK R53 K80 ["StudioAssetService"]
  NAMECALL R51 R51 K20 ["GetService"]
  CALL R51 2 1
  MOVE R52 R33
  CALL R52 0 1
  JUMPIF R52 [+1]
  RETURN R0 0
  GETTABLEKS R53 R43 K81 ["Localization"]
  GETTABLEKS R52 R53 K82 ["new"]
  DUPTABLE R53 K87 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  SETTABLEKS R47 R53 K83 ["stringResourceTable"]
  SETTABLEKS R48 R53 K84 ["translationResourceTable"]
  LOADK R54 K88 ["Toolbox"]
  SETTABLEKS R54 R53 K85 ["pluginName"]
  NEWTABLE R54 1 0
  GETTABLEKS R56 R16 K89 ["Resources"]
  GETTABLEKS R55 R56 K90 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R56 K91 [{"stringResourceTable", "translationResourceTable"}]
  GETTABLEKS R58 R16 K89 ["Resources"]
  GETTABLEKS R57 R58 K76 ["SourceStrings"]
  SETTABLEKS R57 R56 K83 ["stringResourceTable"]
  GETTABLEKS R58 R16 K89 ["Resources"]
  GETTABLEKS R57 R58 K77 ["LocalizedStrings"]
  SETTABLEKS R57 R56 K84 ["translationResourceTable"]
  SETTABLE R56 R54 R55
  SETTABLEKS R54 R53 K86 ["libraries"]
  CALL R52 1 1
  NEWCLOSURE R53 P0
  CAPTURE VAL R23
  NEWCLOSURE R54 P1
  CAPTURE VAL R24
  LOADNIL R55
  LOADNIL R56
  NEWCLOSURE R57 P2
  CAPTURE REF R56
  CAPTURE REF R55
  CAPTURE VAL R46
  CAPTURE VAL R26
  CAPTURE VAL R31
  CAPTURE VAL R25
  CAPTURE VAL R44
  CAPTURE VAL R51
  CAPTURE VAL R18
  CAPTURE VAL R36
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R42
  CAPTURE VAL R10
  CAPTURE VAL R54
  CAPTURE VAL R37
  CAPTURE VAL R50
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R28
  CAPTURE VAL R38
  CAPTURE VAL R0
  CAPTURE VAL R39
  CAPTURE VAL R52
  NEWCLOSURE R58 P3
  CAPTURE REF R55
  CAPTURE VAL R18
  CAPTURE VAL R35
  CAPTURE VAL R20
  CAPTURE VAL R27
  CAPTURE VAL R22
  CAPTURE VAL R0
  CAPTURE VAL R53
  CAPTURE VAL R37
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R34
  CAPTURE VAL R32
  CAPTURE VAL R1
  CAPTURE VAL R57
  CAPTURE VAL R5
  CAPTURE VAL R41
  CAPTURE VAL R40
  CAPTURE VAL R28
  CAPTURE VAL R39
  CAPTURE VAL R52
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R49
  CAPTURE VAL R19
  MOVE R59 R58
  CALL R59 0 0
  CLOSEUPVALS R55
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_22]
  RETURN R0 1