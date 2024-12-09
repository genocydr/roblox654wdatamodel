PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["assetType"]
  GETIMPORT R2 K5 [Enum.AssetType.Model]
  JUMPIFNOTEQ R1 R2 [+17]
  GETUPVAL R1 0
  LOADK R3 K6 ["CoreScripts.PublishAssetPrompt.PackagesDefaultName"]
  DUPTABLE R4 K8 [{"RBX_NAME"}]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["Name"]
  JUMPIF R5 [+1]
  LOADK R5 K10 [""]
  SETTABLEKS R5 R4 K7 ["RBX_NAME"]
  NAMECALL R1 R1 K11 ["FormatByKey"]
  CALL R1 3 -1
  RETURN R1 -1
  LOADK R1 K10 [""]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["closePrompt"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingThumbnailEditor"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showingThumbnailEditor"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingThumbnailEditor"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showingThumbnailEditor"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingAssetPreview"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showingAssetPreview"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingAssetPreview"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showingAssetPreview"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"thumbnailParameters"}]
  SETTABLEKS R0 R3 K0 ["thumbnailParameters"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["guid"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["scopes"]
  GETIMPORT R4 K6 [Enum.ScopeCheckResult.ConsentDenied]
  NEWTABLE R5 0 0
  NAMECALL R0 R0 K7 ["ScopeCheckUIComplete"]
  CALL R0 5 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K8 ["closePrompt"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isNameValid"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["isDescriptionValid"]
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["assetName"]
  SETTABLEKS R1 R0 K2 ["assetName"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["assetDescription"]
  SETTABLEKS R1 R0 K3 ["assetDescription"]
  GETUPVAL R1 2
  JUMPIFNOT R1 [+20]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["assetType"]
  GETIMPORT R2 K9 [Enum.AssetType.EmoteAnimation]
  JUMPIFNOTEQ R1 R2 [+12]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K10 ["encodeAsATable"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["state"]
  GETTABLEKS R2 R3 K12 ["thumbnailParameters"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K13 ["emoteThumbnailParameters"]
  GETUPVAL R1 4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K14 ["guid"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["props"]
  GETTABLEKS R4 R5 K15 ["scopes"]
  GETIMPORT R5 K18 [Enum.ScopeCheckResult.ConsentAccepted]
  MOVE R6 R0
  NAMECALL R1 R1 K19 ["ScopeCheckUIComplete"]
  CALL R1 5 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K20 ["closePrompt"]
  CALL R1 0 0
  RETURN R0 0

PROTO_9:
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 0
  SETTABLEKS R0 R2 K0 ["assetName"]
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["isNameValid"]
  RETURN R0 0
  GETUPVAL R2 0
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isNameValid"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  SETTABLEKS R0 R2 K0 ["assetDescription"]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K1 ["isDescriptionValid"]
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["getDefaultText"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["assetName"]
  NAMECALL R1 R0 K0 ["getDefaultText"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["assetDescription"]
  LOADB R1 1
  SETTABLEKS R1 R0 K3 ["isNameValid"]
  LOADB R1 1
  SETTABLEKS R1 R0 K4 ["isDescriptionValid"]
  DUPTABLE R3 K8 [{"thumbnailParameters", "showingThumbnailEditor", "showingAssetPreview"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["defaultParameters"]
  SETTABLEKS R4 R3 K5 ["thumbnailParameters"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["showingThumbnailEditor"]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["showingAssetPreview"]
  NAMECALL R1 R0 K10 ["setState"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["closePrompt"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["openThumbnailEditor"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["closeThumbnailEditor"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["openAssetPreview"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["closeAssetPreview"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["updateThumbnailParameters"]
  NEWCLOSURE R1 P6
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["denyAndClose"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K18 ["confirmAndUpload"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["onAssetNameUpdated"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["onAssetDescriptionUpdated"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K21 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K22 ["nameTextBoxRef"]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K21 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K23 ["descriptionTextBoxRef"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["Font"]
  GETTABLEKS R2 R0 K1 ["Theme"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+19]
  LOADB R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["assetType"]
  GETIMPORT R5 K7 [Enum.AssetType.EmoteAnimation]
  JUMPIFNOTEQ R4 R5 [+10]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K8 ["assetInstance"]
  LOADK R5 K9 ["AnimationClip"]
  NAMECALL R3 R3 K10 ["IsA"]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["createElement"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K12 ["Focusable"]
  GETTABLEKS R5 R6 K13 ["Frame"]
  NEWTABLE R6 4 0
  LOADN R7 1
  SETTABLEKS R7 R6 K14 ["BackgroundTransparency"]
  GETIMPORT R7 K17 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 150
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K19 ["nameTextBoxRef"]
  SETTABLEKS R7 R6 K20 ["defaultChild"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["Ref"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K22 ["middleContentRef"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K26 [{"UISizeConstraint", "TopSection", "Disclaimer"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["createElement"]
  LOADK R9 K23 ["UISizeConstraint"]
  DUPTABLE R10 K28 [{"MinSize"}]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 200
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K27 ["MinSize"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K23 ["UISizeConstraint"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["createElement"]
  LOADK R9 K13 ["Frame"]
  DUPTABLE R10 K31 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R11 K17 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 206
  CALL R11 4 1
  SETTABLEKS R11 R10 K18 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["BackgroundTransparency"]
  DUPTABLE R11 K34 [{"ViewportParent", "NameDescriptionFields"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K13 ["Frame"]
  DUPTABLE R14 K31 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R15 K17 [UDim2.new]
  LOADK R16 K35 [0.4]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K18 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K14 ["BackgroundTransparency"]
  DUPTABLE R15 K38 [{"ObjectViewport", "EmoteThumbnailParent"}]
  JUMPIF R3 [+14]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K40 [{"model"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K2 ["props"]
  GETTABLEKS R19 R20 K8 ["assetInstance"]
  SETTABLEKS R19 R18 K39 ["model"]
  CALL R16 2 1
  JUMPIF R16 [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K36 ["ObjectViewport"]
  JUMPIFNOT R3 [+147]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K13 ["Frame"]
  DUPTABLE R18 K31 [{"Size", "BackgroundTransparency"}]
  GETIMPORT R19 K42 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 1
  CALL R19 2 1
  SETTABLEKS R19 R18 K18 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K14 ["BackgroundTransparency"]
  DUPTABLE R19 K47 [{"AspectRatioConstraint", "EmoteThumbnailView", "PreviewButton", "EditButton"}]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K11 ["createElement"]
  LOADK R21 K48 ["UIAspectRatioConstraint"]
  DUPTABLE R22 K52 [{"AspectRatio", "AspectType", "DominantAxis"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K49 ["AspectRatio"]
  GETIMPORT R23 K54 [Enum.AspectType.FitWithinMaxSize]
  SETTABLEKS R23 R22 K50 ["AspectType"]
  GETIMPORT R23 K56 [Enum.DominantAxis.Width]
  SETTABLEKS R23 R22 K51 ["DominantAxis"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K43 ["AspectRatioConstraint"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K59 [{"animationClip", "thumbnailParameters"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K2 ["props"]
  GETTABLEKS R23 R24 K8 ["assetInstance"]
  SETTABLEKS R23 R22 K57 ["animationClip"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K60 ["state"]
  GETTABLEKS R23 R24 K58 ["thumbnailParameters"]
  SETTABLEKS R23 R22 K58 ["thumbnailParameters"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K44 ["EmoteThumbnailView"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K67 [{"position", "anchorPoint", "icon", "size", "showBackground", "onActivated"}]
  GETIMPORT R23 K17 [UDim2.new]
  LOADN R24 1
  LOADN R25 254
  LOADN R26 1
  LOADN R27 254
  CALL R23 4 1
  SETTABLEKS R23 R22 K61 ["position"]
  GETIMPORT R23 K30 [Vector2.new]
  LOADN R24 1
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["anchorPoint"]
  GETUPVAL R23 7
  SETTABLEKS R23 R22 K63 ["icon"]
  GETIMPORT R23 K17 [UDim2.new]
  LOADN R24 0
  LOADN R25 30
  LOADN R26 0
  LOADN R27 30
  CALL R23 4 1
  SETTABLEKS R23 R22 K64 ["size"]
  LOADB R23 1
  SETTABLEKS R23 R22 K65 ["showBackground"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K68 ["openAssetPreview"]
  SETTABLEKS R23 R22 K66 ["onActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K45 ["PreviewButton"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K11 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K67 [{"position", "anchorPoint", "icon", "size", "showBackground", "onActivated"}]
  GETIMPORT R23 K17 [UDim2.new]
  LOADN R24 0
  LOADN R25 2
  LOADN R26 1
  LOADN R27 254
  CALL R23 4 1
  SETTABLEKS R23 R22 K61 ["position"]
  GETIMPORT R23 K30 [Vector2.new]
  LOADN R24 0
  LOADN R25 1
  CALL R23 2 1
  SETTABLEKS R23 R22 K62 ["anchorPoint"]
  GETUPVAL R23 8
  SETTABLEKS R23 R22 K63 ["icon"]
  GETIMPORT R23 K17 [UDim2.new]
  LOADN R24 0
  LOADN R25 30
  LOADN R26 0
  LOADN R27 30
  CALL R23 4 1
  SETTABLEKS R23 R22 K64 ["size"]
  LOADB R23 1
  SETTABLEKS R23 R22 K65 ["showBackground"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K69 ["openThumbnailEditor"]
  SETTABLEKS R23 R22 K66 ["onActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K46 ["EditButton"]
  CALL R16 3 1
  JUMPIF R16 [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K37 ["EmoteThumbnailParent"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K32 ["ViewportParent"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K13 ["Frame"]
  DUPTABLE R14 K72 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
  GETIMPORT R15 K17 [UDim2.new]
  LOADK R16 K73 [0.6]
  LOADN R17 246
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K18 ["Size"]
  GETIMPORT R15 K30 [Vector2.new]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K70 ["AnchorPoint"]
  GETIMPORT R15 K42 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K71 ["Position"]
  LOADN R15 1
  SETTABLEKS R15 R14 K14 ["BackgroundTransparency"]
  DUPTABLE R15 K78 [{"NameLabel", "NameInput", "DescriptionLabel", "DescriptionInput"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K79 ["TextLabel"]
  DUPTABLE R18 K84 [{"Size", "Font", "Text", "TextSize", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 15
  CALL R19 4 1
  SETTABLEKS R19 R18 K18 ["Size"]
  GETTABLEKS R20 R1 K85 ["Body"]
  GETTABLEKS R19 R20 K0 ["Font"]
  SETTABLEKS R19 R18 K0 ["Font"]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K86 ["name"]
  SETTABLEKS R19 R18 K80 ["Text"]
  LOADN R19 12
  SETTABLEKS R19 R18 K81 ["TextSize"]
  GETTABLEKS R20 R2 K87 ["TextDefault"]
  GETTABLEKS R19 R20 K88 ["Color"]
  SETTABLEKS R19 R18 K82 ["TextColor3"]
  LOADN R19 1
  SETTABLEKS R19 R18 K14 ["BackgroundTransparency"]
  GETIMPORT R19 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K83 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K74 ["NameLabel"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K94 [{"Size", "Position", "onNameUpdated", "nameTextBoxRef", "NextSelectionDown", "defaultName"}]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 30
  CALL R19 4 1
  SETTABLEKS R19 R18 K18 ["Size"]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 15
  CALL R19 4 1
  SETTABLEKS R19 R18 K71 ["Position"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K95 ["onAssetNameUpdated"]
  SETTABLEKS R19 R18 K91 ["onNameUpdated"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K19 ["nameTextBoxRef"]
  SETTABLEKS R19 R18 K19 ["nameTextBoxRef"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K96 ["descriptionTextBoxRef"]
  SETTABLEKS R19 R18 K92 ["NextSelectionDown"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K97 ["assetName"]
  SETTABLEKS R19 R18 K93 ["defaultName"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K75 ["NameInput"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["createElement"]
  LOADK R17 K79 ["TextLabel"]
  DUPTABLE R18 K98 [{"Size", "Position", "Font", "TextSize", "Text", "TextColor3", "BackgroundTransparency", "TextXAlignment"}]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 15
  CALL R19 4 1
  SETTABLEKS R19 R18 K18 ["Size"]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 60
  CALL R19 4 1
  SETTABLEKS R19 R18 K71 ["Position"]
  GETTABLEKS R20 R1 K85 ["Body"]
  GETTABLEKS R19 R20 K0 ["Font"]
  SETTABLEKS R19 R18 K0 ["Font"]
  LOADN R19 12
  SETTABLEKS R19 R18 K81 ["TextSize"]
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K99 ["description"]
  SETTABLEKS R19 R18 K80 ["Text"]
  GETTABLEKS R20 R2 K87 ["TextDefault"]
  GETTABLEKS R19 R20 K88 ["Color"]
  SETTABLEKS R19 R18 K82 ["TextColor3"]
  LOADN R19 1
  SETTABLEKS R19 R18 K14 ["BackgroundTransparency"]
  GETIMPORT R19 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K83 ["TextXAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K76 ["DescriptionLabel"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K103 [{"Size", "Position", "onAssetDescriptionUpdated", "descriptionTextBoxRef", "NextSelectionUp", "defaultDescription"}]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 80
  CALL R19 4 1
  SETTABLEKS R19 R18 K18 ["Size"]
  GETIMPORT R19 K17 [UDim2.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  LOADN R23 75
  CALL R19 4 1
  SETTABLEKS R19 R18 K71 ["Position"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K100 ["onAssetDescriptionUpdated"]
  SETTABLEKS R19 R18 K100 ["onAssetDescriptionUpdated"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K96 ["descriptionTextBoxRef"]
  SETTABLEKS R19 R18 K96 ["descriptionTextBoxRef"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K19 ["nameTextBoxRef"]
  SETTABLEKS R19 R18 K101 ["NextSelectionUp"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K104 ["assetDescription"]
  SETTABLEKS R19 R18 K102 ["defaultDescription"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K77 ["DescriptionInput"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K33 ["NameDescriptionFields"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K24 ["TopSection"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["createElement"]
  LOADK R9 K79 ["TextLabel"]
  DUPTABLE R10 K106 [{"Size", "Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "AnchorPoint", "Position", "TextWrapped"}]
  GETIMPORT R11 K17 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 50
  CALL R11 4 1
  SETTABLEKS R11 R10 K18 ["Size"]
  GETUPVAL R12 9
  GETTABLEKS R11 R12 K107 ["disclaimer"]
  SETTABLEKS R11 R10 K80 ["Text"]
  GETTABLEKS R12 R1 K85 ["Body"]
  GETTABLEKS R11 R12 K0 ["Font"]
  SETTABLEKS R11 R10 K0 ["Font"]
  LOADN R11 12
  SETTABLEKS R11 R10 K81 ["TextSize"]
  GETTABLEKS R12 R2 K108 ["TextEmphasis"]
  GETTABLEKS R11 R12 K88 ["Color"]
  SETTABLEKS R11 R10 K82 ["TextColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["BackgroundTransparency"]
  GETIMPORT R11 K30 [Vector2.new]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K70 ["AnchorPoint"]
  GETIMPORT R11 K42 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K71 ["Position"]
  LOADB R11 1
  SETTABLEKS R11 R10 K105 ["TextWrapped"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K25 ["Disclaimer"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_13:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R2 1 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["renderMiddle"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"title", "buttonStackInfo", "middleContent", "screenSize", "defaultChildRef", "isMiddleContentFocusable"}]
  GETTABLEKS R5 R1 K1 ["title"]
  SETTABLEKS R5 R4 K1 ["title"]
  DUPTABLE R5 K9 [{"buttons"}]
  NEWTABLE R6 0 2
  DUPTABLE R7 K12 [{"props", "isDefaultChild"}]
  DUPTABLE R8 K15 [{"onActivated", "text"}]
  GETUPVAL R10 2
  JUMPIFNOT R10 [+3]
  GETTABLEKS R9 R0 K16 ["denyAndClose"]
  JUMP [+2]
  GETTABLEKS R9 R0 K17 ["closePrompt"]
  SETTABLEKS R9 R8 K13 ["onActivated"]
  GETTABLEKS R9 R1 K18 ["cancel"]
  SETTABLEKS R9 R8 K14 ["text"]
  SETTABLEKS R8 R7 K10 ["props"]
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["isDefaultChild"]
  DUPTABLE R8 K20 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K21 ["PrimarySystem"]
  SETTABLEKS R9 R8 K19 ["buttonType"]
  DUPTABLE R9 K25 [{"onActivated", "text", "isDelayedInput", "enableInputDelayed", "delayInputSeconds"}]
  GETTABLEKS R10 R0 K26 ["confirmAndUpload"]
  SETTABLEKS R10 R9 K13 ["onActivated"]
  GETTABLEKS R10 R1 K27 ["submit"]
  SETTABLEKS R10 R9 K14 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K22 ["isDelayedInput"]
  LOADB R10 1
  SETTABLEKS R10 R9 K23 ["enableInputDelayed"]
  LOADN R10 3
  SETTABLEKS R10 R9 K24 ["delayInputSeconds"]
  SETTABLEKS R9 R8 K10 ["props"]
  LOADB R9 0
  SETTABLEKS R9 R8 K11 ["isDefaultChild"]
  SETLIST R6 R7 2 [1]
  SETTABLEKS R6 R5 K8 ["buttons"]
  SETTABLEKS R5 R4 K2 ["buttonStackInfo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K3 ["middleContent"]
  GETTABLEKS R6 R0 K10 ["props"]
  GETTABLEKS R5 R6 K4 ["screenSize"]
  SETTABLEKS R5 R4 K4 ["screenSize"]
  GETTABLEKS R6 R0 K10 ["props"]
  GETTABLEKS R5 R6 K5 ["defaultChildRef"]
  SETTABLEKS R5 R4 K5 ["defaultChildRef"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["isMiddleContentFocusable"]
  CALL R2 2 1
  GETUPVAL R3 4
  JUMPIFNOT R3 [+117]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K28 ["createFragment"]
  DUPTABLE R4 K32 [{"Prompt", "ThumbnailEditor", "PreviewFrame"}]
  SETTABLEKS R2 R4 K29 ["Prompt"]
  GETTABLEKS R7 R0 K33 ["state"]
  GETTABLEKS R6 R7 K34 ["showingThumbnailEditor"]
  JUMPIFNOT R6 [+33]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K39 [{"animationClip", "initialThumbnailParameters", "screenSize", "updateThumbnailCallback", "closePromptCallback"}]
  GETTABLEKS R9 R0 K10 ["props"]
  GETTABLEKS R8 R9 K40 ["assetInstance"]
  SETTABLEKS R8 R7 K35 ["animationClip"]
  GETTABLEKS R9 R0 K33 ["state"]
  GETTABLEKS R8 R9 K41 ["thumbnailParameters"]
  SETTABLEKS R8 R7 K36 ["initialThumbnailParameters"]
  GETTABLEKS R9 R0 K10 ["props"]
  GETTABLEKS R8 R9 K4 ["screenSize"]
  SETTABLEKS R8 R7 K4 ["screenSize"]
  GETTABLEKS R8 R0 K42 ["updateThumbnailParameters"]
  SETTABLEKS R8 R7 K37 ["updateThumbnailCallback"]
  GETTABLEKS R8 R0 K43 ["closeThumbnailEditor"]
  SETTABLEKS R8 R7 K38 ["closePromptCallback"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K30 ["ThumbnailEditor"]
  GETTABLEKS R7 R0 K33 ["state"]
  GETTABLEKS R6 R7 K44 ["showingAssetPreview"]
  JUMPIFNOT R6 [+60]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  LOADK R6 K45 ["Frame"]
  DUPTABLE R7 K51 [{"Size", "BackgroundColor3", "AnchorPoint", "Position", "BackgroundTransparency"}]
  GETIMPORT R8 K54 [UDim2.new]
  LOADK R9 K55 [0.5]
  LOADN R10 0
  LOADK R11 K55 [0.5]
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K46 ["Size"]
  GETIMPORT R8 K57 [Color3.new]
  LOADK R9 K58 [0.2]
  LOADK R10 K58 [0.2]
  LOADK R11 K58 [0.2]
  CALL R8 3 1
  SETTABLEKS R8 R7 K47 ["BackgroundColor3"]
  GETIMPORT R8 K60 [Vector2.new]
  LOADK R9 K55 [0.5]
  LOADK R10 K55 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K48 ["AnchorPoint"]
  GETIMPORT R8 K62 [UDim2.fromScale]
  LOADK R9 K55 [0.5]
  LOADK R10 K55 [0.5]
  CALL R8 2 1
  SETTABLEKS R8 R7 K49 ["Position"]
  LOADN R8 0
  SETTABLEKS R8 R7 K50 ["BackgroundTransparency"]
  DUPTABLE R8 K64 [{"PreviewViewport"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K67 [{"asset", "closePreviewView"}]
  GETTABLEKS R13 R0 K10 ["props"]
  GETTABLEKS R12 R13 K40 ["assetInstance"]
  SETTABLEKS R12 R11 K65 ["asset"]
  GETTABLEKS R12 R0 K68 ["closeAssetPreview"]
  SETTABLEKS R12 R11 K66 ["closePreviewView"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K63 ["PreviewViewport"]
  CALL R5 3 1
  JUMPIF R5 [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K31 ["PreviewFrame"]
  CALL R3 1 -1
  RETURN R3 -1
  RETURN R2 1

PROTO_16:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOTEQKB R1 TRUE [+3]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_17:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  LOADK R4 K0 ["CoreScripts.PublishAssetPrompt.Name"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["name"]
  GETUPVAL R2 0
  LOADK R4 K3 ["CoreScripts.PublishAssetPrompt.Description"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K4 ["description"]
  GETUPVAL R2 0
  LOADK R4 K5 ["CoreScripts.PublishAssetPrompt.InvalidName"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K6 ["invalidName"]
  GETUPVAL R2 0
  LOADK R4 K7 ["CoreScripts.PublishAssetPrompt.InvalidDescription"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K8 ["invalidDescription"]
  GETUPVAL R2 0
  LOADK R4 K9 ["CoreScripts.PublishAssetPrompt.Cancel"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K10 ["cancel"]
  GETUPVAL R2 0
  LOADK R4 K11 ["CoreScripts.PublishAssetPrompt.Submit"]
  NAMECALL R2 R2 K1 ["FormatByKey"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K12 ["submit"]
  GETUPVAL R4 1
  GETTABLE R3 R4 R0
  JUMPIFNOTEQKB R3 TRUE [+3]
  LOADB R2 1
  JUMP [+1]
  LOADB R2 0
  JUMPIFNOT R2 [+15]
  GETUPVAL R3 0
  LOADK R5 K13 ["CoreScripts.PublishAssetPrompt.TitleTextClothing"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K14 ["title"]
  GETUPVAL R3 0
  LOADK R5 K15 ["CoreScripts.PublishAssetPrompt.DisclaimerAvatar"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K16 ["disclaimer"]
  RETURN R1 1
  GETIMPORT R3 K20 [Enum.AssetType.EmoteAnimation]
  JUMPIFNOTEQ R0 R3 [+16]
  GETUPVAL R3 0
  LOADK R5 K21 ["CoreScripts.PublishAssetPrompt.TitleTextEmote"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K14 ["title"]
  GETUPVAL R3 0
  LOADK R5 K22 ["CoreScripts.PublishAssetPrompt.DisclaimerEmote"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K16 ["disclaimer"]
  RETURN R1 1
  GETIMPORT R3 K24 [Enum.AssetType.Model]
  JUMPIFNOTEQ R0 R3 [+16]
  GETUPVAL R3 0
  LOADK R5 K25 ["CoreScripts.PublishAssetPrompt.TitleTextModel"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K14 ["title"]
  GETUPVAL R3 0
  LOADK R5 K26 ["CoreScripts.PublishAssetPrompt.DisclaimerModel"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K16 ["disclaimer"]
  RETURN R1 1
  GETIMPORT R3 K28 [Enum.AssetType.Package]
  JUMPIFNOTEQ R0 R3 [+15]
  GETUPVAL R3 0
  LOADK R5 K29 ["CoreScripts.PublishAssetPrompt.TitleTextPackage"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K14 ["title"]
  GETUPVAL R3 0
  LOADK R5 K26 ["CoreScripts.PublishAssetPrompt.DisclaimerModel"]
  NAMECALL R3 R3 K1 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R1 K16 ["disclaimer"]
  RETURN R1 1

PROTO_18:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["assetType"]
  CALL R1 1 1
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["renderAlertLocalized"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_19:
  DUPTABLE R1 K4 [{"assetInstance", "assetType", "guid", "scopes"}]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["assetInstance"]
  SETTABLEKS R2 R1 K0 ["assetInstance"]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["assetType"]
  SETTABLEKS R2 R1 K1 ["assetType"]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K2 ["guid"]
  SETTABLEKS R2 R1 K2 ["guid"]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K3 ["scopes"]
  SETTABLEKS R2 R1 K3 ["scopes"]
  RETURN R1 1

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_21:
  DUPTABLE R1 K1 [{"closePrompt"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["closePrompt"]
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
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ExperienceAuthService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["Players"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K9 ["Packages"]
  GETTABLEKS R6 R7 K11 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K12 ["t"]
  CALL R6 1 1
  LOADK R9 K13 ["RobloxGui"]
  NAMECALL R7 R1 K14 ["WaitForChild"]
  CALL R7 2 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R7 K15 ["Modules"]
  GETTABLEKS R9 R10 K16 ["RobloxTranslator"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R0 K9 ["Packages"]
  GETTABLEKS R10 R11 K17 ["UIBlox"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K18 ["Style"]
  GETTABLEKS R10 R11 K19 ["withStyle"]
  GETTABLEKS R14 R9 K20 ["App"]
  GETTABLEKS R13 R14 K21 ["Dialog"]
  GETTABLEKS R12 R13 K22 ["Alert"]
  GETTABLEKS R11 R12 K23 ["InteractiveAlert"]
  GETTABLEKS R15 R9 K20 ["App"]
  GETTABLEKS R14 R15 K24 ["Button"]
  GETTABLEKS R13 R14 K25 ["Enum"]
  GETTABLEKS R12 R13 K26 ["ButtonType"]
  GETTABLEKS R15 R9 K20 ["App"]
  GETTABLEKS R14 R15 K24 ["Button"]
  GETTABLEKS R13 R14 K27 ["IconButton"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R16 R0 K9 ["Packages"]
  GETTABLEKS R15 R16 K28 ["RoactGamepad"]
  CALL R14 1 1
  GETTABLEKS R15 R3 K29 ["LocalPlayer"]
  GETIMPORT R16 K8 [require]
  GETIMPORT R20 K31 [script]
  GETTABLEKS R19 R20 K32 ["Parent"]
  GETTABLEKS R18 R19 K33 ["Common"]
  GETTABLEKS R17 R18 K34 ["NameTextBox"]
  CALL R16 1 1
  GETIMPORT R17 K8 [require]
  GETIMPORT R20 K31 [script]
  GETTABLEKS R19 R20 K32 ["Parent"]
  GETTABLEKS R18 R19 K35 ["AssetDescriptionTextBox"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETIMPORT R21 K31 [script]
  GETTABLEKS R20 R21 K32 ["Parent"]
  GETTABLEKS R19 R20 K36 ["ObjectViewport"]
  CALL R18 1 1
  GETIMPORT R19 K8 [require]
  GETIMPORT R23 K31 [script]
  GETTABLEKS R22 R23 K32 ["Parent"]
  GETTABLEKS R21 R22 K33 ["Common"]
  GETTABLEKS R20 R21 K37 ["PreviewViewport"]
  CALL R19 1 1
  GETIMPORT R20 K8 [require]
  GETIMPORT R23 K31 [script]
  GETTABLEKS R22 R23 K32 ["Parent"]
  GETTABLEKS R21 R22 K38 ["EmoteThumbnailView"]
  CALL R20 1 1
  GETIMPORT R21 K8 [require]
  GETIMPORT R24 K31 [script]
  GETTABLEKS R23 R24 K32 ["Parent"]
  GETTABLEKS R22 R23 K39 ["EmoteThumbnailEditor"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETIMPORT R25 K31 [script]
  GETTABLEKS R24 R25 K32 ["Parent"]
  GETTABLEKS R23 R24 K40 ["EmoteThumbnailParameters"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETIMPORT R28 K31 [script]
  GETTABLEKS R27 R28 K32 ["Parent"]
  GETTABLEKS R26 R27 K32 ["Parent"]
  GETTABLEKS R25 R26 K41 ["Actions"]
  GETTABLEKS R24 R25 K42 ["CloseOpenPrompt"]
  CALL R23 1 1
  GETTABLEKS R26 R9 K20 ["App"]
  GETTABLEKS R25 R26 K43 ["ImageSet"]
  GETTABLEKS R24 R25 K44 ["Images"]
  GETTABLEKS R25 R24 K45 ["icons/actions/previewExpand"]
  GETTABLEKS R26 R24 K46 ["icons/actions/edit/edit"]
  NEWTABLE R27 16 0
  GETIMPORT R28 K49 [Enum.AssetType.TShirtAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K51 [Enum.AssetType.ShirtAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K53 [Enum.AssetType.PantsAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K55 [Enum.AssetType.JacketAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K57 [Enum.AssetType.SweaterAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K59 [Enum.AssetType.ShortsAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K61 [Enum.AssetType.LeftShoeAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K63 [Enum.AssetType.RightShoeAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K65 [Enum.AssetType.DressSkirtAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R28 K67 [Enum.AssetType.HairAccessory]
  LOADB R29 1
  SETTABLE R29 R27 R28
  GETIMPORT R30 K31 [script]
  GETTABLEKS R29 R30 K32 ["Parent"]
  GETTABLEKS R28 R29 K32 ["Parent"]
  GETIMPORT R29 K8 [require]
  GETTABLEKS R30 R28 K68 ["GetFFlagValidateDescription"]
  CALL R29 1 1
  GETIMPORT R30 K1 [game]
  LOADK R32 K69 ["SendConsentDeniedOnCancel"]
  LOADB R33 0
  NAMECALL R30 R30 K70 ["DefineFastFlag"]
  CALL R30 3 1
  GETIMPORT R31 K1 [game]
  LOADK R33 K71 ["EnableEmotePublish"]
  NAMECALL R31 R31 K72 ["GetEngineFeature"]
  CALL R31 2 1
  GETTABLEKS R32 R4 K73 ["PureComponent"]
  LOADK R34 K74 ["PublishAssetPromptSingleStep"]
  NAMECALL R32 R32 K75 ["extend"]
  CALL R32 2 1
  GETTABLEKS R33 R6 K76 ["strictInterface"]
  DUPTABLE R34 K83 [{"screenSize", "assetInstance", "assetType", "guid", "scopes", "closePrompt"}]
  GETTABLEKS R35 R6 K84 ["Vector2"]
  SETTABLEKS R35 R34 K77 ["screenSize"]
  GETTABLEKS R35 R6 K85 ["Instance"]
  SETTABLEKS R35 R34 K78 ["assetInstance"]
  GETTABLEKS R35 R6 K86 ["enum"]
  GETIMPORT R36 K87 [Enum.AssetType]
  CALL R35 1 1
  SETTABLEKS R35 R34 K79 ["assetType"]
  GETTABLEKS R35 R6 K88 ["any"]
  SETTABLEKS R35 R34 K80 ["guid"]
  GETTABLEKS R35 R6 K88 ["any"]
  SETTABLEKS R35 R34 K81 ["scopes"]
  GETTABLEKS R35 R6 K89 ["callback"]
  SETTABLEKS R35 R34 K82 ["closePrompt"]
  CALL R33 1 1
  SETTABLEKS R33 R32 K90 ["validateProps"]
  DUPCLOSURE R33 K91 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R33 R32 K92 ["getDefaultText"]
  DUPCLOSURE R33 K93 [PROTO_11]
  CAPTURE VAL R22
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R31
  CAPTURE VAL R4
  SETTABLEKS R33 R32 K94 ["init"]
  DUPCLOSURE R33 K95 [PROTO_13]
  CAPTURE VAL R10
  CAPTURE VAL R31
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R13
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R33 R32 K96 ["renderMiddle"]
  DUPCLOSURE R33 K97 [PROTO_15]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R30
  CAPTURE VAL R12
  CAPTURE VAL R31
  CAPTURE VAL R21
  CAPTURE VAL R19
  SETTABLEKS R33 R32 K98 ["renderAlertLocalized"]
  DUPCLOSURE R33 K99 [PROTO_16]
  CAPTURE VAL R27
  DUPCLOSURE R34 K100 [PROTO_17]
  CAPTURE VAL R8
  CAPTURE VAL R27
  DUPCLOSURE R35 K101 [PROTO_18]
  CAPTURE VAL R34
  SETTABLEKS R35 R32 K102 ["render"]
  DUPCLOSURE R35 K103 [PROTO_19]
  DUPCLOSURE R36 K104 [PROTO_21]
  CAPTURE VAL R23
  GETTABLEKS R37 R5 K105 ["connect"]
  MOVE R38 R35
  MOVE R39 R36
  CALL R37 2 1
  MOVE R38 R32
  CALL R37 1 -1
  RETURN R37 -1
