PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["EventContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CancelName"]
  NEWTABLE R3 0 0
  CALL R0 3 0
  GETUPVAL R0 2
  LOADK R2 K2 [""]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["NATIVE_EXIT"]
  NAMECALL R0 R0 K4 ["BroadcastNotification"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K1 ["onCancel"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K11 [{"bodyContents", "cancelText", "confirmText", "titleBackgroundImageProps", "screenSize", "onDismiss", "onCancel", "onConfirm", "blurBackground", "visible"}]
  NEWTABLE R4 0 2
  DUPTABLE R5 K14 [{"text", "isSystemMenuIcon"}]
  GETTABLEKS R6 R0 K15 ["bodyTextOpenMenu"]
  SETTABLEKS R6 R5 K12 ["text"]
  LOADB R6 1
  SETTABLEKS R6 R5 K13 ["isSystemMenuIcon"]
  DUPTABLE R6 K17 [{"icon", "text"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K18 ["icons/menu/home_off"]
  SETTABLEKS R7 R6 K16 ["icon"]
  GETTABLEKS R7 R0 K19 ["bodyTextClickHome"]
  SETTABLEKS R7 R6 K12 ["text"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K1 ["bodyContents"]
  GETTABLEKS R4 R0 K20 ["actionExit"]
  SETTABLEKS R4 R3 K2 ["cancelText"]
  GETTABLEKS R4 R0 K21 ["actionHome"]
  SETTABLEKS R4 R3 K3 ["confirmText"]
  DUPTABLE R4 K24 [{"image", "imageHeight", "text"}]
  LOADK R5 K25 ["rbxasset://textures/ui/LuaApp/graphic/Auth/GridBackground.jpg"]
  SETTABLEKS R5 R4 K22 ["image"]
  LOADN R5 200
  SETTABLEKS R5 R4 K23 ["imageHeight"]
  LOADK R6 K26 ["<font face=\"GothamBlack\" size=\"42\">"]
  GETTABLEKS R7 R0 K27 ["title"]
  LOADK R8 K28 ["</font><font size=\"4\"><br /></font><br />"]
  GETTABLEKS R9 R0 K29 ["subtitle"]
  CONCAT R5 R6 R9
  SETTABLEKS R5 R4 K12 ["text"]
  SETTABLEKS R4 R3 K4 ["titleBackgroundImageProps"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K30 ["props"]
  GETTABLEKS R4 R5 K5 ["screenSize"]
  SETTABLEKS R4 R3 K5 ["screenSize"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K30 ["props"]
  GETTABLEKS R4 R5 K6 ["onDismiss"]
  SETTABLEKS R4 R3 K6 ["onDismiss"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["onCancel"]
  SETTABLEKS R4 R3 K7 ["onCancel"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K30 ["props"]
  GETTABLEKS R4 R5 K8 ["onConfirm"]
  SETTABLEKS R4 R3 K8 ["onConfirm"]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["blurBackground"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K30 ["props"]
  GETTABLEKS R4 R5 K31 ["isClosingApp"]
  SETTABLEKS R4 R3 K10 ["visible"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R2 K6 [{"title", "subtitle", "bodyTextOpenMenu", "bodyTextClickHome", "actionExit", "actionHome"}]
  LOADK R3 K7 ["CoreScripts.InGameMenu.ExitModal.Title"]
  SETTABLEKS R3 R2 K0 ["title"]
  LOADK R3 K8 ["CoreScripts.InGameMenu.ExitModal.Subtitle"]
  SETTABLEKS R3 R2 K1 ["subtitle"]
  LOADK R3 K9 ["CoreScripts.InGameMenu.ExitModal.BodyTextOpenMenu"]
  SETTABLEKS R3 R2 K2 ["bodyTextOpenMenu"]
  LOADK R3 K10 ["CoreScripts.InGameMenu.ExitModal.BodyTextClickHome"]
  SETTABLEKS R3 R2 K3 ["bodyTextClickHome"]
  LOADK R3 K11 ["CoreScripts.InGameMenu.ExitModal.ActionExit"]
  SETTABLEKS R3 R2 K4 ["actionExit"]
  LOADK R3 K12 ["CoreScripts.InGameMenu.ExitModal.ActionHome"]
  SETTABLEKS R3 R2 K5 ["actionHome"]
  CALL R1 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["isClosingApp"]
  GETUPVAL R2 0
  MOVE R4 R1
  LOADK R5 K2 ["EducationalPopup"]
  NAMECALL R2 R2 K3 ["SetMenuIsOpen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R2 K2 [{"isClosingApp", "screenSize"}]
  GETTABLEKS R4 R0 K3 ["nativeClosePrompt"]
  GETTABLEKS R3 R4 K4 ["closingApp"]
  SETTABLEKS R3 R2 K0 ["isClosingApp"]
  GETTABLEKS R3 R0 K1 ["screenSize"]
  SETTABLEKS R3 R2 K1 ["screenSize"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  GETUPVAL R0 2
  LOADK R2 K0 ["EducationalPopup_Dismiss"]
  LOADN R3 1
  NAMECALL R0 R0 K1 ["ReportCounter"]
  CALL R0 3 0
  GETUPVAL R0 3
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["EventContext"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["DismissName"]
  NEWTABLE R3 0 0
  CALL R0 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["EducationalPopup_Confirm"]
  LOADN R3 1
  NAMECALL R0 R0 K1 ["ReportCounter"]
  CALL R0 3 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["EventContext"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["ConfirmName"]
  NEWTABLE R3 0 0
  CALL R0 3 0
  GETUPVAL R0 3
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K2 [{"onDismiss", "onConfirm"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K0 ["onDismiss"]
  DUPCLOSURE R2 K3 [PROTO_7]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K1 ["onConfirm"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["InGameMenuDependencies"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["Roact"]
  GETTABLEKS R5 R3 K11 ["RoactRodux"]
  GETTABLEKS R6 R3 K12 ["t"]
  GETTABLEKS R7 R3 K13 ["UIBlox"]
  GETTABLEKS R10 R7 K14 ["App"]
  GETTABLEKS R9 R10 K15 ["ImageSet"]
  GETTABLEKS R8 R9 K16 ["Images"]
  GETIMPORT R11 K18 [script]
  GETTABLEKS R10 R11 K19 ["Parent"]
  GETTABLEKS R9 R10 K19 ["Parent"]
  GETIMPORT R10 K7 [require]
  GETTABLEKS R12 R9 K20 ["Localization"]
  GETTABLEKS R11 R12 K21 ["withLocalization"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R13 R9 K22 ["Actions"]
  GETTABLEKS R12 R13 K23 ["CloseNativeClosePrompt"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R9 K24 ["Utility"]
  GETTABLEKS R13 R14 K25 ["LeaveGame"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETIMPORT R16 K18 [script]
  GETTABLEKS R15 R16 K19 ["Parent"]
  GETTABLEKS R14 R15 K26 ["EducationalPopupDialog"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R16 R9 K24 ["Utility"]
  GETTABLEKS R15 R16 K27 ["SendAnalytics"]
  CALL R14 1 1
  NAMECALL R15 R0 K28 ["GetNotificationTypeList"]
  CALL R15 1 1
  DUPTABLE R16 K33 [{"EventContext", "ConfirmName", "CancelName", "DismissName"}]
  LOADK R17 K34 ["educational_popup"]
  SETTABLEKS R17 R16 K29 ["EventContext"]
  LOADK R17 K35 ["educational_confirmed"]
  SETTABLEKS R17 R16 K30 ["ConfirmName"]
  LOADK R17 K36 ["educational_close_app"]
  SETTABLEKS R17 R16 K31 ["CancelName"]
  LOADK R17 K37 ["educational_dismiss_prompt"]
  SETTABLEKS R17 R16 K32 ["DismissName"]
  GETTABLEKS R17 R4 K38 ["PureComponent"]
  LOADK R19 K39 ["EducationalPopup"]
  NAMECALL R17 R17 K40 ["extend"]
  CALL R17 2 1
  GETTABLEKS R18 R6 K41 ["strictInterface"]
  DUPTABLE R19 K46 [{"screenSize", "onDismiss", "onConfirm", "isClosingApp"}]
  GETTABLEKS R20 R6 K47 ["Vector2"]
  SETTABLEKS R20 R19 K42 ["screenSize"]
  GETTABLEKS R20 R6 K48 ["callback"]
  SETTABLEKS R20 R19 K43 ["onDismiss"]
  GETTABLEKS R20 R6 K48 ["callback"]
  SETTABLEKS R20 R19 K44 ["onConfirm"]
  GETTABLEKS R20 R6 K49 ["boolean"]
  SETTABLEKS R20 R19 K45 ["isClosingApp"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K50 ["validateProps"]
  DUPCLOSURE R18 K51 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R0
  CAPTURE VAL R15
  SETTABLEKS R18 R17 K52 ["init"]
  DUPCLOSURE R18 K53 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R8
  SETTABLEKS R18 R17 K54 ["render"]
  DUPCLOSURE R18 K55 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R18 R17 K56 ["didUpdate"]
  GETTABLEKS R18 R5 K57 ["UNSTABLE_connect2"]
  DUPCLOSURE R19 K58 [PROTO_5]
  DUPCLOSURE R20 K59 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R12
  CALL R18 2 1
  MOVE R19 R17
  CALL R18 1 -1
  RETURN R18 -1
