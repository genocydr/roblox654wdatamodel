PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"title", "presentationStyle", "visible", "url"}]
  GETIMPORT R5 K6 [game]
  LOADK R7 K7 ["SetWebViewTitle"]
  NAMECALL R5 R5 K8 ["GetEngineFeature"]
  CALL R5 2 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R4 1
  LOADK R6 K9 ["Feature.SettingsHub.Prompt.CameraUnavailable"]
  NAMECALL R4 R4 K10 ["FormatByKey"]
  CALL R4 2 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K0 ["title"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["FormSheet"]
  SETTABLEKS R4 R3 K1 ["presentationStyle"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["visible"]
  SETTABLEKS R0 R3 K3 ["url"]
  NAMECALL R1 R1 K12 ["JSONEncode"]
  CALL R1 2 1
  GETUPVAL R2 3
  MOVE R4 R1
  LOADN R5 20
  NAMECALL R2 R2 K13 ["BroadcastNotification"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["promptType"]
  SETTABLEKS R1 R0 K1 ["promptType"]
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["promptType"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["CameraUnavailable"]
  JUMPIFNOTEQ R0 R1 [+4]
  GETUPVAL R0 2
  GETUPVAL R1 3
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["promptType"]
  SETTABLEKS R1 R0 K1 ["promptType"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  LOADK R2 K3 ["Frame"]
  DUPTABLE R3 K6 [{"BackgroundTransparency", "Size"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K4 ["BackgroundTransparency"]
  GETIMPORT R4 K9 [UDim2.fromScale]
  LOADN R5 1
  LOADN R6 1
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["Size"]
  DUPTABLE R4 K11 [{"Toast"}]
  LOADB R5 0
  GETTABLEKS R6 R0 K1 ["promptType"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["None"]
  JUMPIFEQ R6 R7 [+40]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K15 [{"duration", "toastContent"}]
  LOADN R8 8
  SETTABLEKS R8 R7 K13 ["duration"]
  DUPTABLE R8 K21 [{"iconImage", "toastTitle", "toastSubtitle", "onDismissed", "onActivated"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K22 ["icons/status/alert"]
  SETTABLEKS R9 R8 K16 ["iconImage"]
  GETUPVAL R10 4
  GETTABLEKS R11 R0 K1 ["promptType"]
  GETTABLE R9 R10 R11
  SETTABLEKS R9 R8 K17 ["toastTitle"]
  GETUPVAL R10 5
  GETTABLEKS R11 R0 K1 ["promptType"]
  GETTABLE R9 R10 R11
  SETTABLEKS R9 R8 K18 ["toastSubtitle"]
  DUPCLOSURE R9 K23 [PROTO_2]
  SETTABLEKS R9 R8 K19 ["onDismissed"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R9 R8 K20 ["onActivated"]
  SETTABLEKS R8 R7 K14 ["toastContent"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Toast"]
  CALL R1 3 1
  GETUPVAL R2 8
  DUPTABLE R3 K25 [{"TrackerPrompt"}]
  SETTABLEKS R1 R3 K24 ["TrackerPrompt"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K26 ["ScreenGui"]
  DUPTABLE R5 K32 [{"AutoLocalize", "DisplayOrder", "IgnoreGuiInset", "OnTopOfCoreBlur", "ZIndexBehavior"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["AutoLocalize"]
  LOADN R6 10
  SETTABLEKS R6 R5 K28 ["DisplayOrder"]
  LOADB R6 1
  SETTABLEKS R6 R5 K29 ["IgnoreGuiInset"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["OnTopOfCoreBlur"]
  GETIMPORT R6 K35 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K31 ["ZIndexBehavior"]
  DUPTABLE R6 K37 [{"Content"}]
  SETTABLEKS R2 R6 K36 ["Content"]
  CALL R3 3 -1
  RETURN R3 -1

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
  LOADK R4 K5 ["HttpService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["GuiService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["ContentProvider"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K11 ["UIBlox"]
  CALL R5 1 1
  GETTABLEKS R8 R5 K12 ["App"]
  GETTABLEKS R7 R8 K13 ["ImageSet"]
  GETTABLEKS R6 R7 K14 ["Images"]
  GETTABLEKS R9 R5 K12 ["App"]
  GETTABLEKS R8 R9 K15 ["Dialog"]
  GETTABLEKS R7 R8 K16 ["Toast"]
  LOADK R10 K17 ["RobloxGui"]
  NAMECALL R8 R1 K18 ["WaitForChild"]
  CALL R8 2 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R8 K19 ["Modules"]
  GETTABLEKS R10 R11 K20 ["RobloxTranslator"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R8 K19 ["Modules"]
  GETTABLEKS R12 R13 K21 ["Common"]
  GETTABLEKS R11 R12 K22 ["renderWithCoreScriptsStyleProvider"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R0 K10 ["Packages"]
  GETTABLEKS R12 R13 K23 ["Roact"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R0 K10 ["Packages"]
  GETTABLEKS R13 R14 K24 ["t"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R8 K19 ["Modules"]
  GETTABLEKS R15 R16 K25 ["Tracker"]
  GETTABLEKS R14 R15 K26 ["TrackerPromptType"]
  CALL R13 1 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K27 ["TrackerPromptNewCopyForCameraPerformanceEnabled"]
  LOADB R17 0
  NAMECALL R14 R14 K28 ["DefineFastFlag"]
  CALL R14 3 1
  GETIMPORT R15 K1 [game]
  LOADK R17 K29 ["CameraUnavailableUrl"]
  LOADK R18 K30 ["https://help.roblox.com/hc/articles/17877687557396"]
  NAMECALL R15 R15 K31 ["DefineFastString"]
  CALL R15 3 1
  GETTABLEKS R16 R11 K32 ["PureComponent"]
  LOADK R18 K33 ["TrackerPrompt"]
  NAMECALL R16 R16 K34 ["extend"]
  CALL R16 2 1
  GETTABLEKS R17 R12 K35 ["strictInterface"]
  DUPTABLE R18 K37 [{"promptType"}]
  GETTABLEKS R19 R12 K38 ["optional"]
  GETTABLEKS R20 R12 K39 ["string"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K36 ["promptType"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K40 ["validateProps"]
  NEWTABLE R17 16 0
  GETTABLEKS R18 R13 K41 ["None"]
  LOADK R19 K42 [""]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K43 ["VideoNoPermission"]
  LOADK R21 K44 ["Feature.FaceChat.Heading.UnableToAccessCamera"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K46 ["NotAvailable"]
  LOADK R21 K47 ["Feature.FaceChat.Heading.NotAvailable"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K48 ["FeatureDisabled"]
  LOADK R21 K49 ["Feature.FaceChat.Heading.FacialAnimation"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K50 ["LODCameraRecommendDisable"]
  JUMPIFNOT R14 [+5]
  LOADK R21 K51 ["Feature.FaceChat.Heading.LowPerformanceDetected"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  JUMP [+4]
  LOADK R21 K52 ["Feature.FaceChat.Heading.VideoPerformancePromptDisable"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K53 ["NoDynamicHeadEquipped"]
  LOADK R21 K54 ["Feature.FaceChat.Heading.PromptNoDynamicHeadEquipped"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K55 ["VideoUnsupported"]
  LOADK R21 K56 ["Feature.FaceChat.Heading.VideoUnsupported"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K57 ["UnsupportedDevice"]
  LOADK R21 K47 ["Feature.FaceChat.Heading.NotAvailable"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R13 K58 ["CameraUnavailable"]
  LOADK R21 K59 ["Feature.SettingsHub.Prompt.CameraUnavailable"]
  NAMECALL R19 R9 K45 ["FormatByKey"]
  CALL R19 2 1
  SETTABLE R19 R17 R18
  NEWTABLE R18 16 0
  GETTABLEKS R19 R13 K41 ["None"]
  LOADK R20 K42 [""]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K43 ["VideoNoPermission"]
  LOADK R22 K60 ["Feature.FaceChat.Subtitle.UnableToAccessCamera"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K46 ["NotAvailable"]
  LOADK R22 K61 ["Feature.FaceChat.Subtitle.NotAvailable"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K48 ["FeatureDisabled"]
  LOADK R22 K62 ["Feature.FaceChat.Subtitle.FeatureDisabled"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K50 ["LODCameraRecommendDisable"]
  LOADK R22 K63 ["Feature.FaceChat.Subtitle.VideoPerformancePromptDisable"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K53 ["NoDynamicHeadEquipped"]
  LOADK R22 K64 ["Feature.FaceChat.Subtitle.PromptNoDynamicHeadEquipped"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K55 ["VideoUnsupported"]
  LOADK R22 K65 ["Feature.FaceChat.Subtitle.VideoUnsupported"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K57 ["UnsupportedDevice"]
  LOADK R22 K66 ["Feature.FaceChat.Subtitle.UnsupportedDevice"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R13 K58 ["CameraUnavailable"]
  LOADK R22 K67 ["Feature.SettingsHub.Prompt.Subtitle.CameraUnavailable"]
  NAMECALL R20 R9 K45 ["FormatByKey"]
  CALL R20 2 1
  SETTABLE R20 R18 R19
  DUPTABLE R19 K70 [{"FullScreen", "FormSheet"}]
  LOADN R20 0
  SETTABLEKS R20 R19 K68 ["FullScreen"]
  LOADN R20 2
  SETTABLEKS R20 R19 K69 ["FormSheet"]
  DUPCLOSURE R20 K71 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R19
  CAPTURE VAL R3
  DUPCLOSURE R21 K72 [PROTO_1]
  SETTABLEKS R21 R16 K73 ["init"]
  DUPCLOSURE R21 K74 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R15
  CAPTURE VAL R10
  SETTABLEKS R21 R16 K75 ["render"]
  RETURN R16 1
