PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["screenSize"]
  GETTABLEKS R2 R0 K2 ["AbsoluteSize"]
  JUMPIFEQ R1 R2 [+10]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"screenSize"}]
  GETTABLEKS R4 R0 K2 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K1 ["screenSize"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"notificationType", "toastContent"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["None"]
  SETTABLEKS R3 R2 K0 ["notificationType"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["None"]
  SETTABLEKS R3 R2 K1 ["toastContent"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["props"]
  GETTABLEKS R0 R1 K6 ["forceDismissToast"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["forceDismissToast"]
  GETTABLEKS R0 R1 K7 ["onDismissed"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["forceDismissToast"]
  GETTABLEKS R0 R1 K7 ["onDismissed"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Success"]
  JUMPIFEQ R0 R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Fail"]
  JUMPIFNOTEQ R0 R1 [+57]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Success"]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  DUPTABLE R2 K6 [{"iconImage", "iconColorStyle", "toastTitle", "onDismissed"}]
  JUMPIFNOT R1 [+4]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["icons/status/success"]
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["icons/status/alert"]
  SETTABLEKS R3 R2 K2 ["iconImage"]
  JUMPIF R1 [+13]
  DUPTABLE R3 K11 [{"Color", "Transparency"}]
  GETIMPORT R4 K14 [Color3.fromRGB]
  LOADN R5 247
  LOADN R6 75
  LOADN R7 82
  CALL R4 3 1
  SETTABLEKS R4 R3 K9 ["Color"]
  LOADN R4 0
  SETTABLEKS R4 R3 K10 ["Transparency"]
  JUMPIF R3 [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["iconColorStyle"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 2
  LOADK R5 K15 ["NotificationScript2.Capture.Success.ToastText"]
  NAMECALL R3 R3 K16 ["FormatByKey"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  GETUPVAL R3 2
  LOADK R5 K17 ["NotificationScript2.Capture.Fail.ToastText"]
  NAMECALL R3 R3 K16 ["FormatByKey"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["toastTitle"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  SETTABLEKS R3 R2 K5 ["onDismissed"]
  RETURN R2 1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K18 ["None"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"dismissedPermission", "notificationType", "toastContent"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["dismissedPermission"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["Fail"]
  SETTABLEKS R3 R2 K1 ["notificationType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["getToastContent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Fail"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["toastContent"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  LOADNIL R3
  JUMPIFNOT R1 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Success"]
  JUMP [+23]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["state"]
  GETTABLEKS R4 R5 K2 ["dismissedPermission"]
  JUMPIF R4 [+14]
  LOADK R6 K3 ["Domain=ALAssetsLibraryErrorDomain"]
  NAMECALL R4 R2 K4 ["find"]
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  LOADK R6 K5 ["Data unavailable"]
  NAMECALL R4 R2 K4 ["find"]
  CALL R4 2 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["Permission"]
  JUMP [+3]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Fail"]
  GETUPVAL R4 1
  DUPTABLE R6 K10 [{"notificationType", "toastContent"}]
  SETTABLEKS R3 R6 K8 ["notificationType"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["getToastContent"]
  MOVE R8 R3
  CALL R7 1 1
  SETTABLEKS R7 R6 K9 ["toastContent"]
  NAMECALL R4 R4 K12 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"notificationType", "toastContent"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["Permission"]
  SETTABLEKS R3 R2 K0 ["notificationType"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["getToastContent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Permission"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["toastContent"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetPlatform"]
  CALL R0 1 1
  GETIMPORT R1 K4 [Enum.Platform.IOS]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R0 1
  LOADK R2 K5 ["NotificationScript2.Capture.Permission.AlertTextIOS"]
  NAMECALL R0 R0 K6 ["FormatByKey"]
  CALL R0 2 -1
  RETURN R0 -1
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetPlatform"]
  CALL R0 1 1
  GETIMPORT R1 K8 [Enum.Platform.Android]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R0 1
  LOADK R2 K9 ["NotificationScript2.Capture.Permission.AlertTextAndroid"]
  NAMECALL R0 R0 K6 ["FormatByKey"]
  CALL R0 2 -1
  RETURN R0 -1
  GETUPVAL R0 1
  LOADK R2 K10 ["NotificationScript2.Capture.Permission.AlertText"]
  NAMECALL R0 R0 K6 ["FormatByKey"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  DUPTABLE R1 K4 [{"screenSize", "dismissedPermission", "notificationType", "toastContent"}]
  GETIMPORT R2 K7 [Vector2.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["screenSize"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["dismissedPermission"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["None"]
  SETTABLEKS R2 R1 K2 ["notificationType"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["toastContent"]
  SETTABLEKS R1 R0 K9 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onScreenSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K11 ["getToastContent"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K12 ["dismissPermissionAlert"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["screenshotSavedToAlbumCallback"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K14 ["permissionEventCallback"]
  DUPCLOSURE R1 K15 [PROTO_6]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K16 ["getPermissionAlertBodyText"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["notificationType"]
  LOADB R2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Success"]
  JUMPIFNOTEQ R1 R3 [+5]
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K3 ["toastContent"]
  LOADB R3 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Fail"]
  JUMPIFNOTEQ R1 R4 [+5]
  GETTABLEKS R4 R0 K0 ["state"]
  GETTABLEKS R3 R4 K3 ["toastContent"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Permission"]
  JUMPIFEQ R1 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  DUPTABLE R7 K7 [{"RobloxCaptureNotificationGui"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["createElement"]
  LOADK R9 K9 ["ScreenGui"]
  DUPTABLE R10 K15 [{"AutoLocalize", "DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "ZIndexBehavior"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K10 ["AutoLocalize"]
  LOADN R11 9
  SETTABLEKS R11 R10 K11 ["DisplayOrder"]
  LOADB R11 1
  SETTABLEKS R11 R10 K12 ["IgnoreGuiInset"]
  LOADB R11 1
  SETTABLEKS R11 R10 K13 ["OnTopOfCoreBlur"]
  GETIMPORT R11 K18 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K14 ["ZIndexBehavior"]
  DUPTABLE R11 K20 [{"Content"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["createElement"]
  LOADK R13 K21 ["Frame"]
  NEWTABLE R14 4 0
  LOADN R15 1
  SETTABLEKS R15 R14 K22 ["BackgroundTransparency"]
  GETIMPORT R15 K25 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K26 ["Size"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K27 ["Change"]
  GETTABLEKS R15 R16 K28 ["AbsoluteSize"]
  GETTABLEKS R16 R0 K29 ["onScreenSizeChanged"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K35 [{"SuccessToast", "FailToast", "PermissionAlertOverlay", "ScreenshotSavedToAlbumConnection", "PermissionEventConnection"}]
  MOVE R16 R2
  JUMPIFNOT R16 [+22]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K38 [{"duration", "show", "toastContent"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K36 ["duration"]
  GETTABLEKS R21 R0 K39 ["props"]
  GETTABLEKS R20 R21 K40 ["forceDismissToast"]
  NOT R19 R20
  SETTABLEKS R19 R18 K37 ["show"]
  GETTABLEKS R20 R0 K0 ["state"]
  GETTABLEKS R19 R20 K3 ["toastContent"]
  SETTABLEKS R19 R18 K3 ["toastContent"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["SuccessToast"]
  MOVE R16 R3
  JUMPIFNOT R16 [+22]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K38 [{"duration", "show", "toastContent"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K36 ["duration"]
  GETTABLEKS R21 R0 K39 ["props"]
  GETTABLEKS R20 R21 K40 ["forceDismissToast"]
  NOT R19 R20
  SETTABLEKS R19 R18 K37 ["show"]
  GETTABLEKS R20 R0 K0 ["state"]
  GETTABLEKS R19 R20 K3 ["toastContent"]
  SETTABLEKS R19 R18 K3 ["toastContent"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["FailToast"]
  MOVE R16 R4
  JUMPIFNOT R16 [+92]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["createElement"]
  LOADK R17 K21 ["Frame"]
  DUPTABLE R18 K43 [{"Active", "BackgroundColor3", "BackgroundTransparency", "Size"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K41 ["Active"]
  GETIMPORT R19 K45 [Color3.new]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R19 3 1
  SETTABLEKS R19 R18 K42 ["BackgroundColor3"]
  LOADK R19 K46 [0.5]
  SETTABLEKS R19 R18 K22 ["BackgroundTransparency"]
  GETIMPORT R19 K25 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K26 ["Size"]
  DUPTABLE R19 K48 [{"PermissionAlert"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K8 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K54 [{"title", "bodyText", "buttonStackInfo", "position", "screenSize"}]
  GETUPVAL R23 4
  LOADK R25 K55 ["NotificationScript2.Capture.Permission.AlertTitle"]
  NAMECALL R23 R23 K56 ["FormatByKey"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K49 ["title"]
  GETTABLEKS R23 R0 K57 ["getPermissionAlertBodyText"]
  CALL R23 0 1
  SETTABLEKS R23 R22 K50 ["bodyText"]
  DUPTABLE R23 K59 [{"buttons"}]
  NEWTABLE R24 0 1
  DUPTABLE R25 K61 [{"buttonType", "props"}]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K62 ["PrimarySystem"]
  SETTABLEKS R26 R25 K60 ["buttonType"]
  DUPTABLE R26 K65 [{"onActivated", "text"}]
  GETTABLEKS R27 R0 K66 ["dismissPermissionAlert"]
  SETTABLEKS R27 R26 K63 ["onActivated"]
  GETUPVAL R27 4
  LOADK R29 K67 ["NotificationScript2.Capture.Permission.AlertButtonText"]
  NAMECALL R27 R27 K56 ["FormatByKey"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K64 ["text"]
  SETTABLEKS R26 R25 K39 ["props"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K58 ["buttons"]
  SETTABLEKS R23 R22 K51 ["buttonStackInfo"]
  GETIMPORT R23 K69 [UDim2.fromScale]
  LOADK R24 K46 [0.5]
  LOADK R25 K46 [0.5]
  CALL R23 2 1
  SETTABLEKS R23 R22 K52 ["position"]
  GETTABLEKS R24 R0 K0 ["state"]
  GETTABLEKS R23 R24 K53 ["screenSize"]
  SETTABLEKS R23 R22 K53 ["screenSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K47 ["PermissionAlert"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K32 ["PermissionAlertOverlay"]
  GETUPVAL R16 6
  CALL R16 0 1
  JUMPIFNOT R16 [+16]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K72 [{"event", "callback"}]
  GETIMPORT R20 K74 [game]
  GETTABLEKS R19 R20 K75 ["ScreenshotSavedToAlbum"]
  SETTABLEKS R19 R18 K70 ["event"]
  GETTABLEKS R19 R0 K76 ["screenshotSavedToAlbumCallback"]
  SETTABLEKS R19 R18 K71 ["callback"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["ScreenshotSavedToAlbumConnection"]
  GETTABLEKS R17 R0 K39 ["props"]
  GETTABLEKS R16 R17 K77 ["permissionEvent"]
  JUMPIFNOT R16 [+18]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K8 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K72 [{"event", "callback"}]
  GETTABLEKS R21 R0 K39 ["props"]
  GETTABLEKS R20 R21 K77 ["permissionEvent"]
  GETTABLEKS R19 R20 K78 ["Event"]
  SETTABLEKS R19 R18 K70 ["event"]
  GETTABLEKS R19 R0 K79 ["permissionEventCallback"]
  SETTABLEKS R19 R18 K71 ["callback"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["PermissionEventConnection"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Content"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["RobloxCaptureNotificationGui"]
  NAMECALL R5 R0 K80 ["renderWithStyle"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["forceDismissToast"]
  GETTABLEKS R3 R1 K1 ["forceDismissToast"]
  JUMPIFEQ R3 R2 [+32]
  GETTABLEKS R5 R0 K2 ["state"]
  GETTABLEKS R4 R5 K3 ["notificationType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Success"]
  JUMPIFEQ R4 R5 [+11]
  LOADB R3 0
  GETTABLEKS R5 R0 K2 ["state"]
  GETTABLEKS R4 R5 K3 ["notificationType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Fail"]
  JUMPIFNOTEQ R4 R5 [+5]
  GETTABLEKS R4 R0 K2 ["state"]
  GETTABLEKS R3 R4 K6 ["toastContent"]
  JUMPIF R3 [+7]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R4 R2 K7 ["onDismissed"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R4 R2 K7 ["onDismissed"]
  CALL R4 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["UserInputService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R1 K8 ["Workspace"]
  GETTABLEKS R6 R7 K9 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactUtils"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["ExternalEventConnection"]
  GETIMPORT R4 K7 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K9 ["Packages"]
  GETTABLEKS R6 R7 K13 ["UIBlox"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K9 ["Packages"]
  GETTABLEKS R7 R8 K14 ["t"]
  CALL R6 1 1
  GETTABLEKS R10 R5 K15 ["App"]
  GETTABLEKS R9 R10 K16 ["Button"]
  GETTABLEKS R8 R9 K17 ["Enum"]
  GETTABLEKS R7 R8 K18 ["ButtonType"]
  GETTABLEKS R11 R5 K15 ["App"]
  GETTABLEKS R10 R11 K19 ["Dialog"]
  GETTABLEKS R9 R10 K20 ["Alert"]
  GETTABLEKS R8 R9 K21 ["InteractiveAlert"]
  GETTABLEKS R11 R5 K15 ["App"]
  GETTABLEKS R10 R11 K19 ["Dialog"]
  GETTABLEKS R9 R10 K22 ["Toast"]
  GETTABLEKS R12 R5 K15 ["App"]
  GETTABLEKS R11 R12 K23 ["ImageSet"]
  GETTABLEKS R10 R11 K24 ["Images"]
  LOADK R13 K25 ["RobloxGui"]
  NAMECALL R11 R0 K26 ["WaitForChild"]
  CALL R11 2 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R11 K27 ["Modules"]
  GETTABLEKS R13 R14 K28 ["shouldSaveScreenshotToAlbum"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETTABLEKS R15 R11 K27 ["Modules"]
  GETTABLEKS R14 R15 K29 ["RobloxTranslator"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R17 R11 K27 ["Modules"]
  GETTABLEKS R16 R17 K30 ["Common"]
  GETTABLEKS R15 R16 K31 ["renderWithCoreScriptsStyleProvider"]
  CALL R14 1 1
  DUPTABLE R15 K36 [{"None", "Success", "Fail", "Permission"}]
  LOADK R16 K32 ["None"]
  SETTABLEKS R16 R15 K32 ["None"]
  LOADK R16 K33 ["Success"]
  SETTABLEKS R16 R15 K33 ["Success"]
  LOADK R16 K34 ["Fail"]
  SETTABLEKS R16 R15 K34 ["Fail"]
  LOADK R16 K35 ["Permission"]
  SETTABLEKS R16 R15 K35 ["Permission"]
  GETTABLEKS R16 R4 K37 ["PureComponent"]
  LOADK R18 K38 ["CaptureNotification"]
  NAMECALL R16 R16 K39 ["extend"]
  CALL R16 2 1
  GETTABLEKS R17 R6 K40 ["strictInterface"]
  DUPTABLE R18 K43 [{"forceDismissToast", "permissionEvent"}]
  GETTABLEKS R19 R6 K44 ["optional"]
  GETTABLEKS R20 R6 K45 ["table"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K41 ["forceDismissToast"]
  GETTABLEKS R19 R6 K44 ["optional"]
  GETTABLEKS R20 R6 K46 ["instanceOf"]
  LOADK R21 K47 ["BindableEvent"]
  CALL R20 1 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K42 ["permissionEvent"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K48 ["validateProps"]
  DUPCLOSURE R17 K49 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R17 R16 K50 ["init"]
  DUPCLOSURE R17 K51 [PROTO_8]
  CAPTURE VAL R14
  SETTABLEKS R17 R16 K52 ["renderWithStyle"]
  DUPCLOSURE R17 K53 [PROTO_9]
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R3
  SETTABLEKS R17 R16 K54 ["render"]
  DUPCLOSURE R17 K55 [PROTO_10]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K56 ["didUpdate"]
  RETURN R16 1
