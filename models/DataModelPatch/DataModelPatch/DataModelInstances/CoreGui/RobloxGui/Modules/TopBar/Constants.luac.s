PROTO_0:
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetPlatform"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  GETIMPORT R1 K5 [Enum.Platform.IOS]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K7 [Enum.Platform.Android]
  JUMPIFNOTEQ R0 R1 [+4]
  LOADN R1 52
  CLOSEUPVALS R0
  RETURN R1 1
  LOADN R1 58
  CLOSEUPVALS R0
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+2]
  LOADN R0 36
  RETURN R0 1
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+26]
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIFNOT R0 [+2]
  LOADN R0 58
  RETURN R0 1
  LOADNIL R1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE UPVAL U3
  CALL R2 1 0
  GETIMPORT R2 K5 [Enum.Platform.IOS]
  JUMPIFEQ R1 R2 [+5]
  GETIMPORT R2 K7 [Enum.Platform.Android]
  JUMPIFNOTEQ R1 R2 [+4]
  LOADN R0 52
  CLOSEUPVALS R1
  RETURN R0 1
  LOADN R0 58
  CLOSEUPVALS R1
  RETURN R0 1
  LOADN R0 36
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UserInputService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["TenFootInterface"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K11 ["Chrome"]
  GETTABLEKS R5 R6 K12 ["Enabled"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K13 ["isNewTiltIconEnabled"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETIMPORT R10 K6 [script]
  GETTABLEKS R9 R10 K7 ["Parent"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K15 ["GetFFlagChangeTopbarHeightCalculation"]
  CALL R6 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K16 ["Workspace"]
  GETTABLEKS R10 R11 K17 ["Packages"]
  GETTABLEKS R9 R10 K18 ["SharedFlags"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K19 ["GetFFlagPostLaunchUnibarDesignTweaks"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R1
  DUPCLOSURE R9 K21 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R1
  MOVE R11 R4
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  LOADN R10 48
  JUMP [+1]
  LOADN R10 36
  MOVE R12 R4
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADN R11 44
  JUMP [+1]
  LOADN R11 32
  MOVE R12 R6
  CALL R12 0 1
  JUMPIFNOT R12 [+35]
  MOVE R12 R5
  CALL R12 0 1
  JUMPIF R12 [+2]
  LOADN R10 36
  JUMP [+30]
  MOVE R12 R4
  CALL R12 0 1
  JUMPIFNOT R12 [+26]
  MOVE R12 R7
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADN R10 58
  JUMP [+22]
  LOADNIL R12
  GETIMPORT R13 K23 [pcall]
  NEWCLOSURE R14 P2
  CAPTURE REF R12
  CAPTURE VAL R1
  CALL R13 1 0
  GETIMPORT R13 K27 [Enum.Platform.IOS]
  JUMPIFEQ R12 R13 [+5]
  GETIMPORT R13 K29 [Enum.Platform.Android]
  JUMPIFNOTEQ R12 R13 [+4]
  LOADN R10 52
  CLOSEUPVALS R12
  JUMP [+4]
  LOADN R10 58
  CLOSEUPVALS R12
  JUMP [+1]
  LOADN R10 36
  DUPTABLE R12 K52 [{"TopBarHeight", "TopBarHeightTenFoot", "TopBarButtonHeight", "TopBarButtonPadding", "TopBarTopMargin", "MenuIconKeepOutAreaId", "HealthBarKeepOutAreaId", "MoreMenuKeepOutAreaId", "ChatIconKeepOutAreaId", "ConnectIconKeepOutAreaId", "BackIconKeepOutAreaId", "BadgeOver13KeepOutAreaId", "VoiceBetaBadgeKeepOutAreaId", "ScreenSideOffset", "ScreenSideOffsetTenFoot", "Padding", "HealthPercentForOverlay", "HealthRedColor", "HealthYellowColor", "HealthGreenColor", "InputType", "Analytics"}]
  SETTABLEKS R10 R12 K30 ["TopBarHeight"]
  LOADN R13 72
  SETTABLEKS R13 R12 K31 ["TopBarHeightTenFoot"]
  SETTABLEKS R11 R12 K32 ["TopBarButtonHeight"]
  LOADN R13 2
  SETTABLEKS R13 R12 K33 ["TopBarButtonPadding"]
  SUB R14 R10 R11
  SUBK R13 R14 K53 [4]
  SETTABLEKS R13 R12 K34 ["TopBarTopMargin"]
  LOADK R13 K54 ["roblox-menu-icon"]
  SETTABLEKS R13 R12 K35 ["MenuIconKeepOutAreaId"]
  LOADK R13 K55 ["health-bar"]
  SETTABLEKS R13 R12 K36 ["HealthBarKeepOutAreaId"]
  LOADK R13 K56 ["more-menu"]
  SETTABLEKS R13 R12 K37 ["MoreMenuKeepOutAreaId"]
  LOADK R13 K57 ["chat-icon"]
  SETTABLEKS R13 R12 K38 ["ChatIconKeepOutAreaId"]
  LOADK R13 K58 ["connect-icon"]
  SETTABLEKS R13 R12 K39 ["ConnectIconKeepOutAreaId"]
  LOADK R13 K59 ["back-icon"]
  SETTABLEKS R13 R12 K40 ["BackIconKeepOutAreaId"]
  LOADK R13 K60 ["badge-13"]
  SETTABLEKS R13 R12 K41 ["BadgeOver13KeepOutAreaId"]
  LOADK R13 K61 ["badge-voice-beta"]
  SETTABLEKS R13 R12 K42 ["VoiceBetaBadgeKeepOutAreaId"]
  LOADN R13 16
  SETTABLEKS R13 R12 K43 ["ScreenSideOffset"]
  LOADN R13 48
  SETTABLEKS R13 R12 K44 ["ScreenSideOffsetTenFoot"]
  MOVE R14 R7
  CALL R14 0 1
  JUMPIFNOT R14 [+5]
  MOVE R14 R4
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADN R13 8
  JUMP [+1]
  LOADN R13 12
  SETTABLEKS R13 R12 K45 ["Padding"]
  LOADK R13 K62 [0.05]
  SETTABLEKS R13 R12 K46 ["HealthPercentForOverlay"]
  GETIMPORT R13 K65 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 28
  LOADN R16 0
  CALL R13 3 1
  SETTABLEKS R13 R12 K47 ["HealthRedColor"]
  GETIMPORT R13 K65 [Color3.fromRGB]
  LOADN R14 250
  LOADN R15 235
  LOADN R16 0
  CALL R13 3 1
  SETTABLEKS R13 R12 K48 ["HealthYellowColor"]
  GETIMPORT R13 K65 [Color3.fromRGB]
  LOADN R14 27
  LOADN R15 252
  LOADN R16 107
  CALL R13 3 1
  SETTABLEKS R13 R12 K49 ["HealthGreenColor"]
  DUPTABLE R13 K69 [{"MouseAndKeyBoard", "Touch", "Gamepad"}]
  LOADK R14 K70 ["MouseAndKeyboard"]
  SETTABLEKS R14 R13 K66 ["MouseAndKeyBoard"]
  LOADK R14 K67 ["Touch"]
  SETTABLEKS R14 R13 K67 ["Touch"]
  LOADK R14 K68 ["Gamepad"]
  SETTABLEKS R14 R13 K68 ["Gamepad"]
  SETTABLEKS R13 R12 K50 ["InputType"]
  DUPTABLE R13 K81 [{"ShowGamepadNavigationDialog", "DismissGamepadNavigationDialog", "EventNameTopBarButtonActivated", "ChatButtonName", "MoreMenuButtonName", "InventoryButtonName", "LeaderboardButtonName", "EmotesButtonName", "StatusActive", "StatusInactive"}]
  LOADK R14 K82 ["show-gamepad-navigation-dialog"]
  SETTABLEKS R14 R13 K71 ["ShowGamepadNavigationDialog"]
  LOADK R14 K83 ["dismiss-gamepad-navigation-dialog"]
  SETTABLEKS R14 R13 K72 ["DismissGamepadNavigationDialog"]
  LOADK R14 K84 ["topbar-button-activated"]
  SETTABLEKS R14 R13 K73 ["EventNameTopBarButtonActivated"]
  LOADK R14 K85 ["chat"]
  SETTABLEKS R14 R13 K74 ["ChatButtonName"]
  LOADK R14 K56 ["more-menu"]
  SETTABLEKS R14 R13 K75 ["MoreMenuButtonName"]
  LOADK R14 K86 ["inventory"]
  SETTABLEKS R14 R13 K76 ["InventoryButtonName"]
  LOADK R14 K87 ["leaderboard"]
  SETTABLEKS R14 R13 K77 ["LeaderboardButtonName"]
  LOADK R14 K88 ["emotes"]
  SETTABLEKS R14 R13 K78 ["EmotesButtonName"]
  LOADK R14 K89 ["active"]
  SETTABLEKS R14 R13 K79 ["StatusActive"]
  LOADK R14 K90 ["inactive"]
  SETTABLEKS R14 R13 K80 ["StatusInactive"]
  SETTABLEKS R13 R12 K51 ["Analytics"]
  RETURN R12 1
