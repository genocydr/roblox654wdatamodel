PROTO_0:
  DUPTABLE R1 K2 [{"abuseDescription", "typeOfAbuseIndex"}]
  LOADK R2 K3 [""]
  SETTABLEKS R2 R1 K0 ["abuseDescription"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["typeOfAbuseIndex"]
  SETTABLEKS R1 R0 K4 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K6 ["selectionGroupRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K7 ["reportTextEntryRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K8 ["reportDropDownRef"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"fontKey", "themeKey", "LayoutOrder", "Size", "Text"}]
  LOADK R7 K7 ["Header1"]
  SETTABLEKS R7 R6 K1 ["fontKey"]
  LOADK R7 K8 ["TextEmphasis"]
  SETTABLEKS R7 R6 K2 ["themeKey"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 48
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  SETTABLEKS R3 R6 K5 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K12 ["Title"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K13 ["Frame"]
  DUPTABLE R6 K17 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
  GETTABLEKS R9 R1 K18 ["Theme"]
  GETTABLEKS R8 R9 K19 ["Divider"]
  GETTABLEKS R7 R8 K20 ["Color"]
  SETTABLEKS R7 R6 K14 ["BackgroundColor3"]
  GETTABLEKS R9 R1 K18 ["Theme"]
  GETTABLEKS R8 R9 K19 ["Divider"]
  GETTABLEKS R7 R8 K21 ["Transparency"]
  SETTABLEKS R7 R6 K15 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K16 ["BorderSizePixel"]
  LOADN R7 2
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADK R8 K22 [0.8]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 1
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  CALL R4 2 1
  SETTABLEKS R4 R2 K19 ["Divider"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"abuseDescription"}]
  SETTABLEKS R0 R3 K0 ["abuseDescription"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  NEWTABLE R6 16 0
  GETTABLEKS R8 R0 K1 ["props"]
  GETTABLEKS R7 R8 K2 ["isOpen"]
  SETTABLEKS R7 R6 K3 ["enabled"]
  GETTABLEKS R8 R0 K4 ["state"]
  GETTABLEKS R7 R8 K5 ["abuseDescription"]
  SETTABLEKS R7 R6 K6 ["text"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K7 ["textChanged"]
  LOADN R7 160
  SETTABLEKS R7 R6 K8 ["maxTextLength"]
  GETTABLEKS R9 R0 K1 ["props"]
  GETTABLEKS R8 R9 K9 ["isGamepadLastInput"]
  NOT R7 R8
  SETTABLEKS R7 R6 K10 ["autoFocusOnEnabled"]
  GETTABLEKS R7 R1 K11 ["textboxPlaceHolder"]
  SETTABLEKS R7 R6 K12 ["PlaceholderText"]
  LOADN R7 5
  SETTABLEKS R7 R6 K13 ["LayoutOrder"]
  SETTABLEKS R3 R6 K14 ["Size"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["Ref"]
  GETTABLEKS R8 R0 K16 ["reportTextEntryRef"]
  SETTABLE R8 R6 R7
  CALL R4 2 1
  SETTABLEKS R4 R2 K17 ["ReportDescription"]
  RETURN R0 0

PROTO_4:
  LOADK R0 K0 ["Inappropriate Content"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["userId"]
  JUMPIFEQKNIL R1 [+8]
  GETUPVAL R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["state"]
  GETTABLEKS R2 R3 K4 ["typeOfAbuseIndex"]
  GETTABLE R0 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K5 ["dispatchSendReport"]
  MOVE R2 R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["state"]
  GETTABLEKS R3 R4 K6 ["abuseDescription"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["userId"]
  CALL R1 3 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K7 ["dispatchCloseReportDialog"]
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R4 K2 [utf8.len]
  GETIMPORT R5 K4 [utf8.nfcnormalize]
  GETTABLEKS R7 R0 K5 ["state"]
  GETTABLEKS R6 R7 K6 ["abuseDescription"]
  CALL R5 1 -1
  CALL R4 -1 1
  LOADB R5 0
  LOADN R6 0
  JUMPIFNOTLE R6 R4 [+6]
  LOADN R6 160
  JUMPIFLE R4 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  LOADB R6 1
  GETTABLEKS R8 R0 K5 ["state"]
  GETTABLEKS R7 R8 K7 ["typeOfAbuseIndex"]
  LOADN R8 0
  JUMPIFLT R8 R7 [+9]
  GETTABLEKS R8 R0 K8 ["props"]
  GETTABLEKS R7 R8 K9 ["userId"]
  JUMPIFEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["createElement"]
  LOADK R9 K11 ["Frame"]
  DUPTABLE R10 K15 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K12 ["BackgroundTransparency"]
  LOADN R11 6
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  GETIMPORT R11 K18 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 60
  CALL R11 4 1
  SETTABLEKS R11 R10 K14 ["Size"]
  DUPTABLE R11 K22 [{"Layout", "CancelButton", "ConfirmButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  LOADK R13 K23 ["UIListLayout"]
  DUPTABLE R14 K29 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R15 K32 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K24 ["FillDirection"]
  GETIMPORT R15 K34 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K25 ["HorizontalAlignment"]
  GETIMPORT R15 K36 [UDim.new]
  LOADN R16 0
  LOADN R17 12
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["Padding"]
  GETIMPORT R15 K37 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K27 ["SortOrder"]
  GETIMPORT R15 K39 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R15 R14 K28 ["VerticalAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["Layout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K45 [{"buttonType", "layoutOrder", "size", "text", "onActivated"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K46 ["Secondary"]
  SETTABLEKS R15 R14 K40 ["buttonType"]
  LOADN R15 1
  SETTABLEKS R15 R14 K41 ["layoutOrder"]
  GETIMPORT R15 K48 [UDim2.fromOffset]
  LOADN R16 144
  LOADN R17 36
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["size"]
  GETTABLEKS R15 R2 K49 ["cancel"]
  SETTABLEKS R15 R14 K43 ["text"]
  GETTABLEKS R16 R0 K8 ["props"]
  GETTABLEKS R15 R16 K50 ["dispatchCloseReportDialog"]
  SETTABLEKS R15 R14 K44 ["onActivated"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["CancelButton"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K52 [{"buttonType", "layoutOrder", "size", "isDisabled", "text", "onActivated"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K53 ["PrimarySystem"]
  SETTABLEKS R15 R14 K40 ["buttonType"]
  LOADN R15 2
  SETTABLEKS R15 R14 K41 ["layoutOrder"]
  GETIMPORT R15 K48 [UDim2.fromOffset]
  LOADN R16 144
  LOADN R17 36
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["size"]
  AND R16 R5 R6
  NOT R15 R16
  SETTABLEKS R15 R14 K51 ["isDisabled"]
  GETTABLEKS R15 R2 K54 ["report"]
  SETTABLEKS R15 R14 K43 ["text"]
  SETTABLEKS R7 R14 K44 ["onActivated"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["ConfirmButton"]
  CALL R8 3 1
  SETTABLEKS R8 R3 K55 ["ButtonContainer"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"typeOfAbuseIndex"}]
  SETTABLEKS R0 R3 K0 ["typeOfAbuseIndex"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  MOVE R6 R1
  MOVE R7 R3
  GETTABLEKS R8 R2 K0 ["reportPlayerTitle"]
  NAMECALL R4 R0 K1 ["renderReportTitle"]
  CALL R4 4 0
  DUPTABLE R4 K5 [{"AnchorPoint", "Position", "Size"}]
  GETIMPORT R5 K8 [Vector2.new]
  LOADN R6 0
  LOADK R7 K9 [0.5]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["AnchorPoint"]
  GETIMPORT R5 K11 [UDim2.new]
  LOADK R6 K9 [0.5]
  LOADN R7 116
  LOADK R8 K9 [0.5]
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Position"]
  GETIMPORT R5 K11 [UDim2.new]
  LOADN R6 0
  LOADN R7 44
  LOADN R8 0
  LOADN R9 44
  CALL R5 4 1
  SETTABLEKS R5 R4 K4 ["Size"]
  GETTABLEKS R6 R0 K12 ["props"]
  GETTABLEKS R5 R6 K13 ["userId"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["createElement"]
  LOADK R7 K15 ["Frame"]
  DUPTABLE R8 K18 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  LOADN R9 3
  SETTABLEKS R9 R8 K17 ["LayoutOrder"]
  GETIMPORT R9 K11 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 68
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  DUPTABLE R9 K23 [{"PlayerCutout", "PlayerIcon", "PlayerBackground", "PlayerName"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  GETUPVAL R11 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["Dictionary"]
  GETTABLEKS R12 R13 K25 ["join"]
  MOVE R13 R4
  DUPTABLE R14 K29 [{"BackgroundTransparency", "Image", "ImageColor3", "ZIndex"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K16 ["BackgroundTransparency"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K30 ["Images"]
  GETTABLEKS R15 R16 K31 ["CircleCutout"]
  SETTABLEKS R15 R14 K26 ["Image"]
  GETTABLEKS R17 R1 K32 ["Theme"]
  GETTABLEKS R16 R17 K33 ["BackgroundUIDefault"]
  GETTABLEKS R15 R16 K34 ["Color"]
  SETTABLEKS R15 R14 K27 ["ImageColor3"]
  LOADN R15 2
  SETTABLEKS R15 R14 K28 ["ZIndex"]
  CALL R12 2 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K19 ["PlayerCutout"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  GETUPVAL R11 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["Dictionary"]
  GETTABLEKS R12 R13 K25 ["join"]
  MOVE R13 R4
  DUPTABLE R14 K35 [{"BackgroundTransparency", "Image"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K16 ["BackgroundTransparency"]
  LOADN R16 0
  JUMPIFNOTLT R16 R5 [+6]
  LOADK R16 K36 ["rbxthumb://type=AvatarHeadShot&id="]
  MOVE R17 R5
  LOADK R18 K37 ["&w=48&h=48"]
  CONCAT R15 R16 R18
  JUMPIF R15 [+1]
  LOADK R15 K38 [""]
  SETTABLEKS R15 R14 K26 ["Image"]
  CALL R12 2 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K20 ["PlayerIcon"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  LOADK R11 K15 ["Frame"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["Dictionary"]
  GETTABLEKS R12 R13 K25 ["join"]
  MOVE R13 R4
  DUPTABLE R14 K41 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ZIndex"}]
  GETTABLEKS R17 R1 K32 ["Theme"]
  GETTABLEKS R16 R17 K42 ["UIDefault"]
  GETTABLEKS R15 R16 K34 ["Color"]
  SETTABLEKS R15 R14 K39 ["BackgroundColor3"]
  LOADN R15 0
  SETTABLEKS R15 R14 K16 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K40 ["BorderSizePixel"]
  LOADN R15 0
  SETTABLEKS R15 R14 K28 ["ZIndex"]
  CALL R12 2 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["PlayerBackground"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K47 [{"fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextXAlignment"}]
  LOADK R13 K48 ["Body"]
  SETTABLEKS R13 R12 K43 ["fontKey"]
  LOADK R13 K49 ["TextEmphasis"]
  SETTABLEKS R13 R12 K44 ["themeKey"]
  GETIMPORT R13 K8 [Vector2.new]
  LOADN R14 0
  LOADK R15 K9 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K2 ["AnchorPoint"]
  GETIMPORT R13 K11 [UDim2.new]
  LOADK R14 K9 [0.5]
  LOADN R15 180
  LOADK R16 K9 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K3 ["Position"]
  GETIMPORT R13 K11 [UDim2.new]
  LOADK R14 K9 [0.5]
  LOADN R15 76
  LOADN R16 0
  LOADN R17 44
  CALL R13 4 1
  SETTABLEKS R13 R12 K4 ["Size"]
  GETTABLEKS R14 R0 K12 ["props"]
  GETTABLEKS R13 R14 K50 ["userName"]
  SETTABLEKS R13 R12 K45 ["Text"]
  GETIMPORT R13 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K46 ["TextXAlignment"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["PlayerName"]
  CALL R6 3 1
  SETTABLEKS R6 R3 K54 ["ReportPlayerTextContainer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["createElement"]
  LOADK R7 K15 ["Frame"]
  DUPTABLE R8 K18 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K16 ["BackgroundTransparency"]
  LOADN R9 4
  SETTABLEKS R9 R8 K17 ["LayoutOrder"]
  GETIMPORT R9 K11 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 68
  CALL R9 4 1
  SETTABLEKS R9 R8 K4 ["Size"]
  DUPTABLE R9 K56 [{"DropDown"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K14 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K67 [{"Size", "placeHolderText", "selections", "localize", "selectedIndex", "enabled", "selectionParentName", "canOpen", "canCaptureFocus", "selectionChanged", "ButtonRef"}]
  GETIMPORT R13 K11 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 44
  CALL R13 4 1
  SETTABLEKS R13 R12 K4 ["Size"]
  GETTABLEKS R13 R2 K68 ["selectTypeOfAbuse"]
  SETTABLEKS R13 R12 K57 ["placeHolderText"]
  GETUPVAL R13 6
  SETTABLEKS R13 R12 K58 ["selections"]
  LOADB R13 1
  SETTABLEKS R13 R12 K59 ["localize"]
  GETTABLEKS R14 R0 K69 ["state"]
  GETTABLEKS R13 R14 K70 ["typeOfAbuseIndex"]
  SETTABLEKS R13 R12 K60 ["selectedIndex"]
  LOADB R13 1
  SETTABLEKS R13 R12 K61 ["enabled"]
  LOADK R13 K71 ["abuseTypeDropDown"]
  SETTABLEKS R13 R12 K62 ["selectionParentName"]
  GETTABLEKS R14 R0 K12 ["props"]
  GETTABLEKS R13 R14 K64 ["canCaptureFocus"]
  SETTABLEKS R13 R12 K63 ["canOpen"]
  GETTABLEKS R14 R0 K12 ["props"]
  GETTABLEKS R13 R14 K72 ["isGamepadLastInput"]
  SETTABLEKS R13 R12 K64 ["canCaptureFocus"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K65 ["selectionChanged"]
  GETTABLEKS R13 R0 K73 ["reportDropDownRef"]
  SETTABLEKS R13 R12 K66 ["ButtonRef"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K55 ["DropDown"]
  CALL R6 3 1
  SETTABLEKS R6 R3 K74 ["AbuseTypeDropDown"]
  MOVE R8 R2
  MOVE R9 R3
  GETIMPORT R10 K11 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 180
  CALL R10 4 -1
  NAMECALL R6 R0 K75 ["renderTextEntryField"]
  CALL R6 -1 0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  NAMECALL R6 R0 K76 ["renderButtons"]
  CALL R6 4 0
  RETURN R0 0

PROTO_8:
  MOVE R6 R1
  MOVE R7 R3
  LOADK R9 K0 ["Report "]
  GETTABLEKS R11 R0 K1 ["props"]
  GETTABLEKS R10 R11 K2 ["placeName"]
  CONCAT R8 R9 R10
  NAMECALL R4 R0 K3 ["renderReportTitle"]
  CALL R4 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Images"]
  GETTABLEKS R4 R5 K5 ["PlaceholderGameIcon"]
  GETIMPORT R6 K7 [game]
  GETTABLEKS R5 R6 K8 ["GameId"]
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+8]
  LOADK R5 K9 ["rbxthumb://type=GameIcon&id="]
  GETIMPORT R8 K7 [game]
  GETTABLEKS R6 R8 K8 ["GameId"]
  LOADK R7 K10 ["&w=150&h=150"]
  CONCAT R4 R5 R7
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["createElement"]
  LOADK R6 K12 ["Frame"]
  DUPTABLE R7 K16 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K13 ["BackgroundTransparency"]
  LOADN R8 3
  SETTABLEKS R8 R7 K14 ["LayoutOrder"]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 126
  CALL R8 4 1
  SETTABLEKS R8 R7 K15 ["Size"]
  DUPTABLE R8 K22 [{"GameIcon", "GameName"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K26 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Image"}]
  GETIMPORT R12 K28 [Vector2.new]
  LOADN R13 0
  LOADK R14 K29 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["AnchorPoint"]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 0
  LOADN R14 17
  LOADK R15 K29 [0.5]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["Position"]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 0
  LOADN R14 64
  LOADN R15 0
  LOADN R16 64
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K13 ["BackgroundTransparency"]
  SETTABLEKS R4 R11 K25 ["Image"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["GameIcon"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K35 [{"fontKey", "themeKey", "AnchorPoint", "Position", "Size", "Text", "TextXAlignment", "TextWrapped"}]
  LOADK R12 K36 ["Body"]
  SETTABLEKS R12 R11 K30 ["fontKey"]
  LOADK R12 K37 ["TextEmphasis"]
  SETTABLEKS R12 R11 K31 ["themeKey"]
  GETIMPORT R12 K28 [Vector2.new]
  LOADN R13 0
  LOADK R14 K29 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["AnchorPoint"]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 0
  LOADN R14 104
  LOADK R15 K29 [0.5]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K24 ["Position"]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 1
  LOADN R14 152
  LOADN R15 0
  LOADN R16 44
  CALL R12 4 1
  SETTABLEKS R12 R11 K15 ["Size"]
  GETTABLEKS R12 R2 K38 ["flagingGame"]
  SETTABLEKS R12 R11 K32 ["Text"]
  GETIMPORT R12 K41 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K33 ["TextXAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K34 ["TextWrapped"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["GameName"]
  CALL R5 3 1
  SETTABLEKS R5 R3 K42 ["ReportGameTextContainer"]
  MOVE R7 R2
  MOVE R8 R3
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 191
  CALL R9 4 -1
  NAMECALL R5 R0 K43 ["renderTextEntryField"]
  CALL R5 -1 0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  NAMECALL R5 R0 K44 ["renderButtons"]
  CALL R5 4 0
  RETURN R0 0

PROTO_9:
  LOADNIL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["userId"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["reportDropDownRef"]
  NAMECALL R2 R2 K3 ["getValue"]
  CALL R2 1 1
  MOVE R1 R2
  JUMP [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["reportTextEntryRef"]
  NAMECALL R2 R2 K3 ["getValue"]
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R2 1
  OR R3 R0 R1
  SETTABLEKS R3 R2 K5 ["SelectedCoreObject"]
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["UIPadding"]
  DUPTABLE R4 K5 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R5 K8 [UDim.new]
  LOADN R6 0
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["PaddingBottom"]
  GETIMPORT R5 K8 [UDim.new]
  LOADN R6 0
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K3 ["PaddingLeft"]
  GETIMPORT R5 K8 [UDim.new]
  LOADN R6 0
  LOADN R7 24
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["PaddingRight"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["Padding"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K10 ["UIListLayout"]
  DUPTABLE R4 K14 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R5 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R5 R4 K11 ["FillDirection"]
  GETIMPORT R5 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R5 R4 K12 ["HorizontalAlignment"]
  GETIMPORT R5 K21 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R5 R4 K13 ["SortOrder"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K22 ["Layout"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K23 ["props"]
  GETTABLEKS R2 R3 K24 ["userId"]
  JUMPIFNOTEQKNIL R2 [+9]
  GETUPVAL R2 1
  GETUPVAL R4 2
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K25 ["renderReportGame"]
  CALL R2 4 0
  JUMP [+7]
  GETUPVAL R2 1
  GETUPVAL R4 2
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K26 ["renderReportPlayer"]
  CALL R2 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K27 ["Frame"]
  NEWTABLE R4 8 0
  GETIMPORT R5 K29 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K30 ["Size"]
  LOADN R5 1
  SETTABLEKS R5 R4 K31 ["BackgroundTransparency"]
  LOADN R5 8
  SETTABLEKS R5 R4 K32 ["ZIndex"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K23 ["props"]
  GETTABLEKS R5 R6 K33 ["isOpen"]
  SETTABLEKS R5 R4 K34 ["Visible"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K35 ["Ref"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K36 ["selectionGroupRef"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K40 [{"Overlay", "DialogMainFrame", "FocusHandler"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  LOADK R7 K41 ["TextButton"]
  DUPTABLE R8 K47 [{"AutoButtonColor", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size", "Text", "Selectable"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K42 ["AutoButtonColor"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K48 ["Theme"]
  GETTABLEKS R10 R11 K37 ["Overlay"]
  GETTABLEKS R9 R10 K49 ["Color"]
  SETTABLEKS R9 R8 K43 ["BackgroundColor3"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K48 ["Theme"]
  GETTABLEKS R10 R11 K37 ["Overlay"]
  GETTABLEKS R9 R10 K50 ["Transparency"]
  SETTABLEKS R9 R8 K31 ["BackgroundTransparency"]
  LOADN R9 0
  SETTABLEKS R9 R8 K44 ["BorderSizePixel"]
  GETIMPORT R9 K29 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 1
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K30 ["Size"]
  LOADK R9 K51 [""]
  SETTABLEKS R9 R8 K45 ["Text"]
  LOADB R9 0
  SETTABLEKS R9 R8 K46 ["Selectable"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K37 ["Overlay"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K59 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Position", "ScaleType", "Size", "SliceCenter"}]
  GETIMPORT R9 K61 [Vector2.new]
  LOADK R10 K62 [0.5]
  LOADK R11 K62 [0.5]
  CALL R9 2 1
  SETTABLEKS R9 R8 K52 ["AnchorPoint"]
  LOADN R9 1
  SETTABLEKS R9 R8 K31 ["BackgroundTransparency"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K63 ["Images"]
  GETTABLEKS R10 R11 K64 ["RoundedRect"]
  GETTABLEKS R9 R10 K53 ["Image"]
  SETTABLEKS R9 R8 K53 ["Image"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K48 ["Theme"]
  GETTABLEKS R10 R11 K65 ["BackgroundUIDefault"]
  GETTABLEKS R9 R10 K49 ["Color"]
  SETTABLEKS R9 R8 K54 ["ImageColor3"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K48 ["Theme"]
  GETTABLEKS R10 R11 K65 ["BackgroundUIDefault"]
  GETTABLEKS R9 R10 K50 ["Transparency"]
  SETTABLEKS R9 R8 K55 ["ImageTransparency"]
  GETIMPORT R9 K29 [UDim2.new]
  LOADK R10 K62 [0.5]
  LOADN R11 0
  LOADK R12 K62 [0.5]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K56 ["Position"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K63 ["Images"]
  GETTABLEKS R10 R11 K64 ["RoundedRect"]
  GETTABLEKS R9 R10 K57 ["ScaleType"]
  SETTABLEKS R9 R8 K57 ["ScaleType"]
  GETIMPORT R9 K29 [UDim2.new]
  LOADN R10 0
  LOADN R11 88
  LOADN R12 0
  LOADN R13 194
  CALL R9 4 1
  SETTABLEKS R9 R8 K30 ["Size"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K63 ["Images"]
  GETTABLEKS R10 R11 K64 ["RoundedRect"]
  GETTABLEKS R9 R10 K58 ["SliceCenter"]
  SETTABLEKS R9 R8 K58 ["SliceCenter"]
  MOVE R9 R1
  CALL R6 3 1
  SETTABLEKS R6 R5 K38 ["DialogMainFrame"]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+33]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K69 [{"isFocused", "shouldForgetPreviousSelection", "didFocus"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K23 ["props"]
  GETTABLEKS R9 R10 K70 ["canCaptureFocus"]
  JUMPIFNOT R9 [+5]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K23 ["props"]
  GETTABLEKS R9 R10 K71 ["isGamepadLastInput"]
  SETTABLEKS R9 R8 K66 ["isFocused"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K23 ["props"]
  GETTABLEKS R10 R11 K33 ["isOpen"]
  NOT R9 R10
  SETTABLEKS R9 R8 K67 ["shouldForgetPreviousSelection"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  SETTABLEKS R9 R8 K68 ["didFocus"]
  CALL R6 2 1
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K39 ["FocusHandler"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R1 0
  DUPTABLE R2 K7 [{"flagingGame", "reportGameTitle", "reportPlayerTitle", "selectTypeOfAbuse", "cancel", "report", "textboxPlaceHolder"}]
  NEWTABLE R3 1 1
  LOADK R4 K8 ["CoreScripts.InGameMenu.Report.FlagingGame"]
  SETLIST R3 R4 1 [1]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["props"]
  GETTABLEKS R5 R6 K10 ["placeName"]
  SETTABLEKS R5 R3 K11 ["RBX_NAME"]
  SETTABLEKS R3 R2 K0 ["flagingGame"]
  NEWTABLE R3 1 1
  LOADK R4 K12 ["CoreScripts.InGameMenu.Report.ReportGameTitle"]
  SETLIST R3 R4 1 [1]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["props"]
  GETTABLEKS R5 R6 K10 ["placeName"]
  SETTABLEKS R5 R3 K11 ["RBX_NAME"]
  SETTABLEKS R3 R2 K1 ["reportGameTitle"]
  LOADK R3 K13 ["CoreScripts.InGameMenu.Report.ReportPlayerTitle"]
  SETTABLEKS R3 R2 K2 ["reportPlayerTitle"]
  LOADK R3 K14 ["CoreScripts.InGameMenu.Report.SelectAbuseType"]
  SETTABLEKS R3 R2 K3 ["selectTypeOfAbuse"]
  LOADK R3 K15 ["CoreScripts.InGameMenu.Cancel"]
  SETTABLEKS R3 R2 K4 ["cancel"]
  LOADK R3 K16 ["CoreScripts.InGameMenu.Report.SendReport"]
  SETTABLEKS R3 R2 K5 ["report"]
  LOADK R3 K17 ["CoreScripts.InGameMenu.Report.AdditionalDetails"]
  SETTABLEKS R3 R2 K6 ["textboxPlaceHolder"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 1 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CALL R1 1 -1
  RETURN R1 -1

PROTO_13:
  GETIMPORT R3 K3 [Enum.UserInputState.Begin]
  JUMPIFNOTEQ R1 R3 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["props"]
  GETTABLEKS R3 R4 K5 ["dispatchCloseReportDialog"]
  CALL R3 0 0
  RETURN R0 0

PROTO_14:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETUPVAL R2 0
  LOADK R4 K0 ["InGameMenuReportModalClose"]
  MOVE R5 R1
  LOADB R6 0
  GETIMPORT R7 K4 [Enum.KeyCode.Escape]
  NAMECALL R2 R2 K5 ["BindCoreAction"]
  CALL R2 5 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  LOADK R3 K0 ["InGameMenuReportModalClose"]
  NAMECALL R1 R1 K1 ["UnbindCoreAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  LOADK R3 K0 ["ReportDialogGroup"]
  NAMECALL R1 R1 K1 ["RemoveSelectionGroup"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K0 ["ReportDialogGroup"]
  GETTABLEKS R4 R0 K2 ["selectionGroupRef"]
  NAMECALL R4 R4 K3 ["getValue"]
  CALL R4 1 -1
  NAMECALL R1 R1 K4 ["AddSelectionParent"]
  CALL R1 -1 0
  GETTABLEKS R2 R0 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["isOpen"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K7 ["bindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R2 R1 K0 ["isOpen"]
  JUMPIFNOT R2 [+15]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K0 ["isOpen"]
  JUMPIF R2 [+10]
  DUPTABLE R4 K4 [{"typeOfAbuseIndex", "abuseDescription"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K2 ["typeOfAbuseIndex"]
  LOADK R5 K5 [""]
  SETTABLEKS R5 R4 K3 ["abuseDescription"]
  NAMECALL R2 R0 K6 ["setState"]
  CALL R2 2 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+38]
  GETTABLEKS R2 R1 K7 ["canCaptureFocus"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K8 ["isGamepadLastInput"]
  JUMPIF R2 [+32]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K7 ["canCaptureFocus"]
  JUMPIFNOT R2 [+27]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K8 ["isGamepadLastInput"]
  JUMPIFNOT R2 [+22]
  LOADNIL R2
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K9 ["userId"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R0 K10 ["reportDropDownRef"]
  NAMECALL R3 R3 K11 ["getValue"]
  CALL R3 1 1
  MOVE R2 R3
  JUMP [+6]
  GETTABLEKS R3 R0 K12 ["reportTextEntryRef"]
  NAMECALL R3 R3 K11 ["getValue"]
  CALL R3 1 1
  MOVE R2 R3
  GETUPVAL R3 1
  SETTABLEKS R2 R3 K13 ["SelectedCoreObject"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K0 ["isOpen"]
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K14 ["bindActions"]
  CALL R2 1 0
  RETURN R0 0
  NAMECALL R2 R0 K15 ["unbindActions"]
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  NAMECALL R1 R0 K0 ["unbindActions"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R2 K6 [{"isOpen", "userId", "userName", "placeName", "canCaptureFocus", "isGamepadLastInput"}]
  GETTABLEKS R4 R0 K7 ["report"]
  GETTABLEKS R3 R4 K8 ["dialogOpen"]
  SETTABLEKS R3 R2 K0 ["isOpen"]
  GETTABLEKS R4 R0 K7 ["report"]
  GETTABLEKS R3 R4 K1 ["userId"]
  SETTABLEKS R3 R2 K1 ["userId"]
  GETTABLEKS R4 R0 K7 ["report"]
  GETTABLEKS R3 R4 K2 ["userName"]
  SETTABLEKS R3 R2 K2 ["userName"]
  GETTABLEKS R4 R0 K9 ["gameInfo"]
  GETTABLEKS R3 R4 K10 ["name"]
  SETTABLEKS R3 R2 K3 ["placeName"]
  GETTABLEKS R4 R0 K7 ["report"]
  GETTABLEKS R3 R4 K8 ["dialogOpen"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R5 R0 K11 ["respawn"]
  GETTABLEKS R4 R5 K8 ["dialogOpen"]
  NOT R3 R4
  SETTABLEKS R3 R2 K4 ["canCaptureFocus"]
  GETTABLEKS R5 R0 K12 ["displayOptions"]
  GETTABLEKS R4 R5 K13 ["inputType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["InputType"]
  GETTABLEKS R5 R6 K15 ["Gamepad"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["isGamepadLastInput"]
  RETURN R2 1

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  NEWTABLE R3 0 0
  JUMPIFNOTEQKS R0 K0 ["Inappropriate Content"] [+25]
  FASTCALL2K TABLE_INSERT R3 K1 [+5]
  MOVE R5 R3
  LOADK R6 K1 ["report_type=game"]
  GETIMPORT R4 K4 [table.insert]
  CALL R4 2 0
  LOADK R7 K5 ["reported_entity_id="]
  GETIMPORT R10 K7 [game]
  GETTABLEKS R9 R10 K8 ["GameId"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K4 [table.insert]
  CALL R4 2 0
  JUMP [+20]
  FASTCALL2K TABLE_INSERT R3 K11 [+5]
  MOVE R5 R3
  LOADK R6 K11 ["report_type=user"]
  GETIMPORT R4 K4 [table.insert]
  CALL R4 2 0
  LOADK R7 K5 ["reported_entity_id="]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K10 [tostring]
  CALL R8 1 1
  CONCAT R6 R7 R8
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K4 [table.insert]
  CALL R4 2 0
  FASTCALL2K TABLE_INSERT R3 K12 [+5]
  MOVE R5 R3
  LOADK R6 K12 ["report_source=ingame"]
  GETIMPORT R4 K4 [table.insert]
  CALL R4 2 0
  GETIMPORT R4 K14 [table.concat]
  MOVE R5 R3
  LOADK R6 K15 ["&"]
  CALL R4 2 1
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K16 ["AnalyticsReportSubmittedName"]
  MOVE R7 R4
  NEWTABLE R8 0 0
  CALL R5 3 0
  RETURN R0 0

PROTO_22:
  DUPTABLE R1 K2 [{"dispatchCloseReportDialog", "dispatchSendReport"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchCloseReportDialog"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["dispatchSendReport"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ContextActionService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["GuiService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["InGameMenuDependencies"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["Roact"]
  GETTABLEKS R5 R3 K11 ["RoactRodux"]
  GETTABLEKS R6 R3 K12 ["UIBlox"]
  GETTABLEKS R7 R3 K13 ["t"]
  GETTABLEKS R8 R3 K14 ["Cryo"]
  GETTABLEKS R11 R6 K15 ["App"]
  GETTABLEKS R10 R11 K16 ["Button"]
  GETTABLEKS R9 R10 K16 ["Button"]
  GETTABLEKS R13 R6 K15 ["App"]
  GETTABLEKS R12 R13 K16 ["Button"]
  GETTABLEKS R11 R12 K17 ["Enum"]
  GETTABLEKS R10 R11 K18 ["ButtonType"]
  GETTABLEKS R13 R6 K19 ["Core"]
  GETTABLEKS R12 R13 K20 ["Style"]
  GETTABLEKS R11 R12 K21 ["withStyle"]
  GETIMPORT R15 K23 [script]
  GETTABLEKS R14 R15 K24 ["Parent"]
  GETTABLEKS R13 R14 K24 ["Parent"]
  GETTABLEKS R12 R13 K24 ["Parent"]
  GETTABLEKS R13 R12 K25 ["Flags"]
  GETIMPORT R14 K7 [require]
  GETTABLEKS R15 R13 K26 ["GetFFlagIGMGamepadSelectionHistory"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETIMPORT R20 K23 [script]
  GETTABLEKS R19 R20 K24 ["Parent"]
  GETTABLEKS R18 R19 K24 ["Parent"]
  GETTABLEKS R17 R18 K27 ["Connection"]
  GETTABLEKS R16 R17 K28 ["FocusHandler"]
  CALL R15 1 1
  GETIMPORT R16 K7 [require]
  GETTABLEKS R18 R12 K29 ["Resources"]
  GETTABLEKS R17 R18 K30 ["Assets"]
  CALL R16 1 1
  GETIMPORT R17 K7 [require]
  GETTABLEKS R19 R12 K31 ["Actions"]
  GETTABLEKS R18 R19 K32 ["CloseReportDialog"]
  CALL R17 1 1
  GETIMPORT R18 K7 [require]
  GETTABLEKS R20 R12 K33 ["Localization"]
  GETTABLEKS R19 R20 K34 ["withLocalization"]
  CALL R18 1 1
  GETIMPORT R19 K7 [require]
  GETTABLEKS R21 R12 K35 ["Components"]
  GETTABLEKS R20 R21 K36 ["ThemedTextLabel"]
  CALL R19 1 1
  GETIMPORT R20 K7 [require]
  GETIMPORT R23 K23 [script]
  GETTABLEKS R22 R23 K24 ["Parent"]
  GETTABLEKS R21 R22 K37 ["TextEntryField"]
  CALL R20 1 1
  GETIMPORT R21 K7 [require]
  GETTABLEKS R23 R12 K35 ["Components"]
  GETTABLEKS R22 R23 K38 ["DropDownSelection"]
  CALL R21 1 1
  GETIMPORT R22 K7 [require]
  GETTABLEKS R24 R12 K29 ["Resources"]
  GETTABLEKS R23 R24 K39 ["Constants"]
  CALL R22 1 1
  GETIMPORT R23 K7 [require]
  GETTABLEKS R25 R12 K40 ["Utility"]
  GETTABLEKS R24 R25 K41 ["SendAnalytics"]
  CALL R23 1 1
  GETIMPORT R24 K7 [require]
  GETTABLEKS R26 R12 K42 ["Thunks"]
  GETTABLEKS R25 R26 K43 ["SendReport"]
  CALL R24 1 1
  GETTABLEKS R27 R6 K19 ["Core"]
  GETTABLEKS R26 R27 K44 ["ImageSet"]
  GETTABLEKS R25 R26 K45 ["ImageSetLabel"]
  GETTABLEKS R26 R4 K46 ["PureComponent"]
  LOADK R28 K47 ["ReportDialog"]
  NAMECALL R26 R26 K48 ["extend"]
  CALL R26 2 1
  NEWTABLE R27 0 8
  LOADK R28 K49 ["Swearing"]
  LOADK R29 K50 ["Inappropriate Username"]
  LOADK R30 K51 ["Bullying"]
  LOADK R31 K52 ["Scamming"]
  LOADK R32 K53 ["Dating"]
  LOADK R33 K54 ["Cheating/Exploiting"]
  LOADK R34 K55 ["Personal Question"]
  LOADK R35 K56 ["Offsite Links"]
  SETLIST R27 R28 8 [1]
  NEWTABLE R28 0 8
  LOADK R29 K57 ["CoreScripts.InGameMenu.Report.AbuseSwearing"]
  LOADK R30 K58 ["CoreScripts.InGameMenu.Report.AbuseUsername"]
  LOADK R31 K59 ["CoreScripts.InGameMenu.Report.AbuseBullying"]
  LOADK R32 K60 ["CoreScripts.InGameMenu.Report.AbuseScamming"]
  LOADK R33 K61 ["CoreScripts.InGameMenu.Report.AbuseDating"]
  LOADK R34 K62 ["CoreScripts.InGameMenu.Report.AbuseExploiting"]
  LOADK R35 K63 ["CoreScripts.InGameMenu.Report.AbusePersonalQuestion"]
  LOADK R36 K64 ["CoreScripts.InGameMenu.Report.AbuseOffsiteLink"]
  SETLIST R28 R29 8 [1]
  GETTABLEKS R29 R7 K65 ["strictInterface"]
  DUPTABLE R30 K74 [{"isOpen", "userId", "userName", "placeName", "dispatchCloseReportDialog", "dispatchSendReport", "canCaptureFocus", "isGamepadLastInput"}]
  GETTABLEKS R31 R7 K75 ["boolean"]
  SETTABLEKS R31 R30 K66 ["isOpen"]
  GETTABLEKS R31 R7 K76 ["optional"]
  GETTABLEKS R32 R7 K77 ["integer"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K67 ["userId"]
  GETTABLEKS R31 R7 K76 ["optional"]
  GETTABLEKS R32 R7 K78 ["string"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K68 ["userName"]
  GETTABLEKS R31 R7 K78 ["string"]
  SETTABLEKS R31 R30 K69 ["placeName"]
  GETTABLEKS R31 R7 K79 ["callback"]
  SETTABLEKS R31 R30 K70 ["dispatchCloseReportDialog"]
  GETTABLEKS R31 R7 K79 ["callback"]
  SETTABLEKS R31 R30 K71 ["dispatchSendReport"]
  GETTABLEKS R31 R7 K76 ["optional"]
  GETTABLEKS R32 R7 K75 ["boolean"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K72 ["canCaptureFocus"]
  GETTABLEKS R31 R7 K76 ["optional"]
  GETTABLEKS R32 R7 K75 ["boolean"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K73 ["isGamepadLastInput"]
  CALL R29 1 1
  SETTABLEKS R29 R26 K80 ["validateProps"]
  DUPCLOSURE R29 K81 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R29 R26 K82 ["init"]
  DUPCLOSURE R29 K83 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R19
  SETTABLEKS R29 R26 K84 ["renderReportTitle"]
  DUPCLOSURE R29 K85 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R20
  SETTABLEKS R29 R26 K86 ["renderTextEntryField"]
  DUPCLOSURE R29 K87 [PROTO_5]
  CAPTURE VAL R27
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R29 R26 K88 ["renderButtons"]
  DUPCLOSURE R29 K89 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R25
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R28
  SETTABLEKS R29 R26 K90 ["renderReportPlayer"]
  DUPCLOSURE R29 K91 [PROTO_8]
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R25
  CAPTURE VAL R19
  SETTABLEKS R29 R26 K92 ["renderReportGame"]
  DUPCLOSURE R29 K93 [PROTO_12]
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R25
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R2
  SETTABLEKS R29 R26 K94 ["render"]
  DUPCLOSURE R29 K95 [PROTO_14]
  CAPTURE VAL R1
  SETTABLEKS R29 R26 K96 ["bindActions"]
  DUPCLOSURE R29 K97 [PROTO_15]
  CAPTURE VAL R1
  SETTABLEKS R29 R26 K98 ["unbindActions"]
  DUPCLOSURE R29 K99 [PROTO_16]
  CAPTURE VAL R2
  SETTABLEKS R29 R26 K100 ["didMount"]
  DUPCLOSURE R29 K101 [PROTO_17]
  CAPTURE VAL R14
  CAPTURE VAL R2
  SETTABLEKS R29 R26 K102 ["didUpdate"]
  DUPCLOSURE R29 K103 [PROTO_18]
  SETTABLEKS R29 R26 K104 ["willUnmount"]
  GETTABLEKS R29 R5 K105 ["UNSTABLE_connect2"]
  DUPCLOSURE R30 K106 [PROTO_19]
  CAPTURE VAL R22
  DUPCLOSURE R31 K107 [PROTO_22]
  CAPTURE VAL R17
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R22
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1
