PROTO_0:
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [error]
  LOADK R4 K2 ["CompactView table has no value: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Colors"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["TopBar"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  DUPTABLE R2 K38 [{"ContainerBackgroundTransparency", "ContainerBackgroundColor", "UseContainerAspectRatio", "ContainerAspectRatio", "MaxAssetCardsPerRow", "ContainerSize", "ContainerAnchorPoint", "ContainerPosition", "AvatarHeadShotSize", "TopSizeY", "ClipsDescendants", "PlayerViewportSize", "AssetListSize", "AssetListPosition", "CloseButtonPosition", "DetailsThumbnailFrameSize", "DetailsThumbnailFramePosition", "DetailsThumbnailAnchorPoint", "DetailsThumbnailPosition", "DetailsThumbnailARDominantAxis", "DetailsFramePosition", "DetailsFrameSize", "AssetCardMaxSizeX", "AssetCardMaxSizeY", "DefaultCameraOffset", "ToolOffset", "TryOnPosition", "TryOnSize", "BorderPaddingSize", "AssetTextMaxSize"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["ContainerBackgroundTransparency"]
  GETTABLEKS R3 R0 K39 ["Carbon"]
  SETTABLEKS R3 R2 K9 ["ContainerBackgroundColor"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["UseContainerAspectRatio"]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["ContainerAspectRatio"]
  LOADN R3 3
  SETTABLEKS R3 R2 K12 ["MaxAssetCardsPerRow"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 1
  GETTABLEKS R8 R1 K43 ["TopBarHeight"]
  MINUS R7 R8
  CALL R3 4 1
  SETTABLEKS R3 R2 K13 ["ContainerSize"]
  GETIMPORT R3 K45 [Vector2.new]
  LOADK R4 K46 [0.5]
  LOADN R5 0
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["ContainerAnchorPoint"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADK R4 K46 [0.5]
  LOADN R5 0
  LOADN R6 0
  GETTABLEKS R7 R1 K43 ["TopBarHeight"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K15 ["ContainerPosition"]
  LOADN R3 48
  SETTABLEKS R3 R2 K16 ["AvatarHeadShotSize"]
  LOADN R3 90
  SETTABLEKS R3 R2 K17 ["TopSizeY"]
  LOADB R3 0
  SETTABLEKS R3 R2 K18 ["ClipsDescendants"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADK R6 K47 [0.41]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K19 ["PlayerViewportSize"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADK R6 K48 [0.59]
  LOADN R7 214
  CALL R3 4 1
  SETTABLEKS R3 R2 K20 ["AssetListSize"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADK R6 K47 [0.41]
  LOADN R7 42
  CALL R3 4 1
  SETTABLEKS R3 R2 K21 ["AssetListPosition"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 0
  LOADN R5 6
  LOADN R6 0
  LOADN R7 236
  CALL R3 4 1
  SETTABLEKS R3 R2 K22 ["CloseButtonPosition"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADK R6 K49 [0.4]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K23 ["DetailsThumbnailFrameSize"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 15
  CALL R3 4 1
  SETTABLEKS R3 R2 K24 ["DetailsThumbnailFramePosition"]
  GETIMPORT R3 K45 [Vector2.new]
  LOADK R4 K46 [0.5]
  LOADK R5 K46 [0.5]
  CALL R3 2 1
  SETTABLEKS R3 R2 K25 ["DetailsThumbnailAnchorPoint"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADK R4 K46 [0.5]
  LOADN R5 0
  LOADK R6 K46 [0.5]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K26 ["DetailsThumbnailPosition"]
  GETIMPORT R3 K53 [Enum.DominantAxis.Height]
  SETTABLEKS R3 R2 K27 ["DetailsThumbnailARDominantAxis"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 0
  LOADN R5 15
  LOADK R6 K49 [0.4]
  LOADN R7 15
  CALL R3 4 1
  SETTABLEKS R3 R2 K28 ["DetailsFramePosition"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 1
  LOADN R5 226
  LOADK R6 K54 [0.6]
  LOADN R7 226
  CALL R3 4 1
  SETTABLEKS R3 R2 K29 ["DetailsFrameSize"]
  LOADN R3 108
  SETTABLEKS R3 R2 K30 ["AssetCardMaxSizeX"]
  LOADN R3 157
  SETTABLEKS R3 R2 K31 ["AssetCardMaxSizeY"]
  GETIMPORT R3 K56 [CFrame.new]
  LOADN R4 0
  LOADN R5 2
  LOADN R6 251
  CALL R3 3 1
  SETTABLEKS R3 R2 K32 ["DefaultCameraOffset"]
  GETIMPORT R3 K56 [CFrame.new]
  LOADN R4 0
  LOADN R5 2
  LOADN R6 248
  CALL R3 3 1
  SETTABLEKS R3 R2 K33 ["ToolOffset"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 15
  CALL R3 4 1
  SETTABLEKS R3 R2 K34 ["TryOnPosition"]
  GETIMPORT R3 K42 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADK R6 K49 [0.4]
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K35 ["TryOnSize"]
  LOADN R3 20
  SETTABLEKS R3 R2 K36 ["BorderPaddingSize"]
  LOADN R3 14
  SETTABLEKS R3 R2 K37 ["AssetTextMaxSize"]
  DUPTABLE R5 K59 [{"__newindex", "__index"}]
  DUPCLOSURE R6 K60 [PROTO_0]
  SETTABLEKS R6 R5 K57 ["__newindex"]
  DUPCLOSURE R6 K61 [PROTO_1]
  SETTABLEKS R6 R5 K58 ["__index"]
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K63 [setmetatable]
  CALL R3 2 0
  RETURN R2 1
