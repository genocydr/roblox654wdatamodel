PROTO_0:
  GETTABLEKS R1 R0 K0 ["AbsoluteSize"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["middleContentRef"]
  NAMECALL R2 R2 K2 ["getValue"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["middleContentRef"]
  NAMECALL R4 R4 K2 ["getValue"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K3 ["Y"]
  GETTABLEKS R4 R1 K3 ["Y"]
  SUB R3 R4 R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["props"]
  GETTABLEKS R7 R8 K6 ["screenSize"]
  GETTABLEKS R6 R7 K3 ["Y"]
  SUBK R5 R6 K4 [60]
  SUB R4 R5 R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["middleContentRef"]
  NAMECALL R8 R8 K2 ["getValue"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K0 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K8 ["X"]
  DIVK R5 R6 K7 [2]
  SUBK R7 R5 K10 [10]
  ADDK R6 R7 K9 [80]
  JUMPIFNOTLT R6 R4 [+2]
  MOVE R4 R6
  JUMPIFEQ R2 R4 [+12]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["updateContentSize"]
  GETIMPORT R8 K14 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  MOVE R12 R4
  CALL R8 4 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["contentSize"]
  NAMECALL R4 R4 K1 ["getValue"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["Y"]
  GETTABLEKS R2 R3 K3 ["Offset"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"itemListScrollable"}]
  SETTABLEKS R0 R4 K4 ["itemListScrollable"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"getConformedDescriptionFailed"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["getConformedDescriptionFailed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["getConformedHumanoidDescription"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["conformedHumanoidDescription"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K2 ["getConformedDescriptionFailed"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  LOADK R3 K4 ["Frame"]
  NEWTABLE R4 4 0
  LOADN R5 1
  SETTABLEKS R5 R4 K5 ["BackgroundTransparency"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["contentSize"]
  SETTABLEKS R5 R4 K7 ["Size"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["Ref"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["middleContentRef"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K13 [{"ItemsListFrame", "HumanoidViewportFrame", "UISizeConstraint"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K4 ["Frame"]
  DUPTABLE R8 K14 [{"BackgroundTransparency", "Size"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["BackgroundTransparency"]
  GETIMPORT R9 K17 [UDim2.fromScale]
  LOADK R10 K18 [0.45]
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["Size"]
  DUPTABLE R9 K20 [{"ItemsList"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K25 [{"humanoidDescription", "retryLoadDescription", "loadingFailed", "itemListScrollableUpdated"}]
  SETTABLEKS R0 R12 K21 ["humanoidDescription"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K22 ["retryLoadDescription"]
  SETTABLEKS R13 R12 K22 ["retryLoadDescription"]
  SETTABLEKS R1 R12 K23 ["loadingFailed"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K24 ["itemListScrollableUpdated"]
  SETTABLEKS R13 R12 K24 ["itemListScrollableUpdated"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["ItemsList"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["ItemsListFrame"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K4 ["Frame"]
  DUPTABLE R8 K28 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["BackgroundTransparency"]
  GETIMPORT R9 K17 [UDim2.fromScale]
  LOADK R10 K29 [0.55]
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["Size"]
  GETIMPORT R9 K17 [UDim2.fromScale]
  LOADK R10 K18 [0.45]
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["Position"]
  LOADN R9 2
  SETTABLEKS R9 R8 K27 ["LayoutOrder"]
  DUPTABLE R9 K32 [{"UIPadding", "HumanoidViewport"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K30 ["UIPadding"]
  DUPTABLE R12 K35 [{"PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K38 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["PaddingLeft"]
  GETIMPORT R13 K38 [UDim.new]
  LOADN R14 0
  LOADN R15 5
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["PaddingRight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K30 ["UIPadding"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K40 [{"humanoidDescription", "loadingFailed", "retryLoadDescription", "rigType"}]
  SETTABLEKS R0 R12 K21 ["humanoidDescription"]
  SETTABLEKS R1 R12 K23 ["loadingFailed"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K22 ["retryLoadDescription"]
  SETTABLEKS R13 R12 K22 ["retryLoadDescription"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K41 ["props"]
  GETTABLEKS R13 R14 K39 ["rigType"]
  SETTABLEKS R13 R12 K39 ["rigType"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K31 ["HumanoidViewport"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["HumanoidViewportFrame"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  LOADK R7 K12 ["UISizeConstraint"]
  DUPTABLE R8 K43 [{"MaxSize"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K44 ["contentMaxSize"]
  SETTABLEKS R9 R8 K42 ["MaxSize"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["UISizeConstraint"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["mounted"]
  DUPTABLE R3 K4 [{"conformedHumanoidDescription", "getConformedDescriptionFailed", "itemListScrollable"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["conformedHumanoidDescription"]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["getConformedDescriptionFailed"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["itemListScrollable"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K7 ["middleContentRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["createBinding"]
  GETIMPORT R2 K11 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADN R5 0
  LOADN R6 200
  CALL R2 4 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K12 ["contentSize"]
  SETTABLEKS R2 R0 K13 ["updateContentSize"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onAlertSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["itemListScrollableUpdated"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["retryLoadDescription"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K17 ["renderAlertMiddleContent"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize", "middleContent", "onAbsoluteSizeChanged", "isMiddleContentFocusable"}]
  GETUPVAL R4 2
  LOADK R6 K10 ["CoreScripts.AvatarEditorPrompts.SaveAvatarPromptTitle"]
  NAMECALL R4 R4 K11 ["FormatByKey"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["title"]
  GETUPVAL R4 2
  LOADK R6 K12 ["CoreScripts.AvatarEditorPrompts.SaveAvatarPromptText"]
  DUPTABLE R7 K14 [{"RBX_NAME"}]
  GETTABLEKS R9 R0 K15 ["props"]
  GETTABLEKS R8 R9 K16 ["gameName"]
  SETTABLEKS R8 R7 K13 ["RBX_NAME"]
  NAMECALL R4 R4 K11 ["FormatByKey"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["bodyText"]
  DUPTABLE R4 K18 [{"buttons"}]
  NEWTABLE R5 0 2
  DUPTABLE R6 K20 [{"props", "isDefaultChild"}]
  DUPTABLE R7 K23 [{"onActivated", "text"}]
  GETTABLEKS R9 R0 K15 ["props"]
  GETTABLEKS R8 R9 K24 ["signalSaveAvatarPermissionDenied"]
  SETTABLEKS R8 R7 K21 ["onActivated"]
  GETUPVAL R8 2
  LOADK R10 K25 ["CoreScripts.AvatarEditorPrompts.SaveAvatarPromptNo"]
  NAMECALL R8 R8 K11 ["FormatByKey"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["text"]
  SETTABLEKS R7 R6 K15 ["props"]
  LOADB R7 1
  SETTABLEKS R7 R6 K19 ["isDefaultChild"]
  DUPTABLE R7 K27 [{"buttonType", "props", "isDefaultChild"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K28 ["PrimarySystem"]
  SETTABLEKS R8 R7 K26 ["buttonType"]
  DUPTABLE R8 K23 [{"onActivated", "text"}]
  GETTABLEKS R10 R0 K15 ["props"]
  GETTABLEKS R9 R10 K29 ["performSaveAvatar"]
  SETTABLEKS R9 R8 K21 ["onActivated"]
  GETUPVAL R9 2
  LOADK R11 K30 ["CoreScripts.AvatarEditorPrompts.SaveAvatarPromptYes"]
  NAMECALL R9 R9 K11 ["FormatByKey"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["text"]
  SETTABLEKS R8 R7 K15 ["props"]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["isDefaultChild"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K17 ["buttons"]
  SETTABLEKS R4 R3 K3 ["buttonStackInfo"]
  GETIMPORT R4 K33 [UDim2.fromScale]
  LOADK R5 K34 [0.5]
  LOADK R6 K34 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K4 ["position"]
  GETTABLEKS R5 R0 K15 ["props"]
  GETTABLEKS R4 R5 K5 ["screenSize"]
  SETTABLEKS R4 R3 K5 ["screenSize"]
  GETTABLEKS R4 R0 K35 ["renderAlertMiddleContent"]
  SETTABLEKS R4 R3 K6 ["middleContent"]
  GETTABLEKS R4 R0 K36 ["onAlertSizeChanged"]
  SETTABLEKS R4 R3 K7 ["onAbsoluteSizeChanged"]
  GETTABLEKS R5 R0 K37 ["state"]
  GETTABLEKS R4 R5 K38 ["itemListScrollable"]
  SETTABLEKS R4 R3 K8 ["isMiddleContentFocusable"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"conformedHumanoidDescription"}]
  SETTABLEKS R0 R3 K1 ["conformedHumanoidDescription"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mounted"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"getConformedDescriptionFailed"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["getConformedDescriptionFailed"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R1
  LOADB R4 1
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K0 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_9:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["mounted"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["humanoidDescription"]
  NAMECALL R1 R0 K3 ["getConformedHumanoidDescription"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["humanoidDescription"]
  GETTABLEKS R4 R1 K1 ["humanoidDescription"]
  JUMPIFEQ R3 R4 [+20]
  DUPTABLE R5 K4 [{"conformedHumanoidDescription", "getConformedDescriptionFailed"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["None"]
  SETTABLEKS R6 R5 K2 ["conformedHumanoidDescription"]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["getConformedDescriptionFailed"]
  NAMECALL R3 R0 K6 ["setState"]
  CALL R3 2 0
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["humanoidDescription"]
  NAMECALL R3 R0 K7 ["getConformedHumanoidDescription"]
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["mounted"]
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K4 [{"gameName", "screenSize", "humanoidDescription", "rigType"}]
  GETTABLEKS R2 R0 K0 ["gameName"]
  SETTABLEKS R2 R1 K0 ["gameName"]
  GETTABLEKS R2 R0 K1 ["screenSize"]
  SETTABLEKS R2 R1 K1 ["screenSize"]
  GETTABLEKS R3 R0 K5 ["promptInfo"]
  GETTABLEKS R2 R3 K2 ["humanoidDescription"]
  SETTABLEKS R2 R1 K2 ["humanoidDescription"]
  GETTABLEKS R3 R0 K5 ["promptInfo"]
  GETTABLEKS R2 R3 K3 ["rigType"]
  SETTABLEKS R2 R1 K3 ["rigType"]
  RETURN R1 1

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_15:
  DUPTABLE R1 K2 [{"signalSaveAvatarPermissionDenied", "performSaveAvatar"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["signalSaveAvatarPermissionDenied"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["performSaveAvatar"]
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
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["t"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K7 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R9 R5 K12 ["App"]
  GETTABLEKS R8 R9 K13 ["Dialog"]
  GETTABLEKS R7 R8 K14 ["Alert"]
  GETTABLEKS R6 R7 K15 ["InteractiveAlert"]
  GETTABLEKS R10 R5 K12 ["App"]
  GETTABLEKS R9 R10 K16 ["Button"]
  GETTABLEKS R8 R9 K17 ["Enum"]
  GETTABLEKS R7 R8 K18 ["ButtonType"]
  LOADK R10 K19 ["RobloxGui"]
  NAMECALL R8 R1 K20 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R8 K21 ["Modules"]
  GETTABLEKS R10 R11 K22 ["RobloxTranslator"]
  CALL R9 1 1
  GETIMPORT R12 K24 [script]
  GETTABLEKS R11 R12 K25 ["Parent"]
  GETTABLEKS R10 R11 K25 ["Parent"]
  GETTABLEKS R11 R10 K25 ["Parent"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R13 R10 K26 ["HumanoidViewport"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R14 R10 K27 ["ItemsList"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R11 K28 ["Thunks"]
  GETTABLEKS R15 R16 K29 ["SignalSaveAvatarPermissionDenied"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R17 R11 K28 ["Thunks"]
  GETTABLEKS R16 R17 K30 ["PerformSaveAvatar"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R17 R11 K31 ["GetConformedHumanoidDescription"]
  CALL R16 1 1
  GETTABLEKS R17 R2 K32 ["PureComponent"]
  LOADK R19 K33 ["SaveAvatarPrompt"]
  NAMECALL R17 R17 K34 ["extend"]
  CALL R17 2 1
  GETTABLEKS R18 R4 K35 ["strictInterface"]
  DUPTABLE R19 K42 [{"gameName", "screenSize", "humanoidDescription", "rigType", "performSaveAvatar", "signalSaveAvatarPermissionDenied"}]
  GETTABLEKS R20 R4 K43 ["string"]
  SETTABLEKS R20 R19 K36 ["gameName"]
  GETTABLEKS R20 R4 K44 ["Vector2"]
  SETTABLEKS R20 R19 K37 ["screenSize"]
  GETTABLEKS R20 R4 K45 ["instanceOf"]
  LOADK R21 K46 ["HumanoidDescription"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K38 ["humanoidDescription"]
  GETTABLEKS R20 R4 K47 ["enum"]
  GETIMPORT R21 K49 [Enum.HumanoidRigType]
  CALL R20 1 1
  SETTABLEKS R20 R19 K39 ["rigType"]
  GETTABLEKS R20 R4 K50 ["callback"]
  SETTABLEKS R20 R19 K40 ["performSaveAvatar"]
  GETTABLEKS R20 R4 K50 ["callback"]
  SETTABLEKS R20 R19 K41 ["signalSaveAvatarPermissionDenied"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K51 ["validateProps"]
  DUPCLOSURE R18 K52 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R18 R17 K53 ["init"]
  DUPCLOSURE R18 K54 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K55 ["render"]
  DUPCLOSURE R18 K56 [PROTO_8]
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K57 ["getConformedHumanoidDescription"]
  DUPCLOSURE R18 K58 [PROTO_9]
  SETTABLEKS R18 R17 K59 ["didMount"]
  DUPCLOSURE R18 K60 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K61 ["didUpdate"]
  DUPCLOSURE R18 K62 [PROTO_11]
  SETTABLEKS R18 R17 K63 ["willUnmount"]
  DUPCLOSURE R18 K64 [PROTO_12]
  DUPCLOSURE R19 K65 [PROTO_15]
  CAPTURE VAL R14
  CAPTURE VAL R15
  GETTABLEKS R20 R3 K66 ["connect"]
  MOVE R21 R18
  MOVE R22 R19
  CALL R20 2 1
  MOVE R21 R17
  CALL R20 1 -1
  RETURN R20 -1
