PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendButtonClicked"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Section"]
  GETTABLEKS R1 R2 K2 ["BuyCreationPage"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Element"]
  GETTABLEKS R2 R3 K4 ["Expand"]
  CALL R0 2 0
  GETUPVAL R0 1
  DUPTABLE R2 K6 [{"showingPreviewView"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["showingPreviewView"]
  NAMECALL R0 R0 K7 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingPreviewView"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showingPreviewView"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["isNameValid"]
  JUMPIFNOT R0 [+19]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K2 ["isDescValid"]
  JUMPIFNOT R0 [+13]
  LOADB R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["humanoidModel"]
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K5 ["purchasePromptReady"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sendButtonClicked"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Section"]
  GETTABLEKS R1 R2 K2 ["BuyCreationPage"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Element"]
  GETTABLEKS R2 R3 K4 ["Buy"]
  CALL R0 2 0
  NEWTABLE R0 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["state"]
  GETTABLEKS R1 R2 K6 ["name"]
  SETTABLEKS R1 R0 K6 ["name"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["state"]
  GETTABLEKS R1 R2 K7 ["description"]
  SETTABLEKS R1 R0 K7 ["description"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["initiateAvatarCreationFeePurchase"]
  JUMPIFNOT R1 [+21]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["initiateAvatarCreationFeePurchase"]
  MOVE R2 R0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["props"]
  GETTABLEKS R3 R4 K10 ["guid"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["props"]
  GETTABLEKS R4 R5 K11 ["humanoidModel"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["props"]
  GETTABLEKS R5 R6 K12 ["priceInRobux"]
  CALL R1 4 0
  RETURN R0 0
  GETUPVAL R1 3
  LOADK R2 K13 ["PurchasePrompt.initiateAvatarCreationFeePurchase is not available"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"name", "isNameValid"}]
  SETTABLEKS R0 R4 K0 ["name"]
  SETTABLEKS R1 R4 K1 ["isNameValid"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["sentNameFieldTouched"]
  JUMPIF R2 [+18]
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["sentNameFieldTouched"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["sendFieldTouched"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["Section"]
  GETTABLEKS R3 R4 K7 ["BuyCreationPage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["Element"]
  GETTABLEKS R4 R5 K9 ["Name"]
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"description", "isDescValid"}]
  SETTABLEKS R0 R4 K0 ["description"]
  SETTABLEKS R1 R4 K1 ["isDescValid"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["sentDescriptionFieldTouched"]
  JUMPIF R2 [+18]
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["sentDescriptionFieldTouched"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["sendFieldTouched"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["Section"]
  GETTABLEKS R3 R4 K7 ["BuyCreationPage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["Element"]
  GETTABLEKS R4 R5 K9 ["Description"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["hasCompletedPurchase"]
  GETTABLEKS R2 R0 K1 ["isShown"]
  JUMPIFNOT R1 [+9]
  JUMPIF R2 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["SetPromptVisibility"]
  LOADB R4 0
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 0
  DUPTABLE R5 K5 [{"showTopScrim"}]
  SETTABLEKS R2 R5 K4 ["showTopScrim"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  DUPTABLE R5 K8 [{"purchasePromptReady"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K7 ["purchasePromptReady"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"purchasePromptReady"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["purchasePromptReady"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LocalPlayer"]
  FASTCALL2K ASSERT R1 K1 [+5]
  MOVE R3 R1
  LOADK R4 K1 ["LocalPlayer must not be nil"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  DUPTABLE R4 K11 [{"showingPreviewView", "name", "isNameValid", "description", "isDescValid", "showTopScrim", "purchasePromptReady"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["showingPreviewView"]
  GETTABLEKS R6 R1 K12 ["Name"]
  LOADK R7 K13 ["'s Body"]
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K5 ["name"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["isNameValid"]
  GETTABLEKS R6 R1 K12 ["Name"]
  LOADK R7 K13 ["'s Body"]
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K7 ["description"]
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["isDescValid"]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["showTopScrim"]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["purchasePromptReady"]
  NAMECALL R2 R0 K14 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K15 ["openPreviewView"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["closePreviewView"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K17 ["canSubmit"]
  NEWCLOSURE R2 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K18 ["onSubmit"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K19 ["onNameUpdated"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K20 ["onDescriptionUpdated"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K21 ["onWindowStateChanged"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K22 ["onPromptStateSetToNone"]
  RETURN R0 0

PROTO_9:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["sentNameFieldTouched"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["sentDescriptionFieldTouched"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["windowStateChangedEvent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["promptStateSetToNoneEvent"]
  JUMPIFNOT R1 [+16]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R5 R0 K4 ["onWindowStateChanged"]
  NAMECALL R3 R1 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["windowStateChangedConnection"]
  GETTABLEKS R5 R0 K7 ["onPromptStateSetToNone"]
  NAMECALL R3 R2 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K8 ["promptStateSetToNoneConnection"]
  JUMP [+3]
  GETUPVAL R3 1
  LOADK R4 K9 ["PurchasePrompt.windowStateChangedEvent or PurchasePrompt.promptStateSetToNoneEvent is not available"]
  CALL R3 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["sendPageLoad"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["Section"]
  GETTABLEKS R4 R5 K12 ["BuyCreationPage"]
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["windowStateChangedConnection"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K0 ["windowStateChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  JUMP [+3]
  GETUPVAL R1 0
  LOADK R2 K2 ["windowStateChangedConnection was not established"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["promptStateSetToNoneConnection"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K3 ["promptStateSetToNoneConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 0
  LOADK R2 K4 ["promptStateSetToNoneConnection was not established"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createFragment"]
  DUPTABLE R2 K7 [{"UIListLayout", "UIPadding", "EmbeddedPreview", "DescriptionInput", "InfoList", "AvatarPartGrid"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  LOADK R4 K1 ["UIListLayout"]
  DUPTABLE R5 K13 [{"Padding", "HorizontalAlignment", "SortOrder", "FillDirection"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K9 ["Padding"]
  GETIMPORT R6 K16 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R6 R5 K10 ["HorizontalAlignment"]
  GETIMPORT R6 K18 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R6 R5 K11 ["SortOrder"]
  GETIMPORT R6 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R6 R5 K12 ["FillDirection"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["UIListLayout"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  LOADK R4 K2 ["UIPadding"]
  DUPTABLE R5 K23 [{"PaddingBottom", "PaddingTop"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K21 ["PaddingBottom"]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K22 ["PaddingTop"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["UIPadding"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K29 [{"openPreviewView", "model", "isLoading", "useFullBodyCameraSettings", "fieldOfView", "LayoutOrder"}]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K24 ["openPreviewView"]
  SETTABLEKS R6 R5 K24 ["openPreviewView"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K30 ["props"]
  GETTABLEKS R6 R7 K31 ["humanoidModel"]
  SETTABLEKS R6 R5 K25 ["model"]
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K26 ["isLoading"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["useFullBodyCameraSettings"]
  LOADN R6 30
  SETTABLEKS R6 R5 K28 ["fieldOfView"]
  LOADN R6 1
  SETTABLEKS R6 R5 K17 ["LayoutOrder"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["EmbeddedPreview"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 5
  DUPTABLE R5 K39 [{"LayoutOrder", "labelText", "centerText", "defaultText", "maxLength", "onTextUpdated", "textBoxHeight", "invalidInputText"}]
  LOADN R6 2
  SETTABLEKS R6 R5 K17 ["LayoutOrder"]
  GETUPVAL R6 6
  LOADK R8 K40 ["CoreScripts.PublishAssetPrompt.Description"]
  NAMECALL R6 R6 K41 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K32 ["labelText"]
  LOADB R6 0
  SETTABLEKS R6 R5 K33 ["centerText"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K42 ["state"]
  GETTABLEKS R6 R7 K43 ["description"]
  SETTABLEKS R6 R5 K34 ["defaultText"]
  LOADN R6 232
  SETTABLEKS R6 R5 K35 ["maxLength"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K44 ["onDescriptionUpdated"]
  SETTABLEKS R6 R5 K36 ["onTextUpdated"]
  LOADN R6 104
  SETTABLEKS R6 R5 K37 ["textBoxHeight"]
  GETUPVAL R7 7
  JUMPIFNOT R7 [+6]
  GETUPVAL R6 6
  LOADK R8 K45 ["CoreScripts.PublishAssetPrompt.InvalidDescription"]
  NAMECALL R6 R6 K41 ["FormatByKey"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K38 ["invalidInputText"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["DescriptionInput"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 8
  DUPTABLE R5 K47 [{"typeName", "LayoutOrder"}]
  GETUPVAL R6 6
  LOADK R8 K48 ["Feature.Catalog.Label.Body"]
  NAMECALL R6 R6 K41 ["FormatByKey"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K46 ["typeName"]
  LOADN R6 3
  SETTABLEKS R6 R5 K17 ["LayoutOrder"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["InfoList"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["createElement"]
  GETUPVAL R4 9
  DUPTABLE R5 K51 [{"humanoidModel", "name", "LayoutOrder", "screenSize"}]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K30 ["props"]
  GETTABLEKS R6 R7 K31 ["humanoidModel"]
  SETTABLEKS R6 R5 K31 ["humanoidModel"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K42 ["state"]
  GETTABLEKS R6 R7 K49 ["name"]
  SETTABLEKS R6 R5 K49 ["name"]
  LOADN R6 4
  SETTABLEKS R6 R5 K17 ["LayoutOrder"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K30 ["props"]
  GETTABLEKS R6 R7 K50 ["screenSize"]
  SETTABLEKS R6 R5 K50 ["screenSize"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["AvatarPartGrid"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_12:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["humanoidModel"]
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CALL R2 1 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Players must not be nil"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K18 [{"promptBody", "screenSize", "showingPreviewView", "closePreviewView", "asset", "nameLabel", "defaultName", "titleText", "onNameUpdated", "canSubmit", "onSubmit", "delayInputSeconds", "priceInRobux", "showTopScrim"}]
  NAMECALL R4 R0 K19 ["renderPromptBody"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["promptBody"]
  GETTABLEKS R5 R0 K20 ["props"]
  GETTABLEKS R4 R5 K5 ["screenSize"]
  SETTABLEKS R4 R3 K5 ["screenSize"]
  GETTABLEKS R5 R0 K21 ["state"]
  GETTABLEKS R4 R5 K6 ["showingPreviewView"]
  SETTABLEKS R4 R3 K6 ["showingPreviewView"]
  GETTABLEKS R4 R0 K7 ["closePreviewView"]
  SETTABLEKS R4 R3 K7 ["closePreviewView"]
  GETTABLEKS R5 R0 K20 ["props"]
  GETTABLEKS R4 R5 K22 ["humanoidModel"]
  SETTABLEKS R4 R3 K8 ["asset"]
  GETUPVAL R4 3
  LOADK R6 K23 ["CoreScripts.PublishAvatarPrompt.BodyName"]
  NAMECALL R4 R4 K24 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["nameLabel"]
  GETTABLEKS R5 R0 K21 ["state"]
  GETTABLEKS R4 R5 K25 ["name"]
  SETTABLEKS R4 R3 K10 ["defaultName"]
  GETUPVAL R4 3
  LOADK R6 K26 ["CoreScripts.PublishAvatarPrompt.BuyCreation"]
  NAMECALL R4 R4 K24 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["titleText"]
  GETTABLEKS R4 R0 K12 ["onNameUpdated"]
  SETTABLEKS R4 R3 K12 ["onNameUpdated"]
  GETTABLEKS R4 R0 K13 ["canSubmit"]
  SETTABLEKS R4 R3 K13 ["canSubmit"]
  GETTABLEKS R4 R0 K14 ["onSubmit"]
  SETTABLEKS R4 R3 K14 ["onSubmit"]
  LOADN R4 3
  SETTABLEKS R4 R3 K15 ["delayInputSeconds"]
  GETTABLEKS R5 R0 K20 ["props"]
  GETTABLEKS R4 R5 K16 ["priceInRobux"]
  SETTABLEKS R4 R3 K16 ["priceInRobux"]
  GETTABLEKS R5 R0 K21 ["state"]
  GETTABLEKS R4 R5 K17 ["showTopScrim"]
  SETTABLEKS R4 R3 K17 ["showTopScrim"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_14:
  DUPTABLE R1 K4 [{"humanoidModel", "guid", "scopes", "priceInRobux"}]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K0 ["humanoidModel"]
  SETTABLEKS R2 R1 K0 ["humanoidModel"]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K1 ["guid"]
  SETTABLEKS R2 R1 K1 ["guid"]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K2 ["scopes"]
  SETTABLEKS R2 R1 K2 ["scopes"]
  GETTABLEKS R4 R0 K5 ["promptRequest"]
  GETTABLEKS R3 R4 K6 ["promptInfo"]
  GETTABLEKS R2 R3 K3 ["priceInRobux"]
  SETTABLEKS R2 R1 K3 ["priceInRobux"]
  RETURN R1 1

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K1 [{"SetPromptVisibility"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetPromptVisibility"]
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
  LOADK R4 K5 ["Players"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["t"]
  CALL R5 1 1
  LOADK R8 K12 ["RobloxGui"]
  NAMECALL R6 R1 K13 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R6 K14 ["Modules"]
  GETTABLEKS R8 R9 K15 ["RobloxTranslator"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETIMPORT R12 K17 [script]
  GETTABLEKS R11 R12 K18 ["Parent"]
  GETTABLEKS R10 R11 K19 ["AvatarParts"]
  GETTABLEKS R9 R10 K20 ["AvatarPartGrid"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R0 K8 ["Packages"]
  GETTABLEKS R10 R11 K21 ["UIBlox"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K22 ["Style"]
  GETTABLEKS R10 R11 K23 ["withStyle"]
  GETIMPORT R12 K7 [require]
  GETTABLEKS R15 R0 K24 ["Workspace"]
  GETTABLEKS R14 R15 K8 ["Packages"]
  GETTABLEKS R13 R14 K25 ["Loggers"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K26 ["mutedError"]
  GETIMPORT R14 K17 [script]
  GETTABLEKS R13 R14 K18 ["Parent"]
  GETTABLEKS R12 R13 K18 ["Parent"]
  GETIMPORT R13 K7 [require]
  GETTABLEKS R14 R12 K27 ["BasePublishPrompt"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R16 R12 K28 ["Common"]
  GETTABLEKS R15 R16 K29 ["ObjectViewport"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R17 R12 K28 ["Common"]
  GETTABLEKS R16 R17 K30 ["LabeledTextBox"]
  CALL R15 1 1
  GETIMPORT R16 K7 [require]
  GETTABLEKS R18 R12 K28 ["Common"]
  GETTABLEKS R17 R18 K31 ["PublishInfoList"]
  CALL R16 1 1
  GETIMPORT R17 K7 [require]
  GETTABLEKS R19 R6 K14 ["Modules"]
  GETTABLEKS R18 R19 K32 ["PurchasePrompt"]
  CALL R17 1 1
  GETTABLEKS R18 R17 K33 ["PublishAssetAnalytics"]
  GETIMPORT R23 K17 [script]
  GETTABLEKS R22 R23 K18 ["Parent"]
  GETTABLEKS R21 R22 K18 ["Parent"]
  GETTABLEKS R20 R21 K18 ["Parent"]
  GETTABLEKS R19 R20 K34 ["Actions"]
  GETIMPORT R20 K7 [require]
  GETTABLEKS R21 R19 K35 ["SetPromptVisibility"]
  CALL R20 1 1
  GETIMPORT R21 K7 [require]
  GETIMPORT R26 K17 [script]
  GETTABLEKS R25 R26 K18 ["Parent"]
  GETTABLEKS R24 R25 K18 ["Parent"]
  GETTABLEKS R23 R24 K18 ["Parent"]
  GETTABLEKS R22 R23 K36 ["FFlagPromptCreateAvatarDescriptionInvalidFix"]
  CALL R21 1 1
  GETIMPORT R22 K39 [UDim.new]
  LOADN R23 0
  LOADN R24 20
  CALL R22 2 1
  GETTABLEKS R23 R3 K40 ["PureComponent"]
  LOADK R25 K41 ["PublishAvatarPrompt"]
  NAMECALL R23 R23 K42 ["extend"]
  CALL R23 2 1
  GETTABLEKS R24 R5 K43 ["strictInterface"]
  DUPTABLE R25 K48 [{"screenSize", "humanoidModel", "guid", "scopes", "SetPromptVisibility"}]
  GETTABLEKS R26 R5 K49 ["Vector2"]
  SETTABLEKS R26 R25 K44 ["screenSize"]
  GETTABLEKS R26 R5 K50 ["optional"]
  GETTABLEKS R27 R5 K51 ["instanceOf"]
  LOADK R28 K52 ["Model"]
  CALL R27 1 -1
  CALL R26 -1 1
  SETTABLEKS R26 R25 K45 ["humanoidModel"]
  GETTABLEKS R26 R5 K53 ["any"]
  SETTABLEKS R26 R25 K46 ["guid"]
  GETTABLEKS R26 R5 K53 ["any"]
  SETTABLEKS R26 R25 K47 ["scopes"]
  GETTABLEKS R26 R5 K54 ["callback"]
  SETTABLEKS R26 R25 K35 ["SetPromptVisibility"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K55 ["validateProps"]
  DUPCLOSURE R24 K56 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R11
  SETTABLEKS R24 R23 K57 ["init"]
  DUPCLOSURE R24 K58 [PROTO_9]
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R18
  SETTABLEKS R24 R23 K59 ["didMount"]
  DUPCLOSURE R24 K60 [PROTO_10]
  CAPTURE VAL R11
  SETTABLEKS R24 R23 K61 ["willUnmount"]
  DUPCLOSURE R24 K62 [PROTO_12]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R22
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R8
  SETTABLEKS R24 R23 K63 ["renderPromptBody"]
  DUPCLOSURE R24 K64 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R7
  SETTABLEKS R24 R23 K65 ["render"]
  DUPCLOSURE R24 K66 [PROTO_14]
  DUPCLOSURE R25 K67 [PROTO_16]
  CAPTURE VAL R20
  GETTABLEKS R26 R4 K68 ["connect"]
  MOVE R27 R24
  MOVE R28 R25
  CALL R26 2 1
  MOVE R27 R23
  CALL R26 1 -1
  RETURN R26 -1
